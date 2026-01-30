--[[
    Demo Menu

    For the EoSO End of Demo, includes replayable dungeons, refights, and a jukebox.
]]


--- Menu for selecting a character from a specific list of ``RogueEssence.Dungeon.Character`` objects.
DemoMenu = Class("DemoMenu")

local menus = {
    LINE_HEIGHT = 12,
    VERT_SPACE = 14,
    TITLE_HEIGHT = 12 + RogueEssence.Content.GraphicsManager.MenuBG.TileHeight,
    SCREEN_HEIGHT = RogueEssence.Content.GraphicsManager.ScreenHeight,
    SCREEN_WIDTH = RogueEssence.Content.GraphicsManager.ScreenWidth,
    BORDER_HEIGHT = RogueEssence.Content.GraphicsManager.MenuBG.TileHeight,
    BORDER_WIDTH = RogueEssence.Content.GraphicsManager.MenuBG.TileWidth,
}

--- Creates a new ``DemoMenu`` instance using the provided list and callbacks.
--- This function throws an error if the parameter ``char_list`` contains less than 1 entries.
--- @param callback function function run when you select an option
--- @param start_choice integer starting index of the chapter select (for if you cancel)
function DemoMenu:initialize(callback, start_choice)

    assert(self, "DemoMenu:initialize(): Error, self is nil!")
    self.callback = callback
    start_choice = start_choice or 0

    local choices = {
        {STRINGS:FormatKey("DEMO_CH1"), true, function() self:choose(1) end},
        {STRINGS:FormatKey("DEMO_CH2"), false, function() self:choose(2) end},
        {STRINGS:FormatKey("DEMO_CH3"), false, function() self:choose(3) end},
        {STRINGS:FormatKey("DEMO_CH4"), false, function() self:choose(4) end},
        {STRINGS:FormatKey("DEMO_CH5"), false, function() self:choose(5) end},
        {STRINGS:FormatKey("DEMO_CH6"), false, function() self:choose(6) end},
        {STRINGS:FormatKey("DEMO_CH7"), false, function() self:choose(7) end},
        {STRINGS:FormatKey("DEMO_CH8"), false, function() self:choose(8) end},
        {STRINGS:FormatKey("DEMO_CH9"), false, function() self:choose(9) end},
        {STRINGS:FormatKey("DEMO_CH10"), false, function() self:choose(10) end},
        {STRINGS:FormatKey("MENU_SAVE_AND_QUIT"), true, function() self:choose(0) end}
    }
    self.menu = RogueEssence.Menu.ScriptableSingleStripMenu(STRINGS:FormatKey("DEMO_MENU_TITLE"), 24, 22, 100, choices, start_choice, function() self:choose(-1) end)
end

--- Confirmation function that runs the stored callback and closes the menu.
--- @param i number the index of the selected choice, or -1 if either the exit option was selected or nothing was.
function DemoMenu:choose(i)
    self.callback(i)
end

--- Runs a DemoMenu instance and returns its selected index
--- @param start_choice? integer The 1-based index of the choice that will be selected when opening the menu. Defaults to 1.
--- @return integer #the index of the chosen option, or -1 if the menu was exited without selecting anything.
function DemoMenu.run(start_choice)
    start_choice = start_choice or 1
    local ret = -1
    local cb = function(choice)
        ret = choice
        _MENU:RemoveMenu()
    end
    local menu = DemoMenu:new(cb, start_choice - 1)
    UI:SetCustomMenu(menu.menu)
    UI:WaitForChoice()
    return ret
end
