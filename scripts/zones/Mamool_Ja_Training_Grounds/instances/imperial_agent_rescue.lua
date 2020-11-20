-----------------------------------
-- Assault: Imperial Agent Rescue
--
-- An agent sent to spy on the secret training grounds of the Mamool Ja has been captured.
-- Rescue him before he is interrogated for Imperial secrets.
-----------------------------------
local ID = require("scripts/zones/Mamool_Ja_Training_Grounds/IDs")
require("scripts/globals/instance")
-----------------------------------

local npcs =
{
    [ID.npc.RUNE_OF_RELEASE] = {x = 220, y = 1.465, z = -504.999, rot = 0},
    [ID.npc.ANCIENT_LOCKBOX] = {x = 220, y = 1.619, z = -502.999, rot = 0}
}

function afterInstanceRegister(player)
    tpz.assault.instance.afterInstanceRegister(player)
end

function onInstanceCreated(instance)
    tpz.assault.instance.onInstanceCreated(instance, npcs)

    instance:setProgress(math.random(ID.npc.POT_HATCH, ID.npc.POT_HATCH + 2))
end

function onInstanceTimeUpdate(instance, elapsed)
    updateInstanceTime(instance, elapsed, ID.text)
end

function onInstanceFailure(instance)
    tpz.assault.instance.onInstanceFailure(instance, 102)
end

function onInstanceProgressUpdate(instance, progress)
end

function onInstanceComplete(instance)
    tpz.assault.instance.onInstanceComplete(instance, 9, 8, npcs)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
    tpz.assault.instance.onEventFinish(player, csid, 102)
end
