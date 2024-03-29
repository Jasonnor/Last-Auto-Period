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
end
loadingCounter = 0
-- Game
while true do
	ramdomSleep(1000)
	-- Touch Screen
	x, y = findColor({0, 0, 719, 1279},
		"0|0|0x352514,7|11|0x352514,31|26|0xffffff,82|32|0x352414,145|33|0xbeb8b1,206|35|0xfefeff,259|33|0xfffffe,301|31|0xfffffe,-102|-89|0xffb9e4,367|-254|0x8c605c,342|-441|0x3bc8e8,141|-604|0xcf9f81,-26|-548|0xd097c2,-103|-586|0x8a7f84,193|-379|0x523a3e,337|-214|0xc4938a,-35|-853|0xf4c954,347|-877|0xfffde1,362|-649|0x563827,203|-878|0xd3be57",
		75, 0, 0, 0)
	if x > -1 then
		tap(x, y)
	end
	-- Loading Counter
	if loadingCounter > 30 then
		sysLog("Loading error, restart Last Period ...")
		closeApp("jp.co.happyelements.mirror")
		ramdomSleep(1000)
		runApp("jp.co.happyelements.mirror")
	end
	x, y = findColor({300, 560, 417, 671},
		"0|0|0x514030,6|0|0x312d21,26|0|0xf6f6f4,42|1|0x273441,66|3|0xffe900,61|25|0xd3a500,39|23|0xffffdf,19|23|0x010101,6|38|0xcac2ba,11|61|0xfea716,32|70|0xb9a779,60|71|0xb6934f,58|65|0xd70e0c,43|66|0x39b6ae,30|63|0xad448a,33|50|0xffff00,49|42|0xffff20,60|46|0xeee08d,43|64|0x9e3b41,34|69|0x201d12",
		90, 0, 0, 0)
	if x > -1 then
		loadingCounter = loadingCounter + 1
	else
		loadingCounter = 0
	end
	-- Connect Error
	x, y = findColor({72, 442, 644, 835},
		"0|0|0x049955,-64|-303|0xc3bfba,150|-334|0xaf8d5e,66|-170|0x2d1e0f,62|-300|0xffffdd,-234|-215|0x887f68,-150|-213|0x2d1e0f,-70|-218|0x2d1e0f,16|52|0x59452e,150|-219|0x2d1e0f,185|-219|0x756c56,100|-14|0xdd8800,-106|-17|0xdd8800,-58|-27|0x003322,-141|-166|0x392a1a,68|-20|0x003333,-7|-136|0x2d1e0f,-196|-164|0xbbb79b,273|43|0x837044,227|-216|0x7f755f",
		90, 0, 0, 0)
	if x > -1 then
		tap(x, y)
	end
	-- Restart Battle
	x, y = findColor({74, 441, 645, 836},
		"0|0|0x228255,-67|11|0x003322,29|17|0x004433,99|14|0xf6d43f,189|15|0x770000,225|19|0x970100,259|19|0xaa0000,315|15|0x6f0804,119|-304|0x503c28,193|-301|0xbb9966,117|-265|0x61564a,115|-251|0xf9f9f8,-66|-159|0x372919,84|-123|0x7f7660,300|-159|0x2d1e0f,200|-161|0x2e1f10,129|-160|0x928b72,371|17|0xf3bf2c,63|34|0x007d4a,404|79|0x856442",
		90, 0, 0, 0)
	if x > -1 then
		tap(x, y)
	end
	-- Helper Detect
	x, y = findColor({33, 150, 689, 194},
		"0|0|0x3a3c2d,111|-1|0x3f3b31,34|4|0x474336,308|10|0x4e4830,363|9|0x4e482f,429|1|0x4e4931,493|-1|0x4e4a32,152|-3|0xe6e5e4,151|11|0x3f3c35,165|13|0xc7c7c4,166|8|0xffffff,167|-3|0x3a372e,177|6|0x807e79,183|2|0xcececb,189|-4|0x36392b,188|12|0xb8b7b4,216|4|0xffffff,216|-6|0xd3d4d0,237|-2|0x8c8b7f,230|14|0x353929",
		80, 0, 0, 0)
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
		tap(x, y)
		ramdomSleep(1000)
	end
	x, y = findColor({20, 140, 727, 387},
		"0|0|0x253037,111|-7|0xe8e9ea,168|-5|0x2e3e3e,233|-5|0x2d3c3c,306|-4|0x2f3e3f,336|-5|0xd2d5d5,405|-5|0x263437,304|1|0xc1c5c5,203|9|0x2a383a,547|63|0xddbb55,530|138|0x674d22,537|178|0xddaa55,-97|77|0xddbb64,-102|160|0x554422,-109|145|0x3a3a33,258|1|0x626d6e,361|-6|0x273436",
		85, 0, 0, 0)
	if x > -1 then
		multiplay()
		ramdomSleep(1500)
	end
	x, y = findColor({13, 142, 714, 515},
		"0|0|0x253137,96|0|0x253137,238|5|0xfcfcfc,306|5|0xf5f6f6,385|5|0xc0c5c5,427|5|0x2b393a,521|5|0x263236,616|5|0x28383f,641|93|0x61bac0,513|99|0x336e86,257|100|0x60b5bc,60|99|0x3a7e92,58|243|0x2d658d,282|239|0xc1e5ed,521|252|0x2e6c98,202|-3|0xdfe0e1,229|8|0xc1c5c6,262|5|0xcdd1d1,347|3|0xeceded,402|3|0x9ca4a4",
		95, 0, 0, 0)
	if x > -1 then
		multiplay()
		ramdomSleep(1500)
	end
	-- Empty Room
	x, y = findColor({139, 578, 592, 812},
		"0|0|0x2a2011,-75|3|0x003333,56|9|0x004433,-197|-156|0xcecaad,-172|-155|0xfbfbd9,-123|-156|0xffffdd,-46|-149|0xffffdd,29|-149|0xffffdd,121|-149|0xffffdd,154|-160|0x706550,-44|-3|0x003325",
		90, 0, 0, 0)
	if x > -1 then
		sysLog("Empty Room")
		tap(x, y)
		ramdomSleep(1000)
	end
	-- Room
	x, y = findColor({209, 1150, 512, 1220},
		"0|0|0xfdeb86,16|14|0x226644,34|34|0x004433,86|53|0x22aa66,83|2|0x5e4610,97|19|0xe2e0de,112|25|0x392a1c,159|34|0x004433,187|46|0x007744,201|2|0x5e4610,216|18|0x004332,251|40|0x005533,261|45|0x1c3d1e",
		90, 0, 0, 0)
	if x > -1 then
		room()
	end
	-- Room disconnected
	x, y = findColor({140, 568, 588, 811},
		"0|0|0x004433,45|-1|0x004435,74|0|0xffffff,125|-4|0x004433,-81|-165|0x2d1e0f,-34|-165|0xffffdd,40|-167|0xe2e0c1,152|-161|0xd7d4b5,212|-160|0xffffdd,8|-292|0xd6d3d0,50|-294|0xffffdd,116|-287|0xd7d4d1,357|-252|0x534c2a",
		85, 0, 0, 0)
	if x > -1 then
		sysLog("Room Disconnected")
		tap(x, y)
		ramdomSleep(1000)
	end
	-- Multiplay Battle Detect
	x, y = findColor({3, 3, 701, 37},
		"0|0|0x002222,16|0|0xefedec,31|0|0x003737,45|2|0x50463a,64|2|0x1f2015,91|1|0x002222,307|-7|0xd8c049,319|-3|0x402211,508|-5|0xce562f,515|0|0xedb282,615|-4|0xffeedd,621|8|0xef99aa,148|-8|0xf3f3f2,171|-5|0xdfddda",
		85, 0, 0, 0)
	if x > -1 then
		multiplayBattle()
	end
	-- Skip Detect
	x, y = findColor({577, 10, 717, 79},
		"0|0|0x111111,56|-37|0x111111,-24|-18|0xf6f6f6,-23|-8|0x111111,-11|-7|0x434343,-6|-18|0x111111,2|-6|0x8d8d8d,24|0|0xb1b1b1,30|2|0x111111,74|-14|0x111111,68|-8|0xffffff,52|-2|0x111111,53|9|0x111111,61|6|0xffffff,23|2|0xffffff,3|-5|0x111111,18|-11|0x111111,35|-6|0xffffff,72|4|0x9e9e9e,35|-4|0xffffff",
		85, 0, 0, 0)
	if x > -1 then
		sysLog("Skip Story")
		tap(x, y)
	end
	-- Guild Battle Ability
	x, y = findColor({554, 1149, 708, 1275},
		"0|0|0x3b5049,5|-8|0xb0aca2,-21|-10|0x1e7bbc,-54|-5|0x2189c7,-62|2|0x269cd5,-24|8|0x2aace1,21|8|0x2aace1,44|-8|0x1f80c0,62|-33|0x0d3c8e,13|-51|0x221911,-13|-51|0x2c2211,-53|-51|0xc4c491,-68|-59|0xcca96c,-52|-60|0x47472e,-29|-60|0x221e11,-4|-60|0x222211,-6|2|0x742b18,-14|-10|0x493511,53|10|0x2cb2e5",
		85, 0, 1, 0)
	if x > -1 then
		sysLog("Guild Battle Ability")
		tap(x, y)
		ramdomSleep(500)
		tap(225, 765)
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
		battle('guild')
	end
	x, y = findColor({266, 930, 452, 984},
		"0|0|0xd1bc3f,2|10|0xe3ab36,4|17|0x976320,25|0|0x332411,34|15|0xe59c2f,52|-3|0x5d4634,72|14|0xe7a131,110|21|0x2e1f10,96|3|0x4e3c18,123|14|0x614318,136|15|0xe89e30",
		85, 0, 0, 0)
	if x > -1 then
		tap(x, y)
		ramdomSleep(200)
		tap(x, y)
	end
	-- PVP Detect
	x, y = findColor({8, 932, 708, 998},
		"0|0|0x332222,1|18|0x332222,10|-1|0x332222,32|-11|0x302018,53|-16|0x302119,70|-17|0x332222,83|-14|0x332222,42|-14|0xc11915,500|-18|0x332222,510|-6|0x332222,529|-14|0x332222,545|-12|0x5b9605,555|-12|0x64b303,571|-1|0x62a502,579|11|0x332222,592|14|0x332222,604|8|0x332222,614|13|0xfdfd97,-24|10|0xfcfc98",
		80, 0, 0, 0)
	if x > -1 then
		battle('pvp')
	end
	-- Event OK
	x, y = findColor({23, 850, 699, 1071},
		"0|0|0x52b777,82|26|0x282213,112|25|0xf8f7f7,154|25|0x004433,184|18|0x00332f,244|20|0xffdd40,233|55|0xffbb22,156|45|0x1ba363,35|36|0x006644,117|18|0xffffff",
		85, 0, 0, 0)
	if x > -1 then
		sysLog("Event OK")
		tap(x, y)
	end
end
