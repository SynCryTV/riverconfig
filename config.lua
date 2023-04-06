Config = {}


-------------------------------------------
----------------- River -------------------
-------------------------------------------


Config.Meta_Data = true -- If you use Metadata you Only need youre Item. (If false, Script use a Old Way and give you Canteen_75, Canteen_50 and so far back)
                         -- (This Option Requieres Server Restart cauz Inventory can load Metadata of items)


Config.Check_Canteen = true -- Check if Character has Canteen Item.
Config.River_Command = false -- If False River Prompt shows automatic if you near River and if you use Command Prompt Disable. If true use Command to show River Options.
Config.CleanRiver = true -- Clean Character from Dirt if you wash on River.
Config.Standard_Drink = true -- Use the Drink animation and Filling Cores from Cry_River. Requieres Fred_Metabolism to add Thirst Points! 
                            -- If false u have to add: canteen_100, canteen_75, canteen_50 and canteen_25 to youre Metabolism.
                            -- If you use Metadata only add: canteen_100 

Config.Fred_Meta = true     -- If you use Fred Meta

Config.Water_Barrels = true -- If using Waterbarrels + Animation
Config.CleanBarrel = true   -- Clean Character if Players use Waterbarrels. 


Config.Syn_Progressbars = true -- If use Syn_Progressbars
                               -- Export in Client is:         exports['progressBars']:startUI(8000, "Du füllst deine Flasche...")

Config.Dirty_Water = true -- If you want that u get a Dirty Water Canteen from River (Its Not Drinkable) for craftig/or boiling it to have Clear Water.
Config.RiverCanteen = {                         
    CanteenItem = "canteen_100", -- If you have youre own canteen Item.
    CanteenItem_75 = "canteen_75",
    CanteenItem_50 = "canteen_50",
    CanteenItem_25 = "canteen_25",
    CanteenItem_Dirty = "dirty_canteen",
    CanteenItem_Empty = "empty_canteen",
    -- For non Metadata users if u set Dirty_WaterDrinkable true
    CanteenItem_Dirty_75 = "dirty_canteen_75",
    CanteenItem_Dirty_50 = "dirty_canteen_50",
    CanteenItem_Dirty_25 = "dirty_canteen_25"

}

Config.Mega_Doctorjob = true -- Only if you use Mega_Doctorjob.
Config.RiverDiseaseChance = 5 -- Percentage out of 100 (Only if Mega_Doctorjob true)
Config.Dirty_WaterDrinkable = true -- Sets Dirty Water Drinkable for DiseaseChance. If metadata = true it use the same from Config.RiverTexts
Config.DirtyCanteenDiseaseChance = 5 -- Percentage out of 100 Chance to get Diseasefrom Dirty_WaterBottle (Only if Mega_Doctorjob true)
Config.DiseaseID = "cholera"  -- Youre DiseaseID (Only if Mega_Doctorjob true)

-- Metadata/Text -- 
Config.RiverTexts = {
    Broken = "Flasche ist leer!", -- Msg if Canteen is empty 
    Durability = "Füllstand = ", -- How much filled is Flask
    Max = 900,  -- How much can be inside Canteen
    Lost = 300,  -- How much loose per Drink
    FredRiver = 25, -- How much thirst Points fill drinking on River ? Only if use Fred Meta.
    FredCanteen = 100, -- Huch thirst Points fill the Canteen while drinking? Only if use Fred Meta
}

Config.Language = {
    -- Prompts--
    [1] = {text = "Trinken",}, -- Drink
    [2] = {text = "Waschen",}, -- Wasch
    [3] = {text = "Wasserflasche füllen",}, -- Fill Water flask
    [4] = {text = "Waschen",},  -- Wash
    [5] = {text = "Wasserfass",}, -- Prompt Literal String for Waterbarrels
    [6] = {text = "Fluss",}, --Prompt Literal String
    -- Other --
    [7] = {text = "fluss",}, -- Youre command if Config.River_Command = true
    [8] = {text = "Du füllst deine Flasche",}, -- Progressbar Text if you use Progressbars from Syn
    [9] = {text = "Fluss",}, -- Notify Header
    [10] = {text = "Du hast keine Leere Flasche",}, -- No Empty Bottle
    [11] = {text = "Du füllst deine Wasserflasche",}, -- You fill youre canteen
    [12] = {text = "Du trinkst schmutziges Wasser und riskierst krank zu werden",}, -- Warning if Consume Dirty Water

}


