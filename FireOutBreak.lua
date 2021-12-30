fire=script.Parent

fire.Enabled=false

fireTime=math.random(10,20)

wait(fireTime)

fire.Enabled=true

for size=1,50 do
	fire.Size=size
	wait(0.2)	
end
