-- LOWER DYNAMIS MOB LEVELS
UPDATE mob_spawn_points msp
INNER JOIN mob_groups mg
	ON msp.groupid = mg.groupid
	AND ((msp.mobid >> 12) & 0xFFF) = mg.zoneid
INNER JOIN mob_pools mp
	ON mg.poolid = mp.poolid
INNER JOIN zone_settings zs
	ON mg.zoneid = zs.zoneid
SET msp.minLevel = msp.minLevel - 15, msp.maxLevel = msp.maxLevel - 15
WHERE zs.zonetype = 128
AND NOT (mp.mobType & 0x02)
AND msp.minLevel > 85;

-- Mobs over lvl 85, reduce to 84 - 87
update mob_spawn_points msp
INNER JOIN mob_groups mg
	ON msp.groupid = mg.groupid
	AND ((msp.mobid >> 12) & 0xFFF) = mg.zoneid
inner join mob_pools mp
	on mg.poolid = mp.poolid
set mg.HP = 0, mg.MP = 0, msp.minLevel = 84, msp.maxLevel = 87
where msp.minLevel > 85
and not (mp.mobType & (0x02 | 0x04 | 0x08 | 0x10| 0x20));

-- reduce level of 85+ mobs in Toraimarai_Canal
UPDATE mob_spawn_points msp
INNER JOIN mob_groups mg
	ON msp.groupid = mg.groupid
	AND ((msp.mobid >> 12) & 0xFFF) = mg.zoneid
SET minLevel = 60, maxLevel = 67
WHERE zoneid = 169 AND minLevel >= 85;

