---------------------------------------
--
-- Assault
--
---------------------------------------
require("scripts/globals/keyitems")
require("scripts/globals/missions")
require("scripts/globals/quests")
require("scripts/globals/zone")
---------------------------------------
tpz = tpz or {}
tpz.assault = tpz.assault or {}
---------------------------------------

tpz.assault.missions =
{
    LEUJAOAM_CLEANSING                =  1,
    ORICHALCUM_SURVEY                 =  2,
    ESCORT_PROFESSOR_CHANOIX          =  3,
    SHANARHA_GRASS_CONSERVATION       =  4,
    COUNTING_SHEEP                    =  5,
    SUPPLIES_RECOVERY                 =  6,
    AZURE_EXPERIMENTS                 =  7,
    IMPERIAL_CODE                     =  8,
    RED_VERSUS_BLUE                   =  9,
    BLOODY_RONDO                      = 10,
    IMPERIAL_AGENT_RESCUE             = 11,
    PREEMPTIVE_STRIKE                 = 12,
    SAGELORD_ELIMINATION              = 13,
    BREAKING_MORALE                   = 14,
    THE_DOUBLE_AGENT                  = 15,
    IMPERIAL_TREASURE_RETRIEVAL       = 16,
    BLITZKRIEG                        = 17,
    MARIDS_IN_THE_MIST                = 18,
    AZURE_AILMENTS                    = 19,
    THE_SUSANOO_SHUFFLE               = 20,
    EXCAVATION_DUTY                   = 21,
    LEBROS_SUPPLIES                   = 22,
    TROLL_FUGITIVES                   = 23,
    EVADE_AND_ESCAPE                  = 24,
    SIEGEMASTER_ASSASSINATION         = 25,
    APKALLU_BREEDING                  = 26,
    WAMOURA_FARM_RAID                 = 27,
    EGG_CONSERVATION                  = 28,
    OPERATION__BLACK_PEARL            = 29,
    BETTER_THAN_ONE                   = 30,
    SEAGULL_GROUNDED                  = 31,
    REQUIEM                           = 32,
    SAVING_PRIVATE_RYAAF              = 33,
    SHOOTING_DOWN_THE_BARON           = 34,
    BUILDING_BRIDGES                  = 35,
    STOP_THE_BLOODSHED                = 36,
    DEFUSE_THE_THREAT                 = 37,
    OPERATION__SNAKE_EYES             = 38,
    WAKE_THE_PUPPET                   = 39,
    THE_PRICE_IS_RIGHT                = 40,
    GOLDEN_SALVAGE                    = 41,
    LAMIA_NO_13                       = 42,
    EXTERMINATION                     = 43,
    DEMOLITION_DUTY                   = 44,
    SEARAT_SALVATION                  = 45,
    APKALLU_SEIZURE                   = 46,
    LOST_AND_FOUND                    = 47,
    DESERTER                          = 48,
    DESPERATELY_SEEKING_CEPHALOPODS   = 49,
    BELLEROPHON_S_BLISS               = 50,
    NYZUL_ISLE_INVESTIGATION          = 51,
    NYZUL_ISLE_UNCHARTED_AREA_SURVEY  = 52,
}

tpz.assault.index =
{
    LEUJAOAM   = 0,
    MAMOOL_JA  = 1,
    LEBROS     = 2,
    PERIQIA    = 3,
    ILRUSI     = 4,
    NYZUL_ISLE = 5,
}

tpz.assault.currency =
{
    LEUJAOAM_ASSAULT_POINT   = tpz.assault.index.LEUJAOAM,
    MAMOOL_ASSAULT_POINT     = tpz.assault.index.MAMOOL_JA,
    LEBROS_ASSAULT_POINT     = tpz.assault.index.LEBROS,
    PERIQIA_ASSAULT_POINT    = tpz.assault.index.PERIQIA,
    ILRUSI_ASSAULT_POINT     = tpz.assault.index.ILRUSI,
    NYZUL_ISLE_ASSAULT_POINT = tpz.assault.index.NYZUL_ISLE,
}

