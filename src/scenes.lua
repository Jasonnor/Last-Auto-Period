require("utility")
function helperSelect(helper)
	sysLog("Helper Select")
	-- Find 20pt Friend
	if helper == '0' then
		ramdomSleep(1000)
		x, y = findColor({399, 287, 681, 1207},
			"0|0|0x6ee197,19|6|0x22ee88,36|-3|0x184c2c,47|3|0x165b3e,57|-3|0xcbffaa,63|-1|0xa4fea9,82|-3|0xffee22,86|9|0xffd422,104|3|0x221100,118|0|0xffff55,139|5|0xeeaa00,151|7|0x331b00,168|1|0xedd33b,180|10|0xffeb22",
			80, 0, 0, 0)
		if x > -1 then
			tap(x, y)
		else
			drag(710, 330, 710, 800)
			ramdomSleep(1000)
			x, y = findColor({399, 287, 681, 1207},
				"0|0|0x6ee197,19|6|0x22ee88,36|-3|0x184c2c,47|3|0x165b3e,57|-3|0xcbffaa,63|-1|0xa4fea9,82|-3|0xffee22,86|9|0xffd422,104|3|0x221100,118|0|0xffff55,139|5|0xeeaa00,151|7|0x331b00,168|1|0xedd33b,180|10|0xffeb22",
				80, 0, 0, 0)
			if x > -1 then
				tap(x, y)
			else
				drag(710, 800, 710, 330)
				ramdomSleep(500)
				helper = '1'
			end
		end
	end
	if helper == '1' then
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
				tap(675, 1238)
				ramdomSleep(1500)
			end
			if i % 2 == 0 then
				drag(709, 331, 709, 1145)
			end
			ramdomSleep(1000)
			-- Find Guest + MAX アレーティア
			x, y = findColor({13, 288, 186, 1192},
				"0|0|0xe675b5,-62|-38|0xffef67,-26|-37|0x593242,-3|-50|0x57516b,15|-53|0x453518,21|-53|0xfff167,35|-56|0x7d6d2a,-52|21|0x9c8b8d,-54|40|0xffc850,-35|47|0xb58c39,-20|42|0x4a2323,1|43|0xecb94a,12|42|0xffc850,20|43|0x84652a,26|19|0x3f3111,-1|14|0xffe3cc,-33|24|0x8f7676",
				90, 0, 0, 0)
			-- Find Guest + MAX Monokuma
			--x, y = findColor({13, 288, 186, 1192},
			--	"0|0|0xffe1d7,-25|6|0xddc1c0,-30|-5|0x4c4455,-31|-23|0x868182,-37|-43|0xd5ae37,-53|-38|0xede648,-14|34|0x422f16,-25|37|0xfac44e,16|39|0x392813,37|36|0xffc850,40|-51|0xc69325,46|-63|0x2f1611,31|-71|0xd32533,-4|-33|0x56515e,-4|-40|0x484044,30|-41|0x821e0e,38|-26|0xf47a8d",
			--	85, 0, 0, 0)
			i = i + 1
		until x > -1
		tap(x, y)
	end
	-- MissionStart
	repeat
		ramdomSleep(1000)
		x, y = findColor({218, 977, 498, 1042},
			"0|0|0x232313,-115|-20|0xf2d077,-101|-1|0x003322,-58|12|0xf4f4f3,-37|2|0x003333,35|33|0x266e4a,117|5|0x003733,144|-23|0x9e712d",
			90, 0, 0, 0)
	until x > -1
	tap(x, y)
end

