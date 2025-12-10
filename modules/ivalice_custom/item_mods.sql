update item_mods set value = 30 where modid = 501 and value < 30;
update item_mods set value = 50 where modid = 501 and itemid IN (18148,18150); -- acid, blind bolt

INSERT INTO item_mods VALUES (14226,68,10); -- Ninja Hakama
INSERT INTO item_mods VALUES (15573,68,10); -- Ninja Hakama +1
INSERT INTO item_mods VALUES (14101,169,18); -- Ninja Kyahan
INSERT INTO item_mods VALUES (15364,169,18); -- Ninja Kyahan +1
UPDATE item_mods SET value = 10 WHERE itemid = 13782 AND modId = 259; -- Ninja Chainmail
UPDATE item_mods SET value = 10 WHERE itemid = 14485 AND modId = 259; -- Ninja Chainmail +1

INSERT INTO item_mods VALUES (15084,110,10); -- Koga Hatsuburi
INSERT INTO item_mods VALUES (15257,110,12); -- Kog. Hatsuburi +1
INSERT INTO item_mods VALUES (15114,8,6); -- Koga Tekko
INSERT INTO item_mods VALUES (15114,384,400); -- Koga Tekko
INSERT INTO item_mods VALUES (14921,8,7); -- Koga Tekko +1
INSERT INTO item_mods VALUES (14921,384,400); -- Koga Tekko +1
INSERT INTO item_mods VALUES (15129,68,10); -- Koga Hakama
INSERT INTO item_mods VALUES (15592,68,10); -- Koga Hakama +1
UPDATE item_mods SET value = 10 WHERE itemid = 15129 AND modId = 259; -- Koga Hakama
UPDATE item_mods SET value = 10 WHERE itemid = 15592 AND modId = 259; -- Koga Hakama +1
INSERT INTO item_mods VALUES (15144,9,7); -- Koga Kyahan
INSERT INTO item_mods VALUES (15677,9,7); -- Koga Kyahan +1

DELETE FROM item_mods WHERE itemId = 12511 AND modId = 27; -- Fighter's Mask
DELETE FROM item_mods WHERE itemId = 15225 AND modId = 27; -- Fighter's Mask +1
DELETE FROM item_mods WHERE itemId = 12638 AND modId = 27; -- Fighter's Lorica
DELETE FROM item_mods WHERE itemId = 14473 AND modId = 27; -- Fighter's Lorica +1
DELETE FROM item_mods WHERE itemId = 13961 AND modId = 27; -- Fighter's Mufflers
DELETE FROM item_mods WHERE itemId = 14890 AND modId = 27; -- Fighter's Mufflers +1
DELETE FROM item_mods WHERE itemId = 14214 AND modId = 27; -- Fighter's Cuisses
DELETE FROM item_mods WHERE itemId = 15561 AND modId = 27; -- Fighter's Cuisses +1
DELETE FROM item_mods WHERE itemId = 14089 AND modId = 27; -- Fighter's Calligae
DELETE FROM item_mods WHERE itemId = 15352 AND modId = 27; -- Fighter's Calligae +1
UPDATE item_mods SET value = 5 WHERE itemId IN (14089, 15352) AND modid = 288; -- Fighter's Calligae and Ftr. Calligae +1 

DELETE FROM item_mods WHERE itemId = 15072 AND modId = 27; -- Warrior's Mask
DELETE FROM item_mods WHERE itemId = 15245 AND modId = 27; -- Warrior's Mask +1
DELETE FROM item_mods WHERE itemId = 15087 AND modId = 27; -- Warrior's Lorica
DELETE FROM item_mods WHERE itemId = 14500 AND modId = 27; -- Warrior's Lorica +1
DELETE FROM item_mods WHERE itemId = 15102 AND modId = 27; -- Warrior's Mufflers
DELETE FROM item_mods WHERE itemId = 14909 AND modId = 27; -- Warrior's Mufflers +1
DELETE FROM item_mods WHERE itemId = 15117 AND modId = 27; -- Warrior's Cuisses
DELETE FROM item_mods WHERE itemId = 15580 AND modId = 27; -- Warrior's Cuisses +1
UPDATE item_mods SET value = 5 WHERE itemId IN (15117, 15580) AND modid = 288; -- Warrior's Cuisses and Warrior Cuisses +1 
DELETE FROM item_mods WHERE itemId = 15132 AND modId = 27; -- Warrior's Calligae
DELETE FROM item_mods WHERE itemId = 15665 AND modId = 27; -- Warrior's Calligae +1

