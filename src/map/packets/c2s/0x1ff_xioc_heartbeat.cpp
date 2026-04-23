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

#include "0x1ff_xioc_heartbeat.h"

#include "common/timer.h"
#include "entities/charentity.h"
#include "map_session.h"

auto GP_CLI_COMMAND_XIOC_HEARTBEAT::validate(MapSession* PSession, const CCharEntity* PChar) const -> PacketValidationResult
{
    // Reject anything that isn't a well-formed v1 heartbeat. Out-of-range
    // intervals fall back to a conservative default on the process side.
    // PacketValidator implicitly converts to PacketValidationResult on
    // return; matches the pattern used by every other c2s validate().
    return PacketValidator(PChar)
        .mustEqual(magic[0], 'X', "XIOC heartbeat: bad magic[0]")
        .mustEqual(magic[1], 'I', "XIOC heartbeat: bad magic[1]")
        .mustEqual(magic[2], 'O', "XIOC heartbeat: bad magic[2]")
        .mustEqual(magic[3], 'C', "XIOC heartbeat: bad magic[3]")
        .mustEqual(version,  static_cast<uint8_t>(1), "XIOC heartbeat: unsupported version");
}

void GP_CLI_COMMAND_XIOC_HEARTBEAT::process(MapSession* PSession, CCharEntity* PChar) const
{
    if (PSession == nullptr)
    {
        return;
    }

    // Clamp reported interval to [5, 120] seconds. A liar can still claim
    // 120 and the session will just decay slower; they can't extend past
    // that bound.
    uint16_t interval = interval_sec;
    if (interval < 5)   interval = 5;
    if (interval > 120) interval = 120;

    PSession->burst_enabled              = true;
    PSession->burst_heartbeat_interval_s = interval;
    PSession->burst_heartbeat_last       = timer::now();
    PSession->burst_client_flags         = flags;
}
