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
    
    GAME:FadeOut(false, 60)

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
        local result = DemoMenu:run(start_choice)

        if result == 0 then
            continue = false
            GAME:GroundSave()
            UI:WaitShowDialogue()
            GAME:FadeOut(false, 60)
            GAME:RestartToTitle()
        elseif result > 0 then
            start_choice = result

            UI:ChoiceMenuYesNo(STRINGS:Format(STRINGS.MapStrings['Chapter_Select_Confirm'], name), true)
            UI:WaitForChoice()
            local confirm = UI:ChoiceResult()

            if confirm then
                continue = false
                ExplorerEssentials.SetProgress(result, 0)
                GAME:FadeOut(false, 60)
                GAME:EnterGroundMap("chapter_card", "Entrance")
            end

        end -- if result is -1 it just loops
    end
end

-------------------------------
-- Entities Callbacks
-------------------------------


return demo_room

