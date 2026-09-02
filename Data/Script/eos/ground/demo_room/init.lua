--[[
    init.lua
    Created: 1/26/2026
    Description: Manually created script file for the map demo_room.
]]--
-- Commonly included lua functions and data
require 'eos.common'
require 'eos.CharacterActions'
require 'eos.ExplorerEssentials'
require 'eos.menu.DemoMenu'

-- Package name
local demo_room = {}

-- Local, localized strings table
-- Use this to display the named strings you added in the strings files for the map!
-- Ex:
--      local localizedstring = STRINGS.MapStrings['SomeStringName']


-------------------------------
-- Map Callbacks
-------------------------------
---demo_room.Init(map)
--Engine callback function
function demo_room.Init(map)
        
end

---demo_room.Enter(map)
--Engine callback function
function demo_room.Enter(map)

    GAME:CutsceneMode(true)
    GROUND:Hide("PLAYER")
    GAME:FadeIn(60)

    demo_room.MenuLoop()

end
---demo_room.Exit(map)
--Engine callback function
function demo_room.Exit(map)
    
    --GAME:FadeOut(false, 60)

end

---demo_room.Update(map)
--Engine callback function
function demo_room.Update(map)


end

---demo_room.GameSave(map)
--Engine callback function
function demo_room.GameSave(map)


end

---demo_room.GameLoad(map)
--Engine callback function
function demo_room.GameLoad(map)

    GAME:CutsceneMode(true)
    GROUND:Hide("PLAYER")
    GAME:FadeIn(60)

    demo_room.MenuLoop()

end

-------------------------------
-- Entities Callbacks
-------------------------------

function demo_room.MenuLoop()
    local continue = true
    local start_choice = 1

    while continue do
        local result = DemoMenu.run(start_choice)

        if result == 0 then
            continue = false
            GAME:GroundSave()
            UI:SetCenter(true)
            UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['Game_Saved']))
            UI:SetCenter(false)
            GAME:FadeOut(false, 60)
            GAME:CutsceneMode(false)
            GAME:RestartToTitle()
        elseif result > 0 then
            start_choice = result

            local chapter_key = "DEMO_CH" .. tostring(result)

            UI:SetCenter(true)
            UI:ChoiceMenuYesNo(STRINGS:Format(STRINGS.MapStrings['Chapter_Select_Confirm'], STRINGS:FormatKey(chapter_key)), true)
            UI:WaitForChoice()
            UI:SetCenter(false)
            local confirm = UI:ChoiceResult()

            if confirm then
                continue = false
                ExplorerEssentials.SetProgress(result, 0)

                if result == 1 then
                    SV.beach_cave.FailedBoss = false
                    SV.beach_cave.FailedDungeon = false
                    SV.beach_cave.Tutorial = 0

                    _DATA.Save.ActiveTeam.Money = 0
                    
                    local inv_count = _DATA.Save.ActiveTeam:GetInvCount() - 1

                    for i = inv_count, 0, -1 do
                        _DATA.Save.ActiveTeam:RemoveFromInv(i)
                    end
                    
                    local player_count = _DATA.Save.ActiveTeam.Players.Count
                    for i = 0, player_count - 1, 1 do 
                        local player = _DATA.Save.ActiveTeam.Players[i]
                        if player.EquippedItem.ID ~= '' and player.EquippedItem.ID ~= nil then 
                            player.EquippedItem.ID = nil
                        end

                        player.Level = 5
                        player.EXP = 0
                        for i = player.Skills.Count - 1, 0, -1 do
                            GAME:ForgetSkill(player, i)
                        end
                        GAME:CheckLevelSkills(player, 5)
                    end


                elseif result == 2 then
                    SV.drenched_bluff.TimesFailed = 0
                    SV.drenched_bluff.Tutorial = 0

                    _DATA.Save.ActiveTeam.Money = 0
                    
                    local inv_count = _DATA.Save.ActiveTeam:GetInvCount() - 1

                    for i = inv_count, 0, -1 do
                        _DATA.Save.ActiveTeam:RemoveFromInv(i)
                    end
                    
                    local player_count = _DATA.Save.ActiveTeam.Players.Count
                    for i = 0, player_count - 1, 1 do 
                        local player = _DATA.Save.ActiveTeam.Players[i]
                        if player.EquippedItem.ID ~= '' and player.EquippedItem.ID ~= nil then 
                            player.EquippedItem.ID = nil
                        end

                        player.Level = 8
                        player.EXP = 0
                        for i = player.Skills.Count - 1, 0, -1 do
                            GAME:ForgetSkill(player, i)
                        end
                        GAME:CheckLevelSkills(player, 8)
                    end
                end

                GAME:FadeOut(false, 60)
                GAME:CutsceneMode(false)
                GAME:EnterGroundMap("chapter_card", "Entrance")
            end

        end -- if result is -1 it just loops
    end
end

-------------------------------
-- Entities Callbacks
-------------------------------


return demo_room

