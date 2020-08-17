-----------------------------------
--
-- tpz.effect.RETALIATION
--
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target, effect)
    target:delMod(tpz.mod.MOVE, 8)
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)
    target:addMod(tpz.mod.MOVE, 8)
end
