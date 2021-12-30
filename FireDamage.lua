trash=script.Parent

local function fireDamage(otherPart)
	local partParent=otherPart.Parent  
	local humanoid=partParent:FindFirstChildWhichIsA('Humanoid') 
	if humanoid and trash.Fire.Enabled==true then  
		humanoid.Health=humanoid.Health-5
	end	
end

trash.Touched:Connect(fireDamage)
