Config = {}
-------------------------------------------
----------------- River -------------------
-------------------------------------------

Config.Check_Canteen = true -- Check if Character has Canteen Item.
Config.RiverCommand = true -- If true River Prompt shows automatic if you near River and if you use Command Prompt Disable. If false use Command to show River Options.
Config.CleanRiver = true -- Clean Character from Dirt if you wash on River.
Config.StandardDrink = true -- Use the Drink animation and Filling Cores from Cry_River. Requieres Fred_Metabolism or Outsider_Needs to add Thirst Points! 
                            -- If false u have to add: canteen_100, canteen_75, canteen_50 and canteen_25 to youre Metabolism.
                            -- If you use Metadata only add: canteen_100
                            
        -- Barrels
Config.Water_Barrels = true -- If using Waterbarrels + Animation
Config.CleanBarrel = true   -- Clean Character if Players use Waterbarrels. 

Config.Vorp_Progressbars = false -- If use Vorp_Progressbars


-------------------------------------------
---------  Metabolsism Options  -----------
-------------------------------------------

-- ONLY ONE OPTION FRED OR OUTSIDER NEEDS --

Config.Fred_Meta = false     -- If you use Fred Meta

Config.FredMetaPoints = {
    FredRiver = 25, -- How much thirst Points fill drinking on River ? Only if use Fred Meta.
    FredCanteen = 100, -- Huch thirst Points fill the Canteen while drinking? Only if use Fred Meta
}

Config.Outsider_Needs = true -- If you use outsider_needs
-- River
Config.OutsiderNeedsStatsFromRiver = {
    FoodUp = 0,
    WaterUp = 25,
    StaminaUp = 20,
    HealthUp = 0,
    GoldHealthInnerUp = 0,
    GoldHealthOutterUp = 0,
    GoldStaminaInnerUp = 5,
    GoldStaminaOutterUp = 5,
    AddHotUp = 0,
    AddCoolUp = 6,
    AddHotDurationUp = 0,
    AddCoolDurationUp = 120
}

-- Flask 
Config.OutsiderNeedsStatsFromFlask = {
    FoodUp = 0,
    WaterUp = 25,
    StaminaUp = 20,
    HealthUp = 0,
    GoldHealthInnerUp = 0,
    GoldHealthOutterUp = 0,
    GoldStaminaInnerUp = 0,
    GoldStaminaOutterUp = 0,
    AddHotUp = 0,
    AddCoolUp = 4,
    AddHotDurationUp = 0,
    AddCoolDurationUp = 120
}

-------------------------------------------
---  Goldpan/Sickness/Metadata Options  ---
-------------------------------------------
Config.Meta_Data = 1 -- (1 = Use Metadata, 2 =  then Script use a Old Way and give you Canteen_75, Canteen_50 and so far back), 3 = Do Nothing. If youre Metabolism Script Managa all of it. 
                     -- (This Option Requieres Server Restart cauz Inventory can load Metadata of items)
Config.Mega_Doctorjob = true -- Only if you use Mega_Doctorjob.
Config.Dirty_WaterDrinkable = true -- Sets Dirty Water Drinkable for DiseaseChance. If metadata = true it use the same from Config.RiverTexts
Config.DirtyCanteenDiseaseChance = 5 -- Percentage out of 100 Chance to get Diseasefrom Dirty_WaterBottle (Only if Mega_Doctorjob true)
Config.DiseaseID = "cholera"  -- Youre DiseaseID (Only if Mega_Doctorjob true)
Config.GetDirtyCanteenChance = 50 -- Chance to get Dirty Canteen if you set dirtycanteen down below to 3
-- Config.UseGoldpanMetadata = true -- This Option comes Later. At the moment goldpansystem always use metadata


