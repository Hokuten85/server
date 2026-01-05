-----------------------------------
-- func: refreshsync (player)
-- desc: Refreshes the level sync.
-----------------------------------
---@type TCommand
local commandObj = {}

commandObj.cmdprops =
{
    permission = 1,
    parameters = 's'
}

local function error(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!refreshsync (player)')
end

commandObj.onTrigger = function(player, target)
    -- validate target
    local targ
    local cursorTarget = player:getCursorTarget()

    if target then
        targ = GetPlayerByName(target)
        if not targ then
            error(player, string.format('Player named "%s" not found!', target))
            return
        end
    elseif cursorTarget and not cursorTarget:isNPC() then
        targ = cursorTarget
    else
        targ = player
    end
	
	target:refreshLevelSync()
end

return commandObj
