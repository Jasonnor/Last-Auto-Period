require("utility")
function helperSelect()
	sysLog("Helper Select");
	-- In Light?
	x, y = findColor({485, 215, 594, 272}, 
		"0|0|0xffee42,-30|-2|0x885511,38|-1|0x885511,-46|-25|0xbb9955,50|-21|0x9a6824,-45|29|0xbb9955,40|26|0xbb9955,42|18|0x885511",
		90, 0, 0, 0)
	if x <= -1 then
		-- Not in Light
		x, y = findColor({485, 215, 594, 272}, 
			"0|0|0x7f772a,-33|-14|0x442a08,34|-16|0x442a08,-37|21|0x442a08,40|28|0xbb9955,-7|19|0x452c0a",
			90, 0, 0, 0)
		if x > -1 then
			tap(x, y)
		end
	end
	i = 0
	repeat
		if i > 0 and i % 2 == 0 then
			-- Refresh
			x = 675
			y = 1238
			tap(x, y)
			ramdomSleep(1500)
		end
		drag(709, 331, 709, 1145)
		ramdomSleep(1000)
		-- Find Guest + MAX アレーティア
		x, y = findColor({13, 288, 186, 1192}, 
			"0|0|0xe675b5,-62|-38|0xffef67,-26|-37|0x593242,-3|-50|0x57516b,15|-53|0x453518,21|-53|0xfff167,35|-56|0x7d6d2a,-52|21|0x9c8b8d,-54|40|0xffc850,-35|47|0xb58c39,-20|42|0x4a2323,1|43|0xecb94a,12|42|0xffc850,20|43|0x84652a,26|19|0x3f3111,-1|14|0xffe3cc,-33|24|0x8f7676",
			90, 0, 0, 0)
		i = i + 1
	until x > -1
	tap(x, y)
	-- MissionStart
	repeat
		ramdomSleep(1000)
		x, y = findColor({218, 977, 498, 1042}, 
			"0|0|0x232313,-115|-20|0xf2d077,-101|-1|0x003322,-58|12|0xf4f4f3,-37|2|0x003333,35|33|0x266e4a,117|5|0x003733,144|-23|0x9e712d",
			90, 0, 0, 0)
	until x > -1
	tap(x, y)
end

function battle()
	sysLog("In Battle");
	while true do
		-- Attack
		repeat
			-- Use power up
			tap(56, 1022)
			-- Skill detect
			x, y = findColor({597, 1224, 709, 1264}, 
				"0|0|0xddbb88,14|-1|0xcfb67d,37|-2|0xccaa78,55|-1|0xc4a679,66|-1|0xc2aa89,62|10|0x5c594f,48|12|0x4a4a3c,39|11|0x3d3d2e,31|11|0xfeed96,16|11|0x3d312e,4|15|0x5b5547,-7|16|0xdfca9e",
				80, 0, 0, 0)
			if x > -1 then
				tap(664, 1188)
				mSleep(3496)
			else
				tap(363, 1139)
				mSleep(1658)
			end
			-- Attack detect
			x, y = findColor({171, 1061, 542, 1273}, 
				"0|0|0x332c1b,19|-1|0x3d2a1a,51|-1|0xa07d49,104|-1|0xb99755,171|0|0x332e20,209|6|0x333322,207|30|0xbb9958,102|27|0xb18c55,8|27|0xac834e",
				90, 0, 0, 0)
		until x <= -1
		-- Defense detect
		x, y = findColor({230, 1070, 486, 1254}, 
			"0|0|0xbf2222,114|9|0xee8989,229|24|0xdd2222,36|107|0xae8855,131|105|0xc9a968,225|108|0xb4ad9c,277|45|0xee3333,-47|34|0xdd2222",
			85, 0, 0, 0)
		if x > -1 then
			ramdomSleep(2000)
			tap(x, y)
		end
		-- Quest Clear detect
		x, y = findColor({116, 383, 583, 484}, 
			"0|0|0xf89900,-1|48|0xffff88,34|12|0xee7700,38|42|0xa25500,96|4|0xffaa00,131|34|0xffff44,186|3|0xffca25,216|53|0xffff77,287|6|0xffaa00,317|41|0xfff94f,387|22|0xee7700,381|54|0xffff77,389|55|0x995500,104|25|0x7b3c08,197|22|0xee7700",
			80, 0, 0, 0)
		if x > -1 then
			tap(x, y)
			break
		end
		mSleep(100)
	end
	-- Result
	repeat
		ramdomSleep(1000)
		x, y = findColor({67, 215, 415, 408}, 
			"0|0|0xd8c647,31|1|0xbfac3f,73|4|0xe4cb40,88|11|0xf4cc2e,105|11|0xe0bb2c,158|69|0xf9e044,215|40|0xffffff,322|76|0xfad330,83|164|0xfce244,12|166|0xd0b436,98|176|0xf9c51f,107|160|0xa49239,178|63|0xfdf158",
			90, 0, 0, 0)
	until x > -1
	for i = 1, 5, 1 do
		tap(x, y)
		ramdomSleep(500)
	end
	-- Add Friend?
	repeat
		ramdomSleep(1000)
		x, y = findColor({34, 435, 704, 857}, 
			"0|0|0x2d1e0f,-98|2|0x004333,69|2|0x003433,-106|-25|0x443300,105|4|0x004433,1|-344|0xa39c96,66|-344|0xfefefe,122|-341|0x8d847c,229|-340|0xffeecc,321|-337|0xe1dedc,237|1|0x880000,318|1|0x49150a,399|4|0x880000,467|4|0xffeecc,500|4|0xae9959",
			90, 0, 0, 0)
	until x > -1
	tap(x, y)
	-- OK
	repeat
		ramdomSleep(1000)
		x, y = findColor({71, 443, 645, 841}, 
			"0|0|0xe5e4e2,-83|-6|0x226644,50|-7|0x227753,-81|26|0x007144,39|29|0x118a55,-106|-18|0xdeb055,92|-16|0x33330c,-93|44|0xeca11c,89|41|0xccaf56,98|24|0xe39900",
			90, 0, 0, 0)
	until x > -1
	tap(x, y)
	-- OK2
	repeat
		ramdomSleep(1000)
		x, y = findColor({373, 1166, 691, 1258}, 
			"0|0|0x867f76,-107|-17|0x227752,93|1|0x004433,-82|18|0x058855,141|22|0xeeaa11,-135|-28|0xc49444,-137|31|0xfcb720,127|-28|0xa47c35,125|29|0x835107",
			90, 0, 0, 0)
	until x > -1
	tap(x, y)
end
