local platform = script.Parent --이 스크립트의 플랫폼 지정

--플랫폼이 사라지는 함수 
local function disappear()
	platform.CanCollide = false --다른 물체가 그대로 통과
	platform.Transparency = 1  --투명도 100%
end

--플랫폼이 나타나는 함수 
local function appear()
	platform.CanCollide = true --다른 물체와 충돌
	platform.Transparency = 0  --투명도 0%
end

while true do  --무한반복 
	wait(3) --3초 기다리기
	disappear()  --사라지기
	wait(3)  --3초 기다리기
	appear()  --나타나기
end 