function battle(auto)
	sysLog("In Battle")
	while true do
		-- Quest Clear detect
		x, y = findColor({116, 383, 583, 484},
			"0|0|0xf89900,-1|48|0xffff88,34|12|0xee7700,38|42|0xa25500,96|4|0xffaa00,131|34|0xffff44,186|3|0xffca25,216|53|0xffff77,287|6|0xffaa00,317|41|0xfff94f,387|22|0xee7700,381|54|0xffff77,389|55|0x995500,104|25|0x7b3c08,197|22|0xee7700",
			80, 0, 0, 0)
		xTemp, yTemp = findColor({67, 215, 415, 408},
			"0|0|0xd8c647,31|1|0xbfac3f,73|4|0xe4cb40,88|11|0xf4cc2e,105|11|0xe0bb2c,158|69|0xf9e044,215|40|0xffffff,322|76|0xfad330,83|164|0xfce244,12|166|0xd0b436,98|176|0xf9c51f,107|160|0xa49239,178|63|0xfdf158",
			90, 0, 0, 0)
		if x > -1 or xTemp > -1 then
			sysLog("Quest Clear")
			ramdomSleep(1000)
			tap(x, y)
			break
		end
		xError, yError = findColor({249, 724, 474, 811},
			"0|0|0x003322,50|8|0x163121,77|10|0x70655b,107|14|0x005144,138|14|0x004433,174|7|0xffdd44,-32|11|0xdd8800",
			85, 0, 0, 0)
		if xError > -1 then
			sysLog("Connect Failed")
			ramdomSleep(500)
			tap(xError, yError)
			break
		end
		if auto == 'guild' then
			-- Guild Battle Clear
			x, y = findColor({76, 373, 643, 489},
				"0|0|0xee7c02,-29|14|0xffff66,-25|28|0xffff99,1|25|0xffff89,83|-19|0xffa200,99|-19|0xffa200,176|-15|0xffaa00,171|2|0xee7700,267|-15|0xffaa00,360|-11|0xf4a213,459|-22|0xffba11,448|-7|0xf79b11,443|26|0xffff74,264|24|0xffff66,170|23|0xffff66,115|16|0x623e11,-7|34|0xffffaa",
				80, 0, 0, 0)
			if x > -1 then
				sysLog("Guild Battle Clear")
				ramdomSleep(1000)
				tap(x, y)
				break
			end
		elseif auto == 'pvp' then
			-- PVP Battle Clear
			x, y = findColor({119, 430, 597, 635},
				"0|0|0xffdd66,6|30|0xffffb2,7|52|0xcc5511,22|83|0xeeaa33,41|38|0xffffb9,55|4|0xffdd77,69|61|0xcc6622,89|58|0xd55e1a,205|-14|0xffc45e,207|34|0xffffb4,202|68|0xdf7924,300|11|0xfff892,300|70|0xffcb76,357|75|0xdd8833,367|39|0xffffbb,375|-2|0xffd966,204|116|0x90470e,71|109|0xfff67f,383|112|0x8a3605",
				80, 0, 0, 0)
			if x > -1 then
				sysLog("PVP Battle Clear")
				ramdomSleep(1000)
				tap(x, y)
				break
			end
		end
		-- Auto detect
		if auto == true or auto == 'guild' then
			x, y = findColor({504, 53, 622, 134},
				"0|0|0xffeebb,23|1|0xffeeb2,45|-2|0xffeebb,60|2|0xffeeaa,35|12|0x190c00,3|20|0xccb13a,35|27|0xeeeea4,62|26|0xeadd77,71|14|0xaa8822,70|-1|0xffeebb",
				85, 0, 0, 0)
			if x > -1 then
				tap(671, 90)
			end
		else
			-- Attack
			while true do
				-- Attack detect
				x, y = findColor({171, 1061, 542, 1273},
					"0|0|0x332c1b,19|-1|0x3d2a1a,51|-1|0xa07d49,104|-1|0xb99755,171|0|0x332e20,209|6|0x333322,207|30|0xbb9958,102|27|0xb18c55,8|27|0xac834e",
					90, 0, 0, 0)
				if x <= -1 then
					break
				end
				-- Use power up
				tapByFinger(2, 56, 1022)
				-- Overkill detect
				xOverkill, y = findColor({424, 253, 708, 337},
					"0|0|0xffb33e,32|-1|0x980000,36|-1|0xff9821,56|3|0xff7c02,66|15|0xffba2b,73|0|0xffa92d,94|-6|0xffb63f,118|4|0xffeb1b,164|0|0xffa000,213|-23|0xff2c0c,210|-3|0xff9000,242|28|0x630800,249|6|0xfdd34b,111|-12|0x950000",
					85, 0, 0, 0)
				-- Skill detect
				x, y = findColor({597, 1224, 709, 1264},
					"0|0|0xddbb88,14|-1|0xcfb67d,37|-2|0xccaa78,55|-1|0xc4a679,66|-1|0xc2aa89,62|10|0x5c594f,48|12|0x4a4a3c,39|11|0x3d3d2e,31|11|0xfeed96,16|11|0x3d312e,4|15|0x5b5547,-7|16|0xdfca9e",
					80, 0, 0, 0)
				-- Character Attack detect
				xIona, y = findColor({186, 1069, 538, 1185},
					"0|0|0xebd1d8,9|34|0xfcdbd0,9|67|0x7f453e,72|-3|0x484355,78|41|0xf9c9ba,92|68|0xffe7d3,154|11|0x734c4f,150|49|0xb06754,152|70|0xb06152,244|19|0x5ea3d9,240|50|0x756773,236|75|0xe6a275,138|47|0xfdc4ae,71|50|0x603b3e",
					85, 0, 0, 0)
				xMaid, y = findColor({193, 1065, 535, 1193},
					"0|0|0x878195,3|26|0x86a3e9,4|70|0x4d5054,60|-2|0x7d848e,69|42|0x928ff8,70|72|0xe8ebee,119|11|0x6e6d9c,130|71|0x404551,133|93|0xd03a63,199|9|0x7061af,194|48|0x8d7cbf,196|79|0x4f5961,246|15|0x814362,245|46|0xa771a1,244|78|0xeba4c3",
					85, 0, 0, 0)
				xZombie, y = findColor({192, 1061, 534, 1191},
					"0|0|0x5d1700,1|41|0xd89016,15|83|0xcec3ad,67|-7|0xdfd6c6,67|28|0xffd7ad,72|69|0xe5282b,136|7|0xf8edd9,136|35|0x736957,146|71|0xcb4642,234|5|0xfece2c,207|47|0x3d363b,232|69|0x3a3128",
					85, 0, 0, 0)
				xMonokuma, y = findColor({213, 1060, 518, 1186},
					"0|0|0x545b6b,0|21|0x837280,5|76|0xdccff2,37|7|0x64505e,42|32|0x3e2444,57|67|0xfac8c0,96|1|0x5f4e5f,94|32|0xf0d4c9,97|64|0xf7d7cd,155|0|0xdddea4,153|31|0xd3ae77,152|61|0xffeee1,207|9|0x97858b,195|40|0xc09c7b,207|68|0xe5c779",
					85, 0, 0, 0)
				xErebowa, y = findColor({153, 1071, 564, 1188},
					"0|0|0xcaccbf,15|12|0x3b2933,33|38|0x4c393f,56|55|0xd3f7f6,79|-15|0x2f589a,124|17|0x2f1b3e,158|39|0xf6ccbd,198|48|0x604b5b,210|-15|0x2e4b98,279|13|0xe5e5e7,318|33|0xcb5662,345|52|0x431229,315|58|0xc25363,346|14|0x9a806f,210|18|0x90caca,252|38|0xc0ffff,163|27|0xf7cfc0,129|28|0x8fdadb",
					85, 0, 0, 0)
				detectDelay = 80
				-- Use skill only if not overkill
				if x > -1 and xOverkill <= -1 then
					tap(664, 1188)
					mSleep(3513 - detectDelay)
				elseif xIona > -1 then
					tap(363, 1139)
					mSleep(1680 - detectDelay)
				elseif xMaid > -1 then
					tap(363, 1139)
					mSleep(1910 - detectDelay)
				elseif xZombie > -1 then
					tap(363, 1139)
					mSleep(2100 - detectDelay)
				elseif xMonokuma > -1 then
					tap(363, 1139)
					mSleep(2250 - detectDelay)
				elseif xErebowa > -1 then
					tap(363, 1139)
					mSleep(1080 - detectDelay)
					--elseif xRuruna > -1 then
					--	tap(363, 1139)
					--	mSleep(1674 - detectDelay)
				else
					tap(363, 1139)
					mSleep(1600 - detectDelay)
				end
			end
			-- Defense detect
			x, y = findColor({242, 1216, 473, 1260},
				"0|0|0xab8845,-7|-2|0x332622,20|0|0x332822,32|-4|0x9b7744,73|-3|0x403322,85|-10|0xbe9866,100|-5|0x333322,123|-5|0xf5d37d,140|2|0xceba77,151|-1|0x383322,160|-1|0xddbb7e,95|15|0xbb9965,201|-3|0x332d22,183|1|0xaf995a,182|6|0xa78540",
				85, 0, 0, 0)
			if x > -1 then
				mSleep(1000)
				tap(x, y)
			end
		end
		mSleep(200)
	end
