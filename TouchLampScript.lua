local lamp=script.Parent 

local Players=game:GetService("Players") 

local function turnOnLight()
	for light=0, 60, 1 do
		lamp.PointLight.Range=light
		wait(0.2)
	end
end


lamp.Touched:Connect(turnOnLight) 
