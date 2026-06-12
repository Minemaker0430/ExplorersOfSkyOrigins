require 'eos.common'
ExplorerEssentials = {}

-- hey hi mocha here
--
-- these are mostly just general functions for specific explorers things, they're not really meant to be used
-- elsewhere but if you want to try and use them for yourself then you can i suppose
--
-- i made this so i wouldn't pull my hair out trying to do everything manually for specific things
-- like special episode team members and stuff like the cutscene bubbles
--
-- so yea that's it bye

function ExplorerEssentials.SpawnPartner() -- SHOULD ONLY BE USED ON GROUND MAPS WHEN THE PLAYER IS ACTIONABLE OTHERWISE CUTSCENES WILL BREAK!!
	COMMON.RespawnStarterPartner()
	
	local partner = CH('PARTNER')
	local player = CH('PLAYER')

	GROUND:TeleportTo(partner, player.Position.X, player.Position.Y, player.Direction)

	AI:SetCharacterAI(partner, "origin.ai.ground_partner", CH('PLAYER'), partner.Position)
	partner.CollisionDisabled = true
	partner.InteractOrder = 1
end

function ExplorerEssentials.GetFormattedMoney(value)
	local e = math.log(value, 10) -- get exponent
	if e < 3 then
		return "[color=#00FF00]\u{E024}" .. value .. "[/color]\u{E023}"
	end

	local ret
	while e >= 0 do
		ret = ret .. tostring(value)[e]
		if e % 3 == 0 then
			ret = ret .. ','
		end

		e = e - 1
	end

	return "[color=#00FF00]\u{E024}" .. ret .. "[/color]\u{E023}"
end

function ExplorerEssentials.SetPlayerFromData(data)
	local character = RogueEssence.Dungeon.CharData()
  	character.BaseForm = RogueEssence.Dungeon.MonsterID(data.Species, data.Form, data.Skin, LUA_ENGINE:LuaCast(data.Gender, Gender))
  	GROUND:SetPlayer(character)
end

function ExplorerEssentials.EndDungeonWithFanfare(result, zoneId, structureId, mapId, entryId) -- End a dungeon with fanfare, usually for job/general completions
	GAME:EndDungeonRun(result, zoneId, structureId, mapId, entryId, true, true)
	GAME:EnterZone(zoneId, structureId, mapId, entryId)
end

function ExplorerEssentials.EndStoryDungeon(result, zoneId, structureId, mapId, entryId) -- End a dungeon without fanfare, usually used for story events
	GAME:EndDungeonRun(result, zoneId, structureId, mapId, entryId, false, true)
	GAME:EnterZone(zoneId, structureId, mapId, entryId)
end

function ExplorerEssentials.SetProgress(chapter, section) -- Utility function for testing stuff
	SV.Progression.Chapter = chapter
	SV.Progression.SectionFlag = section
end

function ExplorerEssentials.SetSpeakerHero()
	if SV.General.Starter == nil then
		SV.General.Starter = GAME:GetPlayerPartyMember(0)
		GAME:WaitFrames(1)
	end 
	
	UI:SetSpeaker('', false, SV.General.Starter.CurrentForm.Species, SV.General.Starter.CurrentForm.Form, SV.General.Starter.CurrentForm.Skin, SV.General.Starter.CurrentForm.Gender)
end

function ExplorerEssentials.SetSpeakerUnknown(char)
	if char ~= nil then
		UI:SetSpeaker('\u{E040}', true, char.CurrentForm.Species, char.CurrentForm.Form, char.CurrentForm.Skin, char.CurrentForm.Gender)
	else
		UI:SetSpeaker('\u{E040}', true)
	end
end

function ExplorerEssentials.AutosaveWithNotification()
	GAME:GroundSave()
	UI:TextPopUp(STRINGS:FormatKey("GAME_AUTOSAVE"), 120, 248, 220, 100, 24, false, true)
end