end

function battleResult()
	sysLog("Battle Result")
	for i = 1, 5, 1 do
		tap(125, 273)
		ramdomSleep(300)
	end
	-- Add Friend?
	ramdomSleep(500)
	x, y = findColor({34, 435, 704, 857},
		"0|0|0x2d1e0f,-98|2|0x004333,69|2|0x003433,-106|-25|0x443300,105|4|0x004433,1|-344|0xa39c96,66|-344|0xfefefe,122|-341|0x8d847c,229|-340|0xffeecc,321|-337|0xe1dedc,237|1|0x880000,318|1|0x49150a,399|4|0x880000,467|4|0xffeecc,500|4|0xae9959",
		90, 0, 0, 0)
	if x > -1 then
		tap(x, y)
		-- OK center
		repeat
			ramdomSleep(500)
			x, y = findColor({71, 443, 645, 841},
				"0|0|0xe5e4e2,-83|-6|0x226644,50|-7|0x227753,-81|26|0x007144,39|29|0x118a55,-106|-18|0xdeb055,92|-16|0x33330c,-93|44|0xeca11c,89|41|0xccaf56,98|24|0xe39900",
				90, 0, 0, 0)
		until x > -1
		tap(x, y)
		ramdomSleep(1000)
	end
	-- OK center
	x, y = findColor({1, 299, 724, 1097},
		"0|0|0x226a44,-1|9|0x003322,-1|23|0x005544,10|-2|0x227755,14|15|0xa8a19b,14|25|0xcdc9c6,17|-3|0x318655,28|12|0xffffff,50|22|0x847c73,48|4|0xada8a2,52|10|0x003322,63|22|0x004933,55|13|0x003333,25|16|0x72685e,6|15|0x004433,44|8|0xe9e7e6",
		75, 0, 0, 0)
	if x > -1 then
		tap(x, y)
		ramdomSleep(1000)
	end
	-- Event OK
	ramdomSleep(1500)
	x, y = findColor({23, 953, 699, 1071},
		"0|0|0x52b777,82|26|0x282213,112|25|0xf8f7f7,154|25|0x004433,184|18|0x00332f,244|20|0xffdd40,233|55|0xffbb22,156|45|0x1ba363,35|36|0x006644,117|18|0xffffff",
		85, 0, 0, 0)
	if x > -1 then
		tap(x, y)
		ramdomSleep(1000)
	end
	-- OK bottom
	x, y = findColor({373, 1166, 691, 1258},
		"0|0|0x867f76,-107|-17|0x227752,93|1|0x004433,-82|18|0x058855,141|22|0xeeaa11,-135|-28|0xc49444,-137|31|0xfcb720,127|-28|0xa47c35,125|29|0x835107",
		90, 0, 0, 0)
	if x > -1 then
		tap(x, y)
	end