UPDATE item_mods SET value = 15 WHERE itemid = 12639 AND modId = 25; -- Temple Cyclas
UPDATE item_mods SET value = 15 WHERE itemid = 14474 AND modId = 25; -- Temple Cyclas +1
UPDATE item_mods SET value = 100 WHERE itemid = 13962 AND modId = 97; -- Temple Gloves
UPDATE item_mods SET value = 100 WHERE itemid = 14891 AND modId = 97; -- Temple Gloves +1
UPDATE item_mods SET value = 10 WHERE itemid = 14215 AND modId = 291; -- Temple Hose
UPDATE item_mods SET value = 13 WHERE itemid = 15562 AND modId = 291; -- Temple Hose +1

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
INSERT INTO item_mods VALUES (12640,13,5); -- Healer's Bliaut
INSERT INTO item_mods VALUES (14475,13,7); -- Healer's Bliaut +1
INSERT INTO item_mods VALUES (12640,12,5); -- Healer's Bliaut
INSERT INTO item_mods VALUES (14475,12,7); -- Healer's Bliaut +1
INSERT INTO item_mods VALUES (14216,13,10); -- Healer's Pantaln.
INSERT INTO item_mods VALUES (15563,13,12); -- Healer's Pantaln. +1

UPDATE item_mods SET value = 10 WHERE itemid = 15074 AND modId = 244; -- Cleric's Cap
UPDATE item_mods SET value = 12 WHERE itemid = 15247 AND modId = 244; -- Cleric's Cap +1
UPDATE item_mods SET value = 2 WHERE itemid = 14502 AND modId = 369; -- Cleric's Cap +1
UPDATE item_mods SET value = 15 WHERE itemid = 15089 AND modId = 838; -- Cleric's Cap
UPDATE item_mods SET value = 15 WHERE itemid = 14502 AND modId = 838; -- Cleric's Cap +1
INSERT INTO item_mods VALUES (15104,13,7); -- Cleric's Mitts.
INSERT INTO item_mods VALUES (14911,13,10); -- Cleric's Mitts +1
UPDATE item_mods SET value = 15 WHERE itemid = 15134 AND modId = 113; -- Cleric's Duckbills
UPDATE item_mods SET value = 15 WHERE itemid = 15667 AND modId = 113; -- Cleric's Duckbills +1

INSERT INTO item_mods VALUES (13856,28,5); -- Wizard's Petasos
INSERT INTO item_mods VALUES (15228,28,5); -- Wizard's Petasos +1
INSERT INTO item_mods VALUES (12641,12,5); -- Wizard's Coat
INSERT INTO item_mods VALUES (14476,12,5); -- Wizard's Coat +1
UPDATE item_mods SET value = 15 WHERE itemid = 12641 AND modId = 114; -- Wizard's Coat
UPDATE item_mods SET value = 17 WHERE itemid = 14476 AND modId = 114; -- Wizard's Coat +1
INSERT INTO item_mods VALUES (13964,12,5); -- Wizard's Gloves
UPDATE item_mods SET value = 8 WHERE itemid = 14893 AND modId = 12; -- Wizard's Coat +1
INSERT INTO item_mods VALUES (14217,315,10); -- Wizard's Tonban
INSERT INTO item_mods VALUES (15564,315,10); -- Wizard's Tonban +1

UPDATE item_mods SET value = 15 WHERE itemid = 15075 AND modId IN (114,115); -- Sorcerer's Petas.
UPDATE item_mods SET value = 15 WHERE itemid = 15248 AND modId IN (114,115); -- Sorcerer's Petas. +1
UPDATE item_mods SET value = 15 WHERE itemid = 15090 AND modId IN (115); -- Sorcerer's Coat.
UPDATE item_mods SET value = 17 WHERE itemid = 14503 AND modId IN (115); -- Sorcerer's Coat. +1
UPDATE item_mods SET value = 2 WHERE itemid = 14503 AND modId IN (369); -- Sorcerer's Coat. +1
UPDATE item_mods SET value = 10 WHERE itemid = 15105 AND modId IN (487); -- Sorcerer's Gloves
UPDATE item_mods SET value = 10 WHERE itemid = 14912 AND modId IN (487); -- Sorcerer's Gloves. +1
INSERT INTO item_mods VALUES (15105,12,5); -- Sorcerer's Gloves
INSERT INTO item_mods VALUES (14912,12,5); -- Sorcerer's Gloves +1
INSERT INTO item_mods VALUES (15120,28,5); -- Sorcerer's Tonban
INSERT INTO item_mods VALUES (15583,28,5); -- Sorcerer's Tonban +1
UPDATE item_mods SET value = 20 WHERE itemid = 15135 AND modId IN (296); -- Sorcerer's Sabots
UPDATE item_mods SET value = 20 WHERE itemid = 15668 AND modId IN (296); -- Sorcerer's Sabots. +1

