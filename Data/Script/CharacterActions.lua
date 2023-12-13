require 'common'
CharacterActions = {}

-- mostly just general cutscene actions from explorers that aren't present in base pmdo 

function CharacterActions.ShakeHead(ent, dir)
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
	GROUND:EntTurn(ent, directions[dirRight])
	GAME:WaitFrames(4)
	--m
	GROUND:EntTurn(ent, directions[dirNum])
	GAME:WaitFrames(2)
	--l
	GROUND:EntTurn(ent, directions[dirLeft])
	GAME:WaitFrames(4)
	--m
	GROUND:EntTurn(ent, directions[dirNum])
	GAME:WaitFrames(2)
	
	--r
	GROUND:EntTurn(ent, directions[dirRight])
	GAME:WaitFrames(4)
	--m
	GROUND:EntTurn(ent, directions[dirNum])
	GAME:WaitFrames(2)
	--l
	GROUND:EntTurn(ent, directions[dirLeft])
	GAME:WaitFrames(4)
	--m
	GROUND:EntTurn(ent, directions[dirNum])
	GAME:WaitFrames(2)
	
end

function CharacterActions.ScaredJump(ent, dir)
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
	local xpos = ent.Position.X
	local ypos = ent.Position.Y
	
	GROUND:AnimateToPosition(ent, "Hurt", dir, (xpos + xoff), (ypos + yoff), 1, 2, 10)
	GROUND:AnimateToPosition(ent, "Hurt", dir, xpos, ypos, 1, 2, 0)
end

function CharacterActions.HopTwice(ent, dir)
	GROUND:AnimateToPosition(ent, "None", dir, ent.Position.X, ent.Position.Y, 1, 2, 10)
	GROUND:AnimateToPosition(ent, "None", dir, ent.Position.X, ent.Position.Y, 1, 2, 0)
	GROUND:AnimateToPosition(ent, "None", dir, ent.Position.X, ent.Position.Y, 1, 2, 10)
	GROUND:AnimateToPosition(ent, "None", dir, ent.Position.X, ent.Position.Y, 1, 2, 0)
end