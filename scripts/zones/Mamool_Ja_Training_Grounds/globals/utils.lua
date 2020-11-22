-----------------------------------
-- Mamool Ja Training Ground utils
-----------------------------------
local ID = require("scripts/zones/Mamool_Ja_Training_Grounds/IDs")
require("scripts/globals/status")
-----------------------------------

local utils = {}
-- Imperial Agent Rescue

utils.updateSkillTarget = function(target, mob, skill)
    local skillId = skill:getID()

    if
        skillId == 1733 or -- Firespit
        skillId == 1923 or -- Firespit (?)
        skillId == 1736 or -- Axe Throw
        skillId == 1925    -- Stave Toss
    then
        if math.random() <= 0.5 then
            local instance = mob:getInstance()

            for _, id in ipairs(ID.mob[IMPERIAL_AGENT_RESCUE].GATES) do
                local gate = instance:getEntity(bit.band(id, 0xFFF), tpz.objType.MOB)

                if gate and gate:isAlive() and mob:checkDistance(gate) <= 10 and mob:isFacing(gate) then
                    return gate
                end
            end
        end
    end

    return target
end

function utils.openPotHatch(player, npc, posX, posZ, posR)    
    local instance = npc:getInstance()

    npc:setAnimation(8)

    if npc:getID() == instance:getProgress() then
        instance:setProgress(0)

        local brujeel = instance:getEntity(bit.band(ID.npc.brujeel, 0xFFF), tpz.objType.NPC)
        local chars = instance:getChars()

        for _,v in pairs(chars) do
            npc:timer(2000, function(npc) brujeel:setPos(posX, -1, posZ, posR)

            brujeel:setStatus(tpz.status.NORMAL) brujeel:entityAnimationPacket("deru") end)

            npc:timer(4000, function(npc) brujeel:setAnimation(0) end)

            player:timer(7000, function(player) v:showText(brujeel, ID.text.BRUJEEL_TEXT) end)
            player:timer(10000, function(player) v:showText(brujeel, ID.text.BRUJEEL_TEXT + 1) end)
            player:timer(12000, function(player) v:showText(brujeel, ID.text.BRUJEEL_TEXT + 2) end)
            player:timer(14000, function(player) v:showText(brujeel, ID.text.BRUJEEL_TEXT + 3) end)
            player:timer(16000, function(player) v:showText(brujeel, ID.text.BRUJEEL_TEXT + 4) end)
            player:timer(18000, function(player) v:showText(brujeel, ID.text.BRUJEEL_TEXT + 5) end)

            npc:timer(20000, function(npc) brujeel:entityAnimationPacket("cabk") end)
            npc:timer(22000, function(npc) brujeel:entityAnimationPacket("shbk") end)
            npc:timer(23000, function(npc) brujeel:entityAnimationPacket("kesu") end)
            npc:timer(24500, function(npc) brujeel:setStatus(tpz.status.DISAPPEAR) end)

            npc:timer(26000, function(npc) instance:complete() end)
        end
    end
end 

return utils