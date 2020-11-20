---------------------------------------------
-- Axe Throw
--
-- Description: Ranged attack with the equipped weapon, which is lost.
-- Type: Ranged
-- Utsusemi/Blink absorb: 1 shadow
-- Range: 7.0
-- Notes: Only used by armed BST Mamool Ja
---------------------------------------------
require("scripts/globals/monstertpmoves")
require("scripts/globals/status")
---------------------------------------------

function onMobSkillCheck(target, mob, skill)
    if mob:AnimationSub() == 0 and mob:getMainJob() == tpz.job.BST then
        return 0
    else
        return 1
    end
end

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1
    local accmod = 1
    local dmgmod = 3
    local info = MobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, TP_NO_EFFECT)
    local dmg = MobFinalAdjustments(info.dmg, mob, skill, target, tpz.attackType.RANGED, tpz.damageType.SLASHING, info.hitslanded)

    mob:AnimationSub(1)

    target:takeDamage(dmg, mob, tpz.attackType.RANGED, tpz.damageType.SLASHING)

    return dmg
end