Config.RiverTexts = {
    Broken = "Flasche ist leer!", -- Msg if Canteen is empty 
    Durability = "Füllstand = ", -- How much filled is Flask
    Max = 900,  -- How much can be inside Canteen
    Lost = 150,  -- How much loose per Drink

    -- Goldpan --      More options later.
    BrokenPan = "Goldpfanne zerbrochen!",
    DurabilityPan = "Haltbarkeit = ",
    MaxPan = 100,
    LostPan = 1,

    -- Customize youre Progressbars -- (Only if you use it) Theme: linear, circle, innercircle | Color: What color (hex or rgb) do you want the progress loader to be. Defaults to a dark red. 
    Theme = 'circle',
    Color = '#ff0000',
    width = '20vw',
}

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

Config.GoldPanOption = true -- If you want to youse Goldpanning from River.
Config.PromtTimerGoldpan = 11800 -- In MS. If you change the worktimer down below it can be good if you change this timer to. Its the time how long the prompts wait before become back after pushing Goldpanning button.
Config.Options = {
    WorkTimer = 5,--seconds
    PanModel = "P_CS_MININGPAN01X",
    BoneIndex = "SKEL_R_HAND",
    PanAttach = {0.25, 0.01, -0.09, 0.0, -1.0, 91.0},
    StartPanningInfo = {"script_rc@cldn@ig@rsc2_ig1_questionshopkeeper", "inspectfloor_player", 0.2, 0.0, -0.2, -100.0, -50.0, 0.0},
    StartShakeInfo = {"script_re@gold_panner@gold_success", "SEARCH02"},
    GoldNuggetName = "goldnugget", --RewardItem Name for Goldsearch
}

Config.GoldPanItem = "goldpan"
Config.UseRustedGoldpan = true -- After Metadata = 0 Goldpan dont break it give you an rusted Golpan back.
Config.RustedGoldpanItem = "rusted_goldpan"

