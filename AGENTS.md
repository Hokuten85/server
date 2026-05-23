# FFXI Private Server — AGENTS.md

## Project Overview

This is a LandSandBird (LSB)-based FFXI private server customized for the "Ivalice" private server. It uses Lua scripting for game logic and C++ for the core server engine, with a MySQL database backend.

Current branch: `Ivalice`. Main branch for PRs: `base`. Upstream: `Upstream/base` (LSB).

## Repository Structure

```
server/
├── src/map/          # C++ server source code (map server)
├── scripts/          # Lua game scripts
│   ├── battlefields/ # Battlefield-specific Lua (e.g. Temenos, Apollyon)
│   ├── globals/      # Shared Lua globals (battlefield.lua, limbus.lua, etc.)
│   ├── mixins/       # Reusable Lua behavior fragments
│   └── zones/        # Per-zone Lua (Zone.lua, IDs.lua, mobs/, npcs/)
├── modules/          # Custom modules that extend/override base scripts
│   ├── init.txt      # Lists which modules to load (order matters)
│   ├── original_limbus/sql/  # Limbus (Temenos/Apollyon) SQL data
│   └── ivalice_custom/       # Server-specific tweaks (SQL + Lua)
├── sql/              # Base SQL table definitions (applied once at DB setup)
└── documentation/    # Reference docs, old/deprecated scripts
```

## Database

- **Host:** Desktop-fl82f8v (MySQL on that machine)
- **Port:** 3306
- **Database:** `xidb`
- **Credentials:** See `\\Desktop-fl82f8v\h\source\Repos\server\settings\network.lua`
  - Login: `root`, Password: `Hokuten1`
- Module SQL files must be **manually applied** via `dbtool` or `mysql` CLI — they are NOT auto-loaded at server start.

## Mob ID Encoding

Mob IDs encode both zone and entity index:
```
zoneId  = (mobid >> 12) & 0xFFF
index   = mobid & 0xFFF
mobid   = (zoneId << 12) | index
```

## Key Mob Loading Rules

The zone loader in `src/map/utils/zoneutils.cpp` loads mobs via INNER JOINs across:
- `mob_spawn_points` → `mob_groups` (via `groupid`, zone-filtered)
- `mob_groups` → `mob_pools` (via `poolid`)
- `mob_pools` → `mob_resistances` (via `resist_id`)
- `mob_pools` → `mob_family_system` (via `familyid`)
- `mob_pools` → `mob_family_system` (via `familyid` for `charmable`, HP/MP scale, etc.)

**If any INNER JOIN fails, the mob is silently not loaded.** `GetMobByID()` will then warn "Mob doesn't exist (ID)".

## Limbus Module (`modules/original_limbus/`)

Temenos (zone 37) and Apollyon (zone 38) mob data. SQL files use **+10000 ID offsets** to avoid future collision with base game updates (e.g. pool 10511 instead of base pool 6135).

Files:
- `limbus_groups.sql` — mob_groups entries for limbus battlefields
- `limbus_pools.sql` — mob_pools entries (familyid must match mob_family_system)
- `limbus_spawn_points.sql` — mob_spawn_points for all limbus mobs
- `limbus_npcs.sql` — NPC/crate entity data
- `limbus_mob_family_system.sql` — mob_family_system entries (+10000 IDs) for families
  deleted from the base SQL in commit 706b1dae70

### Known Issue (Fixed)
Commit `706b1dae70` deleted families 219, 319-325, and 358 from `sql/mob_family_system.sql`.
These are required by limbus pools. Fix: `limbus_mob_family_system.sql` adds them back as IDs
10219, 10319-10325, 10358. Pool familyids in `limbus_pools.sql` updated to match.

## Temenos Zone Battlefields

- **Zone ID:** 37
- **Battlefield scripts:** `scripts/battlefields/Temenos/`
- **Zone scripts:** `scripts/zones/Temenos/` (IDs.lua has all hardcoded mob/NPC IDs)
- **Global limbus logic:** `scripts/globals/limbus.lua`
- Temenos supports up to **8 concurrent areas** (`maxAreas` in battlefield.lua)

## C++ Core

- Map server: `src/map/`
- Key files: `src/map/utils/zoneutils.cpp` (zone/mob loading), `src/map/lua/luautils.cpp` (Lua API)
- `GetMobByID(id)` without an instance uses `zoneutils::GetEntity` (global zone entity list)
- `GetMobByID(id, instance)` uses instance-scoped entity lookup

## Server Logs

Process logs are at: `\\Desktop-fl82f8v\h\FFIvalice\Process Logs`

## Module Loading

`modules/init.txt` controls which modules load. Currently active:
```
custom/
ivalice_custom/
original_limbus/
```
