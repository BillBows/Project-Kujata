-----------------------------------
-- Area: Mamool Ja Training Grounds (Imperial Agent Rescue)
--  MOB: Mamool Ja Warder
-----------------------------------
mixins = {require("scripts/mixins/weapon_break")}
-----------------------------------
local utils = require("scripts/zone/Mamool_Ja_Training_Grounds/globals/utils")
-----------------------------------

function onMobDeath(mob, player, isKiller)
end

function onMobSkillTarget(target, mob, skill)
    return utils.updateSkillTarget(target, mob, skill)
end
