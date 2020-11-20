-----------------------------------
-- Area: Mamool Ja Training Grounds (Imperial Agent Rescue)
--  MOB: Mamool Ja Warder (NIN, WHM)
-----------------------------------
mixins = {require("scripts/mixins/weapon_break")}
-----------------------------------
local utils = require("scripts/zone/Mamool_Ja_Training_Grounds/globals/utils")
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onMobSpawn(mob)
    local instance = mob:getInstance()

    if mob:getMainJob() == tpz.job.NIN then
        mob:setLocalVar("BreakChance", 0) -- Nin mobs dont have a weapon to break
    end
end

function onMobDeath(mob, player, isKiller)
end

function onMobSkillTarget(target, mob, skill)
    return utils.updateSkillTarget(target, mob, skill)
end
