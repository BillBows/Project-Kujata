-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Runic Portal
-- Aht Urhgan Teleporter to Other Areas
-- !pos 125 -4.2 64.5 50
-----------------------------------
local ID = require("scripts/zones/Aht_Urhgan_Whitegate/IDs")
require("scripts/globals/assault")
require("scripts/globals/besieged")
require("scripts/globals/keyitems")
require("scripts/globals/teleports")
-----------------------------------

function onTrigger(player, npc)
    local runicPortals = player:getTeleport(tpz.teleport.type.RUNIC_PORTAL)

    if tpz.assault.utils.hasOrders(player) then
        local validTele = 0

        for k, order in pairs(tpz.assault.orders) do
            if player:hasKeyItem(order.ki) then
                validTele = bit.band(runicPortals, order.tele)
                player:messageSpecial(ID.text.CONFIRMING, order.ki)

                if validTele == order.valid then
                    player:startEvent(order.event)
                    player:setLocalVar("teleport", order.index)
                else
                    player:messageSpecial(ID.text.RUNIC_DENIED_ASSAULT_OFFSET + k)
                end

                break
            end
        end 
    else
        local hasPermit = player:hasKeyItem(tpz.ki.RUNIC_PORTAL_USE_PERMIT)
        local mercRank = tpz.assault.utils.getMercenaryRank(player)
        local points = player:getCurrency("imperial_standing")
        local hasAstral = tpz.besieged.getAstralCandescence()

        player:startEvent(101, hasPermit and tpz.ki.RUNIC_PORTAL_USE_PERMIT or 0, runicPortals, mercRank, points, 0, hasAstral, hasPermit and 1 or 0)
    end
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
    local offset = nil
    if csid == 101 then
        if option >= 101 and option <= 106 then
            offset = option - 101
            player:delKeyItem(tpz.ki.RUNIC_PORTAL_USE_PERMIT)
        elseif option >= 1001 and option <= 1006 then
            offset = option - 1001
            player:delCurrency("imperial_standing", 200)
        end
    elseif csid >= 120 and csid <= 125 and option == 1 then -- Has Assault Orders
        offset = player:getLocalVar("teleport") - 120
    end

    if offset then
        tpz.teleport.to(player, tpz.teleport.id.AZOUPH_SP + offset)
    end
end