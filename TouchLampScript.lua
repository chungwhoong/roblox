local lamp=script.Parent 

local Players=game:GetService("Players") 

local function turnOnLight()
	for light=0, 60, 1 do
		lamp.PointLight.Range=light
		wait(0.2)
	end
end


local function partTouched(otherPart)
	local player=game.Players:GetPlayerFromCharacter(otherPart.Parent) 

	if player then  
		turnOnLight()(player)  
	end
end

lamp.Touched:Connect(partTouched) 
