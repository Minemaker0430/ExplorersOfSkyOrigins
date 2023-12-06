require 'common'
CharacterActions = {}

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

function CharacterActions.ScaredJump(ent)
	GROUND:CharSetAnim(ent, "Cringe", true)
	--GROUND:TeleportTo(ent, ent.Bounds.Center.X, ent.Bounds.Center.Y, Dir8.None, 2)
	GAME:WaitFrames(1)
	--GROUND:TeleportTo(ent, ent.Bounds.Center.X, ent.Bounds.Center.Y, Dir8.None, 10)
	GAME:WaitFrames(2)
	--GROUND:TeleportTo(ent, ent.Bounds.Center.X, ent.Bounds.Center.Y, Dir8.None, 2)
	GAME:WaitFrames(1)
	--GROUND:TeleportTo(ent, ent.Bounds.Center.X, ent.Bounds.Center.Y, Dir8.None, 0)
	GROUND:CharEndAnim(ent)
end