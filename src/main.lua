require("utility")
require("scenes")
init("0", 0)
--UIreturn, UIresults = showUI("ui.json")
if UIreturn == 0 then
	sysLog("Exit")
	do return end
end
if UIresults == nil then
	UIresults = { ["helper"] = '0',
		  ["auto"] = false}
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
		battle(UIresults["auto"])
	end
	-- Multiplay Detect
	x, y = findColor({63, 316, 634, 432}, 
"0|0|0x06398f,3|21|0x0c238f,1|55|0xffd257,54|-4|0x999382,71|42|0xffffff,98|84|0x222211,136|8|0x3b2a19,221|48|0xcb9014,325|78|0x453212,307|-9|0x39a0df,402|37|0xffffe1,476|63|0xffffdd",
85, 0, 0, 0)
	if x > -1 then
		sysLog("Multiplay")
		tap(x, y)
		ramdomSleep(1000)
		multiplay()
	end
	-- Empty Room
		x, y = findColor({139, 578, 592, 812}, 
"0|0|0x2a2011,-75|3|0x003333,56|9|0x004433,-197|-156|0xcecaad,-172|-155|0xfbfbd9,-123|-156|0xffffdd,-46|-149|0xffffdd,29|-149|0xffffdd,121|-149|0xffffdd,154|-160|0x706550,-44|-3|0x003325",
85, 0, 0, 0)
	if x > -1 then
		sysLog("Empty Room")
		tap(x, y)
		ramdomSleep(1000)
		multiplay()
	end
	-- Skip Detect
	x, y = findColor({576, 16, 700, 79}, 
		"0|0|0x111111,5|13|0xffffff,6|20|0x111111,27|20|0xffffff,30|-12|0x111111,44|-13|0x111111,43|16|0x5e5e5e,61|37|0x111111,87|27|0x5b5b5b,96|21|0xffffff,107|5|0x111111,99|0|0x111111,112|-17|0x111111,63|-14|0x111111,60|13|0xffffff,97|14|0xffffff",
		85, 0, 0, 0)
	if x > -1 then
		sysLog("Skip Story")
		tap(x, y)
	end
	-- Guild Battle Detect
	x, y = findColor({212, 1195, 507, 1256}, 
		"0|0|0x0088aa,-2|19|0x00d2ee,-2|37|0x00eeff,50|11|0x7bf2ff,56|32|0x88faff,80|45|0xffffff,99|7|0x003366,132|24|0x99ffff,158|34|0xccffff,173|11|0x00598d,207|24|0x00ddee,217|29|0x00eeff",
		85, 0, 0, 0)
	if x > -1 then
		sysLog("Guild Battle")
		tap(x, y)
		repeat
			ramdomSleep(500)
			x, y = findColor({110, 713, 344, 813}, 
				"0|0|0x2d1e0f,-55|4|0x004433,39|4|0x004433,-52|-19|0x54b877,59|-19|0x54b876,-52|34|0xccaf56,83|28|0xc0840e,8|3|0xffffff,-81|8|0x004433,-90|-6|0x003322",
				85, 0, 0, 0)
		until x > -1
		tap(x, y)
	end
	x, y = findColor({266, 930, 452, 984}, 
		"0|0|0xd1bc3f,2|10|0xe3ab36,4|17|0x976320,25|0|0x332411,34|15|0xe59c2f,52|-3|0x5d4634,72|14|0xe7a131,110|21|0x2e1f10,96|3|0x4e3c18,123|14|0x614318,136|15|0xe89e30",
		85, 0, 0, 0)
	if x > -1 then
		tap(x, y)
	end
end
