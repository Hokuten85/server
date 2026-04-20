-----------------------------------
-- Functions for ghetto synergy
-----------------------------------
xi = xi or {}
xi.synergy = xi.synergy or {}

local synergyRecipes = {
	{ ingredients = {17545,17547,17549,17551,17553,17555,17557,17559}, result = 18632 }, -- iridal-staff
	{ ingredients = {17546,17548,17550,17552,17554,17556,17558,17560}, result = 18633 }, -- chatoyant-staff
	{ ingredients = {760,760,784,2877}, result = 11584 }, -- lmg-medallion
	{ ingredients = {745,745,648,2875}, result = 11580 }, -- fylgja-torque
	{ ingredients = {13316,2880}, result = 16053 }, -- incubus-earring
	{ ingredients = {2876,13125}, result = 11582 }, -- ire-torque
	{ ingredients = {717,717,717,719,719,719,719,745}, result = 3584 }, -- panetiere
	{ ingredients = {2878,1828,2274}, result = 15950 }, -- pythia-sash
	{ ingredients = {15495,15500,15496,15499,15498,15497,15501,15502}, result = 27510 }, -- fotia-gorget
	{ ingredients = {11755,11760,11756,11759,11758,11757,11761,11762}, result = 28420 }, -- fotia-belt
	{ ingredients = {15441,15442,15435,15436,15437,15438,15439,15440}, result = 28419 }, -- hachirin-no-obi
	{ ingredients = {2570,2570}, result = 19051 }, -- vivid-strap
	{ ingredients = {2818,12156}, result = 12162 }, -- aptant-ishis,ebon-harness = Shikkoku Togi
	
	{ ingredients = {2811,12162}, result = 12162 }, -- aptant-primus,ebon-cuirass = ebon-breastplate
	{ ingredients = {2811,12150}, result = 12162 }, -- aptant-primus,ebon-haubert = ebon-breastplate
	{ ingredients = {2811,12147}, result = 12162 }, -- aptant-primus,ebon-mail = ebon-breastplate
	{ ingredients = {2808,12155}, result = 12162 }, -- ebon-pigment,ebur-breastplate = ebon-breastplate
	{ ingredients = {2808,12154}, result = 12162 }, -- ebon-pigment,furia-breastplate = ebon-breastplate

	{ ingredients = {2814,12153}, result = 12162 }, -- aptant-bellum,ebon-breastplate = ebon-cuirass 
	{ ingredients = {2808,12145}, result = 12162 }, -- ebon-pigment,furia-cuirass = ebon-cuirass 
	{ ingredients = {2808,12146}, result = 12162 }, -- ebon-pigment,ebur-cuirass = ebon-cuirass
	
	{ ingredients = {2812,12153}, result = 12147 }, -- aptant-aecus,ebon-breastplate = ebon-mail
	{ ingredients = {2808,12148}, result = 12147 }, -- ebon-pigment,furia-mail = ebon-mail 
	{ ingredients = {2808,12149}, result = 12147 }, -- ebon-pigment,ebur-mail = ebon-mail
	
	{ ingredients = {2813,12153}, result = 12150 }, -- aptant-durus,ebon-breastplate = ebon-haubert
	{ ingredients = {2808,12151}, result = 12150 }, -- ebon-pigment,furia-haubert = ebon-haubert 
	{ ingredients = {2808,12152}, result = 12150 }, -- ebon-pigment,ebur-haubert = ebon-haubert
	
	{ ingredients = {2811,12146}, result = 12155 }, -- aptant-primus,ebur-cuirass = ebur-breastplate
	{ ingredients = {2811,12152}, result = 12155 }, -- aptant-primus,ebur-haubert = ebur-breastplate
	{ ingredients = {2811,12149}, result = 12155 }, -- aptant-primus,ebur-mail = ebur-breastplate
	{ ingredients = {2810,12162}, result = 12155 }, -- ebur-pigment,ebon-breastplate = ebur-breastplate
	{ ingredients = {2810,12154}, result = 12155 }, -- ebur-pigment,furia-breastplate = ebur-breastplate
	
	{ ingredients = {2814,12155}, result = 12146 }, -- aptant-bellum,ebur-breastplate = ebur-cuirass
	{ ingredients = {2810,12145}, result = 12146 }, -- ebur-pigment,furia-cuirass = ebur-cuirass 
	{ ingredients = {2810,12162}, result = 12146 }, -- ebur-pigment,ebon-cuirass = ebur-cuirass
	
	{ ingredients = {2812,12155}, result = 12149 }, -- aptant-aecus,ebur-breastplate = ebur-mail
	{ ingredients = {2810,12148}, result = 12149 }, -- ebur-pigment,furia-mail = ebur-mail 
	{ ingredients = {2810,12147}, result = 12149 }, -- ebur-pigment,ebon-mail = ebur-mail
	
	{ ingredients = {2813,12155}, result = 12152 }, -- aptant-durus,ebur-breastplate = ebur-haubert
	{ ingredients = {2810,12151}, result = 12152 }, -- ebon-pigment,furia-haubert = ebur-haubert 
	{ ingredients = {2810,12150}, result = 12152 }, -- ebon-pigment,ebon-haubert = ebur-haubert
	
	{ ingredients = {2811,12145}, result = 12154 }, -- aptant-primus,furia-cuirass = furia-breastplate
	{ ingredients = {2811,12151}, result = 12154 }, -- aptant-primus,furia-haubert = furia-breastplate
	{ ingredients = {2811,12148}, result = 12154 }, -- aptant-primus,furia-mail = furia-breastplate
	{ ingredients = {2809,12155}, result = 12154 }, -- furia-pigment,ebur-breastplate = furia-breastplate
	{ ingredients = {2809,12162}, result = 12154 }, -- furia-pigment,ebon-breastplate = furia-breastplate
	
	{ ingredients = {2814,12154}, result = 12145 }, -- aptant-bellum,furia-breastplate = furia-cuirass 
	{ ingredients = {2809,12162}, result = 12145 }, -- furia-pigment,ebon-cuirass = furia-cuirass 
	{ ingredients = {2809,12146}, result = 12145 }, -- furia-pigment,ebur-cuirass = furia-cuirass

	{ ingredients = {2812,12154}, result = 12148 }, -- aptant-aecus,furia-breastplate = furia-mail
	{ ingredients = {2809,12147}, result = 12148 }, -- furia-pigment,ebon-mail = furia-mail 
	{ ingredients = {2809,12149}, result = 12148 }, -- furia-pigment,ebur-mail = furia-mail
	
	{ ingredients = {2813,12154}, result = 12150 }, -- aptant-durus,furia-breastplate = furia-haubert
	{ ingredients = {2809,12150}, result = 12150 }, -- furia-pigment,ebon-haubert = furia-haubert 
	{ ingredients = {2809,12152}, result = 12150 }, -- furia-pigment,ebur-haubert = furia-haubert
	
	{ ingredients = {15508,15509,15510,15511,15512,15513,15514}, result = 15764 }, -- virtuous torque
}

xi.synergy.onTrade = function(player, npc, trade)
	local tradeItems = {}
	for i = 0, trade:getSlotCount()-1 do
		for j = 0, trade:getSlotQty(i)-1 do
			table.insert(tradeItems, trade:getItemId(i))
		end
	end
	
	table.sort(tradeItems)
	local ingredientString = table.concat(tradeItems, ",")
	
	for k, v in ipairs(synergyRecipes) do
        table.sort(v.ingredients)
		if table.concat(v.ingredients, ",") == ingredientString then
			npcUtil.giveItem(player, v.result)
			player:tradeComplete()
		end
    end
end