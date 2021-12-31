fireSound=script.Parent

fireSound.Volume=0

fireTime=math.random(10,20)

wait(fireTime)

for volume=1,20 do
	fireSound.Volume=volume
	wait(0.2)	
end
