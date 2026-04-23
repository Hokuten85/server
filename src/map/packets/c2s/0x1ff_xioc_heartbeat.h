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

#include "base.h"

// XIOverclock heartbeat. Not an SE opcode -- a sentinel used by the
// XIOverclock client plugin to opt a session into server-side burst send.
//
// Payload (8 bytes after the 4-byte header):
//   magic[4]    = 'X','I','O','C'     — rejects mis-typed / accidental traffic
//   version     = 1                   — bump if the payload layout changes
//   flags       = bitmask              (bit 0: drain loop active,
//                                       bit 1: SO_RCVBUF raised)
//   interval_s  = heartbeat period the client intends to use (seconds)
//
// The server records burst_heartbeat_last = now on each valid heartbeat.
// Burst send is gated on (burst_enabled && now - last < 3 * interval_s);
// missing ~3 consecutive heartbeats decays the session back to stock 1:1.
GP_CLI_PACKET(GP_CLI_COMMAND_XIOC_HEARTBEAT,
              uint8_t  magic[4];      // "XIOC"
              uint8_t  version;       // 1
              uint8_t  flags;         // bit 0 = drain loop, bit 1 = rcvbuf
              uint16_t interval_sec;  // expected heartbeat period
);
