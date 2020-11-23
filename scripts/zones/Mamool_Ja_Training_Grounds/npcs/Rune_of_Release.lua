-----------------------------------
-- Area: Mamool Ja Training Grounds
-----------------------------------
local ID = require("scripts/zones/Mamool_Ja_Training_Grounds/IDs")
require("scripts/globals/assault")
require("scripts/globals/zone")
-----------------------------------

function onTrigger(player,npc)
    tpz.assault.runeRelease.onTrigger(player, npc, 100, tpz.assault.index.MAMOOL_JA)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
    tpz.assault.runeRelease.onEventFinish(player, csid, option, 100, 102)
end
