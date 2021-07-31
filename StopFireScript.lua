local box=script.parent
local point=10


local Players=game:GetService("Players")

local function stopFire()
	
	for fireSize=12,0,-1 do
		box.Fire.size=fireSize
	end
	
	wait(2)
	box:Destroy()
end

local function partTouched(otherPart)
	local player=game.Players:GetPlayerFromCharacter(otherPart.Parent)
	
	if player then
		stopFire()
		local playerStats=player:WaitForChild('leaderstats') --플레이어의 점수판을 playerStats 변수로 지정
		local playerPoint=playerStats:WaitForChild('Point') --플레이어의 포인트를 playerPoint 변수로 지정

		playerPoint.Value=playerPoint.Value+point
	end
end

box.Touched:Connect(partTouched)
