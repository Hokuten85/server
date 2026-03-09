DELETE FROM item_latents WHERE itemId = 14226; -- Ninja Hakama
DELETE FROM item_latents WHERE itemId = 15573; -- Ninja Hakama +1
DELETE FROM item_latents WHERE itemId = 15084; -- Koga Hatsuburi
DELETE FROM item_latents WHERE itemId = 15257; -- Koga Hatsuburi +1
DELETE FROM item_latents WHERE itemId = 15129; -- Koga Hakama
DELETE FROM item_latents WHERE itemId = 15592; -- Koga Hakama +1
DELETE FROM item_latents WHERE itemId = 15144; -- Koga Kyahan
DELETE FROM item_latents WHERE itemId = 15677; -- Koga Kyahan +1

REPLACE INTO `item_latents` VALUES (11367,25,30,49,4277);  -- def+30 Tonosama Rice Ball
REPLACE INTO `item_latents` VALUES (11367,25,30,49,4278);  -- def+30 Shogun Rice Ball
REPLACE INTO `item_latents` VALUES (11367,25,30,49,4590);  -- def+40 Salmon Rice Ball
REPLACE INTO `item_latents` VALUES (11367,25,30,49,4605);  -- def+40 Naval Rice Ball
REPLACE INTO `item_latents` VALUES (11367,25,30,49,5928);  -- def+40 Hinesama Rice Ball
REPLACE INTO `item_latents` VALUES (11367,25,30,49,5929);  -- def+40 Ojo Rice Ball
REPLACE INTO `item_latents` VALUES (11367,25,30,49,4405);  -- def+50 Rice Ball
REPLACE INTO `item_latents` VALUES (11367,25,30,49,4604);  -- def+50 Rogue Rice Ball

REPLACE INTO item_latents
SELECT itemid, modid, value, 62, latentParam
FROM item_latents
WHERE latentid = 8; -- Latents based on Subjob now work for main job

REPLACE INTO `item_latents` VALUES (17207,141, 6,47,0); -- expunger
REPLACE INTO `item_latents` VALUES (17207,973, 6,47,0); -- expunger
REPLACE INTO `item_latents` VALUES (17275,141, 6,47,0); -- coffinmaker
REPLACE INTO `item_latents` VALUES (17275,973, 6,47,0); -- coffinmaker
REPLACE INTO `item_latents` VALUES (17451,287,31,47,0); -- morgenstern -- 58
REPLACE INTO `item_latents` VALUES (17451,973, 6,47,0); -- morgenstern
REPLACE INTO `item_latents` VALUES (17509,287,15,47,0); -- destroyers -- 20
REPLACE INTO `item_latents` VALUES (17509,973, 6,47,0); -- destroyers
REPLACE INTO `item_latents` VALUES (17589,287,18,47,0); -- thyrsusstab -- 70
REPLACE INTO `item_latents` VALUES (17589,973, 6,47,0); -- thyrsusstab
REPLACE INTO `item_latents` VALUES (17699,287,25,47,0); -- dissector -- 48
REPLACE INTO `item_latents` VALUES (17699,973, 6,47,0); -- dissector
REPLACE INTO `item_latents` VALUES (17793,287,16,47,0); -- senjuinrikio -- 41
REPLACE INTO `item_latents` VALUES (17793,973, 6,47,0); -- senjuinrikio
REPLACE INTO `item_latents` VALUES (17827,287,18,47,0); -- michishiba-no-tsuyu -- 83
REPLACE INTO `item_latents` VALUES (17827,973, 6,47,0); -- michishiba-no-tsuyu
REPLACE INTO `item_latents` VALUES (17944,287,29,47,0); -- retributor -- 62
REPLACE INTO `item_latents` VALUES (17944,973, 6,47,0); -- retributor
REPLACE INTO `item_latents` VALUES (18005,287,20,47,0); -- heart_snatcher -- 35
REPLACE INTO `item_latents` VALUES (18005,973, 6,47,0); -- heart_snatcher
REPLACE INTO `item_latents` VALUES (18053,287,21,47,0); -- gravedigger -- 95
REPLACE INTO `item_latents` VALUES (18053,973, 6,47,0); -- gravedigger
REPLACE INTO `item_latents` VALUES (18097,287,23,47,0); -- gondo-shizunori -- 95
REPLACE INTO `item_latents` VALUES (18097,973, 6,47,0); -- gondo-shizunori
REPLACE INTO `item_latents` VALUES (18217,287,21,47,0); -- rampager -- 94
REPLACE INTO `item_latents` VALUES (18217,973, 6,47,0); -- rampager
REPLACE INTO `item_latents` VALUES (18378,287, 2,47,0); -- subduer -- 87
REPLACE INTO `item_latents` VALUES (18378,973, 6,47,0); -- subduer -- 
