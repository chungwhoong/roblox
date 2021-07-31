local Chat = game:GetService("Chat")

local npc = script.Parent
local head = npc.Head
local clickDetector = npc.ClickDetector

-- 표시할 다이얼로그 목록을 저장
local dialogueArray= {"Hi!", "Today's a great day!", "Good bye!"}
local dialogueIndex = 1

-- NPC를 클릭할 때마다 새 다이얼로그를 표시
local function speak()
	local dialogue = dialogueArray[dialogueIndex]
	Chat:Chat(head, dialogue)

	-- 증분이 배열 마지막에 있을 경우 시작 값으로 다시 설정
	if dialogueIndex == #dialogueArray then
		dialogueIndex = 1
		-- 그렇지 않을 경우 증분에 1을 추가하여 배열에서 계속 증분
	else
		dialogueIndex = dialogueIndex + 1
	end
end

clickDetector.MouseClick:Connect(speak)
