update item_mods set value = 30 where modid = 501 and value < 30;
update item_mods set value = 50 where modid = 501 and itemid IN (18148,18150); -- acid, blind bolt

DELETE FROM item_mods WHERE itemId = 12511 AND modId = 27; -- Fighter's Mask
REPLACE INTO item_mods VALUES (12511,384,500); -- Fighter's Mask
DELETE FROM item_mods WHERE itemId = 15225 AND modId = 27; -- Fighter's Mask +1
REPLACE INTO item_mods VALUES (15225,384,500); -- Fighter's Mask +1
DELETE FROM item_mods WHERE itemId = 12638 AND modId = 27; -- Fighter's Lorica
REPLACE INTO item_mods VALUES (12638,84,15); -- Fighter's Lorica
DELETE FROM item_mods WHERE itemId = 14473 AND modId = 27; -- Fighter's Lorica +1
REPLACE INTO item_mods VALUES (14473,84,20); -- Fighter's Lorica +1
DELETE FROM item_mods WHERE itemId = 13961 AND modId = 27; -- Fighter's Mufflers
REPLACE INTO item_mods VALUES (13961,8,10); -- Fighter's Mufflers
DELETE FROM item_mods WHERE itemId = 14890 AND modId = 27; -- Fighter's Mufflers +1
REPLACE INTO item_mods VALUES (14890,8,12); -- Fighter's Mufflers +1
DELETE FROM item_mods WHERE itemId = 14214 AND modId = 27; -- Fighter's Cuisses
REPLACE INTO item_mods VALUES (14214,954,60); -- Fighter's Cuisses
DELETE FROM item_mods WHERE itemId = 15561 AND modId = 27; -- Fighter's Cuisses +1
REPLACE INTO item_mods VALUES (15561,954,60); -- Fighter's Cuisses +1
DELETE FROM item_mods WHERE itemId = 14089 AND modId = 27; -- Fighter's Calligae
DELETE FROM item_mods WHERE itemId = 15352 AND modId = 27; -- Fighter's Calligae +1
UPDATE item_mods SET value = 5 WHERE itemId IN (14089, 15352) AND modid = 288; -- Fighter's Calligae and Ftr. Calligae +1 

DELETE FROM item_mods WHERE itemId = 15072 AND modId IN (9,27); -- Warrior's Mask
DELETE FROM item_mods WHERE itemId = 15245 AND modId IN (9,27); -- Warrior's Mask +1
REPLACE INTO item_mods VALUES (15072,8,5); -- Warrior's Mask
REPLACE INTO item_mods VALUES (15245,8,6); -- Warrior's Mask +1
REPLACE INTO item_mods VALUES (15072,841,5); -- Warrior's Mask
REPLACE INTO item_mods VALUES (15245,841,6); -- Warrior's Mask +1
DELETE FROM item_mods WHERE itemId = 15087 AND modId = 27; -- Warrior's Lorica
DELETE FROM item_mods WHERE itemId = 14500 AND modId = 27; -- Warrior's Lorica +1
REPLACE INTO item_mods VALUES (15087,85,15); -- Warrior's Lorica
REPLACE INTO item_mods VALUES (14500,85,20); -- Warrior's Lorica +1
DELETE FROM item_mods WHERE itemId = 15102 AND modId = 27; -- Warrior's Mufflers
DELETE FROM item_mods WHERE itemId = 14909 AND modId = 27; -- Warrior's Mufflers +1
REPLACE INTO item_mods VALUES (15102,10,10); -- Warrior's Mufflers
REPLACE INTO item_mods VALUES (14909,10,10); -- Warrior's Mufflers +1
DELETE FROM item_mods WHERE itemId = 15117 AND modId = 27; -- Warrior's Cuisses
DELETE FROM item_mods WHERE itemId = 15580 AND modId = 27; -- Warrior's Cuisses +1
UPDATE item_mods SET value = 5 WHERE itemId IN (15117, 15580) AND modid = 288; -- Warrior's Cuisses and Warrior Cuisses +1 
DELETE FROM item_mods WHERE itemId = 15132 AND modId = 27; -- Warrior's Calligae
DELETE FROM item_mods WHERE itemId = 15665 AND modId = 27; -- Warrior's Calligae +1
REPLACE INTO item_mods VALUES (15132,948,5); -- Warrior's Calligae
REPLACE INTO item_mods VALUES (15665,948,5); -- Warrior's Calligae +1

REPLACE INTO item_mods VALUES (12512,165,5); -- Temple Crown
REPLACE INTO item_mods VALUES (12512,289,5); -- Temple Crown
REPLACE INTO item_mods VALUES (15226,165,5); -- Temple Crown +1
REPLACE INTO item_mods VALUES (15226,289,5); -- Temple Crown +1
REPLACE INTO item_mods VALUES (12639,80,15); -- Temple Cyclas
REPLACE INTO item_mods VALUES (14474,80,20); -- Temple Cyclas +1
DELETE FROM item_mods WHERE itemid = 12639 AND modid = 25; -- Temple Cyclas
DELETE FROM item_mods WHERE itemid = 14474 AND modid = 25; -- Temple Cyclas +1
UPDATE item_mods SET value = 100 WHERE itemid = 13962 AND modId = 97; -- Temple Gloves
UPDATE item_mods SET value = 100 WHERE itemid = 14891 AND modId = 97; -- Temple Gloves +1
UPDATE item_mods SET value = 10 WHERE itemid = 14215 AND modId = 291; -- Temple Hose
UPDATE item_mods SET value = 13 WHERE itemid = 15562 AND modId = 291; -- Temple Hose +1
REPLACE INTO item_mods VALUES (14090,173,20); -- Temple Gaiters
REPLACE INTO item_mods VALUES (15353,173,20); -- Temple Gaiters +1

REPLACE INTO item_mods VALUES (15073,8,8); -- Melee Crown
REPLACE INTO item_mods VALUES (15246,8,10); -- Melee Crown +1
UPDATE item_mods SET value = 5 WHERE itemid = 15088 AND modId = 370; -- Melee Cyclas
UPDATE item_mods SET value = 5 WHERE itemid = 14501 AND modId = 370; -- Melee Cyclas +1
UPDATE item_mods SET value = 40 WHERE itemid = 15103 AND modId = 1026; -- Melee Gloves
UPDATE item_mods SET value = 50 WHERE itemid = 14910 AND modId = 1026; -- Melee Gloves +1
UPDATE item_mods SET value = 8 WHERE itemid = 15103 AND modId = 289; -- Melee Gloves
UPDATE item_mods SET value = 10 WHERE itemid = 14910 AND modId = 289; -- Melee Gloves +1
UPDATE item_mods SET value = 8 WHERE itemid = 15118 AND modId = 289; -- Melee Hose
UPDATE item_mods SET value = 10 WHERE itemid = 15581 AND modId = 289; -- Melee Hose +1
UPDATE item_mods SET value = 8 WHERE itemid = 15118 AND modId = 292; -- Melee Hose
UPDATE item_mods SET value = 10 WHERE itemid = 15581 AND modId = 292; -- Melee Hose +1
UPDATE item_mods SET value = 15 WHERE itemid = 15133 AND modId = 543; -- Melee Gaiters
UPDATE item_mods SET value = 15 WHERE itemid = 15666 AND modId = 543; -- Melee Gaiters +1

UPDATE item_mods SET value = -5 WHERE itemid = 13855 AND modId = 27; -- Healer's Cap
UPDATE item_mods SET value = -5 WHERE itemid = 15227 AND modId = 27; -- Healer's Cap +1
UPDATE item_mods SET value = 5 WHERE itemid = 13855 AND modId = 13; -- Healer's Cap
UPDATE item_mods SET value = 8 WHERE itemid = 15227 AND modId = 13; -- Healer's Cap +1
REPLACE INTO item_mods VALUES (12640,13,5); -- Healer's Bliaut
REPLACE INTO item_mods VALUES (14475,13,7); -- Healer's Bliaut +1
REPLACE INTO item_mods VALUES (12640,12,5); -- Healer's Bliaut
REPLACE INTO item_mods VALUES (14475,12,7); -- Healer's Bliaut +1
REPLACE INTO item_mods VALUES (13963,374,10); -- Healer's Mitts.
REPLACE INTO item_mods VALUES (14892,374,10); -- Healer's Mitts. +1
REPLACE INTO item_mods VALUES (14216,13,10); -- Healer's Pantaln.
REPLACE INTO item_mods VALUES (15563,13,12); -- Healer's Pantaln. +1
REPLACE INTO item_mods VALUES (14091,838,10); -- Healer's Duckbills.
REPLACE INTO item_mods VALUES (15354,838,10); -- Healer's Duckbills. +1

