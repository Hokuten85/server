-- Variables
-- Auction House Categories
SET @NONE         =   0; -- Zero means does not appear in AH at all
SET @H2H          =   1; -- Weapons->H2h
SET @DAGGER       =   2; -- Weapons->Dagger
SET @SWORD        =   3; -- Weapons->Sword
SET @GREATSWORD   =   4; -- Weapons->Greatsword
SET @AXE          =   5; -- Weapons->Axe
SET @GREATAXE     =   6; -- Weapons->Greataxe
SET @SCYTHE       =   7; -- Weapons->Scythe
SET @POLEARM      =   8; -- Weapons->Polearm
SET @KATANA       =   9; -- Weapons->Katana
SET @GREATKATANA  =  10; -- Weapons->Greatkatana
SET @CLUB         =  11; -- Weapons->Club
SET @STAFF        =  12; -- Weapons->Staff
SET @BOW          =  13; -- Weapons->Bow
SET @INSTRUMENTS  =  14; -- Weapons->Instruments
SET @AMMUNITION   =  15; -- Weapons->Ammo&Misc->Ammunition
SET @SHIELD       =  16; -- Armor->Shield
SET @HEAD         =  17; -- Armor->Head
SET @BODY         =  18; -- Armor->Body
SET @HANDS        =  19; -- Armor->Hands
SET @LEGS         =  20; -- Armor->Legs
SET @FEET         =  21; -- Armor->Feet
SET @NECK         =  22; -- Armor->Neck
SET @WAIST        =  23; -- Armor->Waist
SET @EARRINGS     =  24; -- Armor->Earrings
SET @RINGS        =  25; -- Armor->Rings
SET @BACK         =  26; -- Armor->Back
SET @UNUSED       =  27; -- (Unused)
SET @WHITE_MAGIC  =  28; -- Scrolls->White Magic
SET @BLACK_MAGIC  =  29; -- Scrolls->Black Magic
SET @SUMMONING    =  30; -- Scrolls->Summoning
SET @NINJUTSU     =  31; -- Scrolls->Ninjutsu
SET @SONGS        =  32; -- Scrolls->Songs
SET @MEDICINES    =  33; -- Medicines
SET @FURNISHINGS  =  34; -- Furnishing
SET @CRYSTALS     =  35; -- Crystals
SET @CARDS        =  36; -- Others->Cards
SET @CURSED_ITEMS =  37; -- Others->Cursed Items
SET @SMITHING     =  38; -- Materials->Smithing
SET @GOLDSMITHING =  39; -- Materials->Goldsmithing
SET @CLOTHCRAFT   =  40; -- Materials->Clothcraft
SET @LEATHERCRAFT =  41; -- Materials->Leathercraft
SET @BONECRAFT    =  42; -- Materials->Bonecraft
SET @WOODWORKING  =  43; -- Materials->Woodworking
SET @ALCHEMY      =  44; -- Materials->Alchemy
SET @GEOMANCER    =  45; -- Scrolls->Geomancy
SET @MISC         =  46; -- Others->Misc.
SET @FISHING_GEAR =  47; -- Weapons->Ammo&Misc->Fishing Gear
SET @PET_ITEMS    =  48; -- Weapons->Ammo&Misc->Pet Items
SET @NINJA_TOOLS  =  49; -- Others->Ninja Tools
SET @BEAST_MADE   =  50; -- Others->Beast-made
SET @FISH         =  51; -- Food->Fish
SET @MEAT_EGGS    =  52; -- Food->Meals->Meat&Eggs
SET @SEAFOOD      =  53; -- Food->Meals->Seafood
SET @VEGETABLES   =  54; -- Food->Meals->Vegetables
SET @SOUPS        =  55; -- Food->Meals->Soups
SET @BREADS_RICE  =  56; -- Food->Meals->Breads&Rice
SET @SWEETS       =  57; -- Food->Meals->Sweets
SET @DRINKS       =  58; -- Food->Meals->Drinks
SET @INGREDIENTS  =  59; -- Food->Ingredients
SET @DICE         =  60; -- Scrolls->Dice
SET @AUTOMATON    =  61; -- Others->Automaton
SET @GRIPS        =  62; -- Weapons->Ammo&Misc->Grips
SET @ALCHEMY_2    =  63; -- Materials->Alchemy 2
SET @MISC_2       =  64; -- Others->Misc.2
SET @MISC_3       =  65; -- Others->Misc.3
SET @INVALID      = 255; -- Item needs retail verification

-- Item type
SET @GENERAL_TYPE    = 1;
SET @LINKSHELL_TYPE  = 2;
SET @FURNISHING_TYPE = 3;
SET @PUPPET_TYPE     = 4;
SET @USABLE_TYPE     = 5;
SET @EQUIPMENT_TYPE  = 6;
SET @WEAPON_TYPE     = 7;
SET @CURRENCY_TYPE   = 8;

