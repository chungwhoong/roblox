local time=game.Lighting
local timeVal=0

local streetLight=script.parent

local spotLight=streetLight.Light.SpotLight

while true do
	time.ClockTime=timeVal
	print(timeVal)
	wait(1)
	timeVal=timeVal+1
	
	if timeVal==25 then
		timeVal=0
	end
	
	if timeVal>17 or timeVal<6 then
		spotLight.Enabled=true
	else
		spotLight.Enabled=false
	end
end
