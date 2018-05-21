require("utility")
function helperSelect(helper)
	sysLog("Helper Select")
	-- Find 20pt Friend
	if helper == '0' then
		ramdomSleep(1000)
		x, y = findColor({399, 287, 681, 1207}, 
			"0|0|0x6ee197,19|6|0x22ee88,36|-3|0x184c2c,47|3|0x165b3e,57|-3|0xcbffaa,63|-1|0xa4fea9,82|-3|0xffee22,86|9|0xffd422,104|3|0x221100,118|0|0xffff55,139|5|0xeeaa00,151|7|0x331b00,168|1|0xedd33b,180|10|0xffeb22",
			85, 0, 0, 0)
		if x > -1 then
			tap(x, y)
		else
			drag(710, 330, 710, 800)
			ramdomSleep(1000)
			x, y = findColor({399, 287, 681, 1207}, 
				"0|0|0x6ee197,19|6|0x22ee88,36|-3|0x184c2c,47|3|0x165b3e,57|-3|0xcbffaa,63|-1|0xa4fea9,82|-3|0xffee22,86|9|0xffd422,104|3|0x221100,118|0|0xffff55,139|5|0xeeaa00,151|7|0x331b00,168|1|0xedd33b,180|10|0xffeb22",
				85, 0, 0, 0)
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
			--x, y = findColor({13, 288, 186, 1192}, 
			--	"0|0|0xe675b5,-62|-38|0xffef67,-26|-37|0x593242,-3|-50|0x57516b,15|-53|0x453518,21|-53|0xfff167,35|-56|0x7d6d2a,-52|21|0x9c8b8d,-54|40|0xffc850,-35|47|0xb58c39,-20|42|0x4a2323,1|43|0xecb94a,12|42|0xffc850,20|43|0x84652a,26|19|0x3f3111,-1|14|0xffe3cc,-33|24|0x8f7676",
			--	90, 0, 0, 0)
			-- Find Guest + MAX Monokuma
			x, y = findColor({13, 288, 186, 1192}, 
				"0|0|0xffe1d7,-25|6|0xddc1c0,-30|-5|0x4c4455,-31|-23|0x868182,-37|-43|0xd5ae37,-53|-38|0xede648,-14|34|0x422f16,-25|37|0xfac44e,16|39|0x392813,37|36|0xffc850,40|-51|0xc69325,46|-63|0x2f1611,31|-71|0xd32533,-4|-33|0x56515e,-4|-40|0x484044,30|-41|0x821e0e,38|-26|0xf47a8d",
				85, 0, 0, 0)
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
		-- Auto detect
		if auto == true then
			x, y = findColor({615, 68, 715, 124}, 
				"0|0|0xffeebb,0|11|0xaa8822,4|27|0xeee48f,83|1|0xffff66,27|1|0xffeeaa,33|-11|0xeecc71,44|-7|0xffeec9,45|2|0xd6d6d6,62|13|0xffffff,75|16|0xbb992d,75|-6|0xffeebb,62|16|0xb2b2b2,70|31|0xf7d632",
				80, 0, 0, 0)
			if x <= -1 then
				tap(667, 93)
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
			ramdomSleep(1000)
			x, y = findColor({71, 443, 645, 841}, 
				"0|0|0xe5e4e2,-83|-6|0x226644,50|-7|0x227753,-81|26|0x007144,39|29|0x118a55,-106|-18|0xdeb055,92|-16|0x33330c,-93|44|0xeca11c,89|41|0xccaf56,98|24|0xe39900",
				90, 0, 0, 0)
		until x > -1
		tap(x, y)
	end
	-- Event OK
	ramdomSleep(1500)
	x, y = findColor({204, 972, 517, 1058}, 
		"0|0|0x003322,59|0|0x00332f,113|0|0x2b1f11,136|0|0xa6a099,191|-1|0x003322,243|-1|0x003322,266|-6|0xffdd55,260|27|0x7d4f00,114|30|0x2faf73,13|30|0x289e62",
		85, 0, 0, 0)
	if x > -1 then
		tap(x, y)
	end
	-- OK bottom
	ramdomSleep(300)
	x, y = findColor({373, 1166, 691, 1258}, 
		"0|0|0x867f76,-107|-17|0x227752,93|1|0x004433,-82|18|0x058855,141|22|0xeeaa11,-135|-28|0xc49444,-137|31|0xfcb720,127|-28|0xa47c35,125|29|0x835107",
		90, 0, 0, 0)
	if x > -1 then
		tap(x, y)
	end
end

function event()
	-- Ramdom select Iona or Monokuma
	math.randomseed(os.time())
	if math.random(0, 1) == 0 then
		tap(370, 660)
	else
		tap(370, 780)
	end
	ramdomSleep(1000)
	tap(370, 780)
	-- Join multiplayer battle
	repeat
		ramdomSleep(1000)
		x, y = findColor({361, 686, 667, 774}, 
			"0|0|0x004433,-48|-3|0x2d1e0f,74|-4|0xf6f5f5,-71|-25|0x398366,63|-23|0x51b172,5|-32|0xffdd77,-9|31|0xffc132,-111|21|0x119966",
			85, 0, 0, 0)
	until x > -1
	tap(x, y)
	while true do
		-- Find anyone OK
		repeat
			-- Refresh
			tap(678, 1100)
			ramdomSleep(1500)
			x, y = findColor({313, 208, 419, 932}, 
				"0|0|0x534734,18|0|0x2d1e0f,36|1|0x766d57,63|2|0xffffdd,79|3|0xffffdd,-14|1|0xfdfcdb",
				85, 0, 0, 0)
		until x > -1
		tap(x, y)
		ramdomSleep(1500)
		-- Full room
		x, y = findColor({72, 440, 645, 835}, 
			"0|0|0x81786f,51|2|0x004433,-72|-29|0xffde79,77|-26|0xffe37d,-143|-152|0x9b937a,113|-155|0xffffdd,-80|-281|0x443627,15|-286|0xffffdd,-146|-315|0xbb9966,139|-316|0xbb9966,-279|63|0x221100,267|59|0x433220,70|-3|0x003322,-163|-162|0x2d1e0f,-151|-159|0xffffdd,-14|-277|0xffffff",
			85, 0, 0, 0)
		if x > -1 then
			tap(x, y)
		end
		-- Ready
		x, y = findColor({204, 1146, 526, 1233}, 
			"0|0|0xd9c750,-24|-49|0xffdd4f,-24|-35|0xd88800,6|-49|0x003322,8|-21|0x159e66,48|-47|0x003333,56|-25|0x0c8855,101|-47|0xf4f4f3,117|-26|0x008552,217|-49|0x003322,218|-22|0x119955,253|-52|0xf1c44c,111|-51|0xb0aaa5,127|-51|0xf2f1f0,153|-52|0xffffff,68|-55|0x45392c",
			85, 0, 0, 0)
		if x > -1 then
			tap(x, y)
			break
		end
	end
end
