local SpinAmount = 0.1

while wait(0.001) do
	script.Parent.CFrame = script.Parent.CFrame * CFrame.Angles(0,SpinAmount,0) 
end