tpz.assault.orders =
{
    [tpz.assault.index.LEUJAOAM]   = {ki = tpz.keyItem.LEUJAOAM_ASSAULT_ORDERS,   index = 120, tele = 0x02, valid =  2, event = 120},
    [tpz.assault.index.MAMOOL_JA]  = {ki = tpz.keyItem.MAMOOL_JA_ASSAULT_ORDERS,  index = 122, tele = 0x08, valid =  8, event = 121},
    [tpz.assault.index.LEBROS]     = {ki = tpz.keyItem.LEBROS_ASSAULT_ORDERS,     index = 123, tele = 0x16, valid = 16, event = 122},
    [tpz.assault.index.PERIQIA]    = {ki = tpz.keyItem.PERIQIA_ASSAULT_ORDERS,    index = 121, tele = 0x04, valid =  4, event = 123},
    [tpz.assault.index.ILRUSI]     = {ki = tpz.keyItem.ILRUSI_ASSAULT_ORDERS,     index = 124, tele = 0x32, valid = 32, event = 124},
    [tpz.assault.index.NYZUL_ISLE] = {ki = tpz.keyItem.NYZUL_ISLE_ASSAULT_ORDERS, index = 125, tele = 0x64, valid = 64, event = 125},
}

tpz.assault.badges =
{
    [ 1] = tpz.keyItem.PSC_WILDCAT_BADGE,
    [ 2] = tpz.keyItem.PFC_WILDCAT_BADGE,
    [ 3] = tpz.keyItem.SP_WILDCAT_BADGE,
    [ 4] = tpz.keyItem.LC_WILDCAT_BADGE,
    [ 5] = tpz.keyItem.C_WILDCAT_BADGE,
    [ 6] = tpz.keyItem.S_WILDCAT_BADGE,
    [ 7] = tpz.keyItem.SM_WILDCAT_BADGE,
    [ 8] = tpz.keyItem.CS_WILDCAT_BADGE,
    [ 9] = tpz.keyItem.SL_WILDCAT_BADGE,
    [10] = tpz.keyItem.FL_WILDCAT_BADGE,
    [11] = tpz.keyItem.CAPTAIN_WILDCAT_BADGE,
}

tpz.assault.stock =
{
    [tpz.assault.index.MAMOOL_JA] =
    {
        [ 1] = {id = 15971, price =  3000}, -- Antivenom Earring
        [ 2] = {id = 15776, price =  5000}, -- Ebullient Ring 
        [ 3] = {id = 15522, price =  8000}, -- Enlightened Chain 
        [ 4] = {id = 15885, price = 10000}, -- Spectral Belt
        [ 5] = {id = 15491, price = 10000}, -- Bullseye Cape
        [ 6] = {id = 17715, price = 15000}, -- Storm Tulwar
        [ 7] = {id = 18113, price = 15000}, -- Imperial Neza
        [ 8] = {id = 17951, price = 15000}, -- Storm Tabar
        [ 9] = {id = 14935, price = 20000}, -- Yigit Gages
        [10] = {id = 15688, price = 20000}, -- Amir Boots
        [11] = {id = 15609, price = 20000}, -- Pahluwan Seraweels
    }
}

tpz.assault.destiny =
{
    [tpz.zone.BHAFLAU_THICKETS]           = tpz.zone.MAMOOL_JA_TRAINING_GROUNDS,
    [tpz.zone.MAMOOL_JA_TRAINING_GROUNDS] = tpz.zone.BHAFLAU_THICKETS,
}

tpz.assault.firefly =
{
    [tpz.zone.MAMOOL_JA_TRAINING_GROUNDS] = 5344, -- Bhaflau Fireflies
}

tpz.assault.info =
{
    [tpz.assault.missions.IMPERIAL_AGENT_RESCUE] = {level = 60, points = 1100},
}

local info = tpz.assault.info

-- ------------------------------------------------------------------------------------------------
-- Stagging Point Sentries (aka Armband NPCs)

tpz.assault.armband = {}

