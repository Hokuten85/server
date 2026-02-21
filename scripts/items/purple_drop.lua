-----------------------------------
--  ID: 4262
--  Item: Purple Drop
--  Dexterity 5
-----------------------------------
---@type TItem
local itemObject = {}

itemObject.onItemCheck = function(target, item, param, caster)
    if target:hasStatusEffect(xi.effect.MEDICINE) then
        return xi.msg.basic.ITEM_NO_USE_MEDICATED
    end

    return 0
end

itemObject.onItemUse = function(target, user)
    target:addStatusEffect(xi.effect.DEX_BOOST, { power = 5, duration = 900, origin = user })
    target:addStatusEffect(xi.effect.MEDICINE, { duration = 3600, origin = user })

    if target:getCharMod(xi.mod.DEX) < 20 then
		target:addCharMod(xi.mod.DEX,1)
		if target:getCharMod(xi.mod.DEX) == 20 then
			target:PrintToPlayer("You have reached the max enhancement for this stat. Additional usage of Purple Drops is allowed")
			target:PrintToPlayer("but only the medicine effect will be applied.")
		end
	end
end

return itemObject
