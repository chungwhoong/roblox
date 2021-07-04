killFloor=script.Parent --이 스크립트의 부모인 KillFloor 지정

local function killPlayer(otherPart)
	local partParent=otherPart.Parent  --killFloor와 접촉한 부분의 부모 지정(발이 닿으면 발의 주인인 캐릭터, 즉 플레이어를 지정 
	local humanoid=partParent:FindFirstChildWhichIsA('Humanoid') --접촉한 부모가 사람이면 참, 아니면 거짓으로 지정
	if humanoid then   --만약 사람이면 사람의 체력이 0으로 변경
		humanoid.Health=0
	end	
end

killFloor.Touched:Connect(killPlayer) --killFloor에 닿으면 killPlayer()함수 작동
