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

function ExplorerEssentials.SpawnPartner()
	COMMON.RespawnStarterPartner()
	
	local partner = CH('PARTNER')
	local player = CH('PLAYER')

	GROUND:TeleportTo(partner, player.Position.X, player.Position.Y, player.Direction)

	AI:SetCharacterAI(partner, "origin.ai.ground_partner", CH('PLAYER'), partner.Position)
	partner.CollisionDisabled = true
	partner.InteractOrder = 1
end

function ExplorerEssentials.SetPlayerFromData(data)
	local character = RogueEssence.Dungeon.CharData()
  	character.BaseForm = RogueEssence.Dungeon.MonsterID(data.Species, data.Form, data.Skin, LUA_ENGINE:LuaCast(data.Gender, Gender))
  	GROUND:SetPlayer(character)
end

function ExplorerEssentials.EndDungeonWithFanfare(result, zoneId, structureId, mapId, entryId)
	GAME:EndDungeonRun(result, zoneId, structureId, mapId, entryId, true, true)
	GAME:EnterZone(zoneId, structureId, mapId, entryId)
end

function ExplorerEssentials.SetProgress(chapter, section) -- Utility function for testing stuff
	SV.Progression.Chapter = chapter
	SV.Progression.SectionFlag = section
end

function ExplorerEssentials.SpawnBubbles(animID)
	if animID == 1 then
	
	elseif animID == 2 then
	
	elseif animID == 3 then
	
	elseif animID == 4 then
	
	else
		return error(tostring(animID).." is not a valid ID!")
	end
end
