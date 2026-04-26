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

#include "map_statistics.h"

#include "common/logging.h"
#include "common/tracy.h"

#include "lua/luautils.h"

#include <magic_enum/magic_enum.hpp>

MapStatistics::MapStatistics()
{
    reset();
}

auto MapStatistics::toString(Key key)
{
    switch (key)
    {
        case Key::TotalPacketsToSendPerTick:
            return "Total Packets To Send Per Tick";
        case Key::TotalPacketsSentPerTick:
            return "Total Packets Sent Per Tick";
        case Key::TotalPacketsDelayedPerTick:
            return "Total Packets Delayed Per Tick";
        case Key::TotalBurstSendsPerTick:
            return "Total Burst Sends Per Tick";
        case Key::TasksTickTime:
            return "Tasks Tick Time (ms)";
        case Key::NetworkTickTime:
            return "Network Tick Time (ms)";
        case Key::TotalTickTime:
            return "Total Tick Time (ms)";
        case Key::TickDiffTime:
            return "Tick Diff/Sleep Time (ms)";
        case Key::ActiveZones:
            return "Active Zones (Process)";
        case Key::ConnectedPlayers:
            return "Connected Players (Process)";
        case Key::ActiveMobs:
            return "Active Mobs (Process)";
        case Key::DynamicTargIdUsagePercent:
            return "Dynamic TargID Usage (%)";
        case Key::RetransmitRequestsPerTick:
            return "Retransmit Requests";
        case Key::RetransmitRingHitsPerTick:
            return "Retransmit Ring Hits";
        case Key::RetransmitRingMissesPerTick:
            return "Retransmit Ring Misses";
        case Key::MaxBacklogObservedPerTick:
            return "Max Backlog Observed";
        case Key::ChunksPerDatagram_1:
            return "ChunksPerDatagram[1]";
        case Key::ChunksPerDatagram_2_4:
            return "ChunksPerDatagram[2-4]";
        case Key::ChunksPerDatagram_5_8:
            return "ChunksPerDatagram[5-8]";
        case Key::ChunksPerDatagram_9_16:
            return "ChunksPerDatagram[9-16]";
        case Key::ChunksPerDatagram_17_32:
            return "ChunksPerDatagram[17-32]";
        case Key::ChunksPerDatagram_33_64:
            return "ChunksPerDatagram[33-64]";
        case Key::DatagramSize_LT_500:
            return "DatagramSize[<500]";
        case Key::DatagramSize_500_799:
            return "DatagramSize[500-799]";
        case Key::DatagramSize_800_999:
            return "DatagramSize[800-999]";
        case Key::DatagramSize_1000_1199:
            return "DatagramSize[1000-1199]";
        case Key::DatagramSize_1200_1239:
            return "DatagramSize[1200-1239]";
        case Key::DatagramSize_1240Plus:
            return "DatagramSize[1240+]";
        case Key::DatagramRebuildsPerTick:
            return "Datagram Rebuilds (cap-induced)";
        case Key::BurstPerPoll_1:
            return "BurstPerPoll[1]";
        case Key::BurstPerPoll_2:
            return "BurstPerPoll[2]";
        case Key::BurstPerPoll_3_4:
            return "BurstPerPoll[3-4]";
        case Key::BurstPerPoll_5_8:
            return "BurstPerPoll[5-8]";
        case Key::Turnaround_LT_5ms:
            return "Turnaround[<5ms]";
        case Key::Turnaround_5_19ms:
            return "Turnaround[5-19ms]";
        case Key::Turnaround_20_49ms:
            return "Turnaround[20-49ms]";
        case Key::Turnaround_50_99ms:
            return "Turnaround[50-99ms]";
        case Key::Turnaround_100_199ms:
            return "Turnaround[100-199ms]";
        case Key::Turnaround_GTE_200ms:
            return "Turnaround[>=200ms]";
        default:
            return "Unknown";
    }
}

void MapStatistics::set(Key key, int64 value)
{
    statistics_[key] = value;
}