UPDATE item_mods SET value = 10 WHERE itemid = 15074 AND modId = 244; -- Cleric's Cap
UPDATE item_mods SET value = 12 WHERE itemid = 15247 AND modId = 244; -- Cleric's Cap +1
UPDATE item_mods SET value = 2 WHERE itemid = 14502 AND modId = 369; -- Cleric's Cap +1
UPDATE item_mods SET value = 15 WHERE itemid = 15089 AND modId = 838; -- Cleric's Cap
UPDATE item_mods SET value = 15 WHERE itemid = 14502 AND modId = 838; -- Cleric's Cap +1
REPLACE INTO item_mods VALUES (15104,13,7); -- Cleric's Mitts.
REPLACE INTO item_mods VALUES (14911,13,10); -- Cleric's Mitts +1
REPLACE INTO item_mods VALUES (15089,369,2); -- Cleric's Bliaut.
REPLACE INTO item_mods VALUES (14502,369,2); -- Cleric's Bliaut +1
REPLACE INTO item_mods VALUES (15119,567,30); -- Cleric's Pantaln.
REPLACE INTO item_mods VALUES (15119,860,3); -- Cleric's Pantaln.
REPLACE INTO item_mods VALUES (15582,567,32); -- Cleric's Pantaln +1
REPLACE INTO item_mods VALUES (15582,860,3); -- Cleric's Pantaln +1
UPDATE item_mods SET value = 15 WHERE itemid = 15134 AND modId = 113; -- Cleric's Duckbills
UPDATE item_mods SET value = 15 WHERE itemid = 15667 AND modId = 113; -- Cleric's Duckbills +1

REPLACE INTO item_mods VALUES (13856,28,5); -- Wizard's Petasos
REPLACE INTO item_mods VALUES (15228,28,5); -- Wizard's Petasos +1
REPLACE INTO item_mods VALUES (12641,12,5); -- Wizard's Coat
REPLACE INTO item_mods VALUES (14476,12,5); -- Wizard's Coat +1
UPDATE item_mods SET value = 15 WHERE itemid = 12641 AND modId = 114; -- Wizard's Coat
UPDATE item_mods SET value = 17 WHERE itemid = 14476 AND modId = 114; -- Wizard's Coat +1
REPLACE INTO item_mods VALUES (13964,12,5); -- Wizard's Gloves
UPDATE item_mods SET value = 8 WHERE itemid = 14893 AND modId = 12; -- Wizard's Gloves +1
REPLACE INTO item_mods VALUES (14217,315,10); -- Wizard's Tonban
REPLACE INTO item_mods VALUES (15564,315,10); -- Wizard's Tonban +1
DELETE FROM item_mods WHERE itemid = 14092 AND modid = 11; -- Wizard's Sabots
REPLACE INTO item_mods VALUES (14092,12,3); -- Wizard's Sabots
REPLACE INTO item_mods VALUES (14092,562,10); -- Wizard's Sabots
DELETE FROM item_mods WHERE itemid = 15355 AND modid = 11; -- Wizard's Sabots +1
REPLACE INTO item_mods VALUES (15355,12,5); -- Wizard's Sabots +1
REPLACE INTO item_mods VALUES (15355,13,5); -- Wizard's Sabots +1
REPLACE INTO item_mods VALUES (15355,562,15); -- Wizard's Sabots +1

UPDATE item_mods SET value = 15 WHERE itemid = 15075 AND modId IN (114,115); -- Sorcerer's Petas.
UPDATE item_mods SET value = 17 WHERE itemid = 15248 AND modId IN (114,115); -- Sorcerer's Petas. +1
UPDATE item_mods SET value = 15 WHERE itemid = 15090 AND modId IN (115); -- Sorcerer's Coat.
UPDATE item_mods SET value = 17 WHERE itemid = 14503 AND modId IN (115); -- Sorcerer's Coat. +1
UPDATE item_mods SET value = 2 WHERE itemid = 14503 AND modId IN (369); -- Sorcerer's Coat. +1
UPDATE item_mods SET value = 10 WHERE itemid = 15105 AND modId IN (487); -- Sorcerer's Gloves
UPDATE item_mods SET value = 10 WHERE itemid = 14912 AND modId IN (487); -- Sorcerer's Gloves. +1
REPLACE INTO item_mods VALUES (15105,12,5); -- Sorcerer's Gloves
REPLACE INTO item_mods VALUES (14912,12,5); -- Sorcerer's Gloves +1
REPLACE INTO item_mods VALUES (15120,28,5); -- Sorcerer's Tonban
REPLACE INTO item_mods VALUES (15583,28,5); -- Sorcerer's Tonban +1
UPDATE item_mods SET value = 20 WHERE itemid = 15135 AND modId IN (296); -- Sorcerer's Sabots
UPDATE item_mods SET value = 20 WHERE itemid = 15668 AND modId IN (296); -- Sorcerer's Sabots. +1

UPDATE item_mods SET value = 5 WHERE itemid = 12513 AND modId IN (12); -- Warlock's Chapeau
UPDATE item_mods SET value = 8 WHERE itemid = 15229 AND modId IN (12); -- Warlock's Chapeau +1
UPDATE item_mods SET value = 15 WHERE itemid = 12513 AND modId IN (115); -- Warlock's Chapeau
UPDATE item_mods SET value = 15 WHERE itemid = 15229 AND modId IN (115); -- Warlock's Chapeau +1
REPLACE INTO item_mods VALUES (12642,12,5); -- Warlock's Tabard
REPLACE INTO item_mods VALUES (14477,12,5); -- Warlock's Tabard +1
REPLACE INTO item_mods VALUES (12642,13,5); -- Warlock's Tabard
REPLACE INTO item_mods VALUES (14477,13,5); -- Warlock's Tabard +1
REPLACE INTO item_mods VALUES (13965,432,10); -- Warlock's Gloves
REPLACE INTO item_mods VALUES (14894,432,10); -- Warlock's Gloves +1
UPDATE item_mods SET value = 15 WHERE itemid = 14218 AND modId IN (112); -- Warlock's Tights
UPDATE item_mods SET value = 17 WHERE itemid = 15565 AND modId IN (112); -- Warlock's Tights +1
UPDATE item_mods SET value = 17 WHERE itemid = 15565 AND modId IN (113); -- Warlock's Tights +1
REPLACE INTO item_mods VALUES (14218,890,10); -- Warlock's Tights
REPLACE INTO item_mods VALUES (15565,890,10); -- Warlock's Tights +1
REPLACE INTO item_mods VALUES (14093,1151,10); -- Warlock's Boots
REPLACE INTO item_mods VALUES (15356,1151,10); -- Warlock's Boots +1

REPLACE INTO item_mods VALUES (15076,12,5); -- Duelist's Chapeau
REPLACE INTO item_mods VALUES (15249,12,5); -- Duelist's Chapeau +1
REPLACE INTO item_mods VALUES (15076,13,5); -- Duelist's Chapeau
UPDATE item_mods SET value = 8 WHERE itemid = 15249 AND modid = 13; -- Duelist's Chapeau +1
UPDATE item_mods SET value = 2 WHERE itemid = 15249 AND modid = 369; -- Duelist's Chapeau +1
UPDATE item_mods SET value = 15 WHERE itemid = 15091 AND modid = 112; -- Duelist's Tabard
UPDATE item_mods SET value = 17 WHERE itemid = 14504 AND modid = 112; -- Duelist's Tabard +1
REPLACE INTO item_mods VALUES (15106,890,10); -- Duelist's Gloves
REPLACE INTO item_mods VALUES (14913,890,10); -- Duelist's Gloves +1
REPLACE INTO item_mods VALUES (15121,28,5); -- Duelist's Tights
REPLACE INTO item_mods VALUES (15584,28,5); -- Duelist's Tights +1
UPDATE item_mods SET value = 15 WHERE itemid = 15121 AND modid = 115; -- Duelist's Tights
UPDATE item_mods SET value = 17 WHERE itemid = 15584 AND modid = 115; -- Duelist's Tights +1
REPLACE INTO item_mods VALUES (15136,12,4); -- Duelist's Tights
REPLACE INTO item_mods VALUES (15669,12,5); -- Duelist's Tights +1
UPDATE item_mods SET value = 5 WHERE itemid = 15136 AND modid = 28; -- Duelist's Boots
UPDATE item_mods SET value = 6 WHERE itemid = 15669 AND modid = 28; -- Duelist's Boots +1

