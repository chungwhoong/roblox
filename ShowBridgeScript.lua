local button=script.parent

local Players=game:GetService("Players")

local function showBridge()
	game.Workspace.Bridge.CanCollide=true
	game.Workspace.Bridge.Transparency=0
end

local function partTouched(otherPart)
	local player=game.Players:GetPlayerFromCharacter(otherPart.Parent)

	if player then
		local playerStats=player:WaitForChild('leaderstats') 
		local remainedFire=playerStats:WaitForChild('Fire')		
		
		if remainedFire.value==0 then
			showBridge()
		end
	end
end

button.Touched:Connect(partTouched)
