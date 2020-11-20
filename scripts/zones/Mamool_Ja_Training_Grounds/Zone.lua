-----------------------------------
--
-- Zone: Mamool_Ja_Training_Grounds
--
-----------------------------------
local ID = require("scripts/zones/Mamool_Ja_Training_Grounds/IDs")
require("scripts/globals/assault")
-----------------------------------

function onInitialize(zone)
end

function onInstanceZoneIn(player, instance)
    tpz.assault.zone.onInstanceZoneIn(player, instance)
end

function onInstanceLoadFailed()
    return 79
end

function onRegionEnter(player, region)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end