auto MapStatistics::get(Key key) const -> int64
{
    if (statistics_.find(key) == statistics_.end())
    {
        return 0;
    }

    return statistics_.at(key);
}

void MapStatistics::increment(Key key, int64 amount)
{
    statistics_[key] += amount;
}

void MapStatistics::decrement(Key key, int64 amount)
{
    statistics_[key] -= amount;
}

void MapStatistics::print()
{
    TracyZoneScoped;

    fmt::print("=== Map Statistics ===\n\n");

    for (const auto& [key, value] : statistics_)
    {
        fmt::print("{}: {}\n", toString(key), value);
    }

    reset();
}

void MapStatistics::flush()
{
    TracyZoneScoped;
    TracyReportLuaMemory(lua.lua_state());

    for (const auto& [key, value] : statistics_)
    {
        TracyReportGraphNumber(toString(key), value);
    }

    reset();
}

void MapStatistics::reset()
{
    TracyZoneScoped;

    for (const auto& key : magic_enum::enum_values<Key>())
    {
        statistics_[key] = 0;
    }
}

void MapStatistics::dumpXiocMetrics() const
{
    // Skip the dump entirely when nothing happened — keeps the log
    // quiet during idle periods rather than printing zero rows. The
    // sentinel is "did we send anything?"; if so, the rest of the
    // distributions are interesting too (even if mostly zero).
    const auto sent = get(Key::TotalPacketsSentPerTick);
    if (sent == 0)
    {
        return;
    }

    const auto rxReq = get(Key::RetransmitRequestsPerTick);
    const auto rxHit = get(Key::RetransmitRingHitsPerTick);
    const auto rxMis = get(Key::RetransmitRingMissesPerTick);
    const auto bursts = get(Key::TotalBurstSendsPerTick);
    const auto maxBacklog = get(Key::MaxBacklogObservedPerTick);

    ShowInfoFmt("[XIOC-METRICS] sent={} delayed={} bursts={} maxBacklog={} retransmit={{req={} hit={} miss={}}}",
                sent,
                get(Key::TotalPacketsDelayedPerTick),
                bursts,
                maxBacklog,
                rxReq,
                rxHit,
                rxMis);

    ShowInfoFmt("[XIOC-METRICS] chunksPerDatagram=[1:{} 2-4:{} 5-8:{} 9-16:{} 17-32:{} 33-64:{}]",
                get(Key::ChunksPerDatagram_1),
                get(Key::ChunksPerDatagram_2_4),
                get(Key::ChunksPerDatagram_5_8),
                get(Key::ChunksPerDatagram_9_16),
                get(Key::ChunksPerDatagram_17_32),
                get(Key::ChunksPerDatagram_33_64));

    ShowInfoFmt("[XIOC-METRICS] datagramSize=[<500:{} 500-799:{} 800-999:{} 1000-1199:{} 1200-1239:{} 1240+:{}] rebuilds={}",
                get(Key::DatagramSize_LT_500),
                get(Key::DatagramSize_500_799),
                get(Key::DatagramSize_800_999),
                get(Key::DatagramSize_1000_1199),
                get(Key::DatagramSize_1200_1239),
                get(Key::DatagramSize_1240Plus),
                get(Key::DatagramRebuildsPerTick));

    ShowInfoFmt("[XIOC-METRICS] burstPerPoll=[1:{} 2:{} 3-4:{} 5-8:{}]",
                get(Key::BurstPerPoll_1),
                get(Key::BurstPerPoll_2),
                get(Key::BurstPerPoll_3_4),
                get(Key::BurstPerPoll_5_8));

    ShowInfoFmt("[XIOC-METRICS] turnaround=[<5:{} 5-19:{} 20-49:{} 50-99:{} 100-199:{} >=200:{}] ms",
                get(Key::Turnaround_LT_5ms),
                get(Key::Turnaround_5_19ms),
                get(Key::Turnaround_20_49ms),
                get(Key::Turnaround_50_99ms),
                get(Key::Turnaround_100_199ms),
                get(Key::Turnaround_GTE_200ms));
}
