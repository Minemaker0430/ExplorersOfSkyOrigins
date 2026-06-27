require 'eos.common'
require 'eos.ExplorerEssentials'

-----------------------------------
-- Base Functions
-----------------------------------

function ITEM_SCRIPT.Test(owner, ownerChar, context, args)
  PrintInfo("Test")
end

function ITEM_SCRIPT.ProsperEvent(owner, ownerChar, context, args)
    local heal = math.max(1, context.User.MaxHP / 10)
    local statusList = {
        "poison", 
        "poison_toxic", 
        "burn", 
        "confuse", 
        "paralyze", 
        "perish_song", 
        "in_love", 
        "cursed", 
        "frostbite", 
        "calcify", 
        "drowsy", 
        "disable", 
        "encore", 
        "taunted"
    }

    if context.Item.IsMoney then
        SOUND:PlayBattleSE("DUN_Heal")
        TASK:WaitTask(context.User:RestoreHP(heal, true))

        for i = 1, #statusList, 1 do
            local status = statusList[i]
            if context.User:GetStatusEffect(status) ~= nil then
                TASK:WaitTask(context.User:RemoveStatusEffect(status))
            end
        end
    end
end

function ITEM_SCRIPT.ItemTutorials(owner, ownerChar, context, args)
    local item = context.Item.Value
    SV.ItemTutorials = SV.ItemTutorials or {}

    UI:ResetSpeaker()
    print(item)

    if item == "food_apple" and not SV.ItemTutorials.Food then
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_FOOD"):ToLocal(), RogueEssence.Dungeon.InvItem("food_apple"):GetDisplayName()))
        SV.ItemTutorials.Food = true
        GAME:WaitFrames(20)
    elseif item == "berry_oran" and not SV.ItemTutorials.OranBerry then
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_BERRY_ORAN"):ToLocal(), RogueEssence.Dungeon.InvItem("berry_oran"):GetDisplayName(), STRINGS:LocalKeyString(9)))
        SV.ItemTutorials.OranBerry = true
        GAME:WaitFrames(20)
    elseif item == "berry_cheri" and not SV.ItemTutorials.CheriBerry then
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_BERRY_CHERI"):ToLocal(), RogueEssence.Dungeon.InvItem("berry_cheri"):GetDisplayName(), "Paralysis", STRINGS:LocalKeyString(9)))
        SV.ItemTutorials.CheriBerry = true
        GAME:WaitFrames(20)
    elseif item == "berry_pecha" and not SV.ItemTutorials.PechaBerry then
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_BERRY_PECHA"):ToLocal(), RogueEssence.Dungeon.InvItem("berry_pecha"):GetDisplayName(), "Poisoned", "Badly Poisoned", STRINGS:LocalKeyString(9)))
        SV.ItemTutorials.PechaBerry = true
        GAME:WaitFrames(20)
    elseif item == "berry_leppa" and not SV.ItemTutorials.LeppaBerry then
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_BERRY_LEPPA"):ToLocal(), RogueEssence.Dungeon.InvItem("berry_leppa"):GetDisplayName(), STRINGS:LocalKeyString(9)))
        SV.ItemTutorials.LeppaBerry = true
        GAME:WaitFrames(20)
    elseif item == "berry_lum" and not SV.ItemTutorials.LumBerry then
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_BERRY_LUM"):ToLocal(), RogueEssence.Dungeon.InvItem("berry_lum"):GetDisplayName(), STRINGS:LocalKeyString(9)))
        SV.ItemTutorials.LumBerry = true
        GAME:WaitFrames(20)
    elseif item == "seed_blast" and not SV.ItemTutorials.BlastSeed then
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_SEED_BLAST"):ToLocal(), RogueEssence.Dungeon.InvItem("seed_blast"):GetDisplayName()))
        SV.ItemTutorials.BlastSeed = true
        GAME:WaitFrames(20)
    elseif item == "seed_sleep" and not SV.ItemTutorials.SleepSeed then
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_SEED_SLEEP"):ToLocal(), RogueEssence.Dungeon.InvItem("seed_sleep"):GetDisplayName()))
        SV.ItemTutorials.SleepSeed = true
        GAME:WaitFrames(20)
    elseif item == "seed_stun" and not SV.ItemTutorials.StunSeed then
        -- item is still wip
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_SEED_STUN"):ToLocal(), RogueEssence.Dungeon.InvItem("seed_stun"):GetDisplayName()))
        SV.ItemTutorials.StunSeed = true
        GAME:WaitFrames(20)
    elseif item == "seed_warp" and not SV.ItemTutorials.WarpSeed then
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_SEED_WARP"):ToLocal(), RogueEssence.Dungeon.InvItem("seed_warp"):GetDisplayName()))
        SV.ItemTutorials.WarpSeed = true
        GAME:WaitFrames(20)
    elseif item == "seed_vile" and not SV.ItemTutorials.VileSeed then
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_SEED_VILE"):ToLocal(), RogueEssence.Dungeon.InvItem("seed_vile"):GetDisplayName()))
        SV.ItemTutorials.VileSeed = true
        GAME:WaitFrames(20)
    elseif item == "seed_x_eye" and not SV.ItemTutorials.XEyeSeed then
        -- unsure if this will be used
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_SEED_XEYE"):ToLocal(), RogueEssence.Dungeon.InvItem("seed_x_eye"):GetDisplayName()))
        SV.ItemTutorials.XEyeSeed = true
        GAME:WaitFrames(20)
    elseif item == "seed_violent" and not SV.ItemTutorials.ViolentSeed then
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_SEED_VIOLENT"):ToLocal(), RogueEssence.Dungeon.InvItem("seed_violent"):GetDisplayName()))
        SV.ItemTutorials.ViolentSeed = true
        GAME:WaitFrames(20)
    elseif item == "medicine_max_elixir" and not SV.ItemTutorials.MaxElixir then
        -- ngl i'm not sure how this is gonna work since these are mostly gonna be from rewards...
        -- i mean i guess you could trigger it manually?
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_MEDICINE_MAX_ELIXIR"):ToLocal(), RogueEssence.Dungeon.InvItem("medicine_max_elixir"):GetDisplayName(), STRINGS:LocalKeyString(9)))
        SV.ItemTutorials.MaxElixir = true
        GAME:WaitFrames(20)
    elseif item == "orb_weather" and not SV.ItemTutorials.WeatherOrb then
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_ORB_WEATHER"):ToLocal(), RogueEssence.Dungeon.InvItem("orb_weather"):GetDisplayName()))
        SV.ItemTutorials.WeatherOrb = true
        GAME:WaitFrames(20)
    elseif (item == "orb_sunny" or item == "orb_rainy") and not SV.ItemTutorials.WeatherOrbAlt then
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_ORB_WEATHER_ALT"):ToLocal(), RogueEssence.Dungeon.InvItem("orb_rainy"):GetDisplayName(), RogueEssence.Dungeon.InvItem("orb_sunny"):GetDisplayName()))
        SV.ItemTutorials.WeatherOrbAlt = true
        GAME:WaitFrames(20)
    elseif item == "ammo_geo_pebble" and not SV.ItemTutorials.Ammo then
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_AMMO_1"):ToLocal(), ExplorerEssentials.GetPluralItem("ammo_geo_pebble")))
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_AMMO_2"):ToLocal(), ExplorerEssentials.GetPluralItem("ammo_geo_pebble"), ExplorerEssentials.GetPluralItem("ammo_stick"), STRINGS:LocalKeyString(23)))
        SV.ItemTutorials.Ammo = true
        GAME:WaitFrames(20)
    elseif item == "fake_berry_oran" and not SV.ItemTutorials.Lookalikes then
        -- unused for now
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_LOOKALIKE_1"):ToLocal(), RogueEssence.Dungeon.InvItem("berry_oran"):GetDisplayName(), RogueEssence.Dungeon.InvItem("fake_berry_oran"):GetDisplayName()))
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_LOOKALIKE_2"):ToLocal()))
        SV.ItemTutorials.Lookalikes = true
        GAME:WaitFrames(20)
    elseif context.Item.IsMoney and not SV.ItemTutorials.Money then
        GAME:WaitFrames(20)
        SOUND:PlayFanfare("Fanfare/Note")
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_MONEY"):ToLocal()))
        SV.ItemTutorials.Money = true
        GAME:WaitFrames(20)
    end
end
