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

--- Spawns the Partner Pokemon and sets its AI to follow the Player
--- MAKE SURE TO DISABLE THE PARTNER'S CHARACTER AI WHEN IN CUTSCENES
function ExplorerEssentials.SpawnPartner()
	COMMON.RespawnStarterPartner()
	
	local partner = CH('PARTNER')
	local player = CH('PLAYER')

	GROUND:TeleportTo(partner, player.Position.X, player.Position.Y, player.Direction)

	AI:SetCharacterAI(partner, "origin.ai.ground_partner", CH('PLAYER'), partner.Position)
	partner.CollisionDisabled = true
	partner.InteractOrder = 1
end

--- Utility function for formatting money amounts
--- @param value number Value to format
--- @return string
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

--- Sets the Player to a specific Pokemon on a Ground Map
--- @param data RogueEssence.Dungeon.MonsterID Pokemon data
function ExplorerEssentials.SetPlayerFromData(data)
	local character = RogueEssence.Dungeon.CharData()
  	character.BaseForm = RogueEssence.Dungeon.MonsterID(data.Species, data.Form, data.Skin, LUA_ENGINE:LuaCast(data.Gender, Gender))
  	GROUND:SetPlayer(character)
end

--- End a dungeon with fanfare, usually for job/general completions
--- @param result RogueEssence.Data.GameProgress.ResultType Result type of the adventure
--- @param zoneId string Zone to travel to
--- @param structureId integer Structure ID to travel to. -1 indicates Ground Maps.
--- @param mapId integer ID of the Map/Ground Map to travel to
--- @param entryId integer ID of the Entrance to enter from when travelling
function ExplorerEssentials.EndDungeonWithFanfare(result, zoneId, structureId, mapId, entryId)
	GAME:EndDungeonRun(result, zoneId, structureId, mapId, entryId, true, true)
	GAME:EnterZone(zoneId, structureId, mapId, entryId)
end

--- End a dungeon without fanfare, usually used for story events
--- @param result RogueEssence.Data.GameProgress.ResultType Result type of the adventure
--- @param zoneId string Zone to travel to
--- @param structureId integer Structure ID to travel to. -1 indicates Ground Maps.
--- @param mapId integer ID of the Map/Ground Map to travel to
--- @param entryId integer ID of the Entrance to enter from when travelling
function ExplorerEssentials.EndStoryDungeon(result, zoneId, structureId, mapId, entryId)
	GAME:EndDungeonRun(result, zoneId, structureId, mapId, entryId, false, true)
	GAME:EnterZone(zoneId, structureId, mapId, entryId)
end

 --- Utility function for testing
 --- @param chapter integer
 --- @param section integer Section progress flag
function ExplorerEssentials.SetProgress(chapter, section)
	SV.Progression.Chapter = chapter
	SV.Progression.SectionFlag = section
end

--- Sets the speaker to the Hero Pokemon (your Starter)
function ExplorerEssentials.SetSpeakerHero()
	if SV.General.Starter == nil then
		SV.General.Starter = GAME:GetPlayerPartyMember(0)
		GAME:WaitFrames(1)
	end 
	
	UI:SetSpeaker('', false, SV.General.Starter.CurrentForm.Species, SV.General.Starter.CurrentForm.Form, SV.General.Starter.CurrentForm.Skin, SV.General.Starter.CurrentForm.Gender)
end

--- Sets the speaker as an unknown character
--- @param char any Character to be the speaker. Can be nil for offscreen characters.
function ExplorerEssentials.SetSpeakerUnknown(char)
	if char ~= nil then
		UI:SetSpeaker('\u{E040}', true, char.CurrentForm.Species, char.CurrentForm.Form, char.CurrentForm.Skin, char.CurrentForm.Gender)
	else
		UI:SetSpeaker('\u{E040}', true)
	end
end

--- Autosave function with a popup
function ExplorerEssentials.AutosaveWithNotification()
	GAME:GroundSave()
	UI:TextPopUp(STRINGS:FormatKey("GAME_AUTOSAVE"), 120, 248, 220, 100, 24, false, true)
end

--- Utility function for setting up character/object positions in cutscenes
--- @param char any Character to move.
--- @param x number X Position (in SkyTemple Units)
--- @param y number Y Position (in SkyTemple Units)
--- @param dir Direction Direction the character should be facing
function ExplorerEssentials.SetupInitialPos(char, x, y, dir)
	if dir == nil then dir = Direction.Down end
	GROUND:TeleportTo(char, math.floor(x * 8), math.floor(y * 8), dir) -- flooring may be unnecessary but i'm doing it anyways
end

--- Utility function for setting up initial camera position in cutscenes
--- @param x number X Position (in SkyTemple Units)
--- @param y number Y Position (in SkyTemple Units)
function ExplorerEssentials.SetupCameraPos(x, y)
	GAME:MoveCamera(math.floor(x * 8), math.floor(y * 8), 1, false) -- flooring may be unnecessary but i'm doing it anyways
end

--- MoveCamera, but calculated to travel at a specific speed rather than a specified duration
--- @param x number X Position
--- @param y number Y Position
--- @param speed integer Speed in pixels/sec
--- @param relative boolean Whether the camera position is relative to the player or not
function ExplorerEssentials.MoveCameraAtSpeed(x, y, speed, relative)
	local startX = GAME:GetCameraCenter().X
	local startY = GAME:GetCameraCenter().Y

	-- borrowed this snippet from halcyon
	local distX = startX - x
	local distY = startY - y
	
	local distance = math.sqrt((distX * distX) + (distY * distY))
	
	GAME:MoveCamera(x, y, math.floor(distance / speed), relative)
end

--- MoveToPosition, but using an offset instead of an exact position
--- @param char any Character to move
--- @param offx number X Position Offset
--- @param offy number Y Position Offset
--- @param running boolean Whether the character should use a running animation
--- @param speed integer Speed in pixels/sec
function ExplorerEssentials.MoveToPositionOffset(char, offx, offy, running, speed)
	GROUND:MoveToPosition(char, char.Position.X + offx, char.Position.Y + offy, running, speed)
end