-------------------------------------------
--------------- MAP COLORS ----------------
-------------------------------------------


Config.Map_Colors = false -- If u want colored map. For Colornumbers take a look in Addon/Colors Folder from this Script. 

Config.Zones = {
    --AMBARINO
        {Hash = 0x3B8DD21A, Color = 'BLIP_MODIFIER_MP_COLOR_1'}, --STATE_AMBARINO
        {Hash = 0x3BBA228A, Color = 'BLIP_MODIFIER_MP_COLOR_13'}, --LBS_AMBARINO_BOUNTY
    
        --{Hash = 0x9125D14C, Color = 'BLIP_MODIFIER_MP_COLOR_22'}, --DISTRICT_GRIZZLIES
        --{Hash = 0x943198D3, Color = 'BLIP_MODIFIER_MP_COLOR_1'}, --DISTRICT_GRIZZLIES_EAST
        --{Hash = 0xD41D039A, Color = 'BLIP_MODIFIER_MP_COLOR_21'}, --DISTRICT_GRIZZLIES_WEST
    
        --{Hash = 0xBB785C8A, Color = 'BLIP_MODIFIER_MP_COLOR_2'}, --REGION_GRZ_WAPITI
        --{Hash = 0x4F45BE43, Color = 'BLIP_MODIFIER_MP_COLOR_2'}, --OUTLINE_WAPITI
    
    
    --LEMOYNE
        {Hash = 0x945395DF, Color = 'BLIP_MODIFIER_MP_COLOR_3'}, --STATE_LEMOYNE
        {Hash = 0x0F32B44D, Color = 'BLIP_MODIFIER_MP_COLOR_15'}, --LBS_LEMOYNE_BOUNTY
    
        --{Hash = 0x2843E325, Color = 'BLIP_MODIFIER_MP_COLOR_3'}, --DISTRICT_BAYOU_NWA
        --{Hash = 0x024C01CA, Color = 'BLIP_MODIFIER_MP_COLOR_14'}, --DISTRICT_BLUEGILL_MARSH
        --{Hash = 0x0BB92EEF, Color = 'BLIP_MODIFIER_MP_COLOR_22'}, --DISTRICT_SCARLETT_MEADOWS
    
        --{Hash = 0x9652B96E, Color = 'BLIP_MODIFIER_MP_COLOR_15'}, --REGION_BAY_LAGRAS
        --{Hash = 0x049BBBD4, Color = 'BLIP_MODIFIER_MP_COLOR_15'}, --OUTLINE_LAGRAS
        {Hash = 0x2A6CBBA2, Color = 'BLIP_MODIFIER_MP_COLOR_15'}, --REGION_BAY_SAINT_DENIS
        {Hash = 0xC354EAC2, Color = 'BLIP_MODIFIER_MP_COLOR_15'}, --OUTLINE_SAINT_DENIS     
        {Hash = 0x2D1A7AF2, Color = 'BLIP_MODIFIER_MP_COLOR_32'}, --REGION_BLU_SISIKA
        --{Hash = 0xFC531E7A, Color = 'BLIP_MODIFIER_MP_COLOR_15'}, --REGION_SCM_BRAITHWAITEMANOR
        --{Hash = 0x5E68036B, Color = 'BLIP_MODIFIER_MP_COLOR_15'}, --OUTLINE_BRAITHWAITEMANOR
        --{Hash = 0xD218D90D, Color = 'BLIP_MODIFIER_MP_COLOR_15'}, --REGION_SCM_CALIGAHALL
        --{Hash = 0xE074391B, Color = 'BLIP_MODIFIER_MP_COLOR_15'}, --OUTLINE_CALIGAHALL
        --{Hash = 0xD3F2B8A7, Color = 'BLIP_MODIFIER_MP_COLOR_15'}, --REGION_SCM_RHODES
        --{Hash = 0x09FAE063, Color = 'BLIP_MODIFIER_MP_COLOR_15'}, --OUTLINE_RHODES
    
    
    --NEW AUSTIN
        {Hash = 0x41759831, Color = 'BLIP_MODIFIER_MP_COLOR_2'}, --STATE_NEW_AUSTIN --BLIP_MODIFIER_MP_COLOR_4
        {Hash = 0xD339F6AB, Color = 'BLIP_MODIFIER_MP_COLOR_2'}, --LBS_NEW_AUSTIN_BOUNTY --BLIP_MODIFIER_MP_COLOR_16
    
        --{Hash = 0x99B6A1E6, Color = 'BLIP_MODIFIER_MP_COLOR_4'}, --DISTRICT_CHOLLA_SPRINGS
        --{Hash = 0x3AC128F9, Color = 'BLIP_MODIFIER_MP_COLOR_30'}, --DISTRICT_GAPTOOTH_RIDGE
        --{Hash = 0x33D88587, Color = 'BLIP_MODIFIER_MP_COLOR_18'}, --DISTRICT_HENNIGANS_STEAD
        --{Hash = 0xD428627B, Color = 'BLIP_MODIFIER_MP_COLOR_29'}, --DISTRICT_RIO_BRAVO
    
    
    --NEW HANOVER
        {Hash = 0x41332496, Color = 'BLIP_MODIFIER_MP_COLOR_8'}, --STATE_NEW_HANOVER
        {Hash = 0x5CD2A36F, Color = 'BLIP_MODIFIER_MP_COLOR_20'}, --LBS_NEW_HANOVER_BOUNTY
    
        --{Hash = 0x717F4A96, Color = 'BLIP_MODIFIER_MP_COLOR_11'}, --DISTRICT_CUMBERLAND_FOREST
        --{Hash = 0x724E7654, Color = 'BLIP_MODIFIER_MP_COLOR_8'}, --DISTRICT_HEARTLAND
        --{Hash = 0x30FAE29B, Color = 'BLIP_MODIFIER_MP_COLOR_19'}, --DISTRICT_ROANOKE_RIDGE
    
        --{Hash = 0x1BDD5A12, Color = 'BLIP_MODIFIER_MP_COLOR_2'}, --REGION_CML_OLDFORTWALLACE
        --{Hash = 0x2FE84F0E, Color = 'BLIP_MODIFIER_MP_COLOR_2'}, --OUTLINE_OLDFORTWALLACE
        --{Hash = 0x7B23B4C7, Color = 'BLIP_MODIFIER_MP_COLOR_20'}, --REGION_HRT_CORNWALLKEROSENE
        --{Hash = 0x150D72E9, Color = 'BLIP_MODIFIER_MP_COLOR_20'}, --OUTLINE_CORNWALLKEROSEN
        --{Hash = 0x6E7BDAC4, Color = 'BLIP_MODIFIER_MP_COLOR_20'}, --REGION_HRT_EMERALDRANCH
        --{Hash = 0x13A98173, Color = 'BLIP_MODIFIER_MP_COLOR_20'}, --OUTLINE_EMERALD
        {Hash = 0x0079B7EE, Color = 'BLIP_MODIFIER_MP_COLOR_2'}, --REGION_HRT_VALENTINE
        {Hash = 0x2A24C8D9, Color = 'BLIP_MODIFIER_MP_COLOR_2'}, --OUTLINE_VALENTINE
        --{Hash = 0x0A8B2CBE, Color = 'BLIP_MODIFIER_MP_COLOR_20'}, --REGION_ROA_ANNESBURG
        --{Hash = 0x9CC09C3D, Color = 'BLIP_MODIFIER_MP_COLOR_20'}, --OUTLINE_ANNESBURG
        --{Hash = 0xA053D058, Color = 'BLIP_MODIFIER_MP_COLOR_20'}, --REGION_ROA_BUTCHERCREEK
        --{Hash = 0xB6831F62, Color = 'BLIP_MODIFIER_MP_COLOR_20'}, --OUTLINE_BUTCHERCREEK
        {Hash = 0x507B5360, Color = 'BLIP_MODIFIER_MP_COLOR_2'}, --REGION_ROA_VANHORNPOST
        {Hash = 0x194E52AF, Color = 'BLIP_MODIFIER_MP_COLOR_2'}, --OUTLINE_VANHORNPOST
    
    
    --WEST ELIZABETH
        {Hash = 0xD69B5B49, Color = 'BLIP_MODIFIER_MP_COLOR_6'}, --STATE_WEST_ELIZABETH
        {Hash = 0xF030C0B2, Color = 'BLIP_MODIFIER_MP_COLOR_23'}, --LBS_W_ELIZABETH_BOUNTY
    
        --{Hash = 0x8DCC574F, Color = 'BLIP_MODIFIER_MP_COLOR_6'}, --DISTRICT_BIG_VALLEY
        --{Hash = 0x0E95FF51, Color = 'BLIP_MODIFIER_MP_COLOR_28'}, --DISTRICT_GREAT_PLAINS
        --{Hash = 0x763A8A87, Color = 'BLIP_MODIFIER_MP_COLOR_31'}, --DISTRICT_TALL_TREES
    
        --{Hash = 0x4663EEB9, Color = 'BLIP_MODIFIER_MP_COLOR_23'}, --REGION_BGV_STRAWBERRY
        --{Hash = 0x3B4A5D5B, Color = 'BLIP_MODIFIER_MP_COLOR_23'}, --OUTLINE_STRAWBERRY
        {Hash = 0x5647E155, Color = 'BLIP_MODIFIER_MP_COLOR_23'}, --REGION_GRT_BLACKWATER
        {Hash = 0x129E1411, Color = 'BLIP_MODIFIER_MP_COLOR_23'}, --OUTLINE_BLACKWATER
        --{Hash = 0xDC87C0C8, Color = 'BLIP_MODIFIER_MP_COLOR_23'}, --REGION_TAL_MANZANITAPOST
    
    
    --GUARMA
        {Hash = 0x9307FD41, Color = 'BLIP_MODIFIER_MP_COLOR_20'}, --STATE_GUARMA
        {Hash = 0x6009F334, Color = 'BLIP_MODIFIER_MP_COLOR_20'}, --LBS_GUARMA_BOUNTY
    
        --{Hash = 0x6E10D212, Color = 'BLIP_MODIFIER_MP_COLOR_7'}, --REGION_GUA_MANICATO
    
    
    --NUEVO PARAÍSO
        --{Hash = 0x8966022D, Color = 'BLIP_MODIFIER_MP_COLOR_22'}, --DISTRICT_DIEZ_CORONAS
        --{Hash = 0x27253ED3, Color = 'BLIP_MODIFIER_MP_COLOR_22'}, --DISTRICT_PERDIDO
        --{Hash = 0x5046DD11, Color = 'BLIP_MODIFIER_MP_COLOR_22'}, --DISTRICT_PUNTA_ORGULL
    
    
    --UNKNOWN
        --{Hash = 0xFAF570C5, Color = 'BLIP_MODIFIER_MP_COLOR_22'}, --LOCKOUT_EASTSIDE
        --{Hash = 0xAF5E7C06, Color = 'BLIP_MODIFIER_MP_COLOR_22'}, --STATE_DEFAULT
        --{Hash = 0x21FE6ED8, Color = 'BLIP_MODIFIER_MP_COLOR_1'}, --¿?
        --{Hash = 0x28181665, Color = 'BLIP_MODIFIER_MP_COLOR_2'}, --¿?
        --{Hash = 0x33F2D34F, Color = 'BLIP_MODIFIER_MP_COLOR_3'}, --¿?
        --{Hash = 0x3FB16CC9, Color = 'BLIP_MODIFIER_MP_COLOR_4'}, --¿?
        --{Hash = 0x46837F42, Color = 'BLIP_MODIFIER_MP_COLOR_5'}, --¿?
        --{Hash = 0x703A27B1, Color = 'BLIP_MODIFIER_MP_COLOR_6'}, --¿?
        --{Hash = 0x89C0A213, Color = 'BLIP_MODIFIER_MP_COLOR_7'}, --¿?
        --{Hash = 0x90CA4AF8, Color = 'BLIP_MODIFIER_MP_COLOR_8'}, --¿?
        --{Hash = 0x95B1E77A, Color = 'BLIP_MODIFIER_MP_COLOR_9'}, --¿?
        --{Hash = 0xAE021C70, Color = 'BLIP_MODIFIER_MP_COLOR_10'}, --¿?
        --{Hash = 0xBBB91AAD, Color = 'BLIP_MODIFIER_MP_COLOR_11'}, --¿?
        --{Hash = 0xC1C68746, Color = 'BLIP_MODIFIER_MP_COLOR_12'}, --¿?
    }