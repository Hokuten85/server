UPDATE item_weapon SET delay = 170 WHERE itemid = 18005; -- heart_snatcher
UPDATE item_weapon SET delay = 280 WHERE itemid = 17451; -- morgenstern
UPDATE item_weapon SET delay = 200 WHERE itemid = 17793; -- senjuinrikio
UPDATE item_weapon SET delay = 300 WHERE itemid = 17944; -- retributor
UPDATE item_weapon SET delay = 480 WHERE itemid = 18053; -- Gravedigger
UPDATE item_weapon SET delay = 480 WHERE itemid = 18217; -- rampager

-- ============================================================
-- Melee staff damage adjustments (staff-revamp)
-- Target: bring melee-oriented staves/poles to parity with the
-- highest-DPS polearm (skill=8) within +/-3 levels.
-- HQ versions (+1/+2) match polearm DPS; normal quality = HQ dmg - 1.
-- Only dmg is changed; delay is untouched.
-- ============================================================

-- L5 – ref: bronze_spear_+1 (L7) DPS 2.65
UPDATE item_weapon SET dmg = 17 WHERE itemid = 17122; -- ash_pole_+1
UPDATE item_weapon SET dmg = 16 WHERE itemid = 17095; -- ash_pole

-- L15 – ref: ryl.spr._spear (L18) DPS 4.24
UPDATE item_weapon SET dmg = 26 WHERE itemid = 17541; -- bastokan_staff
UPDATE item_weapon SET dmg = 23 WHERE itemid = 17538; -- federation_staff
UPDATE item_weapon SET dmg = 25 WHERE itemid = 17542; -- republic_staff
UPDATE item_weapon SET dmg = 24 WHERE itemid = 17537; -- windurstian_staff

-- L16 – ref: ryl.spr._spear (L18) DPS 4.24
UPDATE item_weapon SET dmg = 28 WHERE itemid = 17124; -- holly_pole_+1
UPDATE item_weapon SET dmg = 27 WHERE itemid = 17096; -- holly_pole

-- L18 – ref: fuscina (L20) DPS 4.70
UPDATE item_weapon SET dmg = 31 WHERE itemid = 17103; -- mercenarys_pole

-- L23 – ref: spear_+1 (L24) DPS 5.45
UPDATE item_weapon SET dmg = 34 WHERE itemid = 17536; -- federation_pole
UPDATE item_weapon SET dmg = 35 WHERE itemid = 17535; -- windurstian_pole

-- L25 – ref: military_spear (L28) DPS 5.78
UPDATE item_weapon SET dmg = 38 WHERE itemid = 17425; -- spiked_club_+1
UPDATE item_weapon SET dmg = 37 WHERE itemid = 17424; -- spiked_club

-- L30 – ref: lizard_piercer (L32) DPS 5.92
UPDATE item_weapon SET dmg = 38 WHERE itemid = 17119; -- elm_pole_+1
UPDATE item_weapon SET dmg = 37 WHERE itemid = 17097; -- elm_pole

-- L40 – ref: behourd_lance (L40) DPS 7.53
UPDATE item_weapon SET dmg = 49 WHERE itemid = 17120; -- oak_pole_+1
UPDATE item_weapon SET dmg = 48 WHERE itemid = 17098; -- oak_pole

-- L45 – ref: mythril_lance_+1 (L48) DPS 8.79
UPDATE item_weapon SET dmg = 57 WHERE itemid = 17524; -- footmans_staff
UPDATE item_weapon SET dmg = 59 WHERE itemid = 18591; -- pastoral_staff
UPDATE item_weapon SET dmg = 59 WHERE itemid = 17523; -- quarterstaff

-- L50 – ref: holy_lance_+1 (L53) DPS 9.41
UPDATE item_weapon SET dmg = 61 WHERE itemid = 17129; -- musketeers_pole

-- L52 – ref: battle_fork_+1 (L55) DPS 9.66
UPDATE item_weapon SET dmg = 59 WHERE itemid = 17540; -- msk._pole_+2 (HQ)
UPDATE item_weapon SET dmg = 58 WHERE itemid = 17539; -- msk._pole_+1
UPDATE item_weapon SET dmg = 65 WHERE itemid = 17529; -- sunlight_pole

-- L59 – ref: dark_mezraq_+1 (L60) DPS 10.29
UPDATE item_weapon SET dmg = 67 WHERE itemid = 17521; -- mahogany_pole_+1
UPDATE item_weapon SET dmg = 66 WHERE itemid = 17099; -- mahogany_pole