UPDATE item_mods SET value = 5 WHERE itemid = 12513 AND modId IN (12); -- Warlock's Chapeau
UPDATE item_mods SET value = 8 WHERE itemid = 15229 AND modId IN (12); -- Warlock's Chapeau +1
UPDATE item_mods SET value = 15 WHERE itemid = 12513 AND modId IN (115); -- Warlock's Chapeau
UPDATE item_mods SET value = 15 WHERE itemid = 15229 AND modId IN (115); -- Warlock's Chapeau +1
INSERT INTO item_mods VALUES (12642,12,5); -- Warlock's Tabard
INSERT INTO item_mods VALUES (14477,12,5); -- Warlock's Tabard +1
INSERT INTO item_mods VALUES (12642,13,5); -- Warlock's Tabard
INSERT INTO item_mods VALUES (14477,13,5); -- Warlock's Tabard +1
UPDATE item_mods SET value = 15 WHERE itemid = 14218 AND modId IN (112); -- Warlock's Tights
UPDATE item_mods SET value = 15 WHERE itemid = 15565 AND modId IN (112); -- Warlock's Tights +1
INSERT INTO item_mods VALUES (14218,890,10); -- Warlock's Tights
INSERT INTO item_mods VALUES (15565,890,10); -- Warlock's Tights +1

INSERT INTO item_mods VALUES (15076,12,5); -- Duelist's Chapeau
INSERT INTO item_mods VALUES (15249,12,5); -- Duelist's Chapeau +1
INSERT INTO item_mods VALUES (15076,13,5); -- Duelist's Chapeau
UPDATE item_mods SET value = 8 WHERE itemid = 15249 AND modid = 13; -- Duelist's Chapeau +1
UPDATE item_mods SET value = 2 WHERE itemid = 15249 AND modid = 369; -- Duelist's Chapeau +1
UPDATE item_mods SET value = 15 WHERE itemid = 15091 AND modid = 112; -- Duelist's Tabard
UPDATE item_mods SET value = 17 WHERE itemid = 14504 AND modid = 112; -- Duelist's Tabard +1
INSERT INTO item_mods VALUES (15121,28,5); -- Duelist's Tights
INSERT INTO item_mods VALUES (15584,28,5); -- Duelist's Tights +1
UPDATE item_mods SET value = 15 WHERE itemid = 15121 AND modid = 115; -- Duelist's Tabard
UPDATE item_mods SET value = 17 WHERE itemid = 15584 AND modid = 115; -- Duelist's Tabard +1
INSERT INTO item_mods VALUES (15136,12,4); -- Duelist's Tights
INSERT INTO item_mods VALUES (15669,12,5); -- Duelist's Tights +1
UPDATE item_mods SET value = 5 WHERE itemid = 15136 AND modid = 28; -- Duelist's Boots
UPDATE item_mods SET value = 6 WHERE itemid = 15669 AND modid = 28; -- Duelist's Boots +1

INSERT INTO item_mods VALUES (12514,9,5); -- Rogue's Bonnet
INSERT INTO item_mods VALUES (15230,298,2); -- Rogue's Bonnet +1
UPDATE item_mods SET value = 2 WHERE itemid = 12514 AND modid = 298; -- Rogue's Bonnet
UPDATE item_mods SET value = 8 WHERE itemid = 15230 AND modid = 9; -- Rogue's Bonnet +1
INSERT INTO item_mods VALUES (12643,9,5); -- Rogue's Vest
INSERT INTO item_mods VALUES (14478,421,10); -- Rogue's Vest +1
INSERT INTO item_mods VALUES (12643,9,6); -- Rogue's Vest
INSERT INTO item_mods VALUES (14478,421,10); -- Rogue's Vest +1
INSERT INTO item_mods VALUES (13966,11,5); -- Rogue's Armlets
UPDATE item_mods SET value = 5 WHERE itemid = 13966 and modid = 9; -- Rogue's Armlets
INSERT INTO item_mods VALUES (13966,520,10); -- Rogue's Armlets
INSERT INTO item_mods VALUES (14895,11,5); -- Rogue's Armlets +1
UPDATE item_mods SET value = 5 WHERE itemid = 14895 and modid = 9; -- Rogue's Armlets +1
UPDATE item_mods SET value = 8 WHERE itemid = 14219 AND modid = 11; -- Rogue's Culottes
UPDATE item_mods SET value = 8 WHERE itemid = 15566 AND modid IN (9,11); -- Rogue's Culottes +1
UPDATE item_mods SET value = 60 WHERE itemid = 14094 AND modid = 93; -- Rogue's Poulaines
UPDATE item_mods SET value = 60 WHERE itemid = 15357 AND modid = 93; -- Rogue's Poulaines +1

