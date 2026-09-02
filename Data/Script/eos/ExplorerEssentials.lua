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
--- [MAKE SURE TO DISABLE THE PARTNER'S CHARACTER AI WHEN IN CUTSCENES]
function ExplorerEssentials.SpawnPartner()
	COMMON.RespawnStarterPartner()
	
	local partner = CH('PARTNER')
	local player = CH('PLAYER')

	GROUND:TeleportTo(partner, player.Position.X, player.Position.Y, player.Direction)

	AI:SetCharacterAI(partner, "origin.ai.ground_partner", CH('PLAYER'), partner.Position)
	partner.CollisionDisabled = true
	partner.InteractOrder = 1
end

--- Resets the Partner Pokemon's AI to start following the Player where it is, instead of where it spawned.
function ExplorerEssentials.EnablePartnerAI()
	local partner = CH('PARTNER')
	
	local pos = partner.Position
	local dir = partner.Direction

	GROUND:TeleportTo(partner, pos.X, pos.Y, dir)
	AI:SetCharacterAI(partner, "origin.ai.ground_partner", CH('PLAYER'), partner.Position)
	AI:EnableCharacterAI(CH('PARTNER'))
end

--- Utility function for formatting money amounts
--- @param value number Value to format
--- @return string
function ExplorerEssentials.GetFormattedMoney(value)
  	local ret = tostring(value):reverse():gsub("(%d%d%d)", "%1,")
	ret = ret:reverse():gsub("^,", "")

	return "[color=#00FF00]\u{E024} " .. ret .. "[color] \u{E023}"
end

--- Gets the plural form of an item
--- @param item string Item ID to use
--- @return string
function ExplorerEssentials.GetPluralItem(item)
	local disp = RogueEssence.Dungeon.InvItem(item):GetDisplayName()
	local ret = ""

	if string.sub(item, 1, 5) == "ammo_" then
		-- " (0)[color]" 11 chars
		ret = STRINGS:Format(
			RogueEssence.StringKey("ITEM_PLURAL_SUFFIX"):ToLocal(), 
			string.sub(disp, 1, #disp - 11) .. "[color]"
		)
	else
		-- "[color]" 7 chars
		ret = STRINGS:Format(
			RogueEssence.StringKey("ITEM_PLURAL_SUFFIX"):ToLocal(), 
			string.sub(disp, 1, #disp - 8) .. "[color]"
		)
	end

	return ret
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
	SV.General.Starter = SV.General.Starter or GAME:GetPlayerPartyMember(0)
	
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
	dir = dir or Direction.Down
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

	local endX = x
	local endY = y

	if relative and CH('PLAYER') ~= nil then
		endX = CH('PLAYER').Position.X + x
		endY = CH('PLAYER').Position.Y + y
	end

	-- borrowed this snippet from halcyon
	local distX = endX - startX
	local distY = endY - startY
	
	local distance = math.sqrt((distX * distX) + (distY * distY))
	local duration = 1
	if speed > 0 then
		duration = math.max(1, math.floor(distance / speed))
	end
	
	GAME:MoveCamera(x, y, duration, relative)
end

--- MoveCamera, but calculated to travel at a specific speed rather than a specified duration
--- @param offx number X Offset
--- @param offy number Y Offset
--- @param speed integer Speed in pixels/sec
--- @param relative boolean Whether the camera position is relative to the player or not
function ExplorerEssentials.MoveCameraAtSpeedOffset(offx, offy, speed, relative)
	if relative then
		ExplorerEssentials.MoveCameraAtSpeed(offx, offy, speed, relative)
		return
	end
	
	local startX = GAME:GetCameraCenter().X
	local startY = GAME:GetCameraCenter().Y

	local x = startX + offx
	local y = startY + offy

	ExplorerEssentials.MoveCameraAtSpeed(x, y, speed, relative)
end

--- MoveCamera, with calculated duration and easing for smooth panning
--- @param x number X Position
--- @param y number Y Position
--- @param speed integer Speed in pixels/sec
--- @param relative boolean Whether the camera position is relative to the player or not
--- @param easing number Easing value, defaults to 2.0
--- @param easeIn boolean Whether to use Ease In
--- @param easeOut boolean Whether to use Ease Out
function ExplorerEssentials.MoveCameraSmooth(x, y, speed, relative, easing, easeIn, easeOut)
	easing = (easing == nil or easing <= 0) and 2.0 or easing
	if easeIn == nil then
		easeIn = true
	end
	if easeOut == nil then
		easeOut = true
	end

	local startX = GAME:GetCameraCenter().X
	local startY = GAME:GetCameraCenter().Y

	local endX = x
	local endY = y

	if relative and CH('PLAYER') ~= nil then
		endX = CH('PLAYER').Position.X + x
		endY = CH('PLAYER').Position.Y + y
	end

	local deltaX = endX - startX
	local deltaY = endY - startY
	local totalDistance = math.sqrt((deltaX * deltaX) + (deltaY * deltaY))
	if totalDistance <= 0 or speed <= 0 then
		return
	end

	local function lerp(a, b, t)
		return a + (b - a) * t
	end

	local substeps = {}
	local function addSubstep(fraction, stepSpeed)
		local stepX = lerp(startX, endX, fraction)
		local stepY = lerp(startY, endY, fraction)
		table.insert(substeps, { X = stepX, Y = stepY, Speed = math.max(1, math.floor(stepSpeed)) })
	end

	if not easeIn and not easeOut then
		ExplorerEssentials.MoveCameraAtSpeed(endX, endY, speed, relative)
		return
	end

	if easeIn then
		for i = 10, 1, -1 do
			local fraction = (11 - i) / (22)
			local newSpd = speed / (i * easing)
			addSubstep(fraction, newSpd)
		end
	end

	addSubstep(0.5, speed)

	if easeOut then
		for i = 1, 10, 1 do
			local fraction = (11 + i) / (22)
			local newSpd = speed / (i * easing)
			addSubstep(fraction, newSpd)
		end
	else
		addSubstep(1.0, speed)
	end

	for _, step in ipairs(substeps) do
		print("x: " .. step.X)
		print("y: " .. step.Y)
		print("speed: " .. step.Speed)
		ExplorerEssentials.MoveCameraAtSpeed(step.X, step.Y, step.Speed, relative)
	end
end

--- MoveCamera, with calculated duration and easing for smooth panning
--- @param offx number X Offset
--- @param offy number Y Offset
--- @param speed integer Speed in pixels/sec
--- @param relative boolean Whether the camera position is relative to the player or not
--- @param easing number Easing value, defaults to 2.0
--- @param easeIn boolean Whether to use Ease In
--- @param easeOut boolean Whether to use Ease Out
function ExplorerEssentials.MoveCameraSmoothOffset(offx, offy, speed, relative, easing, easeIn, easeOut)
	easing = easing or 2.0
	easeIn = easeIn or true
	easeOut = easeOut or true

	if relative then
		ExplorerEssentials.MoveCameraSmooth(offx, offy, speed, relative, easing, easeIn, easeOut)
		return
	end

	local startX = GAME:GetCameraCenter().X
	local startY = GAME:GetCameraCenter().Y

	local x = startX + offx
	local y = startY + offy

	ExplorerEssentials.MoveCameraSmooth(x, y, speed, relative, easing, easeIn, easeOut)
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

--- MoveToPosition, but moves the character as if they were stepping backwards (NOTE: This will always animate them in the same direction they started at)
--- @param char any Character to move
--- @param dir Dir8 Direction to animate in
--- @param x number X Position
--- @param y number Y Position
--- @param speed integer Speed in pixels/sec
function ExplorerEssentials.MoveToPositionBackwards(char, dir, x, y, speed)
	GROUND:AnimateToPosition(char, "Walk", dir, x, y, 1, speed)
end

--- MoveToPositionOffset, but moves the character as if they were stepping backwards (NOTE: This will always animate them in the same direction they started at)
--- @param char any Character to move
--- @param dir Dir8 Direction to animate in
--- @param offx number X Position
--- @param offy number Y Position
--- @param speed integer Speed in pixels/sec
function ExplorerEssentials.MoveToPositionOffsetBackwards(char, dir, offx, offy, speed)
	ExplorerEssentials.MoveToPositionBackwards(char, dir, char.Position.X + offx, char.Position.Y + offy, speed)
end

function ExplorerEssentials.ResetDailyFlags()
	SV.DailyFlags.DidMorningCheers = false
	SV.DailyFlags.EndedDay = false
	SV.DailyFlags.SereneForestUnlocked = false
end