-- L60 – ref: dark_mezraq_+1 (L60) DPS 10.29
UPDATE item_weapon SET dmg = 69 WHERE itemid = 17574; -- archalauss_pole
UPDATE item_weapon SET dmg = 67 WHERE itemid = 17544; -- battle_staff_+1
UPDATE item_weapon SET dmg = 66 WHERE itemid = 17543; -- battle_staff

-- L65 – ref: tonbo-giri (L68) DPS 10.91
UPDATE item_weapon SET dmg = 71 WHERE itemid = 17525; -- ebony_pole_+1
UPDATE item_weapon SET dmg = 70 WHERE itemid = 17100; -- ebony_pole
UPDATE item_weapon SET dmg = 67 WHERE itemid = 17531; -- ramuhs_staff

-- L66 – ref: skystrider (L69) DPS 11.34
UPDATE item_weapon SET dmg = 67 WHERE itemid = 17563; -- power_staff

-- L71 – ref: achilles_spear (L74) DPS 11.97
UPDATE item_weapon SET dmg = 78 WHERE itemid = 17576; -- grim_staff

-- L72 – ref: achilles_spear (L74) DPS 11.97  (gungnir/gae_assail excluded as relic/mythic)
UPDATE item_weapon SET dmg = 80 WHERE itemid = 17570; -- iron-splitter_+1
UPDATE item_weapon SET dmg = 79 WHERE itemid = 17569; -- iron-splitter
UPDATE item_weapon SET dmg = 80 WHERE itemid = 17575; -- somnus_signa
UPDATE item_weapon SET dmg = 82 WHERE itemid = 17596; -- steel-splitter

-- L73 – ref: achilles_spear (L74) DPS 11.97  (gungnir/gae_assail excluded as relic/mythic)
UPDATE item_weapon SET dmg = 73 WHERE itemid = 17595; -- hope_staff
UPDATE item_weapon SET dmg = 82 WHERE itemid = 17592; -- kinkobo
UPDATE item_weapon SET dmg = 82 WHERE itemid = 18595; -- mekki_shakki
UPDATE item_weapon SET dmg = 80 WHERE itemid = 17591; -- primate_staff_+1
UPDATE item_weapon SET dmg = 79 WHERE itemid = 17590; -- primate_staff
UPDATE item_weapon SET dmg = 80 WHERE itemid = 17589; -- thyrsusstab
UPDATE item_weapon SET dmg = 80 WHERE itemid = 18588; -- perdu_staff
UPDATE item_weapon SET dmg = 72 WHERE itemid = 18618; -- samudra

-- L75 (eight-sided_pole family) – ref: achilles_spear (L74) DPS 11.97  (gungnir excluded)
UPDATE item_weapon SET dmg = 78 WHERE itemid = 17568; -- eight-sd._pole_+1
UPDATE item_weapon SET dmg = 77 WHERE itemid = 17102; -- eight-sided_pole

-- L75 (claustrum) – ref: gungnir (L75) DPS 12.20  (user-confirmed OK for claustrum)
UPDATE item_weapon SET dmg = 79 WHERE itemid = 18330; -- claustrum

-- ============================================================
-- Additional melee staves / poles (wave 2)
-- Same methodology: HQ matches ref polearm DPS; standalone or
-- normal quality = HQ dmg - 1.  Only dmg is changed.
-- ============================================================

-- L16 – ref: ryl.spr._spear (L18) DPS 4.24
UPDATE item_weapon SET dmg = 28 WHERE itemid = 18586; -- flexible_pole

-- L20 – ref: kingdom_spear (L23) DPS 4.81
UPDATE item_weapon SET dmg = 29 WHERE itemid = 17571; -- platoon_pole

-- L27 – ref: military_spear (L28) DPS 5.78
UPDATE item_weapon SET dmg = 35 WHERE itemid = 17134; -- dolphin_staff

-- L32 – ref: lance_+1 (L34) DPS 6.53
UPDATE item_weapon SET dmg = 39 WHERE itemid = 17534; -- whale_staff_+1
UPDATE item_weapon SET dmg = 38 WHERE itemid = 17533; -- whale_staff

-- L33 – ref: halberd_+1 (L36) DPS 6.70
UPDATE item_weapon SET dmg = 42 WHERE itemid = 17580; -- military_pole

-- L50 – ref: holy_lance_+1 (L53) DPS 9.41
UPDATE item_weapon SET dmg = 57 WHERE itemid = 17135; -- walrus_staff

