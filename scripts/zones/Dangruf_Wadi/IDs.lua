-----------------------------------
-- Area: Dangruf_Wadi
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[dsp.zone.DANGRUF_WADI] =
{
    text =
    {
        CONQUEST_BASE           = 0,
        ITEM_CANNOT_BE_OBTAINED = 6540, -- You cannot obtain the item <item>. Come back after sorting your inventory.
        ITEM_OBTAINED           = 6546, -- Obtained: <item>.
        GIL_OBTAINED            = 6547, -- Obtained <number> gil.
        KEYITEM_OBTAINED        = 6549, -- Obtained key item: <keyitem>.
        GEOMAGNETIC_FOUNT       = 7169, -- A faint energy wafts up from the ground.
        FISHING_MESSAGE_OFFSET  = 7207, -- You can't fish here.
        DEVICE_NOT_WORKING      = 7321, -- The device is not working.
        SYS_OVERLOAD            = 7330, -- arning! Sys...verload! Enterin...fety mode. ID eras...d
        YOU_LOST_THE            = 7335, -- You lost the #.
        CRYSTALLINE_DUST        = 7339, -- The area is littered with a white crystalline dust.
        PLANT_EXTRACT           = 7340, -- A plant extract is smeared around the area.
        BROKEN_EGGS             = 7341, -- A number of broken eggs lie scattered about.
        YOU_PLACE_ITEM          = 7342, -- You place <item> down.
        YOU_BEAT_GOBLIN         = 7344, -- You beat the Goblin!
        GOBLIN_BEAT_YOU         = 7345, -- The Goblin beat you...
        YOU_GAVE_UP             = 7346, -- You gave up...
        BEAT_SALTVIX            = 7351, -- (...Hmph! All happy 'cause he beat Saltvix...Won't stand chance 'gainst Grasswix...)
        DONT_WASTE_TIME         = 7361, -- You hear a voice... (Grasswix don't waste time with losers...)
        BEAT_GRASSWIX           = 7362, -- (...can't believe it! How could Grasswix lose! Eggblix of Cavern...he no lose!)
        JUST_WONT_DO            = 7372, -- You hear a voice... (...just won't do...nope...nope...)
        BEAT_EGGBLIX            = 7373, -- (..Lucky, ya are! Don't forget to say hi to our sister at Drachenfall!)
        CHEST_UNLOCKED          = 7432, -- You unlock the chest!
        CHEST_FAIL              = 7433, -- fails to open the chest.
        CHEST_TRAP              = 7434, -- The chest was trapped!
        CHEST_WEAK              = 7435, -- You cannot open the chest when you are in a weakened state.
        CHEST_MIMIC             = 7436, -- The chest was a mimic!
        CHEST_MOOGLE            = 7437, -- You cannot open the chest while participating in the moogle event.
        CHEST_ILLUSION          = 7438, -- The chest was but an illusion...
        CHEST_LOCKED            = 7439, -- The chest appears to be locked.
        SMALL_HOLE              = 7486, -- There is a small hole here.
    },
    mob =
    {
        TEPORINGO_PH  = 
        {
            [17559583] = 17559584, -- -189,3,79
        },
        GEYSER_LIZARD = 17559558,
        CHOCOBOLEECH  = 17559869,
    },
    npc =
    {
        CHOCOBOLEECH_QM        = 17559876,
        DANGRUF_GEYSER_OFFSET  = 17559899,
        AN_EMPTY_VESSEL_QM     = 17559911,
        DANGRUF_TREASURE_CHEST = 17559924,
    },
}

return zones[dsp.zone.DANGRUF_WADI]