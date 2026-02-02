-- LOWER RESPAWN TIME FOR ALL NORMAL MOBS
UPDATE mob_groups mg
INNER JOIN mob_pools mp
	ON mg.poolid = mp.poolid
INNER JOIN mob_family_system mfs
	ON mp.familyid = mfs.familyid
INNER JOIN zone_settings zs
	ON mg.zoneid = zs.zoneid
SET respawntime = 180
WHERE mp.mobType = 0x00
AND mg.respawntime > 1
AND mfs.ecosystemID NOT IN (19)
AND mg.groupid = mg.groupid
AND zs.zonetype != 5;

-- NMs respawn timer to 300 seconds
UPDATE mob_groups mg
INNER JOIN mob_pools mp
	ON mg.poolid = mp.poolid
SET mg.respawntime = 300
WHERE mp.mobType & 0x02
AND mg.spawntype = 0
AND mg.respawntime > 600;

UPDATE mob_groups mg
INNER JOIN mob_pools mp
	ON mg.poolid = mp.poolid
INNER JOIN zone_settings zs
	ON mg.zoneid = zs.zoneid
SET mg.respawntime = 1800
WHERE mg.spawntype = 0
AND zs.zonetype = 128
AND NOT (mp.mobType & 0x02);