-- L51 – ref: holy_lance_+1 (L53) DPS 9.41
UPDATE item_weapon SET dmg = 56 WHERE itemid = 17546; -- vulcans_staff (+1)
UPDATE item_weapon SET dmg = 55 WHERE itemid = 17545; -- fire_staff
UPDATE item_weapon SET dmg = 56 WHERE itemid = 17550; -- austers_staff (+1)
UPDATE item_weapon SET dmg = 55 WHERE itemid = 17549; -- wind_staff
UPDATE item_weapon SET dmg = 56 WHERE itemid = 17552; -- terras_staff (+1)
UPDATE item_weapon SET dmg = 55 WHERE itemid = 17551; -- earth_staff
UPDATE item_weapon SET dmg = 56 WHERE itemid = 17554; -- jupiters_staff (+1)
UPDATE item_weapon SET dmg = 55 WHERE itemid = 17553; -- thunder_staff

-- L56 – ref: partisan_+1 (L57) DPS 9.68
UPDATE item_weapon SET dmg = 65 WHERE itemid = 17106; -- rockmasher

-- L57 – ref: dark_mezraq_+1 (L60) DPS 10.29
UPDATE item_weapon SET dmg = 63 WHERE itemid = 17561; -- revenging_staff

-- L68 – ref: imperial_neza (L71) DPS 11.55
UPDATE item_weapon SET dmg = 70 WHERE itemid = 18585; -- kinnara_pole

-- L69 – ref: zaide (L72) DPS 11.67
UPDATE item_weapon SET dmg = 78 WHERE itemid = 17564; -- cocytus_pole

-- L70 – ref: zaide (L72) DPS 11.67
-- mercurial_pole hits 1-5 times/round (avg 3.0x); per-hit dmg = round(11.67/3.0 * 366/60) = 24
UPDATE item_weapon SET dmg = 24 WHERE itemid = 17586; -- mercurial_pole
UPDATE item_weapon SET dmg = 76 WHERE itemid = 17526; -- mythic_pole_+1
UPDATE item_weapon SET dmg = 75 WHERE itemid = 17101; -- mythic_pole

-- L71 – ref: achilles_spear (L74) DPS 11.97
UPDATE item_weapon SET dmg = 80 WHERE itemid = 18608; -- atesh_pole
UPDATE item_weapon SET dmg = 80 WHERE itemid = 18583; -- imperial_pole
UPDATE item_weapon SET dmg = 73 WHERE itemid = 17530; -- mst.cst._pole
UPDATE item_weapon SET dmg = 80 WHERE itemid = 17527; -- pole_of_trials
UPDATE item_weapon SET dmg = 80 WHERE itemid = 17582; -- prelatic_pole

-- L72 – ref: achilles_spear (L74) DPS 11.97
UPDATE item_weapon SET dmg = 80 WHERE itemid = 18581; -- carbuncles_pole
UPDATE item_weapon SET dmg = 78 WHERE itemid = 17593; -- martial_staff
UPDATE item_weapon SET dmg = 80 WHERE itemid = 17581; -- mighty_pole
UPDATE item_weapon SET dmg = 80 WHERE itemid = 17578; -- zen_pole

-- L73 – ref: achilles_spear (L74) DPS 11.97
UPDATE item_weapon SET dmg = 82 WHERE itemid = 18609; -- lyft_pole

-- L75 – ref: achilles_spear (L74) DPS 11.97
UPDATE item_weapon SET dmg = 80 WHERE itemid = 17599; -- diaboloss_pole
UPDATE item_weapon SET dmg = 80 WHERE itemid = 17567; -- kirins_pole

-- ============================================================
-- Melee club damage adjustments
-- Target: bring melee-oriented clubs to parity with the highest-DPS
-- axe (skill=5) within +/-3 levels.
-- HQ (+1) matches axe DPS; standalone or normal quality = HQ dmg - 1.
-- Penalty-stat clubs (club_hammer, sloth_wand, curse_wand) excluded.
-- Only dmg is changed; delay is untouched.
-- ============================================================

-- L23 – ref: tigerhunter (L26) DPS 4.78
UPDATE item_weapon SET dmg = 25 WHERE itemid = 17452; -- bastokan_hammer
UPDATE item_weapon SET dmg = 24 WHERE itemid = 17453; -- republic_hammer

-- L24 – ref: tigerhunter (L26) DPS 4.78
UPDATE item_weapon SET dmg = 24 WHERE itemid = 17414; -- pixie_mace

-- L30 – ref: military_pick (L28) DPS 5.54
UPDATE item_weapon SET dmg = 27 WHERE itemid = 17150; -- ryl.sqr._mace