REPLACE INTO item_mods VALUES (12514,9,5); -- Rogue's Bonnet
REPLACE INTO item_mods VALUES (12514,298,2); -- Rogue's Bonnet
REPLACE INTO item_mods VALUES (15230,9,8); -- Rogue's Bonnet
REPLACE INTO item_mods VALUES (15230,298,2); -- Rogue's Bonnet +1
REPLACE INTO item_mods VALUES (12643,8,5); -- Rogue's Vest
REPLACE INTO item_mods VALUES (12643,9,5); -- Rogue's Vest
REPLACE INTO item_mods VALUES (12643,421,10); -- Rogue's Vest
REPLACE INTO item_mods VALUES (14478,8,8); -- Rogue's Vest
REPLACE INTO item_mods VALUES (14478,9,8); -- Rogue's Vest
REPLACE INTO item_mods VALUES (14478,421,10); -- Rogue's Vest +1
REPLACE INTO item_mods VALUES (13966,9,5); -- Rogue's Armlets
REPLACE INTO item_mods VALUES (13966,11,5); -- Rogue's Armlets
REPLACE INTO item_mods VALUES (13966,520,10); -- Rogue's Armlets
REPLACE INTO item_mods VALUES (14895,11,5); -- Rogue's Armlets +1
UPDATE item_mods SET value = 5 WHERE itemid = 14895 and modid = 9; -- Rogue's Armlets +1
REPLACE INTO item_mods VALUES (14219,9,4); -- Rogue's Culottes
UPDATE item_mods SET value = 8 WHERE itemid = 14219 AND modid = 11; -- Rogue's Culottes
UPDATE item_mods SET value = 8 WHERE itemid = 15566 AND modid IN (9,11); -- Rogue's Culottes +1
UPDATE item_mods SET value = 60 WHERE itemid = 14094 AND modid = 93; -- Rogue's Poulaines
REPLACE INTO item_mods VALUES (14094,9,4); -- Rogue's Poulaines
REPLACE INTO item_mods VALUES (14094,384,300); -- Rogue's Poulaines
UPDATE item_mods SET value = 60 WHERE itemid = 15357 AND modid = 93; -- Rogue's Poulaines +1
REPLACE INTO item_mods VALUES (15357,9,4); -- Rogue's Poulaines +1
REPLACE INTO item_mods VALUES (15357,384,300); -- Rogue's Poulaines +1

DELETE FROM item_mods WHERE itemid = 15077 AND modid = 27; -- Assassin's Bonnet
REPLACE INTO item_mods VALUES (15077,9,6); -- Assassin's Bonnet
REPLACE INTO item_mods VALUES (15077,302,3); -- Assassin's Bonnet
REPLACE INTO item_mods VALUES (15077,384,300); -- Assassin's Bonnet
REPLACE INTO item_mods VALUES (15077,835,50); -- Assassin's Bonnet
DELETE FROM item_mods WHERE itemid = 15250 AND modid = 27; -- Assassin's Bonnet +1
REPLACE INTO item_mods VALUES (15250,9,6); -- Assassin's Bonnet +1
REPLACE INTO item_mods VALUES (15250,302,4); -- Assassin's Bonnet +1
REPLACE INTO item_mods VALUES (15250,384,400); -- Assassin's Bonnet +1
REPLACE INTO item_mods VALUES (15250,835,50); -- Assassin's Bonnet +1
DELETE FROM item_mods WHERE itemid = 15092 AND modid = 27; -- Assassin's Vest
REPLACE INTO item_mods VALUES (15092,81,15); -- Assassin's Vest
REPLACE INTO item_mods VALUES (15092,165,20); -- Assassin's Vest
DELETE FROM item_mods WHERE itemid = 14505 AND modid = 27; -- Assassin's Vest +1
REPLACE INTO item_mods VALUES (14505,81,20); -- Assassin's Vest +1
REPLACE INTO item_mods VALUES (14505,165,20); -- Assassin's Vest +1

DELETE FROM item_mods WHERE itemid = 14914 AND modid = 27; -- Assassin's Armlets
REPLACE INTO item_mods VALUES (14914,259,10); -- Assassin's Armlets
REPLACE INTO item_mods VALUES (14914,303,2); -- Assassin's Armlets
DELETE FROM item_mods WHERE itemid = 14914 AND modid = 27; -- Assassin's Armlets +1
REPLACE INTO item_mods VALUES (14914,259,10); -- Assassin's Armlets +1
REPLACE INTO item_mods VALUES (14914,303,2); -- Assassin's Armlets +1
DELETE FROM item_mods WHERE itemid = 15122 AND modid = 27; -- Assassin's Culottes
REPLACE INTO item_mods VALUES (15122,165,5); -- Assassin's Culottes
REPLACE INTO item_mods VALUES (15122,384,300); -- Assassin's Culottes
REPLACE INTO item_mods VALUES (15122,897,50); -- Assassin's Culottes
DELETE FROM item_mods WHERE itemid = 15585 AND modid = 27; -- Assassin's Culottes +1
REPLACE INTO item_mods VALUES (15585,165,6); -- Assassin's Culottes +1
REPLACE INTO item_mods VALUES (15585,384,400); -- Assassin's Culottes +1
REPLACE INTO item_mods VALUES (15585,897,50); -- Assassin's Culottes +1
REPLACE INTO item_mods VALUES (15137,302,5); -- Assassin's poulaines
REPLACE INTO item_mods VALUES (15670,302,5); -- Assassin's poulaines +1

REPLACE INTO item_mods VALUES (12515,10,5); -- Gallant Coronet
REPLACE INTO item_mods VALUES (15231,10,6); -- Gallant Coronet +1
UPDATE item_mods SET value = 4 WHERE itemid = 12515 AND modid = 27; -- Gallant Coronet
UPDATE item_mods SET value = 5 WHERE itemid = 15231 AND modid = 27; -- Gallant Coronet +1
REPLACE INTO item_mods VALUES (12644,13,10); -- Gallant Surcoat
REPLACE INTO item_mods VALUES (14479,13,10); -- Gallant Surcoat +1
UPDATE item_mods SET value = 4 WHERE itemid = 12644 AND modid = 27; -- Gallant Surcoat
UPDATE item_mods SET value = 5 WHERE itemid = 14479 AND modid = 27; -- Gallant Surcoat +1
UPDATE item_mods SET value = 15 WHERE itemid = 12644 AND modid = 111; -- Gallant Surcoat
UPDATE item_mods SET value = 18 WHERE itemid = 14479 AND modid = 111; -- Gallant Surcoat +1
REPLACE INTO item_mods VALUES (13967,1,20); -- Gallant Gauntlets
REPLACE INTO item_mods VALUES (13967,10,3); -- Gallant Gauntlets
REPLACE INTO item_mods VALUES (13967,27,4); -- Gallant Gauntlets
REPLACE INTO item_mods VALUES (13967,109,10); -- Gallant Gauntlets
REPLACE INTO item_mods VALUES (14896,1,26); -- Gallant Gauntlets +1
REPLACE INTO item_mods VALUES (14896,10,6); -- Gallant Gauntlets +1
REPLACE INTO item_mods VALUES (14896,27,5); -- Gallant Gauntlets +1
REPLACE INTO item_mods VALUES (14896,109,15); -- Gallant Gauntlets +1
UPDATE item_mods SET value = 4 WHERE itemid = 14220 AND modid = 27; -- Gallant Breeches
UPDATE item_mods SET value = 5 WHERE itemid = 15567 AND modid = 27; -- Gallant Breeches +1
UPDATE item_mods SET value = 15 WHERE itemid = 14220 AND modid = 113; -- Gallant Breeches
UPDATE item_mods SET value = 17 WHERE itemid = 15567 AND modid = 113; -- Gallant Breeches +1
REPLACE INTO item_mods VALUES (14095,10,5); -- Gallant Leggings
REPLACE INTO item_mods VALUES (15358,10,5); -- Gallant Leggings +1