-- Item Flags
SET @FLAG_AUG_SENDABLE   =      1; -- 0x00001
SET @FLAG_GM_ONLY        =      2; -- 0x00002
SET @FLAG_MYSTERY_BOX    =      4; -- 0x00004
SET @FLAG_MOG_GARDEN     =      8; -- 0x00008
SET @FLAG_CAN_SEND_ACCT  =     16; -- 0x00010
SET @FLAG_INSCRIBABLE    =     32; -- 0x00020
SET @FLAG_NOAUCTION      =     64; -- 0x00040
SET @FLAG_SCROLL         =    128; -- 0x00080
SET @FLAG_LINKSHELL      =    256; -- 0x00100
SET @FLAG_CANUSE         =    512; -- 0x00200
SET @FLAG_CANTRADENPC    =   1024; -- 0x00400
SET @FLAG_CANEQUIP       =   2048; -- 0x00800
SET @FLAG_NOSALE         =   4096; -- 0x01000
SET @FLAG_NODELIVERY     =   8192; -- 0x02000
SET @FLAG_EX             =  16384; -- 0x04000
SET @FLAG_RARE           =  32768; -- 0x08000
SET @FLAG_NO_RECYCLE     =  65536; -- 0x10000
SET @FLAG_NO_RARE_CHECK  = 131072; -- 0x20000

-- POTIONS AND ETHERS STACK TO 12
UPDATE item_basic ib
INNER JOIN item_usable iu
	ON ib.itemid = iu.itemid
SET ib.stackSize = 12
WHERE ib.stackSize = 1
AND NOT ib.flags & (0x8000 | 0x4000 | 0x0080)
AND ib.aH IN (33)
AND (ib.itemid BETWEEN 4113 AND 4143
OR ib.itemid BETWEEN 4199 AND 4211);

-- DRINKS STACK TO 99
UPDATE item_basic ib
INNER JOIN item_usable iu
	ON ib.itemid = iu.itemid
SET ib.stackSize = 99
WHERE ib.stackSize = 1
AND NOT ib.flags & (0x8000 | 0x4000 | 0x0080)
AND ib.aH IN (58);

-- Brown Belt, Fuma Kyahan, Okote, Healing staff RARE
UPDATE item_basic
SET flags = flags | 0x8000
WHERE itemid IN (13202,13054,13952,17108);

UPDATE item_basic SET stackSize = 99, aH = 51 WHERE itemid IN (4305,4316,4479,5134,5135,5534); -- 'apkallufa', 'armored_pisces', 'bhefhel_marlin', 'mola_mola', 'rhinochimera', 'ryugu_titan'
UPDATE item_basic SET aH = 49 WHERE itemid IN (2971,2972,2973,5867,5868,5869); -- Shikanofuda, Chonofuda, Inoshishinofuda
UPDATE item_basic SET stackSize = 99 WHERE itemid = 17304; -- fuma_shuriken
UPDATE item_basic SET aH = 15 WHERE name like '%shuriken%pouch%';

UPDATE item_basic SET name = 'toolbag_soshi' WHERE name = 'toolbag_(soshi)';
UPDATE item_basic SET name = 'toolbag_kabenro' WHERE name = 'toolbag_(kabenro)';
UPDATE item_basic SET name = 'toolbag_jinko' WHERE name = 'toolbag_(jinko)';
UPDATE item_basic SET name = 'toolbag_jinko' WHERE name = 'toolbag_(ryuno)';
UPDATE item_basic SET name = 'toolbag_mokujin' WHERE name = 'toolbag_(mokujin)';
UPDATE item_basic SET name = 'toolbag_inoshishinofuda' WHERE name = 'toolbag_(inoshishinofuda)';
UPDATE item_basic SET name = 'toolbag_shikanofuda' WHERE name = 'toolbag_(shikanofuda)';
UPDATE item_basic SET name = 'toolbag_chonofuda' WHERE name = 'toolbag_(chonofuda)';
UPDATE item_basic SET name = 'toolbag_ranka' WHERE name = 'toolbag_(ranka)';
UPDATE item_basic SET name = 'toolbag_furu' WHERE name = 'toolbag_(furu)';

UPDATE item_basic SET aH = 46 WHERE itemid = 8740; -- pizza_cutter

UPDATE item_basic SET flags = flags & (~0x8000) WHERE itemid BETWEEN 4258 AND 4265; -- red_drop - black_drop

REPLACE INTO `item_basic` VALUES (15764,0,'virtuous_torque','virtuous_torque','高潔なトルク',@EQUIPMENT_TYPE,1,@FLAG_MYSTERY_BOX | @FLAG_CAN_SEND_ACCT | @FLAG_NOAUCTION | @FLAG_CANEQUIP | @FLAG_NOSALE | @FLAG_NODELIVERY | @FLAG_EX | @FLAG_RARE,@NONE,0);

-- Remove EX
-- update item_basic set flags = flags ^ 0x4000
-- where itemid in (4064,4065,4066,4067,4068,4069,4070,4071,4072,4073); -- chapters 1-10

-- update item_basic set flags = flags ^ 0x4000
-- where itemid in (1784,1785,1786,1787,1788); -- phuabo_organ,xzomit_organ,aern_organ,hpemde_organ,yovra_organ