tpz.assault.armband.onTrigger = function(player, npc, csid1, csid2, csid3, csid4, csid5, csid6, csid7)
    local mission = player:getCurrentMission(TOAU)

    -- ToAU 02 - Immortal Sentries
    if mission == tpz.mission.id.toau.IMMORTAL_SENTRIES then
        if player:hasKeyItem(tpz.keyItem.SUPPLIES_PACKAGE) then
            player:startEvent(csid1)
        elseif player:getCharVar("AhtUrganStatus") == 1 then
            player:startEvent(csid2)
        end

    -- ToAU Quest - BEGINNINGS (BLU AF1)
    elseif player:getQuestStatus(AHT_URHGAN, tpz.quest.id.ahtUrhgan.BEGINNINGS) == QUEST_ACCEPTED then
        if not player:hasKeyItem(info.entrance[player:getZoneID()].BEGINNINGS) then
            player:startEvent(csid3)
        else
            player:startEvent(csid4)
        end

    -- Assault
    elseif mission >= tpz.mission.id.toau.PRESIDENT_SALAHEEM then
        if
            player:getCharVar("[assault]entered") == 0 and
            player:hasKeyItem(info.entrance[player:getZoneID()].ORDERS) and
            not player:hasKeyItem(tpz.keyItem.ASSAULT_ARMBAND)
        then
            player:startEvent(csid5, 50, player:getCurrency("imperial_standing"))
        else
            player:startEvent(csid6)
        end

    -- Default dialogue
    else
        player:startEvent(csid7)
    end
end

tpz.assault.armband.onEventFinish = function(player, csid, option, csid1, csid2, csid3)
    -- ToAU 02 - Immortal Sentries
    if csid == csid1 and option == 1 then
        player:delKeyItem(tpz.keyItem.SUPPLIES_PACKAGE)
        player:setCharVar("AhtUrganStatus", 1)

    -- ToAU Quest - BEGINNINGS (BLU AF1)
    elseif csid == csid2 then
        npcUtil.giveKeyItem(player, info.entrance[player:getZoneID()].BEGINNINGS)

    -- Assault
    elseif csid == csid3 and option == 1 then
        npcUtil.giveKeyItem(player, tpz.keyItem.ASSAULT_ARMBAND)
        player:delCurrency("imperial_standing", 50)
    end
end

-- ------------------------------------------------------------------------------------------------
-- Runic Seals

tpz.assault.runicSeal = {}

tpz.assault.runicSeal.onTrigger = function(player, npc, csid, index)
    if
        player:hasKeyItem(tpz.assault.orders[index].ki) and
        player:getCharVar("[assault]entered") == 0
    then
        local assaultID = player:getCurrentAssault()
        local level = info[assaultID].level
        local armband = 0

        if player:hasKeyItem(tpz.keyItem.ASSAULT_ARMBAND) then
            armband = 1
        end

        player:startEvent(csid, assaultID, -4, 0, level, index, armband)
    else
        player:messageText(player, zones[player:getZoneID()].text.NOTHING_HAPPENS)
    end
end

tpz.assault.runicSeal.onEventUpdate = function(player, csid, option, target, index)
    if player:getGMLevel() == 0 and player:getPartySize() < 3 then
        player:messageSpecial(zones[player:getZoneID()].text.PARTY_MIN_REQS, 3)
        player:instanceEntry(target, 1)

        return
    elseif player:checkSoloPartyAlliance() == 2 then
        player:messageText(player, zones[player:getZoneID()].text.MEMBER_NO_REQS + 1, false)
        player:instanceEntry(target, 1)

        return
    end

    local cap = bit.band(option, 0x03)

    if     cap == 0 then cap = 0
    elseif cap == 1 then cap = 70
    elseif cap == 2 then cap = 60
    else                 cap = 50
    end

    player:setCharVar("[assault]cap", cap)

    local assaultID = player:getCurrentAssault()

    local party = player:getParty()

    if party then
        for _, member in ipairs(party) do
            if
                not member:hasKeyItem(tpz.assault.orders[index].ki) or
                member:getCurrentAssault() ~= assaultID or
                member:getCharVar("[assault]entered") ~= 0 or
                member:getMainLvl() < 50
            then
                player:messageText(player, zones[player:getZoneID()].text.MEMBER_NO_REQS, false)
                player:instanceEntry(target, 1)

                return
            elseif
                member:getZoneID() ~= player:getZoneID() or
                member:checkDistance(player) > 50
            then
                player:messageText(player, zones[player:getZoneID()].text.MEMBER_TOO_FAR, false)
                player:instanceEntry(target, 1)

                return
            end
        end
    end

    player:createInstance(assaultID, tpz.assault.destiny[player:getZoneID()])
end

