local platform=script.parent
local blackCarWall=game.Workspace.CarWall
local Players=game:GetService("Players")

local carPrice=30

local wall1=CarWall.Wall1
local wall2=CarWall.Wall2
local wall3=CarWall.Wall3
local wall4=CarWall.Wall4

local wallArray={wall1, wall2, wall3, wall4}

local function destroyWall()
	for i=1, #wallArray do
		wallArray[i].CanCollide=false
		wallArray[i].Transparency=1
		wait(2)
	end
end

local function buyCar(player)
	local playerStats=player:WaitForChild('leaderstats') --플레이어의 점수판을 playerStats 변수로 지정
	local playerPoint=playerStats:WaitForChild('Point') --플레이어의 포인트를 playerPoint 변수로 지정
	
	if playerPoint.Value>=carPrice then
		playerPoint.Value=playerPoint.Value-carPrice
		destroyWall()
	end
end

local function partTouched(otherPart)
	local player=game.Players:GetPlayerFromCharacter(otherPart.Parent) --접촉한 부위로부터 해당 플레이어를 찾아내어 player 변수로 지정

	if player then   --만약 플레이어라면
		buyCar(player)  -- 함수 실행
	end
end

platform.Touched:Connect(partTouched)
