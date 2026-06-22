--[[
    Example Service
    
    This is an example to demonstrate how to use the BaseService class to implement a game service.
    
    **NOTE:** After declaring you service, you have to include your package inside the main.lua file!
]]--
require 'origin.common'
require 'origin.services.baseservice'

--Declare class UpgradeTools
local UpgradeTools = Class('UpgradeTools', BaseService)


--[[---------------------------------------------------------------
    UpgradeTools:initialize()
      UpgradeTools class constructor
---------------------------------------------------------------]]
function UpgradeTools:initialize()
  BaseService.initialize(self)
  PrintInfo('UpgradeTools:initialize()')
end

--[[---------------------------------------------------------------
    UpgradeTools:__gc()
      UpgradeTools class gc method
      Essentially called when the garbage collector collects the service.
	  TODO: Currently causes issues.  debug later.
  ---------------------------------------------------------------]]
--function UpgradeTools:__gc()
--  PrintInfo('*****************UpgradeTools:__gc()')
--end

--[[---------------------------------------------------------------
    UpgradeTools:OnUpgrade()
      When a save file in an old version is loaded this is called!
---------------------------------------------------------------]]
function UpgradeTools:OnUpgrade()
  assert(self, 'UpgradeTools:OnUpgrade() : self is null!')
  
  local old_ver = _DATA.Save:GetVersion(System.Guid.Empty)
  local new_ver = RogueEssence.PathMod.GetVersion(System.Guid.Empty)
  PrintInfo("=>> Upgrading version " .. old_ver:ToString() .. " to " .. new_ver:ToString())
  _DATA.Save.NextDest = _DATA.Start.Map
  
  if SV.General.Starter == nil then SV.General.Starter = GAME:GetPlayerPartyMember(0) end
  if SV.General.Partner == nil then SV.General.Starter = GAME:GetPlayerPartyMember(1) end

  if SV.Dungeon == nil then
    SV.Dungeon = {
      Zone = 'beach_cave',
      Result = RogueEssence.Data.GameProgress.ResultType.Cleared,
      Rescue = false,
      SegmentID = 0,
      MapID = 0
    }
  end

  if SV.WorldMap.Start == nil then SV.WorldMap.Start = 'hub' end
  if SV.WorldMap.Dest == nil then SV.WorldMap.Dest = 'hub' end

  if SV.Progression.Chapter == nil then
    if SV.mt_bristle.FailedDungeon == true then
      SV.Progression.Chapter = 3
    elseif SV.drenched_bluff.TimesFailed > 0 then
      SV.Progression.Chapter = 2
    else
      SV.Progressopm.Chapter = 1
    end
  end

  if SV.Progression.SectionFlag == nil then SV.Progression.SectionFlag = 0 end
  if SV.Progression.Epilogue == nil then 
    if SV.Progression.Chapter > 20 then
      SV.Progression.Epilogue = true
    else
      SV.Progression.Epilogue = false
    end
  end

  if SV.Progression.DemoCompleted == nil then SV.Progression.DemoCompleted = false end
  if SV.Progression.DaysPassed == nil then SV.Progression.DaysPassed = -1 end
  if SV.Progression.DaysToProgress == nil then SV.Progression.DaysToProgress = -1 end

  if SV.Cutscene.ProgressFlag == nil then SV.Cutscene.ProgressFlag = 0 end

  if SV.DailyFlags == nil then
    SV.DailyFlags ={
      DidMorningCheers = false,
	    EndedDay = false,
      SereneForestUnlocked = false -- used for the special "Oddity Cave" like dungeon
    }
  end

  if SV.MajorFlags == nil then
    SV.MajorFlags = 
    {
      SawDinnerCutscene = false,
      TeamSkullInGuild = false
    }
  end

  if SV.partner == nil then
    SV.partner =
    {
      Spawn = 'Default',
      Dialogue = 'Default',
      LoadPositionX = -1,
      LoadPositionY = -1,
      LoadDirection = -1

    }
  end

  if SV.Personality.HeroTalkKind == nil then SV.Personality.HeroTalkKind = 0 end
  if SV.Personality.PartnerTalkKind == nil then SV.Personality.PartnerTalkKind = 0 end

  if SV.PlayerInputs.AuraColor == nil then SV.PlayerInputs.AuraColor = 15 end
  if SV.PlayerInputs.Personality == nil then SV.PlayerInputs.Personality = 0 end

  if SV.SpecialEpisodes == nil then
    SV.SpecialEpisodes = {
      ID = 0,          --current special episode being played. 0 means no special episode is being played
      MainSaveStorage = --store inventory and team from main save so it doesn't get deleted, storage and bank carries over to special episodes
      {
        Equips = {},
        TreasureBag = {},
        Purse = 0,
        CurrentTeam = {}
      },
      SaveData = --savedata for each individual episode
      {
        Bidoof =
        {
          ProgressFlag = 0, --progression flags
          Equips = {},
          TreasureBag = {},
          Purse = 0,
          CurrentTeam = {}, --only used for handling levelups and move changes, teams are hardcoded otherwise
          Completed = false
        },
        Igglybuff =
        {
          ProgressFlag = 0, --progression flags
          Equips = {},
          TreasureBag = {},
          Purse = 0,
          CurrentTeam = {}, --only used for handling levelups and move changes, teams are hardcoded otherwise
          Completed = false
        },
        Sunflora =
        {
          ProgressFlag = 0, --progression flags
          Equips = {},
          TreasureBag = {},
          Purse = 0,
          CurrentTeam = {}, --only used for handling levelups and move changes, teams are hardcoded otherwise
          Completed = false
        },
        TeamCharm =
        {
          ProgressFlag = 0, --progression flags
          Equips = {},
          TreasureBag = {},
          Purse = 0,
          CurrentTeam = {}, --only used for handling levelups and move changes, teams are hardcoded otherwise
          Completed = false
        },
        Future =
        {
          ProgressFlag = 0, --progression flags
          Equips = {},
          TreasureBag = {},
          Purse = 0,
          CurrentTeam = {}, --only used for handling levelups and move changes, teams are hardcoded otherwise
          Completed = false
        }
      }
    }
  end

  if SV.beach == nil then
    if SV.Progression.Chapter > 1 then
      SV.beach.Cutscene = false
    else
      SV.beach.Cutscene = true
    end
  end

  if SV.beach_cave.FailedDungeon == nil then SV.beach_cave.FailedDungeon = false end
  if SV.beach_cave.FailedBoss == nil then SV.beach_cave.FailedBoss = false end
  if SV.beach_cave.Tutorial == nil then
    if SV.beach_cave.FailedBoss == true or SV.Progression.Chapter > 1 then
      SV.beach_cave.Tutorial = 5
    else
      SV.beach_cave.Tutorial = 0
    end
  end

  if SV.drenched_bluff.TimesFailed == nil then SV.drenched_bluff.TimesFailed = 0 end
  if SV.drenched_bluff.Tutorial == nil then 
    if SV.Progression.Chapter > 2 then 
      SV.drenched_bluff.Tutorial = 6 
    else
      SV.drenched_bluff.Tutorial = 0
    end 

  end

  if SV.mt_bristle.FailedDungeon == nil then SV.mt_bristle.FailedDungeon = false end
  if SV.mt_bristle.FailedBoss == nil then SV.mt_bristle.FailedBoss = false end
  
  PrintInfo("=>> Loaded version")
end

---Summary
-- Subscribe to all channels this service wants callbacks from
function UpgradeTools:Subscribe(med)
  med:Subscribe("UpgradeTools", EngineServiceEvents.UpgradeSave,        function() self.OnUpgrade(self) end )
end

---Summary
-- un-subscribe to all channels this service subscribed to
function UpgradeTools:UnSubscribe(med)
end

--Add our service
SCRIPT:AddService("UpgradeTools", UpgradeTools:new())
return UpgradeTools