UPDATE spell_list SET jobs = 0x00002800300000000000000000000000000000300000, recastTime = 10000 WHERE name = 'haste';
UPDATE spell_list SET jobs = 0x00000000300000000000000000000000000000300000 WHERE spellid = 845; -- Flurry
UPDATE spell_list SET requirements = 0 WHERE spellid = 260; -- dispel

UPDATE spell_list SET validTargets = 3, spell_range = 204 WHERE name IN ('enfire','enblizzard','enaero','enstone','enthunder','enwater');
UPDATE spell_list SET validTargets = 3, spell_range = 204 WHERE name IN ('enfire_ii','enblizzard_ii','enaero_ii','enstone_ii','enthunder_ii','enwater_ii');
UPDATE spell_list SET recastTime = 10000 WHERE name = 'refresh';
UPDATE spell_list SET castTime = 1500 WHERE name = 'erase';

UPDATE spell_list SET mpCost = 10, recastTime = 50000, VE = 320 WHERE spellid = 242; -- absorb-acc
UPDATE spell_list SET mpCost = 10, recastTime = 50000, VE = 320 WHERE spellid = 266; -- absorb-str
UPDATE spell_list SET mpCost = 10, recastTime = 50000, VE = 320 WHERE spellid = 267; -- absorb-dex
UPDATE spell_list SET mpCost = 10, recastTime = 50000, VE = 320 WHERE spellid = 268; -- absorb-vit
UPDATE spell_list SET mpCost = 10, recastTime = 50000, VE = 320 WHERE spellid = 269; -- absorb-agi
UPDATE spell_list SET mpCost = 10, recastTime = 50000, VE = 320 WHERE spellid = 270; -- absorb-int
UPDATE spell_list SET mpCost = 10, recastTime = 50000, VE = 320 WHERE spellid = 271; -- absorb-mnd
UPDATE spell_list SET mpCost = 10, recastTime = 50000, VE = 320 WHERE spellid = 272; -- absorb-chr

UPDATE spell_list SET jobs = 0x0000000000004B000000000000000000000000000000 WHERE spellid = 310; -- enlight PLD 75
UPDATE spell_list SET jobs = 0x000000000000004B0000000000000000000000000000 WHERE spellid = 311; -- endark DRK 75

UPDATE spell_list SET jobs = 0x00003200000000000000000000000000000000000000, spell_range = 0 WHERE spellid = 479; -- boost-str
UPDATE spell_list SET jobs = 0x00003200000000000000000000000000000000000000, spell_range = 0 WHERE spellid = 480; -- boost-dex
UPDATE spell_list SET jobs = 0x00003200000000000000000000000000000000000000, spell_range = 0 WHERE spellid = 481; -- boost-vit
UPDATE spell_list SET jobs = 0x00003200000000000000000000000000000000000000, spell_range = 0 WHERE spellid = 482; -- boost-agi
UPDATE spell_list SET jobs = 0x00003200000000000000000000000000000000000000, spell_range = 0 WHERE spellid = 483; -- boost-int
UPDATE spell_list SET jobs = 0x00003200000000000000000000000000000000000000, spell_range = 0 WHERE spellid = 484; -- boost-mnd
UPDATE spell_list SET jobs = 0x00003200000000000000000000000000000000000000, spell_range = 0 WHERE spellid = 485; -- boost-chr

UPDATE spell_list SET jobs = 0x000000004B0000000000000000000000000000000000 WHERE spellid IN (486,487,488,489,490,491,492); -- gain-str,gain-dex,gain-vit,gain-agi,gain-int,gain-mnd,gain-chr

UPDATE spell_list SET validTargets = 3, spell_range = 204  WHERE spellid IN (249,250,251); -- blaze, ice, shock spikes

UPDATE spell_list SET jobs = 0x00000000000000000000000000000000000000004B00 WHERE spellid IN (829,831,833,835,837,839); -- fira_ii,blizzara_ii,aera_ii,stonera_ii,thundara_ii,watera_ii
UPDATE spell_list SET jobs = 0x00000000000000000000000000000000000000004B00 WHERE skill = 44 AND CAST(CONV(SUBSTR(HEX(jobs),41,2),16,10) AS INT) > 75; -- Reduce level of geo spells 76+ to 75

UPDATE spell_list SET jobs = 0x00000000000000000000000019000000000000000000 WHERE name IN ('gekka_ichi','yain_ichi');
UPDATE spell_list SET jobs = 0x00000000000000000000000046000000000000000000 WHERE name IN ('yurin_ichi');
UPDATE spell_list SET jobs = 0x0000000000000000000000004B000000000000000000 WHERE name IN ('kakka_ichi','myoshu_ichi','aisha_ichi');

UPDATE spell_list SET jobs = 0x00002C004B0000000000000000000000000000250030 WHERE name = 'regen_ii'; -- RDM 75

UPDATE spell_list SET mpCost = mpCost * 0.75 WHERE skill = 43; -- Reduce Blue Magic spell costs
UPDATE spell_list SET jobs = 0x0000000000000000000000000000004B000000000000 WHERE skill = 43 AND CAST(CONV(SUBSTR(HEX(jobs),31,2),16,10) AS INT) BETWEEN 75 AND 85; -- Reduce level of blue spells 76-85 to 75

UPDATE spell_list SET element = 1 WHERE spellid = 61; -- barblizzard is fire element

UPDATE spell_list SET CE = 600, VE = 1800 WHERE spellid = 112; -- flash
UPDATE spell_list SET mpCost = 10 WHERE spellid = 28; -- Banish
UPDATE spell_list SET mpCost = 20 WHERE spellid = 29; -- Banish II
UPDATE spell_list SET mpCost = 30 WHERE spellid = 38; -- Banishga
UPDATE spell_list SET mpCost = 25 WHERE spellid = 21; -- Holy
UPDATE spell_list SET mpCost = 50 WHERE spellid = 22; -- Holy II

UPDATE spell_list SET castTime = castTime / 2 WHERE family BETWEEN 54 AND 59;

UPDATE spell_list SET content_tag = NULL;
