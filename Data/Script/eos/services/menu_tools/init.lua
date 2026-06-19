--[[
    Example Service
    
    This is an example to demonstrate how to use the BaseService class to implement a game service.
    
    **NOTE:** After declaring you service, you have to include your package inside the main.lua file!
]]--
require 'origin.common'
require 'origin.services.baseservice'
require 'origin.recruit_list'

--Declare class MenuTools
local MenuTools = Class('MenuTools', BaseService)


--[[---------------------------------------------------------------
    MenuTools:initialize()
      MenuTools class constructor
---------------------------------------------------------------]]
function MenuTools:initialize()
  BaseService.initialize(self)
  PrintInfo('MenuTools:initialize()')
end

--[[---------------------------------------------------------------
    MenuTools:__gc()
      MenuTools class gc method
      Essentially called when the garbage collector collects the service.
	  TODO: Currently causes issues.  debug later.
  ---------------------------------------------------------------]]
--function MenuTools:__gc()
--  PrintInfo('*****************MenuTools:__gc()')
--end


--[[---------------------------------------------------------------
    MenuTools:OnMenuButtonPressed()
      When the main menu button is pressed or the main menu should be enabled this is called!
      This is called as a coroutine.
---------------------------------------------------------------]]
function MenuTools:OnMenuButtonPressed()
  -- TODO: Remove this when the memory leak is fixed or confirmed not a leak

  if MenuTools.MainMenu == nil then
    MenuTools.MainMenu = RogueEssence.Menu.MainMenu()
  end

  MenuTools.MainMenu:SetupChoices()
  MenuTools.MainMenu:SetupTitleAndSummary()

  -- custom summary stuff
  if RogueEssence.GameManager.Instance.CurrentScene ~= RogueEssence.Dungeon.DungeonScene.Instance then
    
    local hpStr = RogueEssence.Text.FormatKey("MENU_TEAM_HP")
    local bellyStr = RogueEssence.Text.FormatKey("MENU_TEAM_HUNGER")

    -- hide hp and belly on ground maps
    local elements = MenuTools.MainMenu.SummaryElements
    for i = 0, elements.Count - 1, 1 do
      if elements[i].Text == hpStr or elements[i].Text == bellyStr then
        elements[i]:SetText("")
        elements[i + 1]:SetText("")
        elements[i + 2]:SetText("")
        elements[i + 3]:SetText("")
      end
    end
    
    local rank = _DATA.Save.ActiveTeam.Rank
	  local next = _DATA:GetRank(rank).FameToNext - _DATA.Save.ActiveTeam.Fame 
	
    -- -1 to go represents max rank
    if next < 0 then
      next = RogueEssence.StringKey("MENU_MAIN_MAXRANK"):ToLocal()
    end

    local rankIcons = {
      ["none"] = "RankGuildmaster",
      ["normal"] = "RankNormal",
      ["bronze"] = "RankBronze",
      ["silver"] = "RankSilver",
      ["gold"] = "RankGold",
      ["diamond"] = "RankDiamond",
      ["super"] = "RankSuper",
      ["ultra"] = "RankUltra",
      ["hyper"] = "RankHyper",
      ["master"] = "RankMaster",
      ["master_2"] = "RankMaster2",
      ["master_3"] = "RankMaster3",
      ["master_4"] = "RankMaster4",
      ["guildmaster"] = "RankGuildmaster"
    }

    MenuTools.MainMenu.SummaryElements:Add(RogueEssence.Menu.MenuText(STRINGS:Format(RogueEssence.StringKey("MENU_MAIN_TEAM"):ToLocal(), GAME:GetTeamName()),
										RogueElements.Loc(145, RogueEssence.Content.GraphicsManager.MenuBG.TileHeight), RogueElements.DirH.Left))
  
    MenuTools.MainMenu.SummaryElements:Add(RogueEssence.Menu.MenuText(STRINGS:Format(RogueEssence.StringKey("MENU_MAIN_RANK"):ToLocal(), _DATA:GetRank(rank):GetColoredName()),
										RogueElements.Loc(180, RogueEssence.Content.GraphicsManager.MenuBG.TileHeight + 12), RogueElements.DirH.Left))
	
  	MenuTools.MainMenu.SummaryElements:Add(RogueEssence.Menu.MenuText(STRINGS:Format(RogueEssence.StringKey("MENU_MAIN_TONEXT"):ToLocal(), next),
                    RogueElements.Loc(180, RogueEssence.Content.GraphicsManager.MenuBG.TileHeight + 24), RogueElements.DirH.Left))

    MenuTools.MainMenu.SummaryElements:Add(RogueEssence.Menu.MenuDirTex(
      RogueElements.Loc(145, RogueEssence.Content.GraphicsManager.MenuBG.TileHeight + 8), 
      RogueEssence.Menu.MenuDirTex.TexType.Object, 
      RogueEssence.Content.AnimData(rankIcons[rank], 1)
    ))
  end

  MenuTools.MainMenu:InitMenu()

  TASK:WaitTask(_MENU:ProcessMenuCoroutine(MenuTools.MainMenu))
end

--[[---------------------------------------------------------------
    MenuTools:OnAddMenu(menu)
      When a menu is about to be added to the menu stack this is called!
---------------------------------------------------------------]]
function MenuTools:OnAddMenu(menu)
  local labels = RogueEssence.Menu.MenuLabel

  if RogueEssence.GameManager.Instance.CurrentScene == RogueEssence.Dungeon.DungeonScene.Instance and
      menu:HasLabel() and menu.Label == labels.OTHERS_MENU then
    local choices = menu:ExportChoices()
    -- put right before Settings if present
    local index = menu:GetChoiceIndexByLabel(labels.OTH_SETTINGS)
    -- fall back to either 1 or choices count if the check fails
    if index < 0 then index = math.min(1, menu.Choices.Count) end
    choices:Insert(index,
      RogueEssence.Menu.MenuTextChoice("OTH_RECRUIT", RogueEssence.StringKey("MENU_RECRUITMENT"):ToLocal(),
        function() _MENU:AddMenu(RecruitmentListMenu:new().menu, false) end))
    menu:ImportChoices(choices)
  end

  if menu:HasLabel() and menu.Label == labels.INVENTORY_MENU then
    -- check for rank
    if _DATA.Save.ActiveTeam.Rank == "none" then
      menu.Title:SetText(RogueEssence.StringKey("MENU_ITEMS_ALT"):ToLocal())
    end
  end
end

---Summary
-- Subscribe to all channels this service wants callbacks from
function MenuTools:Subscribe(med)
  med:Subscribe("MenuTools", EngineServiceEvents.MenuButtonPressed,        function() self.OnMenuButtonPressed() end )
  med:Subscribe("MenuTools", EngineServiceEvents.AddMenu,                  function(_, args) self:OnAddMenu(args[0]) end )
end

---Summary
-- un-subscribe to all channels this service subscribed to
function MenuTools:UnSubscribe(med)
end


--Add our service
SCRIPT:AddService("MenuTools", MenuTools:new())
return MenuTools