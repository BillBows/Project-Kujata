-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Isdebaaq
-- Type: Assault Mission Giver
-- !pos 127.565 0.161 -43.846 50
-----------------------------------
require("scripts/globals/assault")
-----------------------------------

function onTrigger(player, npc)
    tpz.assault.counter.onTrigger(player, 274, 280, tpz.assault.index.MAMOOL_JA)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
    tpz.assault.counter.onEventFinish(player, csid, option, 274, tpz.assault.index.MAMOOL_JA)
end