Config.WaterTypes = { -- droprate: 0 = nothing; 1 = very rare; 2 = rare; 3 = common 
                      -- sick: chance in % to get sick when drinking from river If you dont have mega doctorjob you can ignore this
                      -- dirtycanteen: 0 = normal water; 1 = Dirty Water (like for craftig); 2 = Random (You can set percentage with the GetDirtyCanteenChance Option)
    --lakes
    [1] =  {["hash"] = `WATER_AURORA_BASIN`,       ["name"] = "Aurora Basin", ["type"] = "lake", ["droprate"] = 1, ["sick"]= 0, ["dirtycanteen"] = 0},
    [2] =  {["hash"] = `WATER_BARROW_LAGOON`,      ["name"] = "Barrow Lagoon", ["type"] = "lake", ["droprate"] = 1, ["sick"]= 10, ["dirtycanteen"] = 1},
    [3] =  {["hash"] = `WATER_CALMUT_RAVINE`,      ["name"] = "Calmut Ravine", ["type"] = "lake", ["droprate"] = 1, ["sick"]= 0, ["dirtycanteen"] = 0},
    [4] =  {["hash"] = `WATER_ELYSIAN_POOL`,       ["name"] = "Elysian Pool", ["type"] = "lake", ["droprate"] = 1, ["sick"]= 5, ["dirtycanteen"] = 1},
    [5] =  {["hash"] = `WATER_FLAT_IRON_LAKE`,     ["name"] = "Flat Iron Lake", ["type"] = "lake", ["droprate"] = 1, ["sick"]= 0, ["dirtycanteen"] = 0},
    [6] =  {["hash"] = `WATER_HEARTLANDS_OVERFLOW`,["name"] = "Heartlands Overflow", ["type"] = "lake", ["droprate"] = 2, ["sick"]= 10, ["dirtycanteen"] = 1},
    [7] =  {["hash"] = `WATER_LAKE_DON_JULIO`,     ["name"] = "Don Julio Lake", ["type"] = "lake", ["droprate"] = 1, ["sick"]= 25, ["dirtycanteen"] = 1},
    [8] =  {["hash"] = `WATER_LAKE_ISABELLA`,      ["name"] = "Lake Isabella", ["type"] = "lake", ["droprate"] = 2, ["sick"]= 1, ["dirtycanteen"] = 0},
    [9] =  {["hash"] = `WATER_O_CREAGHS_RUN`,      ["name"] = "Ocreaghs Run", ["type"] = "lake", ["droprate"] = 1, ["sick"]= 5, ["dirtycanteen"] = 0},
    [10] = {["hash"] = `WATER_OWANJILA`,          ["name"] = "Owanjila", ["type"] = "lake", ["droprate"] = 1, ["sick"]= 9, ["dirtycanteen"] = 1},
    [11] = {["hash"] = `WATER_SEA_OF_CORONADO`,   ["name"] = "Sea of Coronado", ["type"] = "lake", ["droprate"] = 1, ["sick"]= 25, ["dirtycanteen"] = 1},
    --rivers
    [12] = {["hash"] = `WATER_ARROYO_DE_LA_VIBORA`,   ["name"] = "Arroyo de la Vibora", ["type"] = "river", ["droprate"] = 1, ["sick"]= 35, ["dirtycanteen"] = 1},
    [13] = {["hash"] = `WATER_BEARTOOTH_BECK`,   ["name"] = "Beartooth Beck", ["type"] = "river", ["droprate"] = 1, ["sick"]= 0, ["dirtycanteen"] = 0},
    [14] = {["hash"] = `WATER_DAKOTA_RIVER`,   ["name"] = "Dakota River", ["type"] = "river", ["droprate"] = 1, ["sick"]= 5, ["dirtycanteen"] = 0},
    [15] = {["hash"] = `WATER_KAMASSA_RIVER`,   ["name"] = "Kamassa River", ["type"] = "river", ["droprate"] = 0, ["sick"]= 15, ["dirtycanteen"] = 1},
    [16] = {["hash"] = `WATER_LANNAHECHEE_RIVER`,   ["name"] = "Lannahechee River", ["type"] = "river", ["droprate"] = 2, ["sick"]= 100, ["dirtycanteen"] = 1},
    [17] = {["hash"] = `WATER_LITTLE_CREEK_RIVER`,   ["name"] = "Little Creek River", ["type"] = "river", ["droprate"] = 1, ["sick"]= 0, ["dirtycanteen"] = 0},
    [18] = {["hash"] = `WATER_LOWER_MONTANA_RIVER`,   ["name"] = "Lower Montana River", ["type"] = "river", ["droprate"] = 1, ["sick"]= 5, ["dirtycanteen"] = 0},
    [19] = {["hash"] = `WATER_SAN_LUIS_RIVER`,   ["name"] = "San Luis River", ["type"] = "river", ["droprate"] = 1, ["sick"]= 10, ["dirtycanteen"] = 0},
    [20] = {["hash"] = `WATER_UPPER_MONTANA_RIVER`,   ["name"] = "Upper Montana River", ["type"] = "river", ["droprate"] = 1, ["sick"]= 3, ["dirtycanteen"] = 0},
    --swamps
    [21] = {["hash"] = `WATER_BAYOU_NWA`,   ["name"] = "Bayou NWA", ["type"] = "swamp", ["droprate"] = 1, ["sick"]= 70, ["dirtycanteen"] = 1},
    --creeks
    [22] = {["hash"] = `WATER_DEADBOOT_CREEK`,   ["name"] = "Deadboot Creek", ["type"] = "creek", ["droprate"] = 3, ["sick"]= 0, ["dirtycanteen"] = 0},
    [23] = {["hash"] = `WATER_DEWBERRY_CREEK`,   ["name"] = "Dewberry Creek", ["type"] = "creek", ["droprate"] = 1, ["sick"]= 7, ["dirtycanteen"] = 1},
    [24] = {["hash"] = `WATER_HAWKS_EYE_CREEK`,   ["name"] = "Hawks Eye Creek", ["type"] = "creek", ["droprate"] = 1, ["sick"]= 5, ["dirtycanteen"] = 0},
    [25] = {["hash"] = `WATER_RINGNECK_CREEK`,   ["name"] = "Ringneck Creek", ["type"] = "creek", ["droprate"] = 1, ["sick"]= 10, ["dirtycanteen"] = 1},
    [26] = {["hash"] = `WATER_SPIDER_GORGE`,   ["name"] = "Spider Gorge", ["type"] = "creek", ["droprate"] = 1, ["sick"]= 0, ["dirtycanteen"] = 0},
    [27] = {["hash"] = `WATER_STILLWATER_CREEK`,   ["name"] = "Stillwater Creek", ["type"] = "creek", ["droprate"] = 1, ["sick"]= 13, ["dirtycanteen"] = 1},
    [28] = {["hash"] = `WATER_WHINYARD_STRAIT`,   ["name"] = "Whinyard strait", ["type"] = "creek", ["droprate"] = 1, ["sick"]= 0, ["dirtycanteen"] = 0},
    --ponds
    [29] = {["hash"] = `WATER_CAIRN_LAKE`,   ["name"] = "Cairn Lake", ["type"] = "pond", ["droprate"] = 1, ["sick"]= 10, ["dirtycanteen"] = 1},
    [30] = {["hash"] = `WATER_CATTIAL_POND`,   ["name"] = "Cattail Pond", ["type"] = "pond", ["droprate"] = 1, ["sick"]= 5, ["dirtycanteen"] = 0},
    [31] = {["hash"] = `WATER_HOT_SPRINGS`,   ["name"] = "Hot Springs", ["type"] = "pond", ["droprate"] = 1, ["sick"]= 0, ["dirtycanteen"] = 0},
    [32] = {["hash"] = `WATER_MATTLOCK_POND`,   ["name"] = "Mattlock Pond", ["type"] = "pond", ["droprate"] = 1, ["sick"]= 15, ["dirtycanteen"] = 1},
    [33] = {["hash"] = `WATER_MOONSTONE_POND`,   ["name"] = "Moonstone Pond", ["type"] = "pond", ["droprate"] = 1, ["sick"]= 0, ["dirtycanteen"] = 0},
    [34] = {["hash"] = `WATER_SOUTHFIELD_FLATS`,   ["name"] = "Southfield Flats", ["type"] = "pond", ["droprate"] = 1, ["sick"]= 18, ["dirtycanteen"] = 1},
}