end

function multiplay()
	sysLog("Multiplay")
	-- Find anyone OK & no prefer
	while true do
		ramdomSleep(2000)
		tap(674, 1101)
		ramdomSleep(1000)
		xUltimate, yUltimate = findColor({155, 308, 648, 919},
			"0|0|0x882211,25|2|0x882211,63|4|0xa03b2b,139|0|0x716651,150|11|0xc9c6a8,219|3|0x483b2a,220|3|0xb6b095,223|12|0x352717,331|-1|0x4d402f,334|4|0x7d745d,337|11|0x322314,335|14|0xcecbad,373|4|0xffffdd,391|8|0xffffdd,421|6|0xffffdd,66|11|0x8b2817,-2|8|0xfb8985,161|3|0xedeccb,167|3|0xb2ad92,182|1|0x2f2011",
			70, 0, 0, 0)
		if xUltimate > -1 then
			tap(xUltimate, yUltimate)
			break
		end
		xExpert, yExpert = findColor({143, 206, 645, 928},
			"0|0|0xf2ca62,5|9|0x664400,18|8|0x664400,32|16|0xa8730c,55|16|0xfaa51d,72|7|0xffcc54,93|10|0xf0ac26,102|5|0x664400,210|0|0x2e1f10,212|1|0xf7f6d5,214|3|0xffffdd,217|10|0x312213,226|9|0x2d1e0f,230|9|0xeae9c9,231|3|0x605541,231|-4|0xffffdd,391|3|0xffffdd,404|6|0xffffdd,422|6|0xffffdd,437|6|0xffffdd",
			70, 0, 0, 0)
		if xExpert > -1 then
			tap(xExpert, yExpert)
			break
		end
		xStarter, yStarter = findColor({143, 206, 645, 928},
			"0|0|0x98dcff,3|6|0x124a6c,17|8|0x61b1df,26|11|0x52b0e3,44|6|0x3b96ce,78|7|0x216082,105|5|0x003355,209|-2|0x999279,213|1|0xfcfbda,219|10|0x9b947b,209|7|0x887f68,224|8|0x493c2a,231|11|0x7c735d,234|0|0xc0bca0,225|3|0x2d1e0f,436|4|0xffffdd,374|5|0xffffdd,390|4|0xffffdd,400|5|0xffffdd,425|5|0xffffdd",
			70, 0, 0, 0)
		if xStarter > -1 then
			tap(xStarter, yStarter)
			break
		end
		xSpiralCave, ySpiralCave = findColor({106, 213, 369, 986},
			"0|0|0x4a3e2c,12|11|0x857d66,20|12|0xfbfbd9,27|0|0xfefefe,39|5|0x6c6257,52|1|0x938b84,37|10|0xcbc7aa,61|4|0xfbfbd9,67|11|0xfdfcdb,76|9|0xd7d3b5,88|8|0xd3cfb2,87|-2|0xffffff,94|-2|0xa59e84,113|12|0xffffdd,128|16|0xcecbc7,139|17|0xa39c96,141|10|0xffffff,149|5|0xffffff,160|4|0xcac7c3,154|8|0xaca6a0",
			70, 0, 0, 0)
		if xSpiralCave > -1 then
			tap(xSpiralCave, ySpiralCave)
			break
		end
		xGoldRelics, yGoldRelics = findColor({73, 217, 294, 988},
			"0|0|0xffee6a,13|-1|0xf2dd44,1|-8|0xffda72,25|-9|0xffffff,31|-5|0xe5e4e2,46|-4|0xb2aca7,58|-2|0xe1dfdd,68|6|0xd1ceb0,64|-8|0x382a1b,74|-8|0xffffdd,106|1|0xcdc9c6,123|3|0xc9c6c2,136|5|0x827970,108|-6|0xe9e7e6,124|-7|0x5b4f44,133|-8|0xf3f2f1,144|-8|0xffffdd,141|4|0xf3f2f1,117|4|0x3d2f21,54|0|0x928b83",
			70, 0, 0, 0)
		if xGoldRelics > -1 then
			tap(xGoldRelics, yGoldRelics)
			break
		end
	end