tpz.assault.runicSeal.onEventFinish = function(player, csid, option, assaultCs, assaultOpt)
    if csid == assaultCs and option == assaultOpt then
        player:setPos(0, 0, 0, 0, tpz.assault.destiny[player:getZoneID()])
    end
end

tpz.assault.runicSeal.onInstanceCreated = function(player, target, instance, csid)
    if instance then
        instance:setLevelCap(player:getCharVar("[assault]cap"))
        player:setCharVar("[assault]cap", 0)

        local instanceId = instance:getID()
        player:setCharVar("[assault]entered", instanceId)
        player:setInstance(instance)
        player:instanceEntry(target, 4)

        player:setCharVar("[assault]armband", 1)
        player:delKeyItem(tpz.keyItem.ASSAULT_ARMBAND)

        local party = player:getParty()

        if party then
            for _, member in ipairs(party) do
                if
                    member:getID() ~= player:getID() and
                    member:getZoneID() == player:getZoneID()
                then
                    member:setCharVar("[assault]entered", instanceId)
                    member:setInstance(instance)
                    member:startEvent(csid)
                end
            end
        end
    else
        player:messageText(player, zones[player:getZoneID()].text.CANNOT_ENTER, false)
        player:instanceEntry(target, 3)
    end
end

-- ------------------------------------------------------------------------------------------------
-- Instance

tpz.assault.instance = {}

-- Instance setup
tpz.assault.instance.onInstanceCreated = function(instance, npcs, mobs)
    if npcs then
        for id, pos in pairs(npcs) do
            local entity = instance:getEntity(bit.band(id, 0xFFF), tpz.objType.NPC)

            entity:setPos(pos.x, pos.y, pos.z, pos.rot)
        end
    end

    for _, mob in pairs(mobs[instance:getID()].START) do
        SpawnMob(mob, instance)
    end

    local cap = instance:getLevelCap()

    if cap ~= 0 then
        if     cap == 70 then cap = 5
        elseif cap == 60 then cap = 15
        elseif cap == 50 then cap = 25
        end

        for _, mob in pairs(instance:getMobs()) do
            mob:setMobLevel(mob:getMainLvl() - cap)
        end
    end
end

-- Character is registered and zoned into an instance for the first time
tpz.assault.instance.afterInstanceRegister = function(player)
    local instance = player:getInstance()
    local cap = instance:getLevelCap()
    local limit = instance:getTimeLimit()
    local assaultID = player:getCurrentAssault()

    player:addTempItem(tpz.assault.firefly[player:getZoneID()])
    player:addStatusEffect(tpz.effect.LEVEL_RESTRICTION, cap, 0, 0)
    player:messageSpecial(zones[player:getZoneID()].text.ASSAULT_START_OFFSET + assaultID, assaultID)
    player:messageSpecial(zones[player:getZoneID()].text.TIME_TO_COMPLETE, limit)
end

tpz.assault.instance.onInstanceFailure = function(instance, csid)
    local mobs = instance:getMobs()

    for _, mob in pairs(mobs) do
        local mobID = mob:getID()

        DespawnMob(mobID, instance)
    end

    local chars = instance:getChars()

    for _, char in pairs(chars) do
        char:messageSpecial(zones[char:getZoneID()].text.MISSION_FAILED, 10, 10)
        chars:startEvent(csid)
    end
end

tpz.assault.instance.onInstanceComplete = function(instance, X, Z, npcs)
    if npcs then
        for id, pos in pairs(npcs) do
            local entity = instance:getEntity(bit.band(id, 0xFFF), tpz.objType.NPC)

            entity:setStatus(tpz.status.NORMAL)
        end
    end

    local chars = instance:getChars()

    for _, char in pairs(chars) do
        char:messageSpecial(zones[char:getZoneID()].text.RUNE_UNLOCKED_POS, X, Z)
    end
end

tpz.assault.instance.onEventFinish = function(player, csid, finishCs)
    if csid == finishCs then
        local instance = player:getInstance()
        local chars = instance:getChars()

        for _, char in pairs(chars) do
            char:setPos(0, 0, 0, 0, tpz.assault.destiny[char:getZoneID()])
        end
    end
end

-- ------------------------------------------------------------------------------------------------
-- Zone

tpz.assault.zone = {}

