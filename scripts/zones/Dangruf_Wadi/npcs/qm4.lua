-----------------------------------
--  NPC: ??? (QM4)
-- Type: Grasswix (dice roll game part 2)
-- !zone 191
-- Involved in quest "As Thick As Thieves"
-----------------------------------
local ID = require("scripts/zones/Dangruf_Wadi/IDs")
require("scripts/globals/npc_util")
require("scripts/globals/settings")
require("scripts/globals/quests")
-----------------------------------

function onTrade(player,npc,trade)

    local thickAsThievesGamblingCS = player:getVar("thickAsThievesGamblingCS")

    if npcUtil.tradeHas(trade, 534) then -- Trade 1x gaussbit wildgrass
        if thickAsThievesGamblingCS == 3 then
            local rand1 = math.random(1,999)
            local rand2 = math.random(1,999)

            if (rand1 > rand2) then
                player:messageSpecial(id.text.YOU_PLACE_ITEM,0,534)
                player:startEvent(137,1092,0,rand1,rand2) -- complete 2/3 gamble mini quest
            else
                player:messageSpecial(id.text.YOU_PLACE_ITEM,0,534)
                player:startEvent(140,0,0,rand1,rand2) -- player looses
            end
        elseif thickAsThievesGamblingCS < 3 then -- trading out of order
            player:messageSpecial(id.text.DONT_WASTE_TIME)
        elseif thickAsThievesGamblingCS > 3 then
            player:messageSpecial(id.text.BEAT_GRASSWIX)
        end
    end

end

function onTrigger(player,npc)
    player:messageSpecial(id.text.PLANT_EXTRACT)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)

    if (csid == 137 or csid == 140) and option == 2 then -- player gives up
        player:confirmTrade()
        player:messageSpecial(id.text.YOU_GAVE_UP)
    elseif csid == 140 and option == 1 then -- player looses dice game
        player:confirmTrade()
        player:messageSpecial(id.text.GOBLIN_BEAT_YOU)
        if OLD_SCHOOL_ENABLED then
            player:setVar("thickAsThievesGamblingCS",-1) -- start over
        end
    elseif csid == 137 and option == 0 then -- player wins dice game
        player:confirmTrade()
        player:messageSpecial(id.text.YOU_BEAT_GOBLIN)
        player:setVar("thickAsThievesGamblingCS",4)
    end

end