UPDATE item_mods SET value = 50 WHERE itemid = 15077 AND modid = 835; -- Assassin's Bonnet
UPDATE item_mods SET value = 50 WHERE itemid = 15250 AND modid = 835; -- Assassin's Bonnet +1
UPDATE item_mods SET value = 20 WHERE itemid = 15092 AND modid = 165; -- Assassin's Vest
UPDATE item_mods SET value = 20 WHERE itemid = 14505 AND modid = 165; -- Assassin's Vest +1
UPDATE item_mods SET value = 2 WHERE itemid = 14914 AND modid = 303; -- Assassin's Armlets +1
UPDATE item_mods SET value = 50 WHERE itemid = 15122 AND modid = 897; -- Asn. Culottes
UPDATE item_mods SET value = 50 WHERE itemid = 15585 AND modid = 897; -- Asn. Culottes +1
UPDATE item_mods SET value = 5 WHERE itemid = 15137 AND modid = 302; -- Asn. Culottes
UPDATE item_mods SET value = 5 WHERE itemid = 15670 AND modid = 302; -- Asn. Culottes +1

INSERT INTO item_mods VALUES (12515,10,5); -- Gallant Coronet
INSERT INTO item_mods VALUES (15231,10,6); -- Gallant Coronet +1
UPDATE item_mods SET value = 4 WHERE itemid = 12515 AND modid = 27; -- Gallant Coronet
UPDATE item_mods SET value = 5 WHERE itemid = 15231 AND modid = 27; -- Gallant Coronet +1
INSERT INTO item_mods VALUES (12644,13,10); -- Gallant Surcoat
INSERT INTO item_mods VALUES (14479,13,10); -- Gallant Surcoat +1
INSERT INTO item_mods VALUES (12644,23,15); -- Gallant Surcoat
INSERT INTO item_mods VALUES (14479,23,15); -- Gallant Surcoat +1
UPDATE item_mods SET value = 4 WHERE itemid = 12644 AND modid = 27; -- Gallant Surcoat
UPDATE item_mods SET value = 5 WHERE itemid = 14479 AND modid = 27; -- Gallant Surcoat +1
UPDATE item_mods SET value = 15 WHERE itemid = 12644 AND modid = 111; -- Gallant Surcoat
UPDATE item_mods SET value = 18 WHERE itemid = 14479 AND modid = 111; -- Gallant Surcoat +1
INSERT INTO item_mods VALUES (13967,10,3); -- Gallant Gauntlets
UPDATE item_mods SET value = 4 WHERE itemid = 13967 AND modid = 27; -- Gallant Gauntlets
UPDATE item_mods SET value = 6 WHERE itemid = 14896 AND modid = 10; -- Gallant Gauntlets +1
UPDATE item_mods SET value = 5 WHERE itemid = 14896 AND modid = 27; -- Gallant Gauntlets +1
UPDATE item_mods SET value = 4 WHERE itemid = 14220 AND modid = 27; -- Gallant Breeches
UPDATE item_mods SET value = 5 WHERE itemid = 15567 AND modid = 27; -- Gallant Breeches +1
UPDATE item_mods SET value = 15 WHERE itemid = 14220 AND modid = 113; -- Gallant Breeches
UPDATE item_mods SET value = 15 WHERE itemid = 15567 AND modid = 113; -- Gallant Breeches +1
INSERT INTO item_mods VALUES (14095,10,5); -- Gallant Leggings
INSERT INTO item_mods VALUES (15358,10,5); -- Gallant Leggings +1


UPDATE item_mods SET value = 3 WHERE itemId IN (12162, 12198) AND modid = 421; -- Shikkoku Togi, Shikkoku Kote

UPDATE item_mods SET value = 5 WHERE itemid = 14488 AND modid = 302; -- homam_corazza Triple Attack +5

insert into item_mods values (17665, 432, 1), (17665, 499, 1), (17665, 500, 30), (17665, 501, 30), (17665, 950, 1); -- Ifrit's Blade
insert into item_mods values (16542, 432, 1), (16542, 499, 3), (16542, 500, 15), (16542, 501, 30), (16542, 950, 3); -- Wing Sword
insert into item_mods values (17637, 432, 1), (17637, 499, 3), (17637, 500, 20), (17637, 501, 30), (17637, 950, 3); -- Wing Sword +1
insert into item_mods values (17738, 432, 1), (17738, 499, 7), (17738, 500, 30), (17738, 501, 30), (17738, 950, 7); -- Hauteclaire
insert into item_mods values (17659, 432, 1), (17659, 499, 6), (17659, 500, 30), (17659, 501, 30), (17659, 950, 6); -- Seiryu's Sword
