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

#include "common/cbasetypes.h"
#include <unordered_map>

class MapStatistics
{
public:
    enum class Key
    {
        TotalPacketsToSendPerTick,
        TotalPacketsSentPerTick,
        TotalPacketsDelayedPerTick,
        TasksTickTime,
        NetworkTickTime,
        TotalTickTime,
        TickDiffTime,
        ActiveZones,
        ConnectedPlayers,
        ActiveMobs,
        DynamicTargIdUsagePercent,

        // ---- XIOC instrumentation (general-purpose, retained post-trim) ----
        // All counters are per-flush-period; reset() zeros them at flush.
        // Read alongside TotalPacketsSentPerTick to derive ratios.

        // Peak PChar->getPacketCount() observed (post-send leftover) across
        // any session in the period. Tracks pressure on the backlog cap.
        MaxBacklogObservedPerTick,

        // Distribution of chunks packed into one outbound datagram in
        // send_parse. Buckets are non-overlapping; sum across all
        // ChunksPerDatagram_* equals datagram count for the period.
        ChunksPerDatagram_1,
        ChunksPerDatagram_2_4,
        ChunksPerDatagram_5_8,
        ChunksPerDatagram_9_16,
        ChunksPerDatagram_17_32,
        ChunksPerDatagram_33_64,

        // Distribution of post-compress, pre-encrypt datagram sizes (bytes,
        // not counting FFXI_HEADER_SIZE+md5). The cap is 1256 bytes
        // (= 1300 - FFXI_HEADER_SIZE(28) - md5(16)). If _1240Plus
        // dominates, the 1300 wire cap is binding and an MTU bump pays.
        // If _LT_500 dominates, MTU bump is wasted.
        DatagramSize_LT_500,
        DatagramSize_500_799,
        DatagramSize_800_999,
        DatagramSize_1000_1199,
        DatagramSize_1200_1239,
        DatagramSize_1240Plus,

        // Number of times send_parse's inner do-while had to rebuild the
        // datagram with fewer chunks because the post-compress size
        // exceeded the 1256-byte cap. Cleanest single signal for "is the
        // 1300 wire cap actively limiting throughput?" — if zero or near
        // zero across a session, the cap is not binding.
        DatagramRebuildsPerTick,

        // Round-trip latency from c->s arrival into handle_incoming_packet
        // to s->c send returning. Measures server-side processing only,
        // not client-side recv handling.
        Turnaround_LT_5ms,
        Turnaround_5_19ms,
        Turnaround_20_49ms,
        Turnaround_50_99ms,
        Turnaround_100_199ms,
        Turnaround_GTE_200ms,
    };

    MapStatistics();

    static auto toString(Key key);

    void set(Key key, int64 value);
    auto get(Key key) const -> int64;

    void increment(Key key, int64 amount = 1);
    void decrement(Key key, int64 amount = 1);

    void print();
    void flush();

    // Periodic structured dump of the XIOC network counters to ShowInfo.
    // Called from MapNetworking::flushStatistics() when
    // logging.NETWORK_METRICS is true. Emits one line per logical group
    // so logs grep cleanly: [XIOC-METRICS] sends=... bursts=... etc.
    void dumpXiocMetrics() const;

private:
    void reset();

    std::unordered_map<Key, int64> statistics_;
};
