-----------------------------------
-- Area: Mamool Ja Training Grounds
-- Npc: Pot Hatch
-- !pos 183 0 -581
-----------------------------------
local utils = require("scripts/zones/Mamool_Ja_Training_Grounds/globals/utils")
-----------------------------------

function onTrade(player,npc,trade)
end

function onTrigger(player,npc)
    utils.openPotHatch(player, npc, 184, -583, 185)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end
