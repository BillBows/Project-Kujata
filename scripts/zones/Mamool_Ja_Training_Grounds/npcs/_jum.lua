-----------------------------------
-- Area: Mamool Ja Training Grounds
-- Npc: Pot Hatch
-- !pos 267 0 -582
-----------------------------------
local utils = require("scripts/zone/Mamool_Ja_Training_Grounds/globals/utils")
-----------------------------------

function onTrigger(player,npc)
    utils.openPotHatch(player, npc, 269, -582, 124)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end
