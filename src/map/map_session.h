/*
===========================================================================

  Copyright (c) 2025 LandSandBoat Dev Teams

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see http://www.gnu.org/licenses/

===========================================================================
*/

#pragma once

#include "common/blowfish.h"
#include "common/cbasetypes.h"
#include "common/ipp.h"
#include "common/timer.h"

#include "map_constants.h"
#include "packets/s2c/0x00b_logout.h"

#include <array>

enum class GP_GAME_LOGOUT_STATE : uint8_t;
class CCharEntity;
class Scheduler;

// A single cached outgoing datagram, indexed by the s->c sync counter
// that was stamped into its 28-byte header at send time. Used to answer
// specific resend requests from the client when burst send is enabled
// (multiple datagrams per handle_incoming_packet). With only
// server_packet_data (one slot), a retransmit request for a dropped
// middle-of-burst packet can't be satisfied and the client hangs.
struct ServerPacketCacheEntry
{
    uint16        id    = 0;    // sync counter == ref<uint16>(data, 0) at send
    bool          valid = false;
    NetworkBuffer data  = {};
    size_t        size  = 0;
};

// Ring size. Each entry is ~2500 B, so a full ring is ~80 KB per session.
// Must be at least as large as kMaxBurstSends (map_constants.h). 32 gives
// plenty of headroom for the configured BURST_SEND_MAX plus some history.
static constexpr size_t kServerPacketCacheSize = 32;

struct MapSession
{
    // TODO: Don't pass the scheduler around in here!
    // This is a dirty hack to pipe the scheduler around into the packet handlers.
    Scheduler* scheduler = nullptr;

    IPP                          client_ipp         = {};
    uint16                       client_packet_id   = 0;  // id of the last packet that came from the client
    uint16                       server_packet_id   = 0;  // id of the last packet sent by the server
    NetworkBuffer                server_packet_data = {}; // data of the packet, which was previously sent to the client
    size_t                       server_packet_size = 0;  // the size of the packet that was previously sent to the client

    // Ring of the last kServerPacketCacheSize datagrams sent to this
    // session, keyed by their s->c sync counter. Populated by
    // cacheOutgoingPacket after every successful send. Looked up by
    // findCachedOutgoing when the client asks to resend a specific id.
    std::array<ServerPacketCacheEntry, kServerPacketCacheSize> server_packet_cache      = {};
    size_t                                                     server_packet_cache_next = 0;

    // Copy the just-sent datagram into the ring, evicting the oldest slot.
    void cacheOutgoingPacket(uint16 id, const NetworkBuffer& src, size_t srcSize);

    // Look up a previously-sent datagram by its sync id. Returns nullptr
    // when the id isn't in the cache (happened too far in the past, or
    // was never sent).
    const ServerPacketCacheEntry* findCachedOutgoing(uint16 id) const;

    // ---- Burst-send opt-in (XIOverclock heartbeat) ----------------------
    // Flipped true by the 0x1FF heartbeat handler; the burst-send loop in
    // handle_incoming_packet only fires when this is true AND the most
    // recent heartbeat was within ~3 heartbeat intervals. Stale sessions
    // decay back to stock 1:1 automatically — no explicit "disable"
    // handshake required when the client plugin unloads or crashes.
    bool              burst_enabled              = false;
    timer::time_point burst_heartbeat_last       = {};
    uint16            burst_heartbeat_interval_s = 20;   // from last heartbeat
    uint8             burst_client_flags         = 0;    // bits reported by client
    timer::time_point            last_update        = {}; // time of last packet recv
    blowfish_t                   blowfish           = {}; // unique decypher keys, these are the currently expected keys
    std::unique_ptr<CCharEntity> PChar;                   // game char
    uint8                        shuttingDown = 0;        // prevents double session closing
    uint32                       charID       = 0;
    uint32                       accountID    = 0;

    // Store old blowfish data, when a player recieves 0x00B their key should increment
    // If it doesn't, and we can still successfully decrypt here, that means we need to resend 0x00B.
    blowfish_t prev_blowfish = {};

    // Used to resend 0x00B zoneout packet in case the client needs it
    GP_GAME_LOGOUT_STATE zone_type = GP_GAME_LOGOUT_STATE::NONE;
    IPP                  zone_ipp  = {};

    void incrementBlowfish();
    void initBlowfish();

    auto toString() -> std::string;
};