-- L34 – ref: mythril_axe_+1 (L37) DPS 6.72
UPDATE item_weapon SET dmg = 31 WHERE itemid = 17449; -- kingdom_mace
UPDATE item_weapon SET dmg = 32 WHERE itemid = 17448; -- san_dorian_mace

-- L62 – ref: dst._tabar_+1 (L65) DPS 9.58
UPDATE item_weapon SET dmg = 48 WHERE itemid = 18867; -- daedalus_hammer

-- L65 – ref: dst._tabar_+1 (L65) DPS 9.58
UPDATE item_weapon SET dmg = 53 WHERE itemid = 17432; -- darksteel_maul_+1
UPDATE item_weapon SET dmg = 52 WHERE itemid = 17046; -- darksteel_maul
UPDATE item_weapon SET dmg = 44 WHERE itemid = 17438; -- titans_cudgel

-- L67 – ref: kriegsbeil (L70) DPS 10.43
UPDATE item_weapon SET dmg = 51 WHERE itemid = 17431; -- platinum_mace_+1
UPDATE item_weapon SET dmg = 50 WHERE itemid = 17039; -- platinum_mace

-- L68 – ref: tabarzin_+1 (L71) DPS 10.71
UPDATE item_weapon SET dmg = 52 WHERE itemid = 18843; -- flan_smasher
UPDATE item_weapon SET dmg = 61 WHERE itemid = 18395; -- seawolf_cudgel
UPDATE item_weapon SET dmg = 61 WHERE itemid = 18396; -- sea_rob._cudgel

-- L69 – ref: tabarzin_+1 (L71) DPS 10.71
UPDATE item_weapon SET dmg = 51 WHERE itemid = 18862; -- clearpath
UPDATE item_weapon SET dmg = 55 WHERE itemid = 18861; -- grandeur
UPDATE item_weapon SET dmg = 60 WHERE itemid = 18406; -- jadagna_+1
UPDATE item_weapon SET dmg = 59 WHERE itemid = 18405; -- jadagna

-- L70 – ref: tabarzin_+1 (L71) DPS 10.71
UPDATE item_weapon SET dmg = 58 WHERE itemid = 17464; -- purgatory_mace

-- L71 – ref: tabarzin_+1 (L71) DPS 10.71
UPDATE item_weapon SET dmg = 60 WHERE itemid = 18849; -- brass_jadagna_+1
UPDATE item_weapon SET dmg = 59 WHERE itemid = 18848; -- brass_jadagna
UPDATE item_weapon SET dmg = 52 WHERE itemid = 17460; -- buzdygan_+1
UPDATE item_weapon SET dmg = 51 WHERE itemid = 17038; -- buzdygan
UPDATE item_weapon SET dmg = 54 WHERE itemid = 17470; -- pealing_buzdygan
UPDATE item_weapon SET dmg = 51 WHERE itemid = 17458; -- rsv.cpt._mace
UPDATE item_weapon SET dmg = 51 WHERE itemid = 17457; -- snr.msk._rod

-- L72 – ref: tabarzin_+1 (L71) DPS 10.71
UPDATE item_weapon SET dmg = 50 WHERE itemid = 17459; -- scepter_+1
UPDATE item_weapon SET dmg = 49 WHERE itemid = 17064; -- scepter
UPDATE item_weapon SET dmg = 55 WHERE itemid = 18404; -- ramuhs_mace
UPDATE item_weapon SET dmg = 58 WHERE itemid = 18865; -- zonure

-- L74 – ref: glyph_axe (L77) DPS 12.39
UPDATE item_weapon SET dmg = 69 WHERE itemid = 18874; -- brise-os_+1
UPDATE item_weapon SET dmg = 68 WHERE itemid = 18873; -- brise-os
UPDATE item_weapon SET dmg = 62 WHERE itemid = 18856; -- deae_gratia

-- L75 (relic) – ref: guttler_75 (L75) DPS 11.36
UPDATE item_weapon SET dmg = 58 WHERE itemid = 18324; -- mjollnir

-- ============================================================
-- Wave-3: Additional melee staves (DPS parity with polearms)
-- Same methodology as wave-1/wave-2.
-- ============================================================

-- L15 – ref: ryl.spr._spear (L18) DPS 4.24
UPDATE item_weapon SET dmg = 26 WHERE itemid = 18599; -- pestle

-- L20 – ref: kingdom_spear (L23) DPS 4.81
UPDATE item_weapon SET dmg = 29 WHERE itemid = 17116; -- misery_staff

