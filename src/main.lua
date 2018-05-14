require("utility")
require("scenes")
init("0", 0);
sysLog("Script start ...")
flag = appIsRunning("jp.co.happyelements.mirror");
if flag == 0 then
	sysLog("Open Last Period ...");
	runApp("jp.co.happyelements.mirror")
end
-- Touch Screen
x, y = findColor({182, 1024, 529, 1087}, 
	"0|0|0xeef2f9,-294|-102|0xc59861,19|1|0x4d3e31,40|-1|0x9c99a7",
	90, 1, 1, 1)
if x > -1 then
	tap(x, y)
else
	sysLog("Game Already Started");
end
-- Game
while true do
	ramdomSleep(1000)
	-- Helper Detect
	x, y = findColor({157, 109, 451, 195}, 
		"0|0|0x4a4638,40|-4|0x3f3728,97|-1|0xaeb0ab,138|3|0x34443c,-62|-48|0xaa8855,7|-48|0x54401e,80|-48|0xc5a55d,98|-43|0x8e7044",
		90, 0, 0, 0)
	if x > -1 then
		helperSelect()
	end
	-- Battle Detect
	x, y = findColor({3, 3, 685, 39}, 
		"0|0|0x00f7f9,19|12|0xffffff,59|12|0x1d3d38,86|7|0x0099a7,130|10|0xd7d5d2,157|10|0x928b83,173|8|0xffffff,317|12|0xffc336,321|4|0xbf5320,509|6|0xcf6130,526|13|0xf59d59,615|7|0xfff4e3,619|21|0xf699aa,315|16|0x83551c,514|17|0xe2793d,614|-2|0xffffff",
		90, 0, 0, 0)
	if x > -1 then
		battle()
	end
end
