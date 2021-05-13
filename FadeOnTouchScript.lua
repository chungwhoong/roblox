local fadingPlatform=script.Parent --이 스크립트의 부모인 fadingPlatform 지정

local isTouched=false --플랫폼이 터치되었는지를 확인하는 변수 설정

local function fade()
	if not isTouched then --플랫폼이 터치되지 않았다면
		isTouched=true    --플랫폼의 터치상태를 참으로 바꾼다.
		for count=1,10 do --1에서 10까지 반복
			fadingPlatform.Transparency=count/10  --플랫폼의 투명도를 1/10, 2/10, 3/10, .....10/10 으로 변경(투명도가 1이면 완전 투명)
			wait(0.1) --0.1초씩 격차를 둔다.
		end
		fadingPlatform.CanCollide=false --플랫폼의 충돌가능상태를 거짓으로 정한다.(플랫폼 위에 올라가도 마치 플랫폼이 없는 것처럼 떨어진다. 영혼처럼 만질 수 없는 상태)
		wait(3) --3초 기다린다.
		fadingPlatform.CanCollide=true --다시 플랫폼의 충돌가능상태를 참으로 정한다. (이젠 다시 플랫폼 위에 올라갈 수 있다.)
		fadingPlatform.Transparency=0 --다시 투명도를 0으로 변경하여 볼 수 있게 한다.
		isTouched=false --플랫폼이 터치되지 않는 상태로 바꾼다. 
	end	
end

fadingPlatform.Touched:Connect(fade) --플랫폼 위에 올라가면 위의 fade함수를 실행한다.
