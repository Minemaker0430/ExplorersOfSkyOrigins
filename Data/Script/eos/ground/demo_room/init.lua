--[[
    init.lua
    Created: 1/26/2026
    Description: Manually created script file for the map demo_room.
]]--
-- Commonly included lua functions and data
require 'eos.common'
require 'eos.CharacterActions'
require 'eos.ExplorerEssentials'

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

  GAME:FadeIn(60)

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

  GAME:FadeIn(60)

end

-------------------------------
-- Entities Callbacks
-------------------------------


return demo_room