-- L30 – ref: lizard_piercer (L32) DPS 5.92
UPDATE item_weapon SET dmg = 36 WHERE itemid = 17117; -- hypno_staff

-- L51 – ref: holy_lance_+1 (L53) DPS 9.41  (HQ=56 delay 356; NQ=HQ-1=55 delay 366)
UPDATE item_weapon SET dmg = 56 WHERE itemid = 17558; -- apollos_staff (+1, delay 356)
UPDATE item_weapon SET dmg = 55 WHERE itemid = 17557; -- light_staff (delay 366)
UPDATE item_weapon SET dmg = 56 WHERE itemid = 17560; -- plutos_staff (+1, delay 356)
UPDATE item_weapon SET dmg = 55 WHERE itemid = 17559; -- dark_staff (delay 366)
UPDATE item_weapon SET dmg = 56 WHERE itemid = 18633; -- chatoyant_staff (+1, delay 356)
UPDATE item_weapon SET dmg = 55 WHERE itemid = 18632; -- iridal_staff (delay 366)

-- L75 non-relic – ref: guisarme_+1 (L77) DPS 12.05
UPDATE item_weapon SET dmg = 81 WHERE itemid = 18589; -- mages_staff
UPDATE item_weapon SET dmg = 81 WHERE itemid = 18590; -- scepter_staff
UPDATE item_weapon SET dmg = 81 WHERE itemid = 18592; -- elder_staff

-- L75 mythic – ref: ryunohige_75 (L75) DPS 11.10
UPDATE item_weapon SET dmg = 74 WHERE itemid = 18994; -- laevateinn_75
UPDATE item_weapon SET dmg = 74 WHERE itemid = 19005; -- nirvana_75
UPDATE item_weapon SET dmg = 74 WHERE itemid = 18990; -- tupsimati_75

-- ============================================================
-- Wave-3: Additional melee clubs (DPS parity with axes)
-- Same methodology as wave-1 clubs.
-- ============================================================

-- L21 – ref: battleaxe_+1 (L20) DPS 4.70
UPDATE item_weapon SET dmg = 17 WHERE itemid = 17076; -- earth_wand

-- L27 – ref: military_pick (L28) DPS 5.54
UPDATE item_weapon SET dmg = 27 WHERE itemid = 17071; -- heat_rod

-- L38 – ref: orc_piercer (L41) DPS 7.27
UPDATE item_weapon SET dmg = 38 WHERE itemid = 17114; -- holy_maul_+1 (HQ, delay 315)
UPDATE item_weapon SET dmg = 37 WHERE itemid = 17080; -- holy_maul (NQ, delay 324)
UPDATE item_weapon SET dmg = 39 WHERE itemid = 18392; -- sacred_maul (standalone, delay 324)
UPDATE item_weapon SET dmg = 39 WHERE itemid = 18853; -- spirit_maul (standalone, delay 324)

-- L43 – ref: combat_casters_axe_+2 (L43) DPS 7.95
UPDATE item_weapon SET dmg = 39 WHERE itemid = 17411; -- holy_mace_+1 (HQ, delay 291)
UPDATE item_weapon SET dmg = 38 WHERE itemid = 17041; -- holy_mace (NQ, delay 300)

-- L47 – ref: mythril_pick_+1 (L50) DPS 7.92
UPDATE item_weapon SET dmg = 43 WHERE itemid = 17083; -- time_hammer

-- L63 – ref: darksteel_tabar_+1 (L65) DPS 9.58; hit=8, avg_hits=(1+8)/2=4.5; per-hit dmg=9
UPDATE item_weapon SET dmg = 9 WHERE itemid = 17440; -- kraken_club

-- L72 – ref: tabarzin_+1 (L71) DPS 10.71
UPDATE item_weapon SET dmg = 52 WHERE itemid = 17467; -- martial_wand

-- L75 non-relic – ref: glyph_axe (L77) DPS 12.39
UPDATE item_weapon SET dmg = 55 WHERE itemid = 18851; -- werebuster

-- L75 mythic – ref: aymur_75 (L75) DPS 9.62
UPDATE item_weapon SET dmg = 43 WHERE itemid = 18993; -- yagrush_75

-- New filler staves (DNC only): willow_pole L10, teak_pole L35
-- skill=12 (Staff), dmgType=3, hit=1
REPLACE INTO item_weapon VALUES (17055, 'willow_pole', 12, 0, 0, 0, 0, 3, 1, 402, 23, 0);
REPLACE INTO item_weapon VALUES (17084, 'teak_pole',   12, 0, 0, 0, 0, 3, 1, 366, 44, 0);
