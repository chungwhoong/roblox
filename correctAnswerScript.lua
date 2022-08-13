local correctPlatform=script.Parent --이 스크립트의 부모인 fadingPlatform 지정
local Players=game:GetService("Players") --현재 게임에 접속중인 플레이어들을 찾아 변수로 지정
local isTouched=false --플랫폼이 터치되었는지를 확인하는 변수 설정
local gotPoint=false
local point=10

local function getPoint(player)
	local playerStats=player:WaitForChild('leaderstats') --플레이어의 점수판을 playerStats 변수로 지정
	local playerPoint=playerStats:WaitForChild('Points') --플레이어의 포인트를 playerPoint 변수로 지정
	playerPoint.Value=playerPoint.Value+point
end


local function fade()
		for count=1,10 do --1에서 10까지 반복
			correctPlatform.Transparency=count/10  --플랫폼의 투명도를 1/10, 2/10, 3/10, .....10/10 으로 변경(투명도가 1이면 완전 투명)
			wait(0.1) --0.1초씩 격차를 둔다.
		end
		correctPlatform.CanCollide=false --플랫폼의 충돌가능상태를 거짓으로 정한다.(플랫폼 위에 올라가도 마치 플랫폼이 없는 것처럼 떨어진다. 영혼처럼 만질 수 없는 상태)
		wait(3) --3초 기다린다.
		correctPlatform.CanCollide=true --다시 플랫폼의 충돌가능상태를 참으로 정한다. (이젠 다시 플랫폼 위에 올라갈 수 있다.)
		correctPlatform.Transparency=0 --다시 투명도를 0으로 변경하여 볼 수 있게 한다.	
end

local function partTouched(otherPart)
	local player=game.Players:GetPlayerFromCharacter(otherPart.Parent) --접촉한 부위로부터 해당 플레이어를 찾아내어 player 변수로 지정

	if player then   --만약 플레이어라면
		if not isTouched then
			isTouched=true
			getPoint(player)  --givePoint 함수 실행
			fade()
			isTouched=false
		end			
	end
end

correctPlatform.Touched:Connect(partTouched) --플랫폼 위에 올라가면 위의 fade함수를 실행한다.
