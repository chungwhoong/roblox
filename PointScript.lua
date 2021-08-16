local box=script.Parent --이 스크립트의 부모인 Box 지정

local point=10 --정답일 때 부여할 포인트
local losePoint=-10 --오답일 때 부여할 포인트

local Players=game:GetService("Players") --현재 게임에 접속중인 플레이어들을 찾아 변수로 지정

--정답여부에 따라 포인트를 부여하는 함수
local function givePoint(player)
	local value=box.Value --Box객체의 boolValue인 Answer 지정

	local playerStats=player:WaitForChild('leaderstats') --플레이어의 점수판을 playerStats 변수로 지정
	local playerPoint=playerStats:WaitForChild('Point') --플레이어의 포인트를 playerPoint 변수로 지정

	if value.Value==true then --선택한 박스의 정답여부가 참이면
		playerPoint.Value=playerPoint.Value+point  --포인트 10점 획득
	else
		playerPoint.Value=playerPoint.Value+losePoint --포인트 10점 감소
	end

	box:Destroy() --점수 부여 후 박스는 사라짐
end

--게임 속 플레이어가 박스에 접촉했을 때 위의 givepoint함수를 실행하는 함수
local function partTouched(otherPart)
	local player=game.Players:GetPlayerFromCharacter(otherPart.Parent) --접촉한 부위로부터 해당 플레이어를 찾아내어 player 변수로 지정

	if player then   --만약 플레이어라면
		givePoint(player)  --givePoint 함수 실행
	end
end

box.Touched:Connect(partTouched) --박스가 접촉되었을 때 partTouched 함수 실행
