-----------------------------------
-- func: capskill
-- desc: Caps a specific skill.
-----------------------------------
---@type TCommand
local commandObj = {}

commandObj.cmdprops =
{
    permission = 1,
    parameters = 'is'
}

local function error(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!capskill <skillID> (player)')
end

commandObj.onTrigger = function(player, skillId, target)
	-- validate target
    local targ
    if target == nil then
        targ = player
    else
        targ = GetPlayerByName(target)
        if targ == nil then
            error(player, string.format('Player named "%s" not found!', target))
            return
        end
    end

    -- validate skillId
    if skillId == nil then
        error(player, 'You must provide a skillID.')
        return
    end

    skillId = tonumber(skillId) or xi.skill[string.upper(skillId)]
    if skillId == nil or skillId == 0 then
        error(player, 'Invalid skillID.')
        return
    end

    -- cap skill
    targ:capSkill(skillId)
    player:printToPlayer(string.format('Capped skillID %i.', skillId))
end

return commandObj