REPLACE INTO item_mods VALUES (15078,27,5); -- Valor Coronet
REPLACE INTO item_mods VALUES (15078,92,30); -- Valor Coronet
REPLACE INTO item_mods VALUES (15078,112,15); -- Valor Coronet
REPLACE INTO item_mods VALUES (15251,27,6); -- Valor Coronet +1
REPLACE INTO item_mods VALUES (15251,92,45); -- Valor Coronet +1
REPLACE INTO item_mods VALUES (15251,112,17); -- Valor Coronet +1
REPLACE INTO item_mods VALUES (15093,13,10); -- Valor Surcoat
REPLACE INTO item_mods VALUES (14506,13,10); -- Valor Surcoat +1
REPLACE INTO item_mods VALUES (15093,82,15); -- Valor Surcoat
REPLACE INTO item_mods VALUES (14506,82,20); -- Valor Surcoat +1
REPLACE INTO item_mods VALUES (15093,27,5); -- Valor Surcoat
REPLACE INTO item_mods VALUES (14506,27,6); -- Valor Surcoat +1
REPLACE INTO item_mods VALUES (15108,27,6); -- Valor Gauntlets
REPLACE INTO item_mods VALUES (15108,385,15); -- Valor Gauntlets
REPLACE INTO item_mods VALUES (14915,27,6); -- Valor Gauntlets +1
REPLACE INTO item_mods VALUES (14915,385,15); -- Valor Gauntlets +1
REPLACE INTO item_mods VALUES (15123,8,10); -- Valor Breeches
REPLACE INTO item_mods VALUES (15123,27,6); -- Valor Breeches
REPLACE INTO item_mods VALUES (15123,168,20); -- Valor Breeches
REPLACE INTO item_mods VALUES (15586,8,15); -- Valor Breeches +1
REPLACE INTO item_mods VALUES (15586,27,7); -- Valor Breeches +1
REPLACE INTO item_mods VALUES (15586,168,20); -- Valor Breeches +1
REPLACE INTO item_mods VALUES (15138,27,3); -- Valor Leggings
REPLACE INTO item_mods VALUES (15138,13,10); -- Valor Leggings
REPLACE INTO item_mods VALUES (15671,27,4); -- Valor Leggings +1
REPLACE INTO item_mods VALUES (15671,13,15); -- Valor Leggings +1

REPLACE INTO item_mods VALUES (12516,8,7); -- Chaos Burgeonet
REPLACE INTO item_mods VALUES (12516,96,5); -- Chaos Burgeonet
REPLACE INTO item_mods VALUES (12516,116,15); -- Chaos Burgeonet
REPLACE INTO item_mods VALUES (15232,8,10); -- Chaos Burgeonet +1
REPLACE INTO item_mods VALUES (15232,96,5); -- Chaos Burgeonet +1
REPLACE INTO item_mods VALUES (12516,116,17); -- Chaos Burgeonet +1

DELETE FROM item_mods WHERE itemid = 12645 AND modid = 23; -- Chaos Cuirass att
DELETE FROM item_mods WHERE itemid = 12645 AND modid = 114; -- enfeebling magic skill
REPLACE INTO item_mods VALUES (12645,8,3); -- str
REPLACE INTO item_mods VALUES (12645,86,15); -- scythe skill

DELETE FROM item_mods WHERE itemid = 14480 AND modid = 23; -- Chaos Cuirass +1 att
DELETE FROM item_mods WHERE itemid = 14480 AND modid = 114; -- enfeebling magic skill
REPLACE INTO item_mods VALUES (14480,8,8); -- str
REPLACE INTO item_mods VALUES (14480,10,8); -- vit
REPLACE INTO item_mods VALUES (14480,86,20); -- scythe skill

REPLACE INTO item_mods VALUES (13968,23,15); -- Chaos Gauntlets
REPLACE INTO item_mods VALUES (13968,27,-5); -- Chaos Gauntlets
REPLACE INTO item_mods VALUES (14897,23,15); -- Chaos Gauntlets +1
REPLACE INTO item_mods VALUES (14897,27,-5); -- Chaos Gauntlets +1

DELETE FROM item_mods WHERE itemid = 14221 AND modid = 9; -- Chaos Flanchard DEX
REPLACE INTO item_mods VALUES (14221,8,3); -- Chaos Flanchard -- STR
REPLACE INTO item_mods VALUES (14221,1144,18); -- Chaos Flanchard sftp+7%

DELETE FROM item_mods WHERE itemid = 15568 AND modid = 9; -- Chaos Flanchard DEX
DELETE FROM item_mods WHERE itemid = 15568 AND modid = 12; -- Chaos Flanchard INT
REPLACE INTO item_mods VALUES (15568,8,5); -- Chaos Flanchard -- STR
REPLACE INTO item_mods VALUES (15568,1144,25); -- Chaos Flanchard -- sftp+7%

REPLACE INTO item_mods VALUES (14096,8,7); -- Chaos Sollerets
REPLACE INTO item_mods VALUES (14096,1069,5); -- Chaos Sollerets
REPLACE INTO item_mods VALUES (15359,8,12); -- Chaos Sollerets +1
REPLACE INTO item_mods VALUES (15359,1069,5); -- Chaos Sollerets +1

REPLACE INTO item_mods VALUES (15079,10,15); -- Abyss Burgeonet
REPLACE INTO item_mods VALUES (15079,23,15); -- Abyss Burgeonet
REPLACE INTO item_mods VALUES (15079,242,300); -- Abyss Burgeonet
REPLACE INTO item_mods VALUES (15252,10,18); -- Abyss Burgeonet +1
REPLACE INTO item_mods VALUES (15252,23,25); -- Abyss Burgeonet +1
REPLACE INTO item_mods VALUES (15252,242,300); -- Abyss Burgeonet +1

DELETE FROM item_mods WHERE itemid = 15094 AND modid = 13; -- Abyss Cuirass mnd
DELETE FROM item_mods WHERE itemid = 15094 AND modid = 25; -- acc
REPLACE INTO item_mods VALUES (15094,8,6); -- str
REPLACE INTO item_mods VALUES (15094,10,6); -- str
REPLACE INTO item_mods VALUES (15094,30,15); -- MAcc
REPLACE INTO item_mods VALUES (15094,83,15); -- GSword

DELETE FROM item_mods WHERE itemid = 14507 AND modid = 13; -- Abyss Cuirass +1 mnd
DELETE FROM item_mods WHERE itemid = 14507 AND modid = 25; -- acc
REPLACE INTO item_mods VALUES (14507,8,8); -- str
REPLACE INTO item_mods VALUES (14507,10,8); -- str
REPLACE INTO item_mods VALUES (14507,30,20); -- MAcc
REPLACE INTO item_mods VALUES (14507,83,20); -- GSword

REPLACE INTO item_mods VALUES (15109,116,15); -- Abyss Gauntlets
REPLACE INTO item_mods VALUES (15109,1071,-25); -- Abyss Gauntlets
REPLACE INTO item_mods VALUES (14916,116,17); -- Abyss Gauntlets +1
REPLACE INTO item_mods VALUES (14916,1071,-30); -- Abyss Gauntlets +1

REPLACE INTO item_mods VALUES (15124,12,5); -- Abyss Flanchard
REPLACE INTO item_mods VALUES (15124,116,15); -- Abyss Flanchard
REPLACE INTO item_mods VALUES (15124,1083,20); -- Abyss Flanchard
REPLACE INTO item_mods VALUES (15587,12,5); -- Abyss Flanchard +1
REPLACE INTO item_mods VALUES (15587,116,17); -- Abyss Flanchard +1
REPLACE INTO item_mods VALUES (15587,1083,25); -- Abyss Flanchard +1

DELETE FROM item_mods WHERE itemid = 14507 AND modid = 114; -- Abyss Sollerets Enfeebling skill
REPLACE INTO item_mods VALUES (15139,27,-5); -- Abyss Sollerets
REPLACE INTO item_mods VALUES (15139,384,500); -- Abyss Sollerets

DELETE FROM item_mods WHERE itemid = 15672 AND modid = 114; -- Abyss Sollerets +1 Enfeebling skill
REPLACE INTO item_mods VALUES (15672,25,5); -- Abyss Sollerets +1
REPLACE INTO item_mods VALUES (15672,27,-5); -- Abyss Sollerets +1
REPLACE INTO item_mods VALUES (15672,384,500); -- Abyss Sollerets +1

REPLACE INTO item_mods VALUES (13857,384,500); -- Choral Roundlet
REPLACE INTO item_mods VALUES (15234,384,600); -- Chl. Roundlet +1
REPLACE INTO item_mods VALUES (12647,120,10); -- Choral Jstcorps
REPLACE INTO item_mods VALUES (12647,25,10); -- Choral Jstcorps
REPLACE INTO item_mods VALUES (14482,120,15); -- Chl. Jstcorps +1
REPLACE INTO item_mods VALUES (14482,25,10); -- Chl. Jstcorps +1
REPLACE INTO item_mods VALUES (13970,119,10); -- Choral Cuffs
REPLACE INTO item_mods VALUES (13970,454,5); -- Choral Cuffs
REPLACE INTO item_mods VALUES (14482,119,15); -- Chl. Cuffs +1
REPLACE INTO item_mods VALUES (14482,454,5); -- Chl. Cuffs +1
REPLACE INTO item_mods VALUES (14223,121,10); -- Choral Cannions
REPLACE INTO item_mods VALUES (14223,455,5); -- Choral Cannions
REPLACE INTO item_mods VALUES (15570,121,15); -- Chl. Cannions +1
REPLACE INTO item_mods VALUES (15570,455,5); -- Chl. Cannions +1
DELETE FROM item_mods WHERE itemid = 14098 AND modid = 11; -- Choral Slippers
REPLACE INTO item_mods VALUES (14098,13,10); -- Choral Slippers
REPLACE INTO item_mods VALUES (14098,13,10); -- Choral Slippers
REPLACE INTO item_mods VALUES (14098,384,5); -- Choral Slippers
REPLACE INTO item_mods VALUES (14098,13,10); -- Chl. Slippers +1
REPLACE INTO item_mods VALUES (14098,14,10); -- Chl. Slippers +1
REPLACE INTO item_mods VALUES (14098,384,6); -- Chl. Slippers +1

