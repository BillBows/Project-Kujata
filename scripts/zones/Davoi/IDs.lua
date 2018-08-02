-----------------------------------
-- Area: Davoi
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[dsp.zone.DAVOI] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED     = 6381, -- You cannot obtain the item <item>. Come back after sorting your inventory.
        ITEM_OBTAINED               = 6387, -- Obtained: <item>.
        GIL_OBTAINED                = 6388, -- Obtained <number> gil.
        KEYITEM_OBTAINED            = 6390, -- Obtained key item: <keyitem>.
        NOT_ENOUGH_GIL              = 6392, -- You do not have enough gil.
        ITEMS_OBTAINED              = 6396, -- You obtain
        CONQUEST_BASE               = 7048, -- Tallying conquest results...
        FISHING_MESSAGE_OFFSET      = 7207, -- You can't fish here.
        CAVE_HAS_BEEN_SEALED_OFF    = 7351, -- The cave has been sealed off by some sort of barrier.
        MAY_BE_SOME_WAY_TO_BREAK    = 7352, -- There may be some way to break through.
        POWER_OF_THE_ORB_ALLOW_PASS = 7354, -- The disruptive power of the orb allows passage through the barrier.
        QUEMARICOND_DIALOG          = 7373, -- I can't believe I've lost my way!
        YOU_SEE_NOTHING             = 7407, -- There is nothing here.
        AN_ORCISH_STORAGE_HOLE      = 7449, -- An Orcish storage hole. There is something inside, but you cannot open it without a key.
        A_WELL                      = 7451, -- A well, presumably dug by Orcs.
        CHEST_UNLOCKED              = 7469, -- You unlock the chest!
        CHEST_FAIL                  = 7470, -- Fails to open the chest.
        CHEST_TRAP                  = 7471, -- The chest was trapped!
        CHEST_WEAK                  = 7472, -- You cannot open the chest when you are in a weakened state.
        CHEST_MIMIC                 = 7473, -- The chest was a mimic!
        CHEST_MOOGLE                = 7474, -- You cannot open the chest while participating in the moogle event.
        CHEST_ILLUSION              = 7475, -- The chest was but an illusion...
        CHEST_LOCKED                = 7476, -- The chest appears to be locked.
    },
    mob =
    {
        BLUBBERY_BULGE_PH   = 
        {
            [17387919] = 17387920, -- -225.237 2.295 -294.764
        },
        GAVOTVUT            = 17387965,
        BARAKBOK            = 17387966,
        BILOPDOP            = 17387967,
        DELOKNOK            = 17387968,
        PURPLEFLASH_BRUKDOK = 17387969,
        ONE_EYED_GWAJBOJ    = 17387970,
        THREE_EYED_PROZPUZ  = 17387971,
    },
    npc =
    {
        HIDE_FLAP_OFFSET     = 17388023,
        STORAGE_HOLE         = 17388025,
        DAVOI_TREASURE_CHEST = 17388027,
    },
}

return zones[dsp.zone.DAVOI]