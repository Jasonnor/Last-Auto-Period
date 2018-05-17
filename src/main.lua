require("utility")
require("scenes")
init("0", 0)
--UIreturn, UIresults = showUI("ui.json")
if UIreturn == 0 then
	sysLog("Exit")
	do return end
end
if UIresults == nil then
   UIresults = { ["helper"] = '0' }
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
	x, y = findColor({33, 150, 689, 194}, 
		"0|0|0x3a3c2d,111|-1|0x3f3b31,34|4|0x474336,308|10|0x4e4830,363|9|0x4e482f,429|1|0x4e4931,493|-1|0x4e4a32,152|-3|0xe6e5e4,151|11|0x3f3c35,165|13|0xc7c7c4,166|8|0xffffff,167|-3|0x3a372e,177|6|0x807e79,183|2|0xcececb,189|-4|0x36392b,188|12|0xb8b7b4,216|4|0xffffff,216|-6|0xd3d4d0,237|-2|0x8c8b7f,230|14|0x353929",
		85, 0, 0, 0)
	if x > -1 then
		helperSelect(UIresults["helper"])
	end
	-- Battle Result Detect
	x, y = findColor({67, 215, 415, 408}, 
		"0|0|0xd8c647,31|1|0xbfac3f,73|4|0xe4cb40,88|11|0xf4cc2e,105|11|0xe0bb2c,158|69|0xf9e044,215|40|0xffffff,322|76|0xfad330,83|164|0xfce244,12|166|0xd0b436,98|176|0xf9c51f,107|160|0xa49239,178|63|0xfdf158",
		90, 0, 0, 0)
	if x > -1 then
		battleResult()
	end
	-- Battle Detect
	x, y = findColor({3, 3, 685, 39}, 
		"0|0|0x00f7f9,19|12|0xffffff,59|12|0x1d3d38,86|7|0x0099a7,130|10|0xd7d5d2,157|10|0x928b83,173|8|0xffffff,317|12|0xffc336,321|4|0xbf5320,509|6|0xcf6130,526|13|0xf59d59,615|7|0xfff4e3,619|21|0xf699aa,315|16|0x83551c,514|17|0xe2793d,614|-2|0xffffff",
		90, 0, 0, 0)
	if x > -1 then
		battle()
	end
	-- Event Detect
	x, y = findColor({29, 135, 697, 320}, 
		"0|0|0xb39d55,110|-2|0xfb7500,228|-2|0x556688,377|-2|0xffffff,516|5|0x43658e,518|-126|0x452423,297|-122|0x856f6d,79|-122|0x482d26,-68|-119|0x232221,500|-27|0xfff8a0,369|-8|0xffffff,134|-7|0x444455",
		85, 0, 0, 0)
	if x > -1 then
		event()
	end
	-- Skip Detect
	x, y = findColor({576, 16, 700, 79}, 
"0|0|0x111111,5|13|0xffffff,6|20|0x111111,27|20|0xffffff,30|-12|0x111111,44|-13|0x111111,43|16|0x5e5e5e,61|37|0x111111,87|27|0x5b5b5b,96|21|0xffffff,107|5|0x111111,99|0|0x111111,112|-17|0x111111,63|-14|0x111111,60|13|0xffffff,97|14|0xffffff",
85, 0, 0, 0)
	if x > -1 then
		sysLog("Skip Story")
		tap(x, y)
	end
end