REPLACE INTO item_mods VALUES (15081,119,15); -- Bard's Roundlet
REPLACE INTO item_mods VALUES (15254,119,17); -- Bard's Roundlet +1
REPLACE INTO item_mods VALUES (15096,25,18); -- Bard's Jstcorps
REPLACE INTO item_mods VALUES (14509,25,20); -- Bard's. Jstcorps +1
REPLACE INTO item_mods VALUES (15111,121,10); -- Bard's Cuffs
REPLACE INTO item_mods VALUES (15111,455,5); -- Bard's Cuffs
REPLACE INTO item_mods VALUES (14918,121,15); -- Bard's Cuffs +1
REPLACE INTO item_mods VALUES (14918,455,5); -- Bard's Cuffs +1
REPLACE INTO item_mods VALUES (15126,454,5); -- Bard's Cannions
REPLACE INTO item_mods VALUES (15589,454,5); -- Bard's Cannions +1
REPLACE INTO item_mods VALUES (15141,120,10); -- Bard's Slippers
REPLACE INTO item_mods VALUES (15674,120,15); -- Bard's Slippers +1

DELETE FROM item_mods WHERE itemid = 12518 AND modid = 12; -- Hunter's Beret
REPLACE INTO item_mods VALUES (12518,24,15); -- Hunter's Beret
REPLACE INTO item_mods VALUES (12518,11,5); -- Hunter's Beret
REPLACE INTO item_mods VALUES (15235,24,15); -- Hunter's Beret +1
REPLACE INTO item_mods VALUES (15235,11,10); -- Hunter's Beret +1
DELETE FROM item_mods WHERE itemid = 12648 AND modid = 10; -- Hunter's Jerkin
REPLACE INTO item_mods VALUES (12648,26,15); -- Hunter's Jerkin
REPLACE INTO item_mods VALUES (12648,11,5); -- Hunter's Jerkin
REPLACE INTO item_mods VALUES (14483,26,20); -- Hunter's Jerkin +1
REPLACE INTO item_mods VALUES (14483,11,10); -- Hunter's Jerkin +1
REPLACE INTO item_mods VALUES (13971,105,10); -- Hunter's Bracers
REPLACE INTO item_mods VALUES (14900,105,15); -- Hunter's Bracers +1
DELETE FROM item_mods WHERE itemid = 14224 AND modid = 13; -- Hunter's Braccae
REPLACE INTO item_mods VALUES (14224,11,5); -- Hunter's Braccae
REPLACE INTO item_mods VALUES (14224,104,10); -- Hunter's Braccae
REPLACE INTO item_mods VALUES (15571,11,8); -- Hunter's Braccae +1
REPLACE INTO item_mods VALUES (14224,104,15); -- Hunter's Braccae +1
REPLACE INTO item_mods VALUES (14099,312,20); -- Hunter's Socks
REPLACE INTO item_mods VALUES (15362,312,20); -- Hunter's Socks +1

REPLACE INTO item_mods VALUES (15082,305,35); -- Scout's Beret
REPLACE INTO item_mods VALUES (15255,305,35); -- Scout's Beret +1
REPLACE INTO item_mods VALUES (15097,359,10); -- Scout's Jerkin
REPLACE INTO item_mods VALUES (14510,359,10); -- Scout's Jerkin +1
REPLACE INTO item_mods VALUES (15112,104,10); -- Scout's Bracers
REPLACE INTO item_mods VALUES (14919,104,15); -- Scout's Bracers +1
REPLACE INTO item_mods VALUES (15127,138,1); -- Scout's Braccae
REPLACE INTO item_mods VALUES (15590,138,1); -- Scout's Braccae +1
REPLACE INTO item_mods VALUES (15142,105,10); -- Scout's Socks
REPLACE INTO item_mods VALUES (15675,105,15); -- Scout's Socks +1

REPLACE INTO item_mods VALUES (12520,117,10); -- Evoker's Horn
REPLACE INTO item_mods VALUES (15239,117,15); -- Evoker's Horn +1
REPLACE INTO item_mods VALUES (12650,357,3); -- Evoker's Doublet
REPLACE INTO item_mods VALUES (14487,357,5); -- Evoker's Doublet +1
REPLACE INTO item_mods VALUES (13975,1078,1); -- Evoker's Bracers
REPLACE INTO item_mods VALUES (14904,1078,2); -- Evoker's Bracers +1

REPLACE INTO `item_mods` VALUES (15086,357,4); -- BP_DELAY: 4 Summoner's Horn
REPLACE INTO `item_mods` VALUES (15086,372,4); -- WEATHER_REDUCTION: 4 Summoner's Horn
REPLACE INTO `item_mods` VALUES (15259,357,4); -- BP_DELAY: 4 Smn. Horn +1
REPLACE INTO `item_mods` VALUES (15259,372,4); -- WEATHER_REDUCTION: 4 Smn. Horn +1
REPLACE INTO `item_mods` VALUES (15101,357,4); -- BP_DELAY: 3 Summoner's Dblt
REPLACE INTO `item_mods` VALUES (14514,357,5); -- BP_DELAY: 4 Smn. Doublet +1
REPLACE INTO `item_mods` VALUES (15131,140,10); -- Summoner's Spats
REPLACE INTO `item_mods` VALUES (15594,140,10); -- Smn. Spats +1

REPLACE INTO `item_mods` VALUES (13868,94,5); -- Myochin Kabuto
REPLACE INTO `item_mods` VALUES (15236,94,6); -- Myn. Kabuto +1
REPLACE INTO `item_mods` VALUES (13781,25,15); -- Myochin Domaru
REPLACE INTO `item_mods` VALUES (13781,73,10); -- Myochin Domaru
REPLACE INTO `item_mods` VALUES (14484,23,15); -- Myn. Domaru +1
REPLACE INTO `item_mods` VALUES (14484,25,15); -- Myn. Domaru +1
REPLACE INTO `item_mods` VALUES (14484,73,10); -- Myn. Domaru +1
REPLACE INTO `item_mods` VALUES (14225,8,10); -- Myochin Haidate
REPLACE INTO `item_mods` VALUES (15572,8,10); -- Myn. Haidate +1
REPLACE INTO `item_mods` VALUES (15572,73,8); -- Myn. Haidate +1
REPLACE INTO `item_mods` VALUES (14100,384,5); -- Myochin Sune-Ate
REPLACE INTO `item_mods` VALUES (14100,306,5); -- Myochin Sune-Ate
REPLACE INTO `item_mods` VALUES (15363,384,5); -- Myn. Sune-Ate +1
REPLACE INTO `item_mods` VALUES (15363,306,5); -- Myn. Sune-Ate +1

DELETE FROM item_mods WHERE itemid = 15083 and modid = 27; -- Saotome Kabuto
REPLACE INTO `item_mods` VALUES (15083,368,5); -- Saotome Kabuto
DELETE FROM item_mods WHERE itemid = 15256 and modid = 27; -- Saotome Kabuto +1
REPLACE INTO `item_mods` VALUES (15256,368,5); -- Saotome Kabuto +1
DELETE FROM item_mods WHERE itemid = 15098 and modid = 27; -- Saotome Domaru
REPLACE INTO `item_mods` VALUES (15098,89,15); -- Saotome Domaru
REPLACE INTO `item_mods` VALUES (15098,73,10); -- Saotome Domaru
DELETE FROM item_mods WHERE itemid = 14511 and modid = 27; -- Saotome Domaru +1
REPLACE INTO `item_mods` VALUES (14511,89,20); -- Saotome Domaru +1
REPLACE INTO `item_mods` VALUES (14511,73,10); -- Saotome Domaru +1
DELETE FROM item_mods WHERE itemid = 15113 and modid = 27; -- Saotome kote
REPLACE INTO `item_mods` VALUES (15113,94,5); -- Saotome kote
DELETE FROM item_mods WHERE itemid = 14920 and modid = 27; -- Saotome kote +1
REPLACE INTO `item_mods` VALUES (14920,94,5); -- Saotome kote +1
REPLACE INTO `item_mods` VALUES (15128,508,30); -- Saotome Haidate
REPLACE INTO `item_mods` VALUES (15591,508,30); -- Saotome Haidate +1
DELETE FROM item_mods WHERE itemid = 15143 and modid = 9; -- Saotome Sune-Ate
REPLACE INTO `item_mods` VALUES (15143,8,5); -- Saotome Sune-Ate
REPLACE INTO `item_mods` VALUES (15143,345,500); -- Saotome Sune-Ate
DELETE FROM item_mods WHERE itemid = 15676 and modid = 9; -- Saotome Sune-Ate +1
REPLACE INTO `item_mods` VALUES (15676,8,6); -- Saotome Sune-Ate +1
REPLACE INTO `item_mods` VALUES (15676,345,500); -- Saotome Sune-Ate +1


