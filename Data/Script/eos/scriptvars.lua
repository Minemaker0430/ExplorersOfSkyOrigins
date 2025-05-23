--[[
    scriptvars.lua
      This file contains all the default values for the script variables. AKA on a new game this file is loaded!
      Script variables are stored in a table  that gets saved when the game is saved.
      Its meant to be used for scripters to add data to be saved and loaded during a playthrough.
      
      You can simply refer to the "SV" global table like any other table in any scripts!
      You don't need to write a default value in this lua script to add a new value.
      However its good practice to set a default value when you can!
      
    --Examples:
    SV.SomeVariable = "Smiles go for miles!"
    SV.AnotherVariable = 2526
    SV.AnotherVariable = { something={somethingelse={} } }
    SV.AnotherVariable = function() PrintInfo('lmao') end
]]--

-----------------------------------------------
-- Services Defaults
-----------------------------------------------
SV.Services =
{
  --Anything that applies to services should be put in here, or assigned to this or a subtable of this in the service's definition script
}

-----------------------------------------------
-- General Defaults
-----------------------------------------------

SV.General =
{
  Rescue = nil,
  Starter = nil,
  Partner = nil
  --Anything that applies to more than a single level, and that is too small to make a sub-table for, should be put in here ideally, or a sub-table of this
}

SV.Dungeon =
{
	Zone = 'beach_cave',
	Result = RogueEssence.Data.GameProgress.ResultType.Cleared,
	Rescue = false,
	SegmentID = 0,
	MapID = 0
}

SV.Progression =
{
	Chapter = 1, --chapter tracking, 1-20 is main game, 21+ is major postgame flags
	SectionFlag = 0, --section flags keep track of progress within each chapter
	Epilogue = false, --are you in the postgame?
	DemoCompleted = false, --have you completed all available chapters?
	DaysPassed = -1, --day counter, -1 means disabled
	DaysToProgress = -1 --how many days until next flag, -1 means disabled
}


SV.Chapter2 = --Chapter 2 flags that can't be covered by SectionFlags due to loss states
{
        StartedDrenchedBluff = false,--started but died?
        StartedMtBristle = false,--started MtBristle but died?
}

--From Halycon
-------------------------------------------------
-- Temporary Flags - Flags that reset at the end of the day or on screen transition are saved here
-------------------------------------------------
--todo, move existing daily flags here
--These flags are to be reset to their initial values at the end of the day.
SV.DailyFlags =
{
  GreenMerchantItem = "",
  GreenMerchantBought = false,

  GreenKecleonRefreshedStock = false,
  GreenKecleonStock = {},
  PurpleKecleonRefreshedStock = false,
  PurpleKecleonStock = {}

}


SV.Personality = --handles dialogue variations
{
	HeroTalkKind = 0,
	PartnerTalkKind = 0
}

SV.PlayerInputs = --favorite color is saved for the bow color, personality i just saved for no particular reason
{
	FavoriteColor = nil,
	Personality = nil
}

SV.SpecialEpisodes = --special savedata storage for special episodes
{
	ID = 0, --current special episode being played. 0 means no special episode is being played
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

SV.missions = -- !! TEMPORARY SV SO DUNGEONS DON'T BREAK !!
{
  Missions = { },
  FinishedMissions = { },
}

-----------------------------------------------
-- Level Specific Defaults
-----------------------------------------------

SV.beach =
{
	Cutscene = true
}

SV.beach_cave =
{
	FailedDungeon = false,
	FailedBoss = false,
	Tutorial = 0
}

----------------------------------------------
