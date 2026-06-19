require 'eos.common'
CharacterActions = {}

-- mostly just general cutscene actions from explorers that aren't present in base pmdo 

--- Makes a character shake their head, equivalent to CORO_HEAD_SHAKE_FUNC_SERIES in SkyTemple
--- @param char any Character to be used
--- @param dir Direction Direction the character should be facing
function CharacterActions.ShakeHead(char, dir)
	if dir == nil then dir = char.Direction end
	
	local directions = {Direction.Up, Direction.UpRight, Direction.Right, Direction.DownRight, Direction.Down, Direction.DownLeft, Direction.Left, Direction.UpLeft}
	local dirNum = 0
	
	--find list placement of dir
	for i = 1, #directions do
		if directions[i] == dir then
			dirNum = i
			break
		end
	end
	
	--check if dir was a valid direction
	if dirNum == 0 then
		return error(tostring(dir).." is not a valid direction!")
	end
	
	--list values for right and left
	local dirRight
	local dirLeft 
	
	if (dirNum + 1) > #directions then
		dirRight = 1
	else
		dirRight = dirNum + 1
	end
	
	if (dirNum - 1) < 1 then
		dirLeft = #directions
	else
		dirLeft = dirNum - 1
	end
	
	--r
	GROUND:EntTurn(char, directions[dirRight])
	GAME:WaitFrames(4)
	--m
	GROUND:EntTurn(char, directions[dirNum])
	GAME:WaitFrames(2)
	--l
	GROUND:EntTurn(char, directions[dirLeft])
	GAME:WaitFrames(4)
	--m
	GROUND:EntTurn(char, directions[dirNum])
	GAME:WaitFrames(2)
	
	--r
	GROUND:EntTurn(char, directions[dirRight])
	GAME:WaitFrames(4)
	--m
	GROUND:EntTurn(char, directions[dirNum])
	GAME:WaitFrames(2)
	--l
	GROUND:EntTurn(char, directions[dirLeft])
	GAME:WaitFrames(4)
	--m
	GROUND:EntTurn(char, directions[dirNum])
	GAME:WaitFrames(2)
	
end

--- Makes a character jump in surprise, equivalent to CORO_JUMP_SURPRISE_FUNC_SERIES in SkyTemple
--- @param char any Character to be used
--- @param dir Direction Direction the character should be facing
function CharacterActions.ScaredJump(char, dir)
	if dir == nil then dir = char.Direction end

	local directions = {Direction.Up, Direction.UpRight, Direction.Right, Direction.DownRight, Direction.Down, Direction.DownLeft, Direction.Left, Direction.UpLeft}
	local dirNum = 0
	
	--find list placement of dir
	for i = 1, #directions do
		if directions[i] == dir then
			dirNum = i
			break
		end
	end
	
	--check if dir was a valid direction
	if dirNum == 0 then
		return error(tostring(dir).." is not a valid direction!")
	end
	
	--find jump offset
	local xoff = 0
	local yoff = 0
	
	--up?
	if dirNum <= 2 or dirNum == 8 then
		yoff = 2
	end
	
	--down?
	if dirNum >= 4 and dirNum <= 6 then
		yoff = -2
	end
	
	--left?
	if dirNum >= 6 and dirNum <= 8 then
		xoff = 2
	end
	
	--right?
	if dirNum >= 2 and dirNum <= 4 then
		xoff = -2
	end

	--actual animation
	local xpos = char.Position.X
	local ypos = char.Position.Y
	
	GROUND:AnimateToPosition(char, "Hurt", dir, (xpos + xoff), (ypos + yoff), 1, 2, 10)
	GROUND:AnimateToPosition(char, "Hurt", dir, xpos, ypos, 1, 2, 0)
end

--- Makes a character hop once, equivalent to CORO_JUMP_HAPPY_FUNC_SERIES in SkyTemple
--- @param char any Character to be used
--- @param dir Direction Direction the character should be facing
function CharacterActions.HopOnce(char, dir)
	if dir == nil then dir = char.Direction end

	GROUND:AnimateToPosition(char, "None", dir, char.Position.X, char.Position.Y, 1, 2, 10)
	GROUND:AnimateToPosition(char, "None", dir, char.Position.X, char.Position.Y, 1, 2, 0)
end

--- Makes a character hop twice, equivalent to CORO_JUMP_ANGRY_FUNC_SERIES in SkyTemple
--- @param char any Character to be used
--- @param dir Direction Direction the character should be facing
function CharacterActions.HopTwice(char, dir)
	if dir == nil then dir = char.Direction end

	GROUND:AnimateToPosition(char, "None", dir, char.Position.X, char.Position.Y, 1, 2, 10)
	GROUND:AnimateToPosition(char, "None", dir, char.Position.X, char.Position.Y, 1, 2, 0)
	GROUND:AnimateToPosition(char, "None", dir, char.Position.X, char.Position.Y, 1, 2, 10)
	GROUND:AnimateToPosition(char, "None", dir, char.Position.X, char.Position.Y, 1, 2, 0)
end

--- Makes a character look around in random directions
--- @param char any Character to be used
function CharacterActions.LookAround(char)
	local directions = {Direction.Up, Direction.UpRight, Direction.Right, Direction.DownRight, Direction.Down, Direction.DownLeft, Direction.Left, Direction.UpLeft}
	
	for i = 1, 5 do
		GROUND:CharAnimateTurnTo(char, directions[math.random(1, #directions)], 4)
		GAME:WaitFrames(15)
	end
end

--- Semi-transparent "Dizzy" effect, used in places like the Temporal Scream cutscenes
function CharacterActions.DizzyFade()
	local bg_anim = RogueEssence.Content.BGAnimData("Black", 1, -1, -1, 128, Dir8.None)
	
	local emitter = RogueEssence.Content.FiniteOverlayEmitter()
	emitter.Anim = bg_anim
	emitter.Layer = DrawLayer.Top
	
    emitter.TotalTime = 10
	emitter.FadeIn = 10
    emitter.FadeOut = 10
	
	emitter.RepeatX = true
	emitter.RepeatY = true
	
	emitter.Color = Color.White
	
	GROUND:PlayVFX(emitter, GAME:GetCameraCenter().X, GAME:GetCameraCenter().Y)
	GAME:WaitFrames(30) -- wait for as long as the effect lasts
end

--- Used when a character (usually the Hero Pokemon) is "Explaining" something, equivalent to CORO_EXPLANATION_FUNC_SERIES in SkyTemple
--- @param char any Character to be used
function CharacterActions.Explain(char)
	GROUND:CharSetAnim(char, "Walk", true)
	GAME:WaitFrames(45)
	GROUND:CharEndAnim(char)
end