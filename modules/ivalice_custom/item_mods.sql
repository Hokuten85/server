update item_mods set value = 30 where modid = 501 and value < 30;
update item_mods set value = 50 where modid = 501 and itemid IN (18148,18150); -- acid, blind bolt

INSERT INTO item_mods VALUES (14226,68,10); -- Ninja Hakama
INSERT INTO item_mods VALUES (14101,169,18); -- Ninja Kyahan

UPDATE item_mods SET value = 2 WHERE itemId IN (12162, 12198) AND modid = 421;

UPDATE item_mods SET value = 5 WHERE itemId IN (14089, 15352) AND modid = 288; -- Fighter's Calligae and Ftr. Calligae +1  

UPDATE item_mods SET value = 5 WHERE itemid = 14488 AND modid = 302; -- Triple Attack +5

insert into item_mods values (17665, 432, 1), (17665, 499, 1), (17665, 500, 30), (17665, 501, 30), (17665, 950, 1); -- Ifrit's Blade
insert into item_mods values (16542, 432, 1), (16542, 499, 3), (16542, 500, 15), (16542, 501, 30), (16542, 950, 3); -- Wing Sword
insert into item_mods values (17637, 432, 1), (17637, 499, 3), (17637, 500, 20), (17637, 501, 30), (17637, 950, 3); -- Wing Sword +1
insert into item_mods values (17738, 432, 1), (17738, 499, 7), (17738, 500, 30), (17738, 501, 30), (17738, 950, 7); -- Hauteclaire
insert into item_mods values (17659, 432, 1), (17659, 499, 6), (17659, 500, 30), (17659, 501, 30), (17659, 950, 6); -- Seiryu's Sword
