--[[
    init.lua
    Created: 10/31/2023 15:01:40
    Description: Autogenerated script file for the map beach.
]]--
-- Commonly included lua functions and data
require 'common'

-- Package name
local beach = {}

-- Local, localized strings table
-- Use this to display the named strings you added in the strings files for the map!
-- Ex:
--      local localizedstring = MapStrings['SomeStringName']
local MapStrings = {}

-------------------------------
-- Map Callbacks
-------------------------------
---beach.Init(map)
--Engine callback function
function beach.Init(map)

  --This will fill the localized strings table automatically based on the locale the game is 
  -- currently in. You can use the MapStrings table after this line!
  MapStrings = COMMON.AutoLoadLocalizedStrings()

end

---beach.Enter(map)
--Engine callback function
function beach.Enter(map)

  GAME:FadeIn(20)

end

---beach.Exit(map)
--Engine callback function
function beach.Exit(map)


end

---beach.Update(map)
--Engine callback function
function beach.Update(map)


end

---beach.GameSave(map)
--Engine callback function
function beach.GameSave(map)


end

---beach.GameLoad(map)
--Engine callback function
function beach.GameLoad(map)

  GAME:FadeIn(20)

end

-------------------------------
-- Entities Callbacks
-------------------------------


return beach