REPLACE INTO item_mods VALUES (14226,68,10); -- Ninja Hakama
REPLACE INTO item_mods VALUES (15573,68,10); -- Ninja Hakama +1
REPLACE INTO item_mods VALUES (14101,76,18); -- Ninja Kyahan
REPLACE INTO item_mods VALUES (15364,76,18); -- Ninja Kyahan +1
UPDATE item_mods SET value = 10 WHERE itemid = 13782 AND modId = 259; -- Ninja Chainmail
UPDATE item_mods SET value = 10 WHERE itemid = 14485 AND modId = 259; -- Ninja Chainmail +1

DELETE FROM item_mods WHERE itemid = 13973 and modid = 9; -- Ninja Tekko
REPLACE INTO item_mods VALUES (13973,11,4); -- Ninja Tekko
REPLACE INTO item_mods VALUES (13973,106,10); -- Ninja Tekko
DELETE FROM item_mods WHERE itemid = 14902 and modid = 9; -- Ninja Tekko +1
REPLACE INTO item_mods VALUES (14902,11,6); -- Ninja Tekko +1
REPLACE INTO item_mods VALUES (14902,106,10); -- Ninja Tekko +1

DELETE FROM item_mods WHERE itemid = 13973 and modid = 118; -- Ninja Hatsuburi
REPLACE INTO item_mods VALUES (13973,11,5); -- Ninja Hatsuburi
REPLACE INTO item_mods VALUES (13973,911,5); -- Ninja Hatsuburi
REPLACE INTO item_mods VALUES (13973,384,500); -- Ninja Hatsuburi
DELETE FROM item_mods WHERE itemid = 13973 and modid = 118; -- Ninja Hatsuburi +1
REPLACE INTO item_mods VALUES (13973,911,5); -- Ninja Hatsuburi +1
REPLACE INTO item_mods VALUES (13973,384,500); -- Ninja Hatsuburi +1



REPLACE INTO item_mods VALUES (15084,110,10); -- Koga Hatsuburi
REPLACE INTO item_mods VALUES (15257,110,12); -- Kog. Hatsuburi +1
REPLACE INTO item_mods VALUES (15114,8,6); -- Koga Tekko
REPLACE INTO item_mods VALUES (15114,384,400); -- Koga Tekko
REPLACE INTO item_mods VALUES (14921,8,7); -- Koga Tekko +1
REPLACE INTO item_mods VALUES (14921,384,400); -- Koga Tekko +1
REPLACE INTO item_mods VALUES (15129,68,10); -- Koga Hakama
REPLACE INTO item_mods VALUES (15592,68,10); -- Koga Hakama +1
UPDATE item_mods SET value = 10 WHERE itemid = 15129 AND modId = 259; -- Koga Hakama
UPDATE item_mods SET value = 10 WHERE itemid = 15592 AND modId = 259; -- Koga Hakama +1
REPLACE INTO item_mods VALUES (15144,9,7); -- Koga Kyahan
REPLACE INTO item_mods VALUES (15677,9,7); -- Koga Kyahan +1

REPLACE INTO item_mods VALUES (12519,402,30); -- Drachen Armet
REPLACE INTO item_mods VALUES (15238,402,30); -- Drachen Armet +1
REPLACE INTO item_mods VALUES (12649,8,5); -- Drachen Mail
REPLACE INTO item_mods VALUES (12649,10,5); -- Drachen Mail
REPLACE INTO item_mods VALUES (12649,87,15); -- Drachen Mail
DELETE FROM item_mods WHERE itemid = 14486 and modid = 23; -- Drachen Mail +1
REPLACE INTO item_mods VALUES (14486,8,10); -- Drachen Mail +1
REPLACE INTO item_mods VALUES (14486,10,10); -- Drachen Mail +1
REPLACE INTO item_mods VALUES (14486,87,20); -- Drachen Mail +1
REPLACE INTO item_mods VALUES (12519,8,5); -- Drachen Fng. Gnt.
REPLACE INTO item_mods VALUES (12519,9,5); -- Drachen Fng. Gnt.
REPLACE INTO item_mods VALUES (15238,8,8); -- Drachen Fng. Gnt. +1
REPLACE INTO item_mods VALUES (15238,9,8); -- Drachen Fng. Gnt. +1
REPLACE INTO item_mods VALUES (14227,10,5); -- Drachen Brais
REPLACE INTO item_mods VALUES (14227,888,5); -- Drachen Brais
REPLACE INTO item_mods VALUES (15574,10,8); -- Drachen Brais +1
REPLACE INTO item_mods VALUES (15574,888,5); -- Drachen Brais +1
REPLACE INTO item_mods VALUES (14102,10,5); -- Drachen Greaves
REPLACE INTO item_mods VALUES (14102,362,15); -- Drachen Greaves
REPLACE INTO item_mods VALUES (15365,10,8); -- Drachen Greaves +1
REPLACE INTO item_mods VALUES (15365,362,20); -- Drachen Greaves +1

REPLACE INTO item_mods VALUES (15085,402,45); -- Wyrm Armet
REPLACE INTO item_mods VALUES (15085,986,50); -- Wyrm Armet
REPLACE INTO item_mods VALUES (15258,402,45); -- Wyrm Armet +1
REPLACE INTO item_mods VALUES (15258,986,50); -- Wyrm Armet +1
REPLACE INTO item_mods VALUES (15115,1043,5); -- Wyrm Fng.Gnt.
REPLACE INTO item_mods VALUES (14922,1043,5); -- Wyrm Fng.Gnt. +1
REPLACE INTO item_mods VALUES (15130,10,5); -- Wyrm Brais
REPLACE INTO item_mods VALUES (15130,363,20); -- Wyrm Brais
REPLACE INTO item_mods VALUES (15593,10,8); -- Wyrm Brais +1
REPLACE INTO item_mods VALUES (15593,363,20); -- Wyrm Brais +1
REPLACE INTO item_mods VALUES (15145,10,5); -- Wyrm Greaves
REPLACE INTO item_mods VALUES (15145,936,50); -- Wyrm Greaves
REPLACE INTO item_mods VALUES (15145,361,100); -- Wyrm Greaves
REPLACE INTO item_mods VALUES (15678,10,8); -- Wyrm Greaves +1
REPLACE INTO item_mods VALUES (15678,936,50); -- Wyrm Greaves +1
REPLACE INTO item_mods VALUES (15678,361,100); -- Wyrm Greaves +1

REPLACE INTO item_mods VALUES (15265,82,5); -- Magus Keffiyeh
REPLACE INTO item_mods VALUES (11464,82,10); -- Magus Keffiyeh +1
REPLACE INTO item_mods VALUES (14521,1147,-10); -- Magus Jubbah
REPLACE INTO item_mods VALUES (11291,1147,-10); -- Magus Jubbah +1
REPLACE INTO item_mods VALUES (14928,945,20); -- Magus Bazubands
REPLACE INTO item_mods VALUES (15024,945,25); -- Magus Bazubands +1
REPLACE INTO item_mods VALUES (14928,8,3); -- Magus Shalwar
REPLACE INTO item_mods VALUES (14928,82,5); -- Magus Shalwar
REPLACE INTO item_mods VALUES (14928,384,500); -- Magus Shalwar
REPLACE INTO item_mods VALUES (15024,8,5); -- Magus Shalwar +1
REPLACE INTO item_mods VALUES (15024,82,5); -- Magus Shalwar +1
REPLACE INTO item_mods VALUES (15024,384,500); -- Magus Shalwar +1
REPLACE INTO item_mods VALUES (15684,369,1); -- Magus Charuqs
REPLACE INTO item_mods VALUES (11381,369,1); -- Magus Charuqs +1

