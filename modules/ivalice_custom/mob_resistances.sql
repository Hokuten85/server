UPDATE mob_resistances mr
INNER JOIN mob_pools mp
	ON mp.resist_id = mr.resist_id
INNER JOIN mob_groups mg
	ON mp.poolid = mg.poolid
INNER JOIN mob_family_system mfs
	ON mfs.familyID = mp.familyid
INNER JOIN zone_settings zs
	ON zs.zoneid = mg.zoneid
SET mr.slash_sdt = 0.75, mr.pierce_sdt = 0.75, mr.h2h_sdt = 0.75, mr.impact_sdt = 0.75
WHERE zs.name LIKE '%Dynamis%'
AND mfs.superFamily = 'Statue';

update mob_resistances mr
inner join mob_pools mp
	on mp.resist_id = mr.resist_id
inner join mob_family_system mfs 
	on mfs.familyID = mp.familyid
set mr.h2h_sdt = 2500
where mfs.ecosystem IN ('Beast', 'Plantoid')
and mr.h2h_sdt < 2500;

update mob_resistances mr
inner join mob_pools mp
	on mp.resist_id = mr.resist_id
inner join mob_family_system mfs 
	on mfs.familyID = mp.familyid
	set mr.slash_sdt = 2500
where mfs.ecosystem IN ('Vermin', 'Aquan')
and mr.slash_sdt < 2500;

update mob_resistances mr
inner join mob_pools mp
	on mp.resist_id = mr.resist_id
inner join mob_family_system mfs 
	on mfs.familyID = mp.familyid
	set mr.pierce_sdt = 2500
where mfs.ecosystem IN ('Lizard', 'Bird')
and mr.pierce_sdt < 2500;