tpz.assault.zone.onInstanceZoneIn = function(player, instance)
    local pos = player:getPos()

    if pos.x == 0 and pos.y == 0 and pos.z == 0 then
        local entry = instance:getEntryPos()

        player:setPos(entry.x, entry.y, entry.z, entry.rot)
    end
end

-- ------------------------------------------------------------------------------------------------
-- Rune of Release

tpz.assault.runeRelease = {}

tpz.assault.runeRelease.onTrigger = function(player, npc, csid, param)
    local instance = player:getInstance()

    if instance:completed() then
        player:startEvent(csid, param)
    end
end

tpz.assault.runeRelease.onEventFinish = function(player, csid, option, exitCs, finishCs)    
    if csid == exitCs and option == 1 then
        local instance = player:getInstance()

        for _, mob in pairs(instance:getMobs()) do
            local id = mob:getID()
            DespawnMob(id, instance)
        end
        
        local chars = instance:getChars()
        local penalty = math.max((#chars - 3) * 0.1, 0)
        
        for _, char in pairs(chars) do
            local assaultID = char:getCurrentAssault()
            local base = info[assaultID].points
    
            local points = base - (base * penalty)
            local promotion = 1
    
            if char:getCharVar("[assault]armband") == 1 then
                points = points * 1.1
                char:setCharVar("[assault]armband", 0)
            end
    
            if not char:hasCompletedAssault(assaultID) then
                points = points * 1.5
                promotion = 5
            end
    
            points = math.floor(points)
            char:addAssaultPoint(info.instance[assaultID].CURRENCY, points)
            char:messageSpecial(zones[char:getZoneID()].text.ASSAULT_POINTS_OBTAINED, points)
            
            promotion = math.min(char:getCharVar("[assault]promotion") + promotion, 25)
            char:setCharVar("[assault]promotion", promotion)
    
            char:setCharVar("[assault]complete", 1)
            char:startEvent(finishCs)
        end
    elseif csid == finishCs then
        local instance = player:getInstance()
        local chars = instance:getChars()

        for _, char in pairs(chars) do
            char:setPos(0, 0, 0, 0, tpz.assault.destiny[char:getZoneID()])
        end
    end
end

-- ------------------------------------------------------------------------------------------------
-- Counters

tpz.assault.counter = {}

tpz.assault.counter.onTrigger = function(player, csid1, csid2, index)
    local rank = tpz.assault.utils.getMercenaryRank(player)

    if rank > 0 then
        local hasImperialTag = 0

        if player:hasKeyItem(tpz.ki.IMPERIAL_ARMY_ID_TAG) then
            hasImperialTag = 1
        else

        local points = player:getAssaultPoint(index)
        local assaultID = player:getCurrentAssault()

        player:startEvent(csid1, rank, hasImperialTag, points, assaultID)
    else
        player:startEvent(csid2)
    end
end

tpz.assault.counter.onEventFinish = function(player, csid, option, menuCs, index)
    if csid == menuCs then
        local selection = bit.band(option, 0xF)

        if selection == 1 then -- Taking assault mission
            player:addAssault(bit.rshift(option, 4))
            player:delKeyItem(tpz.ki.IMPERIAL_ARMY_ID_TAG)
            npcUtil.giveKeyItem(player, tpz.assault.orders[index].ki)
        elseif selection == 2 then -- Purchasing an item
            local item = bit.rshift(option, 14)
            local choice = tpz.assault.stock[index][item]

            if choice and npcUtil.giveItem(player, choice.id) then
                player:delAssaultPoint(index, choice.price)
            end
        end
    end
end

-- ------------------------------------------------------------------------------------------------
-- Utils

tpz.assault.utils = {}

tpz.assault.utils.hasOrders = function(player)
    for _, order in ipairs(tpz.assault.orders) do
        if player:hasKeyItem(order.ki) then
            return true
        end
    end

    return false
end

tpz.assault.utils.clearOrders = function(player)
    for _, order in ipairs(tpz.assault.orders) do
        if player:hasKeyItem(order.ki) then
            player:delKeyItem(order.ki)
        end
    end
end

tpz.assault.utils.getMercenaryRank = function(player)
    local rank = 0

    for _, badge in ipairs(tpz.assault.badges) do
        if player:hasKeyItem(badge) then
            rank = rank + 1
        end
    end

    return rank
end
