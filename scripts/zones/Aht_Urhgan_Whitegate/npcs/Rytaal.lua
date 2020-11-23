-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Rytaal
-- Type: Standard NPC
-- !pos 112.002 -1.338 -45.038 50
-----------------------------------
local ID = require("scripts/zones/Aht_Urhgan_Whitegate/IDs")
require("scripts/globals/assault")
require("scripts/globals/keyitems")
require("scripts/globals/missions")
require("scripts/globals/npc_util")
-----------------------------------

function onTrigger(player, npc)
    local mission = player:getCurrentMission(TOAU)
    local status = player:getCharVar("AhtUrganStatus")
    local currentAssault = player:getCurrentAssault()

    if mission == tpz.mission.id.toau.PRESIDENT_SALAHEEM and status == 0 then
        player:startEvent(269)
    elseif
        mission <= tpz.mission.id.toau.IMMORTAL_SENTRIES or player:getMainLvl() < 50
    then
        player:startEvent(270)
    elseif
        currentAssault ~= 0 and player:getCharVar("[assault]entered") ~= 0
    then
        player:setCharVar("[assault]entered", 0)

        if player:getCharVar("[assault]complete") == 1 then
            player:setCharVar("[assault]complete", 0)
            player:messageText(player, ID.text.RYTAAL_MISSION_COMPLETE)
            player:completeAssault(currentAssault)
        else
            player:addCurrency(info.instance[currentAssault].CURRENCY, 100)
            player:messageText(player, ID.text.RYTAAL_MISSION_FAILED)
            player:addAssault(0)
        end

        tpz.assault.utils.clearOrders(player)
    elseif
        mission > tpz.mission.id.toau.PRESIDENT_SALAHEEM or
        (mission == tpz.mission.id.toau.PRESIDENT_SALAHEEM and status >= 1)
    then    
        local tagCount = player:getCurrency("id_tags")
    
        local currentday = tonumber(os.date("%j"))
        local lastIDtag = player:getCharVar("LAST_IMPERIAL_TAG")
        local diffday = currentday - lastIDtag

        if lastIDtag == 0 then -- first time you get the tag
            player:setCurrency("id_tags", 1)
            player:setCharVar("LAST_IMPERIAL_TAG", currentday)
        elseif diffday > 0 then
            tagCount = math.min(tagCount + diffday, 3)

            player:setCurrency("id_tags", tagCount)
            player:setCharVar("LAST_IMPERIAL_TAG", currentday)
        end

        local hasImperialTag = 0

        if player:hasKeyItem(tpz.ki.IMPERIAL_ARMY_ID_TAG) then
            hasImperialTag = 1
        end

        player:startEvent(268, tpz.ki.IMPERIAL_ARMY_ID_TAG, tagCount, currentAssault, hasImperialTag)
    end
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
    if csid == 269 then
        player:setCharVar("AhtUrganStatus", 1)
    elseif csid == 268 then
        if option == 1 then -- I need an Imperial Army ID tag
            local tagCount = player:getCurrency("id_tags")

            if
                not player:hasKeyItem(tpz.ki.IMPERIAL_ARMY_ID_TAG) and
                tagCount > 0
            then
                npcUtil.giveKeyItem(player, tpz.ki.IMPERIAL_ARMY_ID_TAG)
                player:setCurrency("id_tags", tagCount - 1)
            end
        elseif option == 2 then -- Cancel application
            if
                not player:hasKeyItem(tpz.ki.IMPERIAL_ARMY_ID_TAG) and
                tpz.assault.utils.hasOrders(player)
            then
                tpz.assault.utils.clearOrders(player)
            end

            npcUtil.giveKeyItem(player, tpz.ki.IMPERIAL_ARMY_ID_TAG)
            player:delAssault(player:getCurrentAssault())
        end
    end
end
