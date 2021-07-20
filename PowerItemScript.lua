local powerItem = script.Parent

local isTouched= false

local function onTouch(otherPart)
	if not isTouched then
		isTouched=true
		local character = otherPart.Parent
		local humanoid = character:FindFirstChildWhichIsA ("Humanoid")
			
		if humanoid then
			print("Player gets super power")			
			humanoid.WalkSpeed = 50
			humanoid.JumpHeight= 50
			
			powerItem.CanCollide=false
			powerItem.Transparency=1
		
			wait(5)
			humanoid.WalkSpeed = 16 
			humanoid.JumpHeight=10
			
			powerItem.CanCollide=true
			powerItem.Transparency=0			
		end
		
		isTouched=false
		
	end	
end

powerItem.Touched:Connect(onTouch)