REPLACE INTO item_mods VALUES (11465,122,15); -- Mirage Keffiyeh
REPLACE INTO item_mods VALUES (11465,1075,50); -- Mirage Keffiyeh
REPLACE INTO item_mods VALUES (11466,122,17); -- Mirage Keffiyeh +1
REPLACE INTO item_mods VALUES (11466,1075,50); -- Mirage Keffiyeh +1
REPLACE INTO item_mods VALUES (11292,25,15); -- Mirage Jubbah
REPLACE INTO item_mods VALUES (11292,259,5); -- Mirage Jubbah
REPLACE INTO item_mods VALUES (11293,25,20); -- Mirage Jubbah +1
REPLACE INTO item_mods VALUES (11293,259,5); -- Mirage Jubbah +1
REPLACE INTO item_mods VALUES (15025,8,5); -- Mirage Bazubands
REPLACE INTO item_mods VALUES (15025,82,10); -- Mirage Bazubands
REPLACE INTO item_mods VALUES (15026,8,6); -- Mirage Bazubands +1
REPLACE INTO item_mods VALUES (15026,82,15); -- Mirage Bazubands +1
REPLACE INTO item_mods VALUES (16346,25,15); -- Mirage Shalwar
REPLACE INTO item_mods VALUES (16346,30,15); -- Mirage Shalwar
REPLACE INTO item_mods VALUES (16347,25,20); -- Mirage Shalwar +1
REPLACE INTO item_mods VALUES (16347,30,20); -- Mirage Shalwar +1
REPLACE INTO item_mods VALUES (11382,384,400); -- Mirage Charuqs
REPLACE INTO item_mods VALUES (11382,370,4); -- Mirage Charuqs
REPLACE INTO item_mods VALUES (11383,384,400); -- Mirage Charuqs +1
REPLACE INTO item_mods VALUES (11383,370,4); -- Mirage Charuqs +1

REPLACE INTO item_mods VALUES (15266,411,20); -- Corsair's Tricorne
REPLACE INTO item_mods VALUES (11467,411,20); -- Corsair's Tricorne +1
REPLACE INTO item_mods VALUES (14522,9,4); -- Corsair's Frac
REPLACE INTO item_mods VALUES (14522,11,4); -- Corsair's Frac
REPLACE INTO item_mods VALUES (14522,24,10); -- Corsair's Frac
REPLACE INTO item_mods VALUES (14522,26,10); -- Corsair's Frac
REPLACE INTO item_mods VALUES (11294,9,7); -- Corsair's Frac +1
REPLACE INTO item_mods VALUES (11294,11,7); -- Corsair's Frac +1
REPLACE INTO item_mods VALUES (11294,24,15); -- Corsair's Frac +1
REPLACE INTO item_mods VALUES (11294,26,15); -- Corsair's Frac +1
DELETE FROM item_mods WHERE itemid = 14929 AND modid = 9; -- Corsair's Gants
REPLACE INTO item_mods VALUES (14929,11,12); -- Corsair's Gants
REPLACE INTO item_mods VALUES (14929,13,12); -- Corsair's Gants
DELETE FROM item_mods WHERE itemid = 15027 AND modid = 9; -- Corsair's Gants +1
REPLACE INTO item_mods VALUES (15027,11,15); -- Corsair's Gants +1
REPLACE INTO item_mods VALUES (15027,13,15); -- Corsair's Gants +1
REPLACE INTO item_mods VALUES (15601,359,5); -- Corsair's Culottes
REPLACE INTO item_mods VALUES (16348,359,5); -- Corsair's Culottes +1
DELETE FROM item_mods WHERE itemid = 15685 AND modid = 26; -- Corsair's Bottes
REPLACE INTO item_mods VALUES (15685,105,10); -- Corsair's Bottes
DELETE FROM item_mods WHERE itemid = 11384 AND modid = 25; -- Corsair's Bottes +1
DELETE FROM item_mods WHERE itemid = 11384 AND modid = 26; -- Corsair's Bottes +1
REPLACE INTO item_mods VALUES (11384,105,15); -- Corsair's Bottes +1

REPLACE INTO item_mods VALUES (11468,542,100); -- Comm. Tricorne
REPLACE INTO item_mods VALUES (11469,542,100); -- Comm. Tricorne +1
REPLACE INTO item_mods VALUES (11295,220,50); -- Comm. Frac
REPLACE INTO item_mods VALUES (11295,8,7); -- Comm. Frac
REPLACE INTO item_mods VALUES (11296,220,50); -- Comm. Frac +1
REPLACE INTO item_mods VALUES (11296,8,10); -- Comm. Frac +1
REPLACE INTO item_mods VALUES (15028,365,10); -- Comm. Gants
REPLACE INTO item_mods VALUES (15029,365,10); -- Comm. Gants +1
REPLACE INTO item_mods VALUES (16349,8,5); -- Comm. Trews
REPLACE INTO item_mods VALUES (16349,11,5); -- Comm. Trews
REPLACE INTO item_mods VALUES (16349,13,5); -- Comm. Trews
REPLACE INTO item_mods VALUES (16350,8,6); -- Comm. Trews +1
REPLACE INTO item_mods VALUES (16350,11,6); -- Comm. Trews +1
REPLACE INTO item_mods VALUES (16350,13,6); -- Comm. Trews +1
REPLACE INTO item_mods VALUES (11385,191,100); -- Comm. Bottes
REPLACE INTO item_mods VALUES (11386,191,100); -- Comm. Bottes +1

REPLACE INTO item_mods VALUES (15267,384,500); -- Puppetry Taj
REPLACE INTO item_mods VALUES (11470,384,500); -- Puppetry Taj +1
DELETE FROM item_mods WHERE itemid = 14523 AND modid = 25; -- Puppetry Tobe
REPLACE INTO item_mods VALUES (14523,80,10); -- Puppetry Tobe
DELETE FROM item_mods WHERE itemid = 11297 AND modid = 23; -- Puppetry Tobe +1
DELETE FROM item_mods WHERE itemid = 11297 AND modid = 25; -- Puppetry Tobe +1
REPLACE INTO item_mods VALUES (11297,80,10); -- Puppetry Tobe +1
REPLACE INTO item_mods VALUES (14930,504,5); -- Pup. Dastanas
REPLACE INTO item_mods VALUES (15030,504,5); -- Pup. Dastanas +1
REPLACE INTO item_mods VALUES (15686,165,5); -- Pup. Babouches
REPLACE INTO item_mods VALUES (11387,165,5); -- Pup. Babouches +1

REPLACE INTO item_mods VALUES (11298,25,15); -- Pantin Tobe
REPLACE INTO item_mods VALUES (11298,289,15); -- Pantin Tobe
REPLACE INTO item_mods VALUES (11299,25,17); -- Pantin Tobe +1
REPLACE INTO item_mods VALUES (11299,289,15); -- Pantin Tobe +1
REPLACE INTO item_mods VALUES (15031,384,500); -- Pantin Dastanas
REPLACE INTO item_mods VALUES (15032,384,500); -- Pantin Dastanas +1
REPLACE INTO item_mods VALUES (16352,25,10); -- Pantin Churidars
REPLACE INTO item_mods VALUES (16353,25,12); -- Pantin Churidars +1
REPLACE INTO item_mods VALUES (11388,23,10); -- Pantin Babouches
REPLACE INTO item_mods VALUES (11389,23,10); -- Pantin Babouches +1

REPLACE INTO item_mods VALUES (16138,490,60); -- Dancer's Tiara
REPLACE INTO item_mods VALUES (11475,490,60); -- Dancer's Tiara +1
REPLACE INTO item_mods VALUES (14578,491,20); -- Dancer's Casaque
REPLACE INTO item_mods VALUES (14578,91,15); -- Dancer's Casaque
REPLACE INTO item_mods VALUES (14578,173,10); -- Dancer's Casaque
DELETE FROM item_mods WHERE itemid = 14578 AND modid = 27;
REPLACE INTO item_mods VALUES (11302,491,20); -- Dancer's Casaque +1
REPLACE INTO item_mods VALUES (11302,91,20); -- Dancer's Casaque +1
REPLACE INTO item_mods VALUES (11302,173,10); -- Dancer's Casaque +1
DELETE FROM item_mods WHERE itemid = 11302 AND modid = 27;
REPLACE INTO item_mods VALUES (15003,403,50); -- Dancer's Bangles
REPLACE INTO item_mods VALUES (15035,403,50); -- Dancer's Bangles +1
REPLACE INTO item_mods VALUES (15659,259,10); -- Dancer's Tights
REPLACE INTO item_mods VALUES (16357,259,10); -- Dancer's Tights +1
REPLACE INTO item_mods VALUES (15746,492,50); -- Dancer's Toe Shoes
REPLACE INTO item_mods VALUES (11393,492,50); -- Dancer's Toe Shoes +1

