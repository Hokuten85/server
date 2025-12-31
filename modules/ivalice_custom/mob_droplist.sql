UPDATE mob_droplist SET itemRate = 50 WHERE itemId = 1025 AND itemRate < 50; -- palborough_chest_key
UPDATE mob_droplist SET itemRate = 50 WHERE itemId IN (13514,15551) AND itemRate < 50; -- archers_ring, shikaree-ring

-- Coffer Keys 10% minimum
UPDATE mob_droplist md
INNER JOIN item_basic ib 
	ON md.itemId = ib.itemid 
SET md.itemRate = 100
WHERE ib.name LIKE '%coffer_key%'
AND md.itemRate < 100;

SET @UNCOMMON = 100; -- Uncommon, 10%
SET @COMMON = 150;   -- Common, 15%
SET @VCOMMON = 240; -- Uncommon, 10%

UPDATE mob_droplist SET itemRate = 50 WHERE itemId = 17662; -- Company Sword
UPDATE mob_droplist SET itemRate = 50 WHERE itemId = 18002; -- Perseus's Harpe
UPDATE mob_droplist SET itemRate = @UNCOMMON WHERE dropId = 644 AND itemId = 1312; -- angel-skin

INSERT INTO `mob_droplist` VALUES (2326,0,0,1000,1418,@VCOMMON);  -- Gem Of The East (VCOMMON, 24%) Dec 7th 2010
INSERT INTO `mob_droplist` VALUES (2820,0,0,1000,1419,@VCOMMON);  -- Springstone (VCOMMON, 24%) Dec 7th 2010
INSERT INTO `mob_droplist` VALUES (357,0,0,1000,1420,@VCOMMON);  -- Gem Of The South (VCOMMON, 24%) Dec 7th 2010
INSERT INTO `mob_droplist` VALUES (2821,0,0,1000,1421,@VCOMMON);  -- Summerstone (VCOMMON, 24%) Dec 7th 2010
INSERT INTO `mob_droplist` VALUES (638,0,0,1000,1422,@VCOMMON);  -- Gem Of The West (VCOMMON, 24%) Dec 7th 2010
INSERT INTO `mob_droplist` VALUES (2822,0,0,1000,1423,@VCOMMON);  -- Autumnstone (VCOMMON, 24%) Dec 7th 2010
INSERT INTO `mob_droplist` VALUES (2800,0,0,1000,1424,@VCOMMON);  -- Gem Of The North (VCOMMON, 24%) Dec 7th 2010
INSERT INTO `mob_droplist` VALUES (2823,0,0,1000,1425,@VCOMMON);  -- Winterstone (VCOMMON, 24%) Dec 7th 2010

INSERT INTO `mob_droplist` VALUES (946,0,0,1000,1404,@VCOMMON);       -- Seal Of Genbu (24.0%)
INSERT INTO `mob_droplist` VALUES (2196,0,0,1000,1405,@VCOMMON);      -- Seal Of Seiryu (24.0%)
INSERT INTO `mob_droplist` VALUES (2362,0,0,1000,1407,@VCOMMON);       -- Seal Of Suzaku (24.0%)
INSERT INTO `mob_droplist` VALUES (394,0,0,1000,1406,@VCOMMON);      -- Seal Of Byakko (24.0%)

UPDATE mob_droplist SET dropType = 0, groupId = 0 WHERE itemId IN (13415,13566); -- Pixie Earring, Defending Ring

UPDATE mob_droplist SET itemRate = @COMMON WHERE itemId IN (3340,3342,3344); -- Sweet Tea, Savory Shank, Red Pondweed
