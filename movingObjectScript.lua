local part=script.Parent

while true do
	for i=1,50 do
		part.Position=part.Position-Vector3.new(0,0,1)
		wait(0.01)
	end
	for i=1,50 do
		part.Position=part.Position+Vector3.new(0,0,1)
		wait(0.01)
	end
end
