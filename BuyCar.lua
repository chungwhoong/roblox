local platform=script.parent
local blackCarWall=game.Workspace.BlackCarWall
local Players=game:GetService("Players")

local wall1=blackCarWall.Wall1
local wall2=blackCarWall.Wall2
local wall3=blackCarWall.Wall3
local wall4=blackCarWall.Wall4

local wallArray={wall1, wall2, wall3, wall4}

local function destroyWall()
	for i=1, #wallArray do
		wallArray[i].CanCollide=false
		wallArray[i].Transparency=1
		wait(2)
	end
end

local function partTouched(otherPart)
	local player=game.Players:GetPlayerFromCharacter(otherPart.Parent)

	if player then
		local playerStats=player:WaitForChild('leaderstats') 
		local point=playerStats:WaitForChild('Point')		

		if point.value>=0 then
			destroyWall()
			point.value=point.value-30
		end
	end
end

platform.Touched:Connect(partTouched)