-------------------------------------------
-------------------------------------------
-------------------------------------------

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
    [8] = {text = "Auffüllen",}, -- Progressbar Text if you use Progressbars
    [9] = {text = "Fluss",}, -- Notify Header
    [10] = {text = "Du hast keine Leere Flasche",}, -- No Empty Bottle
    [11] = {text = "Du füllst deine Wasserflasche",}, -- You fill youre canteen
    [12] = {text = "Du trinkst Flusswasser",}, -- Warning if Consume Dirty Water
    [13] = {text = "stopriver",}, -- STOP Aanim EMC Comand 
    [14] = {text = "Aufhören",}, -- Cancel Key
    -- Goldpanning --
    [15] = {text = "Gold Suchen",}, -- Gold Panning Feature Prompt
    [16] = {text = "Du hast keine Goldpfanne",}, -- No Golpan Message

    [17] = {text = "Goldsuche",}, -- Notify Header
    [18] = {text = "Du kannst nur in Gewässern Gold suchen!",}, -- No River Near Notify
    [19] = {text = "Du hast etwas gefunden!",}, -- Found Something Notify
    [20] = {text = "Nichts gefunden!",}, -- Found Nothing Notify
    [21] = {text = "Goldnugget",}, -- Itemlabel for Notify
    [22] = {text = "Suchen",}, -- Searchlabel for progressbar

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