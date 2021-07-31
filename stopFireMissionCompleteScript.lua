local treasure=script.parent
local clickDetector=treasure.ClickDetector

local function missionComplete()
	print("미션성공")
end

clickDetector.MouseClick:Connect(missionComplete)
