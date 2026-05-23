-----------------------------------
-- Area: Temenos
-----------------------------------
zones = zones or {}

zones[xi.zone.TEMENOS] =
{
    text =
    {
        -- NOTE: Limbus-specific IDs restored after April 29 2026 text shift dropped them.
        -- +3 shift applied from prior known values; verify in-game text if anything looks off.
        ITEM_CANNOT_BE_OBTAINED       = 6385, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6393, -- Obtained: <item>.
        GIL_OBTAINED                  = 6394, -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6396, -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS           = 7004, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7005, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7006, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7026, -- Your party is unable to participate because certain members' levels are restricted.
        CHIP_TRADE_T                  = 7033, -- What do you wish to do? Show me the cutscene again. Skip the cutscene and continue.
        TIME_IN_THE_BATTLEFIELD_IS_UP = 7068, -- You have exceeded the time limit. Exiting Limbus now.
        PARTY_MEMBERS_ARE_ENGAGED     = 7069, -- You have clearance to enter Limbus, but cannot enter while you or a party member is engaged in battle.
        CONQUEST_BASE                 = 7071, -- Tallying conquest results...
        HUM                           = 7085, -- You hear a faint hum.
        NO_BATTLEFIELD_ENTRY          = 7090, -- There is a disc here inscribed with strange letters. There are several six-sided indentations and a thin slot in the center.
        MEMBERS_OF_YOUR_PARTY         = 7342, -- Currently, <number> party members in this area have clearance to enter Limbus.
        TIME_LIMIT_FOR_THIS_BATTLE_IS = 7345, -- You may stay in Limbus for <number> [minute/minutes].
        PARTY_MEMBERS_HAVE_FALLEN     = 7368, -- All party members in Limbus have fallen in battle. Exiting now.
        THE_PARTY_WILL_BE_REMOVED     = 7378, -- All party members in Limbus have fallen in battle. Exiting in <number> [minute/minutes].
        YOU_INSERT_THE_CARD_POLISHED  = 7383, -- You insert the <keyitem> polished with <keyitem> into the slot!
        CHIP_TRADE                    = 7384, -- The light in the <item> has grown dim.
        TIME_EXTENDED                 = 7386, -- Your time in Limbus has been extended <number> [minute/minutes].
        TIME_LEFT                     = 7387, -- You have <number> [minute/minutes] left in Limbus.
        ENTERING_THE_BATTLEFIELD_FOR  = 7552, -- You have entered [Temenos - Northern Tower/Temenos - Western Tower/Temenos - Eastern Tower/Central Temenos].
    },
    mob =
    {
        -- Base mob IDs for Central Temenos floors, used for offset calculations in mob scripts.
        -- Index is the floor number (2 = 2nd floor, 3 = 3rd floor).
        TEMENOS_C_MOB =
        {
            [2] = 16929030, -- Mystic_Avatar_Carbuncle; Light_Elementals are at +1 (16929031) and +2 (16929032)
            [3] = 16929005, -- Abyssdweller_Jhabdebb; Orichalcum_Quadav = +1, Pee_Qoho_the_Python = +2
        },
    },
    npc =
    {
        C1_LOOT_CRATE = GetFirstID('C1_Loot_Crate'),
        C2_LOOT_CRATE = GetFirstID('C2_Loot_Crate'),
        C3_LOOT_CRATE = GetFirstID('C3_Loot_Crate'),
        C4_LOOT_CRATE = GetFirstID('C4_Loot_Crate'),
        CB_LOOT_CRATE = GetFirstID('CB_Loot_Crate'),
        N_LOOT_CRATE  = GetFirstID('N_Loot_Crate'),
        W_LOOT_CRATE  = GetFirstID('W_Loot_Crate'),

        -- Loot crate IDs indexed by floor number, used in mob death scripts.
        TEMENOS_C_CRATE =
        {
            [2] = GetFirstID('C2_Loot_Crate'),
            [3] = GetFirstID('C3_Loot_Crate'),
        },
    },

    TEMENOS_NORTHERN_TOWER =
    {
        mob =
        {
            MOBLIN_DUSTMAN = 16928774,
            KARI = 16928784,
            TELCHINES_DRAGOON = 16928790,
            TELCHINES_MONK = 16928792,
            KINDRED_BLACK_MAGE = 16928802,
            CRYPTONBERRY_ABDUCTOR = 16928818,
            CRYPTONBERRY_DESIGNATOR = 16928819,
        },

        npc =
        {
            PORTAL =
            {
                16929198,
                16929199,
                16929200,
                16929201,
                16929202,
                16929203,
                16929204,
            },

            ITEM_CRATES =
            {
                16928770,
                16928779,
                16928786,
                16928795,
                16928807,
                16928814,
            },

            TIME_CRATES =
            {
                16928771,
                16928780,
                16928787,
                16928796,
                16928808,
                16928815,
            },

            RECOVER_CRATES =
            {
                16928769,
                16928778,
                16928785,
                16928794,
                16928806,
                16928813,
            },
        },

        LINKED_CRATES =
        {
            [16932865] = { 16932866, 16932867 },
            [16928769] = { 16928770, 16928771 },
            [16928770] = { 16928769, 16928771 },
            [16928771] = { 16928769, 16928770 },
            [16928778] = { 16928779, 16928780 },
            [16928779] = { 16928778, 16928780 },
            [16928780] = { 16928778, 16928779 },
            [16928785] = { 16928786, 16928787 },
            [16928786] = { 16928785, 16928787 },
            [16928787] = { 16928785, 16928786 },
            [16928794] = { 16928795, 16928796 },
            [16928795] = { 16928794, 16928796 },
            [16928796] = { 16928794, 16928795 },
            [16928806] = { 16928807, 16928808 },
            [16928807] = { 16928806, 16928808 },
            [16928808] = { 16928806, 16928807 },
            [16928813] = { 16928814, 16928815 },
            [16928814] = { 16928813, 16928815 },
            [16928815] = { 16928813, 16928814 },
        },
    },

    TEMENOS_WESTERN_TOWER =
    {
        mob =
        {
            ENHANCED_TIGER      = 16928898,
            ENHANCED_MANDRAGORA = 16928910,
            ENHANCED_BEETLE     = 16928922,
            ENHANCED_LIZARD     = 16928931,
            ENHANCED_SLIME      = 16928943,
        },
        npc =
        {
            PORTAL =
            {
                16929212,
                16929213,
                16929214,
                16929215,
                16929216,
                16929217,
                16929218,
            },
            CRATE_OFFSETS =
            {
                16928895,
                16928907,
                16928919,
                16928928,
                16928940,
                16928949,
            },
        },
    },

    TEMENOS_EASTERN_TOWER =
    {
        mob =
        {
            ICE_ELEMENTAL     = 16928849,
            AIR_ELEMENTAL     = 16928858,
            THUNDER_ELEMENTAL = 16928876,
        },
        npc =
        {
            PORTAL =
            {
                16929205,
                16929206,
                16929207,
                16929208,
                16929209,
                16929210,
                16929211,
            },
            CRATE_OFFSETS =
            {
                16928836,
                16928845,
                16928854,
                16928863,
                16928872,
                16928881,
                16928890,
            },
        },
    },

    CENTRAL_TEMENOS_4TH_FLOOR =
    {
        npc =
        {
            GROUPS =
            {
                { offset = 16928967, count = 4 },
                { offset = 16928971, count = 7 },
                { offset = 16928978, count = 8 },
            },
        },
        mob =
        {
            GROUPS =
            {
                { offset = 16928986, count = 3 },
                { offset = 16928991, count = 6 },
                { offset = 16928997, count = 7 },
            },
        },
    },
}

return zones[xi.zone.TEMENOS]