end

function room()
	sysLog("Room")
	ramdomSleep(500)
	-- Difficult detect
	x, y = findColor({82, 147, 226, 193},
		"0|0|0xfa7869,0|15|0xfa7869,16|0|0xfa7869,22|1|0xf57668,29|13|0xfa7869,41|9|0xf77768,54|17|0xfa7869,58|20|0xfa7869,75|11|0xf77768,85|14|0xf77768,89|14|0xf87768,99|3|0xfa7869,108|6|0xf97869,131|11|0xea7365",
		80, 0, 0, 0)
	if x > -1 then
		tap(93, 1226)
		ramdomSleep(5000)
	else
		ramdomSleep(1000)
		-- Send sticker
		tap(676, 1226)
		ramdomSleep(500)
		tap(108, 946)
		ramdomSleep(1000)
		-- Ready
		tap(365, 1179)
	end
end

function multiplayBattle()
	sysLog("Multiplay Battle")
	while true do
		-- Disconnect detect
		xDisconnect, yDisconnect = findColor({144, 562, 585, 808},
			"0|0|0x2c1f10,-60|0|0x003333,55|0|0x003333,-168|-159|0x2e1f10,-144|-159|0xffffdd,-98|-155|0x7d745d,-68|-155|0x827962,-37|-153|0x302212,16|-153|0x312213,57|-153|0xffffdd,107|-153|0xffffdd,147|-153|0xffffdd,170|-153|0xe4e2c2,-19|-205|0xffffdd,-12|-103|0xffffdd",
			85, 0, 0, 0)
		if xDisconnect > -1 then
			tap(xDisconnect, yDisconnect)
			break
		end
		-- Quest Clear detect
		x, y = findColor({116, 383, 583, 484},
			"0|0|0xf89900,-1|48|0xffff88,34|12|0xee7700,38|42|0xa25500,96|4|0xffaa00,131|34|0xffff44,186|3|0xffca25,216|53|0xffff77,287|6|0xffaa00,317|41|0xfff94f,387|22|0xee7700,381|54|0xffff77,389|55|0x995500,104|25|0x7b3c08,197|22|0xee7700",
			85, 0, 0, 0)
		xResult, y = findColor({67, 215, 415, 408},
			"0|0|0xd8c647,31|1|0xbfac3f,73|4|0xe4cb40,88|11|0xf4cc2e,105|11|0xe0bb2c,158|69|0xf9e044,215|40|0xffffff,322|76|0xfad330,83|164|0xfce244,12|166|0xd0b436,98|176|0xf9c51f,107|160|0xa49239,178|63|0xfdf158",
			85, 0, 0, 0)
		xGameover, y = findColor({19, 337, 681, 443},
			"0|0|0x3355ff,-31|13|0x3377ff,8|45|0x66ccff,66|6|0x3355ff,51|37|0x55aaff,50|49|0x66ccff,83|46|0x66ccff,124|10|0x3366ff,133|33|0x55a6ff,171|1|0x3355ff,208|29|0x4499ff,228|34|0x55aaff,321|27|0x4499ff,410|28|0x4499ff,445|28|0x4499ff,494|32|0x5599ff,568|30|0x5599ff",
			85, 0, 0, 0)
		if x > -1 or xResult > -1 or xGameover > -1 then
			sysLog("Quest Clear")
			-- Send sticker
			if (xGameover <= -1) then
				tap(663, 894)
				ramdomSleep(500)
				tap(487, 783)
			end
			ramdomSleep(1000)
			tap(350, 530)
			break
		end
		xError, yError = findColor({249, 724, 474, 811},
			"0|0|0x003322,50|8|0x163121,77|10|0x70655b,107|14|0x005144,138|14|0x004433,174|7|0xffdd44,-32|11|0xdd8800",
			85, 0, 0, 0)
		if xError > -1 then
			sysLog("Connect Failed")
			ramdomSleep(500)
			tap(xError, yError)
			break
		end
		detectDelay = 100
		nextSleep = 1600 - detectDelay
		-- Attack
		while true do
			-- Attack detect
			x, y = findColor({171, 1061, 542, 1273},
				"0|0|0x332c1b,19|-1|0x3d2a1a,51|-1|0xa07d49,104|-1|0xb99755,171|0|0x332e20,209|6|0x333322,207|30|0xbb9958,102|27|0xb18c55,8|27|0xac834e",
				85, 0, 0, 0)
			if x <= -1 then
				break
			end
			mSleep(nextSleep)
			-- Use power up
			tapByFinger(2, 40, 1031)
			tapByFinger(2, 280, 981)
			tapByFinger(2, 527, 987)
			-- Skill detect
			xSkill, y = findColor({597, 1224, 709, 1264},
				"0|0|0xddbb88,14|-1|0xcfb67d,37|-2|0xccaa78,55|-1|0xc4a679,66|-1|0xc2aa89,62|10|0x5c594f,48|12|0x4a4a3c,39|11|0x3d3d2e,31|11|0xfeed96,16|11|0x3d312e,4|15|0x5b5547,-7|16|0xdfca9e",
				75, 0, 0, 0)
			-- Character Attack detect
			xIona, y = findColor({186, 1069, 538, 1185},
				"0|0|0xebd1d8,9|34|0xfcdbd0,9|67|0x7f453e,72|-3|0x484355,78|41|0xf9c9ba,92|68|0xffe7d3,154|11|0x734c4f,150|49|0xb06754,152|70|0xb06152,244|19|0x5ea3d9,240|50|0x756773,236|75|0xe6a275,138|47|0xfdc4ae,71|50|0x603b3e",
				80, 0, 0, 0)
			if xSkill > -1 then
				tap(664, 1188)
				nextSleep = 3513 - detectDelay
			elseif xIona > -1 then
				tap(363, 1139)
				nextSleep = 1680 - detectDelay
			else
				tap(363, 1139)
				nextSleep = 1600 - detectDelay
			end
		end
		-- Defense detect
		x, y = findColor({242, 1216, 473, 1260},
			"0|0|0xab8845,-7|-2|0x332622,20|0|0x332822,32|-4|0x9b7744,73|-3|0x403322,85|-10|0xbe9866,100|-5|0x333322,123|-5|0xf5d37d,140|2|0xceba77,151|-1|0x383322,160|-1|0xddbb7e,95|15|0xbb9965,201|-3|0x332d22,183|1|0xaf995a,182|6|0xa78540",
			85, 0, 0, 0)
		if x > -1 then
			mSleep(1000)
			tap(x, y)
		end
		mSleep(200)
	end
end