REPLACE INTO item_mods VALUES (11478,8,5); -- Etoile Tiara
REPLACE INTO item_mods VALUES (11478,9,5); -- Etoile Tiara
REPLACE INTO item_mods VALUES (11478,491,10); -- Etoile Tiara
REPLACE INTO item_mods VALUES (11479,8,6); -- Etoile Tiara +1
REPLACE INTO item_mods VALUES (11479,9,6); -- Etoile Tiara +1
REPLACE INTO item_mods VALUES (11479,491,10); -- Etoile Tiara +1
REPLACE INTO item_mods VALUES (11305,259,10); -- Etoile Casaque
REPLACE INTO item_mods VALUES (11306,259,10); -- Etoile Casaque +1
REPLACE INTO item_mods VALUES (15038,415,20); -- Etoile Bangles
REPLACE INTO item_mods VALUES (15039,415,20); -- Etoile Bangles +1
REPLACE INTO item_mods VALUES (16360,8,6); -- Etoile Tights
REPLACE INTO item_mods VALUES (16360,14,6); -- Etoile Tights
REPLACE INTO item_mods VALUES (16360,384,500); -- Etoile Tights
REPLACE INTO item_mods VALUES (16360,492,50); -- Etoile Tights
REPLACE INTO item_mods VALUES (16361,8,6); -- Etoile Tights +1
REPLACE INTO item_mods VALUES (16361,14,6); -- Etoile Tights +1
REPLACE INTO item_mods VALUES (16361,384,500); -- Etoile Tights +1
REPLACE INTO item_mods VALUES (16361,492,50); -- Etoile Tights +1
REPLACE INTO item_mods VALUES (11396,9,8); -- Etoile Toe Shoes
REPLACE INTO item_mods VALUES (11396,9,8); -- Etoile Toe Shoes
REPLACE INTO item_mods VALUES (11397,25,8); -- Etoile Toe Shoes +1
REPLACE INTO item_mods VALUES (11397,25,10); -- Etoile Toe Shoes +1

REPLACE INTO item_mods VALUES (16140,12,5); -- Scholar's Gown
REPLACE INTO item_mods VALUES (16140,13,5); -- Scholar's Gown
REPLACE INTO item_mods VALUES (16140,401,2); -- Scholar's Gown
REPLACE INTO item_mods VALUES (11477,12,7); -- Sch. Gown +1
REPLACE INTO item_mods VALUES (11477,13,7); -- Sch. Gown +1
REPLACE INTO item_mods VALUES (11477,401,2); -- Sch. Gown +1
REPLACE INTO item_mods VALUES (14580,337,25); -- Scholar's M.board
REPLACE INTO item_mods VALUES (11304,337,25); -- Sch. M.board +1
REPLACE INTO item_mods VALUES (15004,478,20); -- Scholar's Bracers
REPLACE INTO item_mods VALUES (15037,478,20); -- Sch. Bracers +1
REPLACE INTO item_mods VALUES (15004,336,25); -- Scholar's Bracers
REPLACE INTO item_mods VALUES (15004,374,10); -- Scholar's Bracers
REPLACE INTO item_mods VALUES (15037,336,25); -- Sch. Bracers +1
REPLACE INTO item_mods VALUES (15037,374,10); -- Sch. Bracers +1
REPLACE INTO item_mods VALUES (15748,489,-15); -- Scholar's Loafers
REPLACE INTO item_mods VALUES (11395,489,-15); -- Sch. Loafers +1

REPLACE INTO item_mods VALUES (11480,489,-15); -- Argute M.board
REPLACE INTO item_mods VALUES (11481,489,-15); -- Argute M.board +1
REPLACE INTO item_mods VALUES (11307,113,15); -- Argute Gown
REPLACE INTO item_mods VALUES (11307,401,2); -- Argute Gown
REPLACE INTO item_mods VALUES (11308,113,17); -- Argute Gown +1
REPLACE INTO item_mods VALUES (11308,401,2); -- Argute Gown +1
REPLACE INTO item_mods VALUES (15040,12,5); -- Argute Bracers
REPLACE INTO item_mods VALUES (15040,13,5); -- Argute Bracers
REPLACE INTO item_mods VALUES (15040,114,15); -- Argute Bracers
REPLACE INTO item_mods VALUES (15041,12,7); -- Argute Bracers +1
REPLACE INTO item_mods VALUES (15041,13,7); -- Argute Bracers +1
REPLACE INTO item_mods VALUES (15041,114,17); -- Argute Bracers +1
REPLACE INTO item_mods VALUES (16362,116,15); -- Argute Pants
REPLACE INTO item_mods VALUES (16362,315,10); -- Argute Pants
REPLACE INTO item_mods VALUES (16363,116,17); -- Argute Pants +1
REPLACE INTO item_mods VALUES (16363,315,10); -- Argute Pants +1
REPLACE INTO item_mods VALUES (11398,112,15); -- Argute Loafers
REPLACE INTO item_mods VALUES (11399,112,17); -- Argute Loafers +1

UPDATE item_mods SET value = 3 WHERE itemId IN (12162, 12198) AND modid = 421; -- Shikkoku Togi, Shikkoku Kote

UPDATE item_mods SET value = 5 WHERE itemid = 14488 AND modid = 302; -- homam_corazza Triple Attack +5

REPLACE into item_mods values (17665, 432, 1), (17665, 499, 1), (17665, 500, 30), (17665, 501, 30), (17665, 950, 1); -- Ifrit's Blade
REPLACE into item_mods values (16542, 432, 1), (16542, 499, 3), (16542, 500, 15), (16542, 501, 30), (16542, 950, 3); -- Wing Sword
REPLACE into item_mods values (17637, 432, 1), (17637, 499, 3), (17637, 500, 20), (17637, 501, 30), (17637, 950, 3); -- Wing Sword +1
REPLACE into item_mods values (17738, 432, 1), (17738, 499, 7), (17738, 500, 30), (17738, 501, 30), (17738, 950, 7); -- Hauteclaire
REPLACE into item_mods values (17659, 432, 1), (17659, 499, 6), (17659, 500, 30), (17659, 501, 30), (17659, 950, 6); -- Seiryu's Sword

DELETE FROM item_mods WHERE itemid = 15223 AND modid = 68;
REPLACE INTO item_mods VALUES (15223, 384, 500);

DELETE FROM item_mods where modid = 75 AND itemid IN (12445,12573,12701,12879,12957,13938,14188,14307,14391,14825);

-- Virtuous Torque
REPLACE INTO `item_mods` VALUES (15764,8,5);    -- STR: 5
REPLACE INTO `item_mods` VALUES (15764,9,5);    -- DEX: 5
REPLACE INTO `item_mods` VALUES (15764,10,5);   -- VIT: 5
REPLACE INTO `item_mods` VALUES (15764,11,5);   -- AGI: 5
REPLACE INTO `item_mods` VALUES (15764,12,5);   -- INT: 5
REPLACE INTO `item_mods` VALUES (15764,13,5);   -- MND: 5
REPLACE INTO `item_mods` VALUES (15764,14,5);   -- CHR: 5
REPLACE INTO `item_mods` VALUES (15764,80,7);   -- HTH:		7
REPLACE INTO `item_mods` VALUES (15764,81,7);   -- DAGGER:	7
REPLACE INTO `item_mods` VALUES (15764,82,7);   -- SWORD:	7
REPLACE INTO `item_mods` VALUES (15764,83,7);   -- GSWORD:	7
REPLACE INTO `item_mods` VALUES (15764,84,7);   -- AXE:		7
REPLACE INTO `item_mods` VALUES (15764,85,7);   -- GAXE:	7
REPLACE INTO `item_mods` VALUES (15764,86,7);   -- SCYTHE:	7
REPLACE INTO `item_mods` VALUES (15764,87,7);   -- POLEARM:	7
REPLACE INTO `item_mods` VALUES (15764,88,7);   -- KATANA:	7
REPLACE INTO `item_mods` VALUES (15764,89,7);   -- GKATANA:	7
REPLACE INTO `item_mods` VALUES (15764,90,7);   -- CLUB:	7
REPLACE INTO `item_mods` VALUES (15764,91,7);   -- STAFF:	7
REPLACE INTO `item_mods` VALUES (15764,104,7);  -- ARCHERY:	7
REPLACE INTO `item_mods` VALUES (15764,105,7);  -- MARKSMAN:7
REPLACE INTO `item_mods` VALUES (15764,106,7);  -- THROW:	7