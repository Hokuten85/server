-- ------------------------------------------------------------
-- Limbus Mob Family System Entries
-- ------------------------------------------------------------
-- These families were removed from the base mob_family_system.sql in commit
-- 706b1dae70 "[sql] Delete unused and duplicate mob family values" as they
-- appeared unused, but they are required by limbus mob pools.
--
-- IDs use +10000 offset from the originals to avoid collision with future
-- base game updates (consistent with the pool ID strategy used elsewhere
-- in this module, e.g. poolid 10511 instead of base poolid 6135).
--
-- mob_pools.familyid references in limbus_pools.sql have been updated to
-- use these new IDs accordingly.
-- ------------------------------------------------------------

-- Avatar element-specific families
-- Used by: Temenos Eastern Tower Mystic Avatars (pools 10531-10543)
--          Central Temenos 4th Floor Mystic Avatar (pool 10593)
INSERT IGNORE INTO `mob_family_system` VALUES (10319,'Avatar-Shiva',22,'Shiva',5,'Avatar',40,100,120,3,3,3,3,3,3,3,1,3,1,3,0.0,41,0);
INSERT IGNORE INTO `mob_family_system` VALUES (10320,'Avatar-Ramuh',21,'Ramuh',5,'Avatar',40,100,120,3,3,3,3,3,3,3,1,3,1,3,0.0,41,0);
INSERT IGNORE INTO `mob_family_system` VALUES (10321,'Avatar-Titan',23,'Titan',5,'Avatar',40,100,120,3,3,3,3,3,3,3,1,3,1,3,0.0,41,0);
INSERT IGNORE INTO `mob_family_system` VALUES (10322,'Avatar-Ifrit',17,'Ifrit',5,'Avatar',40,100,120,3,3,3,3,3,3,3,1,3,1,3,0.0,41,0);
INSERT IGNORE INTO `mob_family_system` VALUES (10323,'Avatar-Leviathan',19,'Leviathan',5,'Avatar',40,100,120,3,3,3,3,3,3,3,1,3,1,3,0.0,41,0);
INSERT IGNORE INTO `mob_family_system` VALUES (10324,'Avatar-Garuda',16,'Garuda',5,'Avatar',40,100,120,3,3,3,3,3,3,3,1,3,1,3,0.0,41,0);
INSERT IGNORE INTO `mob_family_system` VALUES (10325,'Avatar-Fenrir',15,'Fenrir',5,'Avatar',84,100,120,3,3,3,3,3,3,3,1,3,1,3,0.0,41,0);

-- Kindred Limbus family
-- Used by: Temenos Northern Tower Kindred mobs (pools 10511-10513, 10516)
INSERT IGNORE INTO `mob_family_system` VALUES (10358,'Kindred-Limbus',92,'Kindred',9,'Demon',70,110,140,1,2,4,4,1,2,4,1,3,1,3,8.0,257,0);

-- Sea Monk Limbus family
-- Used by: Apollyon SE Tieholtsodi (pool 10666)
INSERT IGNORE INTO `mob_family_system` VALUES (10219,'Sea_Monk-Limbus',129,'Sea_Monk',2,'Aquan',40,110,140,3,5,4,4,4,4,4,1,3,1,3,6.0,2,1);
