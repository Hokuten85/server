-----------------------------------
--  ID: 4263
--  Item: Blue Drop
--  Mind 5
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
    target:addStatusEffect(xi.effect.MND_BOOST, { power = 5, duration = 900, origin = user })
    target:addStatusEffect(xi.effect.MEDICINE, { duration = 3600, origin = user })

    if target:getCharMod(xi.mod.MND) < 20 then
        target:addCharMod(xi.mod.MND,1)
        if target:getCharMod(xi.mod.MND) == 20 then
            target:PrintToPlayer("You have reached the max enhancement for this stat. Additional usage of Blue Drops is allowed")
            target:PrintToPlayer("but only the medicine effect will be applied.")
        end
    end
end

return itemObject
