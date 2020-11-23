-----------------------------------
-- Area: Mamool Ja Training Grounds
-- Npc: Pot Hatch
-- !pos 221 0 -415
-----------------------------------
local utils = require("scripts/zones/Mamool_Ja_Training_Grounds/globals/utils")
-----------------------------------

function onTrigger(player,npc)
    utils.openPotHatch(player, npc, 220, -415, 15)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end