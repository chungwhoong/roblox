trashTop=script.Parent

local function fireDamage(otherPart)
	local partParent=otherPart.Parent  
	local humanoid=partParent:FindFirstChildWhichIsA('Humanoid') 
	if humanoid and trashTop.Fire.Enabled==true then  
		humanoid.Health=humanoid.Health-5
	end	
end

trashTop.Touched:Connect(fireDamage)
