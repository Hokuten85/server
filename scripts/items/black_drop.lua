-----------------------------------
--  ID: 4265
--  Item: Black Drop
--  Transports the user to their Home Point
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
    target:addStatusEffect(xi.effect.MEDICINE, { duration = 3600, origin = user })
    target:addStatusEffect(xi.effect.MAX_HP_BOOST, { power = 5, duration = 900, origin = user })
    target:addStatusEffect(xi.effect.MAX_MP_BOOST, { power = 5, duration = 900, origin = user })

    if target:getCharMod(xi.mod.HP) < 120 then
		target:addCharMod(xi.mod.HP,6)
		if target:getCharMod(xi.mod.HP) == 120 then
			target:PrintToPlayer("You have reached the max enhancement for this stat. Additional usage of Black Drops is allowed")
			target:PrintToPlayer("but only the medicine effect will be applied.")
		end
	end
	if target:getCharMod(xi.mod.MP) < 60 then
		target:addCharMod(xi.mod.MP,3)
	end
end

return itemObject
