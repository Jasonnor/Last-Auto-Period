require("utility")
require("scenes")
init("0", 0)
UIret, UIresults = showUI("ui.json")
if UIret == 0 then
	sysLog("Exit")
	do return end
end
sysLog("Script start ...")
flag = appIsRunning("jp.co.happyelements.mirror")
if flag == 0 then
	sysLog("Open Last Period ...")
	runApp("jp.co.happyelements.mirror")
	-- Touch Screen
	repeat
		ramdomSleep(1000)
		x, y = findColor({182, 1024, 529, 1087}, 
			"0|0|0xeef2f9,-294|-102|0xc59861,19|1|0x4d3e31,40|-1|0x9c99a7",
			90, 1, 1, 1)
	until x > -1
	tap(x, y)
end
-- Game
while true do
	ramdomSleep(1000)
	-- Helper Detect
	x, y = findColor({157, 109, 451, 195}, 
		"0|0|0x4a4638,40|-4|0x3f3728,97|-1|0xaeb0ab,138|3|0x34443c,-62|-48|0xaa8855,7|-48|0x54401e,80|-48|0xc5a55d,98|-43|0x8e7044",
		90, 0, 0, 0)
	if x > -1 then
		helperSelect(UIresults["helperGroup"])
	end
	-- Battle Detect
	x, y = findColor({3, 3, 685, 39}, 
		"0|0|0x00f7f9,19|12|0xffffff,59|12|0x1d3d38,86|7|0x0099a7,130|10|0xd7d5d2,157|10|0x928b83,173|8|0xffffff,317|12|0xffc336,321|4|0xbf5320,509|6|0xcf6130,526|13|0xf59d59,615|7|0xfff4e3,619|21|0xf699aa,315|16|0x83551c,514|17|0xe2793d,614|-2|0xffffff",
		90, 0, 0, 0)
	if x > -1 then
		battle()
	end
	-- Battle Result Detect
	x, y = findColor({67, 215, 415, 408}, 
		"0|0|0xd8c647,31|1|0xbfac3f,73|4|0xe4cb40,88|11|0xf4cc2e,105|11|0xe0bb2c,158|69|0xf9e044,215|40|0xffffff,322|76|0xfad330,83|164|0xfce244,12|166|0xd0b436,98|176|0xf9c51f,107|160|0xa49239,178|63|0xfdf158",
		90, 0, 0, 0)
	if x > -1 then
		battleResult()
	end
	-- Event Detect
	x, y = findColor({29, 135, 697, 320}, 
		"0|0|0xb39d55,110|-2|0xfb7500,228|-2|0x556688,377|-2|0xffffff,516|5|0x43658e,518|-126|0x452423,297|-122|0x856f6d,79|-122|0x482d26,-68|-119|0x232221,500|-27|0xfff8a0,369|-8|0xffffff,134|-7|0x444455",
		85, 0, 0, 0)
	if x > -1 then
		event()
	end
end
