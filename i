-- Luraph runtime function (from the VM object, not part of the script: not lifted).
-- LPH_ENCFUNC decrypts a function this way: (key, encrypted buffer, ...) -> function.
local function luraph_runtime1(...)
	error("Luraph runtime function, not devirtualized")
end

local v = table.pack(...)

if not ce_like_loadstring_fn then
	if not l_fastload_enabled or not is_from_loader then
		game:GetService("Players").LocalPlayer:Kick("[Luarmor]: Use the loadstring, do not run this directly")
		wait(5)

		while true do
		end
	end
end

local str = "?"
loadstring = ce_like_loadstring_fn or loadstring
local flag = false

pcall(function()
	flag = true
	local UserGameSettings = UserSettings():GetService("UserGameSettings")

	if not UserGameSettings:GetTutorialState("nil  nil  ") then
		str = ""
		local n = ({ wait() })[1] * 1000000

		local function fn(arg)
			local n2 = 1103515245
			local n3 = 12345
			local n4 = 99999999
			local n5 = arg % 2147483648
			local n6 = 1

			return function(arg2, arg3)
				local v2 = n4
				local n7 = n2 * n5 + n3
				local n8 = n7 % v2 + n6
				n6 += 1
				n5 = n8
				n3 = n7 % 4858 * v2 % 5782
				return arg2 + n8 % arg3 - arg2 + 1
			end
		end

		local v2 = fn(n - n % 1)
		UserGameSettings:SetTutorialState("nil  nil  ", true)
		local n2 = 0

		for i = 1, 16 do
			local n3 = 0
			local n4 = 1

			for i2 = 1, 5 do
				local flag2 = v2(10, 20) > 15
				UserGameSettings:SetTutorialState("nil  nil  " .. n2, flag2)
				n3 += (flag2 and 1 or 0) * n4
				n4 *= 2
				n2 += 1
			end

			str ..= ("qwertyuiopasdfghjklzxcvbnm098765"):sub(n3 + 1, n3 + 1)
		end
	else
		str = ""
		local n = 0

		for i = 1, 16 do
			local n2 = 0
			local n3 = 1

			for i2 = 1, 5 do
				n2 += (UserGameSettings:GetTutorialState("nil  nil  " .. n) and 1 or 0) * n3
				n3 *= 2
				n += 1
			end

			str ..= ("qwertyuiopasdfghjklzxcvbnm098765"):sub(n2 + 1, n2 + 1)
		end
	end
end)

while not flag do
end

local now = os.clock()

if devsignature_sig then
	print([[        Luarmor - Lua whitelist service
        This is a signature - If you are seeing this, you know what not to do :3
        Have a good day!
        https://luarmor.net/
    ]])
end

local flag2 = nil
local flag3 = nil
local v2 = ({ ... })[2]
local v3 = ({ table.unpack(v, 1, v.n) })[3]

if v3 and v3[1] then
end

local floor = math.floor
local random = math.random
local remove = table.remove
local char = string.char
local n2 = 0
local n3 = 2
local tbl = {}
local tbl2 = {}

for i = 1, 256 do
	tbl2[i] = i
end

repeat
	local v4 = random(1, #tbl2)
	local v5 = remove(tbl2, v4)
	tbl[v5] = char(v5 - 1)
until #tbl2 == 0

local tbl3 = {}

local function fn()
	if #tbl3 == 0 then
		n2 = (n2 * 149 + 4033097371307) % 35184372088832

		repeat
			n3 = n3 * 37 % 257
		until n3 ~= 1

		local n = n3 % 32
		local n4 = floor(n2 / 2 ^ (13 - (n3 - n) / 32)) % 4294967296 / 2 ^ n
		local n5 = floor(n4 % 1 * 4294967296) + floor(n4)
		local n6 = n5 % 65536
		local n7 = (n5 - n6) / 65536
		local n8 = n6 % 256
		local n9 = n7 % 256
		tbl3 = { n8, (n6 - n8) / 256, n9, (n7 - n9) / 256 }
	end

	return table.remove(tbl3)
end

local tbl4 = {}
local v4 = tbl4

local function fn2(arg, arg2)
	local v5 = tbl4

	if not v5[arg2] then
		tbl3 = {}
		local v6 = tbl
		n2 = arg2 % 35184372088832
		n3 = arg2 % 255 + 2
		v5[arg2] = ""
		local n = 77

		for i = 1, #arg do
			n = (string.byte(arg, i) + fn() + n) % 256
			v5[arg2] = v5[arg2] .. v6[n + 1]
		end
	end

	return arg2
end

local v5 = LUARMOR_SkipAntidebugDevMode
local v6 = LUARMOR_AllowKeyCheckSkip
local flag4 = ff97f23b97f93792992999 and ff97f23b97f93792992999() == v4[fn2("\172", 31126577901884)] or false
local v7 = v4[fn2("6\143K\188=\r\226\146\248&\176;\3\231Æ\133\143\248\204_\184\222\229\157\254\25", 2340828612740)]
local v8 = USE_NON_SSL_NODE
local v9 = l_fastload_enabled
local n4 = os[v4[fn2("(\204\6\168", 4882453074371)]](os[v4[fn2("UC\178}", 12971197083440)]](v4[fn2("\139L", 33012126087192)])) - os[v4[fn2("vܢ\204", 5436520764359)]](os[v4[fn2("f\150\187#", 4318721413046)]](v4[fn2("\209\6D", 24300592814183)]))
local n5

if n4 < 0 then
	n5 = (86400 + -(-n4 % 86400)) % 86400
else
	n5 = n4 % 86400
end

local n6 = n5 / 3600

if n6 >= 21 or n6 < 5 then
	local tbl5 = {}
	local v10 = v4[fn2("\226XO\140q\210K\180:%\205B\254\182.y\229\163\245\219v$\209Y\171\6f", 3448963992716)]
	local v11 = v4[fn2("N\235X\233G\12\243\241ˣ@s\250\190\137\214\t\2267j\174\247\195\241\237\1\160", 16047561292385)]
	tbl5[1] = v10
	tbl5[2] = v11
	v7 = tbl5[math[v4[fn2("\195K\\\173\155:", 14086848885567)]](1, 2)]
elseif n6 >= 5 and n6 < 15 then
	local tbl5 = {}
	local v10 = v4[fn2("\136M\165r\0017j\254\186\147Ds\224x\241\151\231]k\137\28\184\17f,\138\149", 25839311805952)]
	local v11 = v4[fn2("\211:<?S\222\17[!\164Yl\240F\230\"\193\251\128\220a\29\252\133\u{87}\163", 2297877629020)]
	local v12 = v4[fn2("s\146p: \167\177_\228\255\136kW\246\245\253e\146M\245\19T\169IP\21\187", 2572763924828)]
	local v13 = v4[fn2("'\26L\252\146.\25c\151\208\248ϕ\154\r\229I\243\26\149\181\139k`+\16\2", 19333311546965)]
	local v14 = v4[fn2("$\1C\213\234\205?\169\200\"\188@\0\188\128\27C\244\12\203l\224\3p\245\187\233", 21697763200751)]
	local v15 = v4[fn2("\30\197\216\\\25\163\155i\1304i\2af\14\181\15\174MD\174\131\206\208Zã", 15465575462979)]
	local v16 = v4[fn2("\5ڝ_\154\171yf\184\193\138\26T\188\11\16#K\128\144:\7\197m\210\14\252", 30187025133009)]
	local v17 = v4[fn2("\182\186\142\199\t\163\189V 8\195g\230w\148\228\193v\199\\\186\212\246\174\130H\254", 19714501527480)]
	local v18 = v4[fn2("\248~\133\207\196r\178\244G\251 /\n\30\169\154%m\187W\141{\235\246\179\243\240", 7900833455294)]
	local v19 = v4[fn2("*\211\203v\129\12j\218\209A\222\15\186[S\135\165w\1725[tI\n \212\199", 17090196422188)]
	local v20 = v4[fn2("y\193\242QA\127\235\22\"\3\134\159.\0\5\224\130\236\239\27\254.\224\194ż\188", 25925213773392)]
	tbl5[1] = v10
	tbl5[2] = v11
	tbl5[3] = v12
	tbl5[4] = v13
	tbl5[5] = v14
	tbl5[6] = v15
	tbl5[7] = v16
	tbl5[8] = v17
	tbl5[9] = v18
	tbl5[10] = v19
	tbl5[11] = v20
	v7 = tbl5[math[v4[fn2("xԳ\192\182-", 34852575739594)]](1, 11)]
elseif n6 >= 15 and n6 < 21 then
	local tbl5 = {}
	local v10 = v4[fn2("\240\230R\240>\184pcy\16\164\25JH\231\14\235b\3\8\138b\1\249\194\4\255", 13222460338202)]
	local v11 = v4[fn2("\132\141w\195|l\143>'\247n\175\248+\249\226\144<C!*\177\160\233\21\2I", 27390916092837)]
	local v12 = v4[fn2("\rl\1903\128\248l\136-%\192js\153c\179\238b\157\207\209#\200;\238Nt", 14158791783298)]
	tbl5[1] = v10
	tbl5[2] = v11
	tbl5[3] = v12
	v7 = tbl5[math[v4[fn2("\237\238q\243\0025", 446690230688)]](1, 2)]
else
	game:GetService(v4[fn2("\11\19\5\4\2527\137", 10601376556689)])[v4[fn2("6\164p?\177pjs'\184]", 30941888671888)]]:Kick(v4[fn2("XЀ\129\142\231\6\145\130ښz\231[\253\250\28A\140`;m\\\243C\167d_\8뵟\11\24\4̩\172S\rH\235-E\0079\1519lH\149-C3\130)\225\20\162{1\228ܞ", 31900769383437)])
end

pcall(function()
	if game:GetService(v4[fn2("Y4\161\128j\n\206\18\4\2551z\235۾\220\26C\148", 26759536632153)]):GetCountryRegionForPlayerAsync(game:GetService(v4[fn2("A\209q\131\160\177\219", 8137063865754)])[v4[fn2("\255\189\244ˢ\218K\216I\131\254", 24768758536731)]]) == v4[fn2(";%", 6519959328696)] then
		local tbl5 = {}
		local v10 = v4[fn2("l\205hnf\2268}\206\25\1781{\11\1981/\224\8\179\240\27-\r\205#\151", 30974101909678)]
		local v11 = v4[fn2("\n\230\168\228\154T\28\183\22\226r\177\0\0042f+\129\184ʟ\193ͤ\166\128i", 12874557370070)]
		local v12 = v4[fn2("\31\140C\234\224\0128'uqF\230\160\26)\210ߣ\139\172\132w\172\181\245\250\246", 25825352736243)]
		local v13 = v4[fn2("Q\t\222t?\167\240\222K|Jn\228\232[\172OO\133\25\130Ϋ\203\24\190&", 1597776594384)]
		local v14 = v4[fn2("w׆z\184Rػ\135\17w\149\1628\245<t\183\218\"9\180&\154\173oS", 24407970273483)]
		tbl5[1] = v10
		tbl5[2] = v11
		tbl5[3] = v12
		tbl5[4] = v13
		tbl5[5] = v14
		v7 = tbl5[math[v4[fn2("\182\163/Pv\178", 434878710165)]](1, 5)]
	end
end)

local tbl5 = { [v4[fn2("$GBp\229(\220", 25758778711477)]] = v4[fn2("\233\191\12", 22757578724042)] }
tbl5[v4[fn2("\168)[\4", 30887126167645)]] = flag4 and LT_R_RRT_H or v4[fn2("\145\199\235ښ\255A\27", 5940121048476)] .. v7
tbl5[v4[fn2("-\187\163M\25\167\217@", 4026654723750)]] = "57c8427badd84021c87f6aa4b6b9aa51"
tbl5[v4[fn2("|\153\251\252\129+\213c\238\189\31]\198", 318911054121)]] = "0167"
tbl5[v4[fn2("\255u\7\188", 2453574945005)]] = "KiciaHocks Premium"

if v8 then
	tbl5[v4[fn2("P+\173\t", 11860914154278)]] = v4[fn2("\190\203\210Z\214\212\25ې\173pԼ\146\25\18\18\16\133\139\193獓ݓ\217", 22440815219107)]
	v7 = v4[fn2("_\12\235cw\2309\u{84}\23,d\224NS\22X\5\19p", 20241724852643)]
end

local flag5 = type(({ table.unpack(v, 1, v.n) })[1]) ~= v4[fn2("\242\19\150\29>", 10561646896748)]
local flag6 = false
local fn3 = nil
local n7 = nil
local tbl6 = nil
local tbl7 = nil
local flag7 = nil
local v10 = nil
local tbl8 = nil
local v11 = print
local v12 = next
local v13 = string[v4[fn2("2\2521\5", 29730670930984)]]
local v14 = identifyexecutor
local v15 = game
local v16 = pcall
local v17 = string[v4[fn2("\159\240\254\230\24\28", 19614640490331)]]
local v18 = debug[v4[fn2(";+\25\153&\188\15\128\26", 12781138980479)]]
local v19 = tonumber
local v20 = setmetatable
local v21 = rawget
local v22 = wait
local v23 = debug[v4[fn2("P\221{\181\235n\227", 23381441762575)]]
local v24 = loadstring
local v25 = os[v4[fn2("X\184mZ", 16176414243545)]]
local v26 = string[v4[fn2("U\235\251\154", 32087606162619)]]
local v27 = string[v4[fn2("\175\1522", 25909107154497)]]
local v28 = spawn
local v29 = game:GetService(v4[fn2("`B\166#\255jI\172]^", 4772928065885)])[v4[fn2("\160\129EكZ\5\18\24", 20189109897586)]]
local v30 = os[v4[fn2(">^S\159\159", 3206290934698)]]
local v31 = rconsoleprint
local v32 = math[v4[fn2("\165A7e", 11417445247369)]]
local v33 = tostring
local v34 = pairs
local v35 = string[v4[fn2("\3\155\250\194", 32580468700806)]]
local v36 = getgenv
local flag8 = false

local function fn4(arg, arg2)
	v24(v4[fn2("i\154\24+|X6!\178ڻ\204ηA\11\7\248<\206\28\245\222c\174\5\23\227\240?Iz\250a4S.\240\147t\199\0065\4\145\11\239\203\2.\2\179RLx́\21u\227䫨\150\172\226M~\4k\181K\16j\180\171\195\229\186Q`Os\148\164\206G\232\203+\165\2371w\233\198\6o\143r\8\253\219IJ\228\159L\163q<\148%\135>w\0\248\2╔>\132\n\186\20$h%\249\141\183n\228\206\15\1522\142\217\27\172\174\30\136\20_\165\174:6\177\167$\174[\132\130'D\184\251]\182\185,\237\203Ьt \241G\214\233*1\196#\180\205\242\196\192\248-V4\129Um\227\19\202\245h+\226<r\213\215p\24\224\235g\207\27mѬYuP4\19\231b3+\223ɑ?ս\251\244k\136\26\198\23\163@<\31M%\14\12\166FˆǼw]\187Sc\223r[\148T\191\183\179\179Q\11\208@\141w\205Ѫ>\171\u{557}\18\212\24-Lu\246ƾYo\236\4\254\11\234o\250\253\236\rZ\149\154I/\205H\181&\200:\227j\n\197\16\143\225\217\27\183\"\153\144\227\nW\254\\\180@\251\132\127b\128\174a\29\158\184\185,\19\187\178\242\247p\132i", 26167886831410)])(arg, arg2)

	while v22() do
	end
end

local tbl9 = {}
local flag9 = false
local v37 = string[v4[fn2("\189[J\156\131h", 30415739121318)]]
local v38 = string[v4[fn2("\1510\206", 13348091965583)]]
local v39 = table[v4[fn2("k\188*TG\222", 11500125891030)]]
local v40 = type
local v41 = v34
local v42 = v22
local v43 = coroutine[v4[fn2("\177߽\215", 9666118886186)]]

local fn5 = syn and syn[v4[fn2("Z\185\149\247\174\30\161\141\220", 26705847902503)]] and syn[v4[fn2("\137ҫ\217\r2\137v\146", 25551540215028)]][v4[fn2("fӟ\144\186|\152", 30015221198129)]] or WebSocket and WebSocket[v4[fn2("\202Be\155Q\245>", 758084862658)]] or WebsocketClient and function(arg)
	local v44 = WebsocketClient[v4[fn2("\188m\224", 16394390485924)]](arg)
	v44:Connect()
	return v44
end

local fn6 = nil

fn6 = function(arg)
	local tbl10 = {}

	for k, v44 in v41(arg) do
		local n = #tbl10 + 1
		local v45 = v4[fn2("'\200\247\146 \170_\227", 34886936526570)]
		local v46 = v4
		local flag10 = v40(v44) == v46[fn2("\20/x-\133", 7497094208326)] and fn6(v44)

		if not flag10 then
			local v47 = v4
			flag10 = v4[fn2("=", 18649317131224)] .. v44 .. v47[fn2("Z", 173951484066)]
		end

		tbl10[n] = v37(v45, k, flag10)
	end

	return v4[fn2("i", 24314551883892)] .. v38(v39(tbl10), 0, -2) .. v4[fn2("\194", 22373167419748)]
end

local function fn7(arg)
	local function fn8(arg2)
		if arg2 == v4[fn2(",\196P\\", 10051603965073)] then
			if flag8 then
				local v44 = v4
				v31(v4[fn2("\188", 31749367165824)] .. os[v4[fn2("\0302\18I\236", 28036254623230)]]() .. v44[fn2("]F\213\251\200_\178F\20\156:\132P\20@C\245\5rT\147\137\228\134\r\254\141{\211", 1801793767054)])
			end

			arg[v4[fn2(",\186lJ\254\246p\224", 16202184833777)]] = tick()
			return
		end

		local v44 = v4
		local v45 = string[v4[fn2("\159\11\208\29\209", 9071247761664)]](arg2, v44[fn2("\188\201\31<\247\150\244\169-\6\18", 23326679258332)])

		if flag8 then
			local v46 = v4
			v31(v4[fn2("\7", 33022863833122)] .. os[v4[fn2("\127>\184\15\133", 17304951340788)]]() .. v4[fn2("\1651f.\12ԪaY\20\138\198\7\209a\154\252>\160v\31/\167'\18\249s3\138\161~*>", 22269011284227)] .. arg2 .. v46[fn2(" ", 17028991270387)])
		end

		if v45 then
			local v46 = arg[v4[fn2("Ƣn!\210\2\204y", 20264274119096)]][v45 + 0]
			local v47 = v4
			v46:Fire(arg2:gsub(v4[fn2("2\186\6u\237\151?\157\214\218\26", 16177488018138)], v47[fn2("", 19126073050516)]))
			return v46:Destroy()
		end

		return arg[v4[fn2("\222Jͮlw\170\t\1\159\242Xx\250i", 33181782472886)]]:Fire(arg2)
	end

	local fn9 = nil

	fn9 = function()
		if flag8 then
			local v44 = v4
			v31(v4[fn2("\20", 25372219857997)] .. os[v4[fn2("\31\244\136j\213", 5980924483010)]]() .. v44[fn2("\245\140.:\174\129O1!\183\\", 29455784635176)])
		end

		arg[v4[fn2("\154p\255\171h\15\253<\144\234\187\20\22\154\6", 7238314531413)]] = false

		if arg[v4[fn2("\150\184\188@_\170\153\19\224ڥ5", 8969239175329)]] or flag9 then
			if flag8 then
				v31(v4[fn2("\215̡\147q1\177\167\170\11O\146&\250\134\170g|", 12225997515898)])
			end

			return
		end

		local n = 0
		local v44

		while true do
			if flag8 then
				local v45 = v4
				v31(v4[fn2("\8", 25877967691300)] .. os[v4[fn2("\242\131\241\176\153", 32213237790000)]]() .. v45[fn2("\158\5\232\183M\152\162w\231Y\191\203\31\168H\18Cu\188<\171s\200\226N\20\133\25n\255\209ȴV\192\30ǁv", 28825478949085)])
			end

			local v45 = v25()
			local flag10 = false
			local v46 = nil
			v44 = nil

			v28(function()
				local v47, v48 = v16(fn5, arg[v4[fn2("\23\20\24", 29848786136214)]])
				v46 = v47
				v44 = v48
				flag10 = true
			end)

			while not flag10 and v25() < v45 + 8 do
				v42()
			end

			if flag8 then
				local v47 = v4
				v31(v4[fn2("\128", 29034864994720)] .. os[v4[fn2("\175\nP\245\156", 12251768106130)]]() .. v4[fn2("z\24ث\148\2523\254\223\1\222Q\227{\241\197\249\\\11_h\181", 34490713701753)] .. v33(flag10) .. v4[fn2("\127\132\31\28g\n", 10375883892159)] .. v33(v46) .. v47[fn2("\12", 27328637166443)])
			end

			if not flag10 then
				flag6 = false
				n = 10

				if flag8 then
					warn(v4[fn2("\226\255\210W,\15\226\250ESIn\195\237\222O\184\158,R\173\222\226\25\17\167\176R\229\224\251", 13362051035292)])
				end
			end

			if not v46 then
				n += 1

				if n > 5 then
					flag6 = false
				end

				v42(n < 4 and 10 or 120)
				continue
			end

			break
		end

		if flag8 then
			local v45 = v4
			v31(v4[fn2("\194", 33361102829917)] .. os[v4[fn2("nG\178p\189", 1458185897294)]]() .. v45[fn2("\148\235A|\17\230\0113\2209x\22|\149\178\167\141\242\182\164\19x\130\238", 2558804855119)])
		end

		arg[v4[fn2("\204*c\136֯\156\235c\228#\163\143\18\204", 14980229346943)]] = true
		arg[v4[fn2("\196\28p0\225\186\219]\246", 13544592716102)]] = v44
		flag6 = arg
		local v45 = v4

		v44:Send(fn6({
			[v4[fn2("\144\157\26\202J\143", 30815183269914)]] = v45[fn2("\158\177\19U", 18578448008086)],
			[v4[fn2("\222U\224\t", 256632127727)]] = {},
		}))

		v16(function()
			v44[v4[fn2("k(\166.\2433M", 11661192079980)]]:Connect(fn9)
			v44[v4[fn2("\15\210\249~|\227\202\248q", 12796171824781)]]:Connect(fn8)
		end)

		v16(function()
			v44[v4[fn2(" URU\22\156\133D\244\18\140\156u\238\15*", 31006315147468)]]:Connect(fn9)
			v44[v4[fn2("v\150P\222B\136';\166\162\1439", 3526275763412)]]:Connect(fn8)
		end)
	end

	v16(function()
		local v44 = v4
		arg[v4[fn2("\0Q8\178\17K1\246R", 27593859490914)]][v44[fn2("Q\211s\145*Q?", 8519327620862)]]:Connect(fn9)
		local v45 = v4
		arg[v4[fn2("\197,r \183r\1669N", 8460270018247)]][v45[fn2("Ó@Qd\143\153|\223", 32507452028482)]]:Connect(fn8)
	end)

	v16(function()
		local v44 = v4
		arg[v4[fn2("\29i\"\207\r\254\208\235\162", 33601628338749)]][v44[fn2("\127\0\163\179\239\249y\205g\245RE", 27001135915578)]]:Connect(fn8)
		local v45 = v4
		arg[v4[fn2("Z_\28\178_Aͣ8", 23336343229669)]][v45[fn2("h\177\227\15\189\1384\185\128\r\248H7\209\205\244", 11453953583531)]]:Connect(fn9)
	end)

	arg[v4[fn2("U0\18973y\172\177", 26105607905016)]] = tick()

	while v42(10) do
		if flag8 then
			local v44 = v4
			v31(v4[fn2("\145", 14951237432932)] .. os[v4[fn2("\2286\234N\229", 22975554966421)]]() .. v44[fn2("ח\31]\186]\218A}\226[{\251\17t\146էړg\20\toć:\170", 14658096969043)])
		end

		if arg[v4[fn2("\200tK\173\215\207e8\175\212\11Or\171\158", 15693215676695)]] then
			local v44 = v4

			arg[v4[fn2("t\168\177Eņ\218\30\232", 31886810313728)]]:Send(fn6({
				[v4[fn2("+\30H\139\251Z", 29989450607897)]] = v44[fn2("\234\23\201\8", 21721386241797)],
				[v4[fn2("\227o\137\144", 9220502430091)]] = {},
			}))

			if tick() - arg[v4[fn2("\161\183W҉G\174\t", 26743430013258)]] > 20 then
				if flag8 then
					local v45 = v4
					v31(v4[fn2("=", 25162833812362)] .. os[v4[fn2("\2501\245\132\"", 26944225862149)]]() .. v45[fn2("\240\161\251\171\150\228~\247ֶ\166T\188\2\n\31\4\nlA!\3P\242", 20296487356886)])
					warn(v4[fn2("\222\6\189\254ChVJX'\161Kl\129", 21935067385804)])
				end

				arg[v4[fn2("\156\156&\216d,<\149*", 15423698253852)]]:Close()
			end
		end
	end
end

tbl9.new = function(arg, arg2)
	local tbl10 = {}
	v20(tbl10, arg)
	arg[v4[fn2("\227t\243=\230\148\11", 15742609307973)]] = arg
	local v44 = v25()
	local flag10 = false
	local v45 = nil
	local v46 = nil

	v28(function()
		local v47, v48 = v16(fn5, arg2)
		v45 = v47
		v46 = v48
		flag10 = true
	end)

	while not flag10 and v25() < v44 + 8 do
		v42()
	end

	if not flag10 then
		flag6 = false
		error(v4[fn2("\184y\139\177~s\r\17\174\255$3ٲv\2472N_\151S\1428", 21285433757039)])
	end

	assert(v45, v46)
	arg[v4[fn2("\232\nl\8\221\198\244\158\162", 15444099971119)]] = v46
	arg[v4[fn2("\212\216b", 32886494459811)]] = arg2
	local v47 = v4
	arg[v4[fn2("\154\254+\5n)\173\161d\163\227\187\2262\186", 7107314031067)]] = Instance[v4[fn2("f̜", 13855987348072)]](v47[fn2("\12\2423\140\203\204q\2223\23\184\t\169", 19879862814802)])
	local v48 = v4
	arg[v4[fn2("\246M\198tb߸\2464", 4490525347926)]] = arg[v4[fn2(">RVz5\150\2A\180;\184ķ\181\202", 26856176345523)]][v48[fn2(">4z\139p", 25648179928398)]]
	arg[v4[fn2("sfê\t\245<\19", 6486672316313)]] = {}
	arg[v4[fn2("U\245\146]\170\143@8N@#\176\212\228\178", 12321563454675)]] = true
	v43(fn7)(arg)

	repeat
		v29:Wait()
	until arg[v4[fn2("\174\181j@\3-\232\22", 34774190194305)]]

	return tbl10
end

tbl9.request = function(arg, arg2)
	if flag8 then
		local v44 = v4
		v31(v4[fn2("v", 34172876422225)] .. os[v4[fn2("\1532\200F\140", 32307729954184)]]() .. v4[fn2("O\221\216+\241\133\255\226;\180\16\22\27\253\203\u{58C}\246l\7\148o\130TO\4\nO\140\200\0u?\140u\183\132J\245hS\144\30<\219\3", 4505558192228)] .. v33(arg[v4[fn2("\239調\168\155^Q\134(\151\189m\150\196", 22259347312890)]]) .. v44[fn2("\200", 12545982344612)])
	end

	local n = 0

	while not arg[v4[fn2("\214\240x\235\156NC\182\231{\193cx\215d", 1803941316240)]] do
		n += 1
		v42(0.1)
		if not (n > 40) then
			continue
		end

		if flag8 then
			warn(v4[fn2("\1950\131r\170\212EȪ\218Bil", 4536697655425)])
		end

		flag6 = false
		return v4[fn2("", 22063920336964)]
	end

	if flag8 then
		local v44 = v4
		v31(v4[fn2("Y", 27805393085735)] .. os[v4[fn2("\207\199us@", 9663971337000)]]() .. v44[fn2("bp\228\206D\24\1659\145\143\129bc\145\235\171\\\3\127[\2340x\247[\199GvH\160Q\147?\225̣w\tC", 19677993191318)])
	end

	local v44 = math[v4[fn2("\158\226\202\\\232\159", 458501751211)]](1, 99999999)
	local v45 = v4
	local v46 = Instance[v4[fn2("J\3\167", 23438351816004)]](v45[fn2("\203%q\241\205e\171\179\26\144\200.v", 12404244098336)])

	if flag8 then
		local v47 = v4
		v31(v4[fn2("o", 27769958524166)] .. os[v4[fn2(">\238W\231\186", 6757263513749)]]() .. v47[fn2("\221O\190w\196!\176\224\7\187#ʮgm\217c", 26137821142806)])
	end

	arg[v4[fn2("\227\197\200eba\232\t", 21769706098482)]][v44] = v46
	local v47 = v4

	arg[v4[fn2("\178\18Q\147\250:[\134\176", 17162139319919)]]:Send(fn6({
		[v4[fn2("~\148\234\238Ɗ", 22738250781368)]] = v47[fn2("\142YQϺ\16\149", 21390663667153)],
		[v4[fn2("s\182\11\31", 24974923258587)]] = arg2,
		[v4[fn2("\183\1", 1700858955312)]] = v44,
	}))

	if flag8 then
		local v48 = v4
		v31(v4[fn2("\215", 27636810474634)] .. os[v4[fn2("-O0\128\243", 26764905505118)]]() .. v48[fn2("\229\171\27\129\190\143\178\29\245<<\251}yL", 15506378897513)])
	end

	local flag10 = false

	v28(function()
		v42(30)

		if not flag10 then
			if flag8 then
				local v48 = v4
				v31(v4[fn2("\178", 20659423169320)] .. os[v4[fn2("͗q;\138", 2741346535929)]]() .. v48[fn2("\195wkZ\144wȺ\168\1644\255\201\252U=\131\243\6\174KR!\250\179?ä\203\200\249\131\225<=c\8\216H\2452C\236\245\5\156", 29761810394181)])
			end

			local v48 = arg[v4[fn2("į\140R\1966\251\147", 8061899644244)]][v44]
			v48:Fire(v4[fn2("", 10378031441345)])

			if flag8 then
				local v49 = v4
				v31(v4[fn2("\19", 4223155474269)] .. os[v4[fn2("\138J\234w\251", 2422435481808)]]() .. v49[fn2("\220\225Ȣ\212/\159\152\17\130\1\192\160\175\215+\170\142-\222\01938\151\237#G\250s}\166a\1", 34310319570129)])
			end

			return v48:Destroy()
		end
	end)

	local v48 = v46[v4[fn2("6y\14\152\246", 14892179830317)]]
	flag10 = true
	return (v48:Wait())
end

tbl9.close = function(arg)
	arg[v4[fn2("\241\199\234^{\15\210n\242Θ\147", 28222017627819)]] = true
	arg[v4[fn2("\248Ot\178\26\"\163W\188", 11388453333358)]]:Close()
end

local v44 = script_key or v4[fn2("O8\150\147", 28215574980261)]
local n8 = 0
local flag10 = false

v28(function()
	flag10 = true

	while not flag7 do
		n8 += 1
		v29:Wait()
	end
end)

while not flag10 do
	v29:Wait()
end

local function fn8()
	local v45 = n8

	while n8 == v45 do
		v29:Wait()
	end
end

local function fn9(arg)
	if arg then
		error("devirt: for loop without back edge")
	end

	while v22() do
	end
end

local function fn10(arg)
	for i = 1, 2 do
		local n = arg % 9915 + 4
		local n9 = nil
		local n10 = nil

		for i2 = 1, 3 do
			n9 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n9 += 522
			end

			n10 = arg % 9996 + 1

			if n10 % 2 ~= 1 then
				n10 *= 3
			end
		end

		local n11 = arg % 9999995 + 1 + 5262
		local n12 = arg % 1000
		local n13 = fn3((arg - n12) / 1000) % 1000
		local n14 = arg % (n * n9 + 9999) + 5262
		arg = (n12 * n13 + n11 + arg % (419824125 - n11 + n12) + (n14 + n12 * n9 + n13) % 999999 * (n11 + n14 % n10)) % 99999999999
	end

	return arg
end

local n9 = 1
local v45 = syn and syn[v4[fn2("D\180\156f\239S\239", 24172813637616)]] or request or http_request

if v14 and ({ v14() })[1] == v4[fn2("\25\247}t\225\1\187", 7949153311979)] then
	n9 = 9
elseif v14 and ({ v14() })[1] == v4[fn2("\144\144T\182[\138\11\21\232z", 2290361206869)] then
	if ({ v14() })[2] == v4[fn2("@I\129", 19850870900791)] then
		n9 = 5
	else
		n9 = 2
	end
elseif FLUXUS_LOADED or EVON_LOADED or WRD_LOADED or COMET_LOADED or OZONE_LOADED or TRIGON_LOADED then
	n9 = 4
elseif KRNL_LOADED then
	n9 = 3
elseif Electron_Loaded then
	n9 = 6
elseif v14 and ({ v14() })[1] == v4[fn2("\171\192\220JXȜ", 12815499767455)] then
	n9 = 7
elseif v14 and ({ v14() })[1] == v4[fn2("\169\192C<\132\166", 18670792623084)] then
	n9 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("\229\232Z}%\134\210K`", 16058299038315)] then
	n9 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("v\191", 18668645073898)] then
	n9 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("\138\203G|", 30760420765671)] then
	n9 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("y\142\4\231\253", 9953890477110)] then
	n9 = 11
elseif v14 and ({ v14() })[1] == v4[fn2("h\16\196\"\236", 28973659842919)] then
	n9 = 15
end

if v14() == v4[fn2("\236<\200I", 5129421230761)] then
	n9 = 11
end

local function fn11(arg, arg2)
	tbl7 = {}
	tbl6 = {}

	for i = 0, arg do
		local v46 = v13(i)
		tbl6[i] = v46
		tbl6[v46] = i
	end

	for i = 1, #arg2 do
		local v46 = arg2[i]
		tbl7[i - 1] = v46
		tbl7[v46] = i - 1
	end
end

local tbl10 = {}
local v46 = v4[fn2("?", 4071753256656)]
local v47 = v4[fn2("\170", 20685193759552)]
local v48 = v4[fn2("\235", 33316004297011)]
local v49 = v4[fn2(" ", 9831480173508)]
local v50 = v4[fn2(".", 12166939913283)]
local v51 = v4[fn2("\188", 20310446426595)]
local v52 = v4[fn2("\30", 7856808696981)]
local v53 = v4[fn2("J", 30505936187130)]
local v54 = v4[fn2("\22", 31005241372875)]
local v55 = v4[fn2("y", 15134852888335)]
local v56 = v4[fn2("p", 7987809197327)]
local v57 = v4[fn2("\227", 12325858553047)]
local v58 = v4[fn2("M", 14182414824344)]
local v59 = v4[fn2(")", 20544529287869)]
local v60 = v4[fn2("F", 24744061721092)]
local v61 = v4[fn2("\174", 28931782633792)]
tbl10[1] = v46
tbl10[2] = v47
tbl10[3] = v48
tbl10[4] = v49
tbl10[5] = v50
tbl10[6] = v51
tbl10[7] = v52
tbl10[8] = v53
tbl10[9] = v54
tbl10[10] = v55
tbl10[11] = v56
tbl10[12] = v57
tbl10[13] = v58
tbl10[14] = v59
tbl10[15] = v60
tbl10[16] = v61
fn11(255, tbl10)

fn3 = function(arg)
	return arg - arg % 1
end

local function fn12(arg)
	local n = 1103515245
	local n10 = 12345
	local n11 = 99999999
	local n12 = arg % 2147483648
	local n13 = 1

	return function(arg2, arg3)
		local v62 = n11
		local n14 = n * n12 + n10
		local n15 = n14 % v62 + n13
		n13 += 1
		n12 = n15
		n10 = n14 % 4859 * v62 % 5781
		return arg2 + n15 % arg3 - arg2 + 1
	end
end

local function fn13(arg)
	for i = 1, 2 do
		local n = arg % 9915 + 4
		local n10 = nil
		local n11 = nil

		for i2 = 1, 3 do
			n10 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n10 += 522
			end

			n11 = arg % 9996 + 1

			if n11 % 2 ~= 1 then
				n11 *= 3
			end
		end

		local n12 = arg % 9999995 + 1 + 5262
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n * n10 + 9999) + 5262
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	return arg
end

local function fn14()
end

local function fn15(arg)
	local tbl11 = {}
	local tbl12 = {}
	local tbl13 = {}

	for i = 1, 13 do
		local tbl14 = {}
		local tbl15 = {}
		tbl11[tbl14] = tbl15
		tbl12[tbl15] = i
		tbl13[tbl14] = tbl15
	end

	if arg then
		tbl12 = arg[2]
		tbl13 = arg[3]
		tbl11 = arg[1]
	end

	local n = 0
	local n10 = 0
	local n11 = 0

	for k, v62 in v12, tbl11, nil do
		local v63 = tbl12[v62]

		if tbl13[k] == v62 then
			n += 1
		end

		n10 += 1
		n11 = n10 % 2 == 0 and n11 * v63 or n11 + v63 + n10
	end

	if n ~= 13 then
		n7 = -1
	end

	tbl8 = { tbl11, tbl12, tbl13 }
	n7 = n11
	return false
end

local function fn16(arg)
	for i = 1, 2 do
		local n = arg % 9915 + 4
		local n10 = nil
		local n11 = nil

		for i2 = 1, 3 do
			n10 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n10 += 522
			end

			n11 = arg % 9996 + 1

			if n11 % 2 ~= 1 then
				n11 *= 3
			end
		end

		local n12 = arg % 9999995 + 1 + 5262
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n * n10 + 9999) + 5262
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	return arg
end

local function fn17(arg)
	for i = 1, 2 do
		local n = arg % 9915 + 4
		local n10 = nil
		local n11 = nil

		for i2 = 1, 3 do
			n10 = arg % 4155 + 3

			if i2 % 2 == 1 then
				n10 += 522
			end

			n11 = arg % 9996 + 1

			if n11 % 2 ~= 1 then
				n11 *= 3
			end
		end

		local n12 = arg % 9999995 + 1 + 5262
		local n13 = arg % 1000
		local n14 = fn3((arg - n13) / 1000) % 1000
		local n15 = arg % (n * n10 + 9999) + 5262
		arg = (n13 * n14 + n12 + arg % (419824125 - n12 + n13) + (n15 + n13 * n10 + n14) % 999999 * (n12 + n15 % n11)) % 99999999999
	end

	return arg
end

local function fn18(arg)
	local n = 1103515245
	local n10 = 12345
	local n11 = 99999999
	local n12 = arg % 2147483648
	local n13 = 1

	return function(arg2, arg3)
		local v62 = n11
		local n14 = n * n12 + n10
		local n15 = n14 % v62 + n13
		n13 += 1
		n12 = n15
		n10 = n14 % 4859 * v62 % 5781
		return arg2 + n15 % arg3 - arg2 + 1
	end
end

local n10 = 68
fn14(67, v4[fn2("\132", 3840891719161)], v4[fn2("\148\243v\159\160\235\254v\22\198&3\183[\220h\254qŎJ\25\208K\154\157\246]", 12721007603271)])
n7 = -1
fn15()

while n7 == -1 do
end

local v62 = fn18(n8 + n7)

if n9 == 9 or n9 == 15 then
	local n = 0

	v16(function()
		local function fn19(arg)
			v33(arg[1])
		end

		fn19(v20({}, { [v4[fn2("\216K\237\155\22XS", 643190981207)]] = function()
			local fn20 = nil

			fn20 = function()
				n += 1
				return fn20()
			end

			fn20()
		end }))
	end)

	local n11 = 0

	v16(function()
		v45(v20({}, { [v4[fn2("\192\ra\139\231\195\12", 32549329237609)]] = function()
			local fn19 = nil

			fn19 = function()
				n11 += 1
				return fn19()
			end

			fn19()
		end }))
	end)

	if n11 + n < 20000 then
		n10 = 19
	elseif n11 - n ~= 0 then
		n10 = 189
	end
end

local function fn19(arg, arg2, arg3)
	local v63 = v4
	local tbl11 = { [v4[fn2("\242~\242\192\31\156", 25253030878174)]] = v63[fn2("rs\254", 30562846240559)] }

	if arg2 then
		tbl11 = v20(tbl11, { [v4[fn2("\216\21m\142\201m\185", 4427172646939)]] = function(arg4, arg5)
			if arg5 == v4[fn2("6c\17", 29393505708782)] then
				local v64 = v4
				local v65 = v17(v18(), v64[fn2("\1639\5\144\26ǈu&/\184", 32746903762721)])
				local v66 = v65()
				local v67 = v65()
				local n = 1

				v16(function()
					n = v19(v67) - v19(v66)
				end)

				if (n9 == 9 or n9 == 15) and (n ~= 0 or v66 ~= v67) then
					n10 = 121

					while arg3 do
					end
				end

				return arg
			end

			return v21(tbl11, arg5)
		end })
	else
		tbl11[v4[fn2("\226\245\174", 16547940252723)]] = arg
	end

	local v64 = v45(tbl11)

	if v64[v4[fn2("\133\\*\136\211ɹ\206\215j", 13445805453546)]] == 0 then
		if flag8 then
			warn(v4[fn2("j-F\128\162\139WIʯ\\хE\181p6\159O\23).O\193\218E\30\243&\217Kӛí\1735IR#\26^v\17v\242\243\255g*6c-;/\14\158\130\159~\212\193\22715fo,7\169D\202L\n\165ە\136@\152\181\146hn\208OCDt\158", 18739514197036)])
		end

		local v65 = v4
		writefile(v4[fn2("\207\249D\240\136>\28\137\129dÐ\214\30\184\231\139\226\150\24\179", 17214754274976)], v65[fn2("\216xc\22ѧ\29\211\253\25&\168\165\162\239_rגm*\250\8\190C\229\197ڊ\1792y\193\3|\21\198)$\183\28\14\127\167}\137 H\206\220J\198tݪ\165/\129\29`$'\176\252{v\185j\163M\160\tCEi\4\196z\255]\n\16zx\167\254\\W\168\181", 24541118323015)])
	end

	return v64[v4[fn2("2\224o\143", 15183172745020)]], v64[v4[fn2("\235\144\243\23326\138", 30737871499218)]]
end

fn8()

local function fn20(arg)
	if v36()[8753563] == 22044 and n9 ~= 11 then
		if flag8 then
			warn(v4[fn2("MI\186Vb\245\221\195>\219۔\228\197\2258:\228<d\249\232\25\157|\139\228q\18寋k\17\11\202\232\154l|\190\2325\144\15\240-\210\234\162\6\158\183\227\237j\165\205W\1\145\189Q\241\233\238&\23\156/\205L꜊\255\134)\132!\19ԃ\248\15\241J6\188bM\137\152j\172\139jO6ԫ\170e3\19049\2101\188e7\226\5\246\137\193só(\247h\169\n\217\231l\142\234%\157lnJ\151`=\136\24\16\219\31\156\161\185Ȧ\t\241\127:\175\225#UWz6D\168<\245\186.ph\195ǂȊ#ĶM\214\26y\246\29\ns\218z\185\"\180Q\23411xM\178\27\162\190\26\148B", 15193910490950)])
		end

		v28(function()
			v22(5)
			v36()[8753563] = nil
		end)

		fn9()
	end

	v36()[8753563] = 22044
	local flag11 = false
	local tbl11 = { v23, v20, v33 }

	tbl11[-1] = n9 == 3 and function()
	end or v45

	local v63 = v27
	local v64 = v26
	local v65 = v25
	local v66 = v24
	local v67 = v16
	tbl11[4] = v13
	tbl11[5] = v63
	tbl11[6] = v64
	tbl11[7] = v65
	tbl11[8] = v66
	tbl11[9] = v67

	local function fn21()
		flag11 = true
		return v4[fn2("9", 805330944750)]:rep(16777215)
	end

	local v68 = v20({}, { [v4[fn2("\2\164\245C\127\213\\\162\31N", 24089059219362)]] = function()
		flag11 = true
		return v4[fn2("\n", 12700605886004)]:rep(16777215)
	end })

	for k, v69 in v12, tbl11, nil do
		if k ~= -1 then
			local flag12 = n9 ~= 11

			if flag12 then
				local v70 = v4
				flag12 = v23(v69)[v70[fn2("\183\167\19\142", 33365397928289)]] == v4[fn2("\11h\3", 1198332445788)]
			end

			if flag12 then
				flag11 = true
			end
		end

		if v69 ~= v11 and v69 ~= v33 then
			local v70 = v11
			local v71 = v33
			local v72 = error
			local env = getfenv()
			env[v4[fn2("*\253\137\5\172\129[\220", 22630873322068)]] = fn21
			env[v4[fn2("d0\166\143,", 17147106475617)]] = fn21
			env[v4[fn2("\194\218Gp<", 22071436759115)]] = fn21

			if k == -1 then
				if n9 ~= 5 then
					v16(v69, v4[fn2("", 22141232107660)])
				end
			else
				v16(v69, v68)
			end

			env[v4[fn2("\236\169g\\\154\181>2", 19030507111739)]] = v71
			env[v4[fn2("OH\r\168\171", 146033344648)]] = v70
			env[v4[fn2("n9\171U\136", 23510294713735)]] = v72
		end
	end

	if flag11 and n9 ~= 11 then
		n10 = 85

		if arg then
			fn9(true)
		end
	end

	v36()[8753563] = nil
end

local v63 = n8
local v64 = nil
local flag11 = nil
local exitTo = nil

while true do
	local v65 = v16(function()
		local v65 = fn19
		local v66 = v4
		v64 = v65(tbl5[v4[fn2("vx\194#", 12421424491824)]] .. v66[fn2("[O\242\0037\14\186", 5635169064064)], n9 == 9 or n9 == 15)
		local data = v15:GetService(v4[fn2("\14\162\t\231\29\182*\207)\183p", 24734397749755)]):JSONDecode(v64)

		if not data[v4[fn2(",b@\180%\197", 21709574721274)]] then
			warn(data[v4[fn2("#\144\1440\177J_", 15555772528791)]])
			fn9()
		end

		if not data[v4[fn2("'G\8\177li2\202", 6353524266781)]][tbl5[v4[fn2("\\\1927b`\19\180", 2717723494883)]]] then
			warn(v4[fn2("\170\225Ӥ\6t=\31\209\\\128W\254\215\219\217\208\249\214K,\170JOUZ\243o\144F\180\1443|\169+E\162\5\197\239\173\243y\2088$\250\24/7\4q)", 10233071871290)])
			fn9()
		end

		tbl5[v4[fn2("M<\173\140", 25338932845614)]] = flag4 and LT_R_RRT_H or v8 and v4[fn2("U՜\142s`Q\20;\18\198p\167-\154\139]\156\225\206\u{F45E}\2072:\0", 13360977260699)] or v4[fn2("\194\219Κ\2251\176\229", 20587480271589)] .. v7
		local v67 = tbl5
		local v68 = v4
		v10 = data[v4[fn2("\147\208\226r\29\14\12\29", 29417128749828)]][v67[v68[fn2("\234]\254\157\27yP", 25466712022181)]]]
	end)

	fn8()

	if not v65 then
		if not flag11 then
			fn14(69, v4[fn2("\132", 5187405058783)], v4[fn2("z\144\199zz\217\30\184 .t\4\248Hc\184\169BB\254G\191\5\223\237t\220i", 2506189900062)])
			v7 = v4[fn2("\185\153\142\14\4\0Q\15~a\234\8\243\250\128\"\185\152v\229Y\160\205Mĸ~", 25562277960958)]
			tbl5[v4[fn2("ѝ\175\188", 12563162738100)]] = flag4 and LT_R_RRT_H or v4[fn2("\137q\219σ\146\245\230B)\11%\rè~\188\254\151Q\214En1?\194h\197p\202>\191\128\188\166", 19243114481153)]
			flag11 = true

			if v65 then
				exitTo = 1
				break
			else
				continue
			end
		end

		break
	elseif v65 then
		exitTo = 1
		break
	end
end

if exitTo ~= 1 then
	fn14(100, v4[fn2("n\218\192\176\129w\151\190\193\1756", 21845944094585)], v4[fn2("-\209 \r\161\128\30\181)\162\169\194\240\156\19Ȣs\0212\188p\207(\188\240\176\157\230\2\142\167\11\226\159&\233", 10693721171687)] .. v33(v64), Color3[v4[fn2("\211\207k", 18772801209419)]](1, 0, 0), v4[fn2(" `\4\162\157", 18561267614598)])
	return
end

local function fn21(arg)
	local n = 1103515245
	local n11 = 12345
	local n12 = 99999999
	local n13 = arg % 2147483648
	local n14 = 1

	return function(arg2, arg3)
		local v65 = n12
		local n15 = n * n13 + n11
		local n16 = n15 % v65 + n14
		n14 += 1
		n13 = n16
		n11 = n15 % 4859 * v65 % 5781
		return arg2 + n16 % arg3 - arg2 + 1
	end
end

local flag12 = false

v28(function()
	if not v16(function()
		local v65 = tbl9
		local new = v65.new
		local v66 = flag4 and LT_R_RRT_W
		local str2

		if v66 then
			str2 = v66
		else
			str2 = v8

			if v8 then
				local v67 = v7
				local v68 = v4
				str2 = v4[fn2("\183b\225(\6", 22124051714172)] .. v67 .. v68[fn2("0Mz'W!\18\31\179uwA\241", 2211975661580)]
			end
		end

		if not str2 then
			local v67 = v7
			local v68 = v4
			str2 = v4[fn2("\146?\180M\218\\", 11448584710566)] .. v67 .. v68[fn2("S\1344\0225\167y%\153\151\160p\17F", 6916182153513)]
		end

		flag6 = new(v65, str2)
	end) then
		local v65 = v4
		fn14(75, v4[fn2("$", 1674014590487)], v65[fn2("\3ER\150\169\174/D\168\171\182\25\\\129i\223kg\5\21\233\248\2127\249՞\184\27\144\31\179\180xO\159\127݀*\28\194TT\189\145\233z\n", 9788529189788)])
		flag6 = false
	end

	flag12 = true
end)

local n11 = n8 % 8585 * v63 % 9910
fn20()

if flag5 then
	n10 = 146
end

fn14(85, v4[fn2("\164", 31753662264196)], v4[fn2("e\249\24\25\161 \251\8\2081\171\141\127Q:\247V\12\157\2432\28\237a\225", 6450163980151)])
local v65 = fn21(n11 + v62(2, 4096))
local v66 = v62(1111, 32768)
local n12 = 12000 + ((1398563873 * ((1398563873 * (1361 + n11 + n7 % 1000 + n7) % 1610612736 + 22491) % 95716599 + 1) + 22491) % 95716599 + 1) % 120000 - 12000 + 1
local tbl11 = { n12 + v65(100000, 1000000), v66, n12 + v62(3333, 15625) + n8, (v65(10000, 1000000)) }
n7 = -1
fn15()
local flag13 = false

if n7 == -1 then
	n7 = 100
	flag13 = true
end

local n13 = 0
local n14 = 0
local n15 = 0
local n16 = 1
local tbl12 = { [0] = 0 }

local function fn22(arg, arg2, arg3)
	local n = arg2 and arg or tbl6[arg]

	if not arg3 then
		n = (n + 4096 - tbl12[n13]) % 256
		n15 += n
		n13 = (n13 + 1) % n16
	end

	local n17 = n % 16
	return tbl7[(n - n17) / 16] .. tbl7[n17]
end

local function fn23(arg)
	local n = 0

	for i = 1, #arg do
		n += v26(arg, i)
	end

	return n
end

local function fn24(arg, arg2)
	local v67 = tbl7
	local n = (tbl7[v27(arg, 1, 1)] * 16 + v67[v27(arg, 2, 2)] + tbl12[n14]) % 256
	n14 = (n14 + 1) % n16
	if arg2 then
		return n
	end
	return tbl6[n]
end

local function fn25(arg)
	local tbl13 = {}
	n14 = 0
	local n = 1

	while true do
		local v67 = fn24(v27(arg, n, n + 1), true)
		n += 2
		local v68 = v4[fn2("", 13613314290054)]

		for i = 1, v67 do
			v68 ..= fn24(v27(arg, n, n + 1))
			n += 2
		end

		tbl13[#tbl13 + 1] = v68
		if not (n > #arg) then
			continue
		end
		break
	end

	return tbl13
end

local function fn26(arg, arg2)
	local v67 = fn22(#arg, true, arg2)

	for i = 1, #arg do
		v67 ..= fn22(v27(arg, i, i), false, arg2)
	end

	return v67
end

local function fn27(arg, arg2, arg3)
	if arg == 1 then
		tbl12 = arg2
		n16 = arg3
	elseif arg == 2 then
		n13 = 0
		n15 = 0
	elseif arg == 3 then
		return n15
	end
end

local v67 = fn18(v62(2, 32768 + v25() % 2000) + n7 % 4096)
local v68 = fn12(v65(1, 32768) + n8 + v25() % 1000)
local v69 = v67(111111, 999999)
local tbl13 = {}

for i = 1, v69 % 30 + 1 do
	local fn28

	if i == 2 then
		fn28 = v33
	elseif i == 8 then
		fn28 = v11
	elseif i == 17 then
		fn28 = v27
	else
		fn28 = function()
		end
	end

	tbl13[i] = fn28
end

local n17 = v68(111111, 999999) + 19194
local n18 = v67(1, 1234) * v68(2, 1235) + n7 % 80000
local n19 = 10000 + ((1445613873 * ((1445613873 * (n12 + n7) % 1627389952 + 23515) % 94716599 + 1) + 23515) % 94716599 + 1) % 100000 - 10000 + 1
local tbl14 = { n19 + v67(100000, 1000000), n19 + v68(100000, 1000000), (v67(100000, 1000000)) }

if v5 or v6 then
	n10 = 218
end

if flag13 then
	n10 = 250
end

local v70 = tbl14[1]
local n20 = 5116 + tbl11[4]
local n21 = tbl11[2] + 19194
local n22 = 5211 + tbl11[1]
local str2 = ((((((fn26(v4[fn2("", 26309625077686)] .. n17) .. fn26(v4[fn2("", 16740145904870)] .. fn16(5211 + v69) .. fn13(n10 + n18) .. fn10(n17 - 19194))) .. fn26(n18 .. v4[fn2("", 17472460177296)]) .. fn26(v4[fn2("", 27987934766545)] .. v69)) .. fn26(tbl11[3] + 1234 .. v4[fn2("", 13603650318717)])) .. fn26(v4[fn2("", 32880051812253)] .. v70) .. fn26(v4[fn2("", 16629547121791)] .. n20)) .. fn26(tbl14[3] .. v4[fn2("", 13202058620935)]) .. fn26(v4[fn2("", 15144516859672)] .. n21)) .. fn26(tbl14[2] .. v4[fn2("", 18783538955349)]) .. fn26(v4[fn2("", 8523622719234)] .. n22)) .. fn26(str or v4[fn2("\15", 2953953905343)])
local str3 = fn26(fn17(fn27(3) + 2845) .. v4[fn2("", 3140790684525)], true) .. str2
local tbl15 = {}
local v71 = v68(111111, 999999)
local v72 = n7
getfenv()[tbl15] = v71
local v73, v74 = fn19(tbl5[v4[fn2("\209\30p\238", 17011810876899)]] .. v4[fn2("V", 25199342148524)] .. v10 .. v4[fn2("\221\209\n=o\17", 1184373376079)] .. tbl5[v4[fn2("p<\196O\205\0158s", 21268253363551)]] .. v4[fn2("c>\6\3F\162+y", 3976187317879)] .. str3 .. v4[fn2("\167Q\174", 1858703820483)] .. tbl5[v4[fn2("\15s )\130R\2366K\160\146G\162", 33488882006484)]] .. v4[fn2("\142\229\173", 8988567118003)] .. v44, n9 == 9 or n9 == 15)
n7 = -1
fn15(tbl8)

while n7 == -1 do
end

while tbl11[2] ~= v66 do
end

local v75, v76, v77 = v34(tbl13)
local n23 = 0

for k, v78 in v75, v76, v77 do
	if k == 2 and v78 ~= v33 then
		n10 = 147
	end

	if k == 8 and v78 ~= v11 then
		n10 = 147
	end

	if k == 17 and v78 ~= v27 then
		n10 = 147
	end

	n23 = k
end

if n23 ~= v69 % 30 + 1 then
	n10 = 147
end

local flag14 = false

if n10 == 147 then
	flag14 = true
end

if n7 ~= v72 then
	n10 = 100
	flag14 = true
end

if v73 == v4[fn2("\196\205X", 28147927180902)] then
	while true do
	end
else
	local v78, fn28, n24, v79, n25, n26, v80, tbl16, n27, n28
	local n29

	do
		if v35(v73, v4[fn2("\166\222ʞ\1593\166ye\241v\251\148W\162\200<\128\148(ݯ\180\233/p\147\233F襣\136\185\170\1\172\250\235\173k", 1377652802819)]) then
			if v9 then
				v9(v4[fn2("Ҕ~E\164", 19446057879230)])
				return
			end
		end

		if v27(v73, 1, 1) == v4[fn2("\138", 5914350458244)] then
			local v81 = v4[fn2("l\24\178\25+\175\tY\29B갖X\23", 28383083816769)]
			local v82

			if string[v4[fn2("\220eg'", 2761748253196)]](v73, v4[fn2("\23GB\147\212y\236\24\167&\219\243@y;\217", 9639274521361)]) then
				v81 = v4[fn2("LY\1333\11w\134\174FP\194 \4\177,y7\5y", 15260484515716)]
				v82 = v27(v73, 2, #v73 - 17)
			else
				v82 = v27(v73, 2, #v73)
			end

			fn14(100, v4[fn2("\244\159\237\201L\217X\239\180\245$\181G?", 30952626417818)], v4[fn2("N=1MT {!\211Z\191R\207'\140\200\253|3\169\178\183\150U\25c", 27278169760572)], Color3[v4[fn2("\189o`", 30263263129112)]](1, 0, 0), v4[fn2("4\226\14\232\14", 13170919157738)])
			fn4(v81, v82)
			fn9()
		end

		if v74 then
			v74 = v74[v4[fn2("\2\209\252\2074\186vTX\135", 27265284465456)]] or v74[v4[fn2("\212/tO\130\27\16ĩ\177", 17419845222239)]]
		end

		v78 = v74 or nil
		local n = tbl11[4] % 256
		local tbl17 = { [0] = tbl11[1] % 256, tbl11[2] % 256, tbl11[3] % 256, n }
		fn8()

		fn28 = function(arg)
			local n30 = 1103515245
			local n31 = 12345
			local n32 = 99999999
			local n33 = arg % 2147483648
			local n34 = 1

			return function(arg2, arg3)
				local v81 = n32
				local n35 = n30 * n33 + n31
				local n36 = n35 % v81 + n34
				n34 += 1
				n33 = n36
				n31 = n35 % 4859 * v81 % 5781
				return arg2 + n36 % arg3 - arg2 + 1
			end
		end

		if getfenv()[tbl15] ~= v71 then
			n10 = 100
			flag14 = true
		end

		n24 = 1

		for i = 1, 30 do
			local v81 = v33({})
			local n30

			if v33({}) < v81 then
				n30 = n24 + 1
			else
				n30 = n24 * 2
			end

			n24 = n30 % 10000
		end

		fn27(1, tbl17, 4)
		v79 = fn25(v73)
		n25 = v79[1] - n17
		n26 = v79[4] - v69

		while n ~= tbl17[3] do
		end

		fn20()
		v80 = tbl17[3]

		tbl16 = {
			[0] = tbl17[0],
			[2] = tbl17[1],
			[4] = tbl17[2],
			[6] = v80,
			v79[9],
			[3] = v79[7],
			[5] = v79[2],
			[7] = v79[6],
		}

		fn27(1, tbl16, 8)
		n27 = v79[8] - tbl14[1]
		n28 = v79[3] - tbl14[2]
		n29 = v79[5] - tbl14[3]
		local str4 = v4[fn2("", 28654748788798)] .. fn17(tbl14[3] + 13278) .. fn16(tbl14[1] + 31) .. fn13(tbl14[2] + 4928)

		if v79[11] == str4 and ({ [str4] = true })[v79[11]] then
			flag2 = true
		else
			local str5 = v4[fn2("", 6334196324107)] .. fn10(tbl14[3] + 13278) .. fn13(tbl14[1] + 69) .. fn16(tbl14[2] + 4928)

			if v79[11] == str5 and ({ [str5] = true })[v79[11]] then
				flag2 = true
			end
		end
	end

	local n30, v81, str4

	do
		if flag2 then
			local flag15 = v19(v79[14] and v79[14] or v4[fn2("\230v", 11362682743126)]) == -1
			v19(v79[15] and v79[15] or v4[fn2("\8", 1527981245839)])
		end

		n7 = -1
		fn15()

		if n7 == -1 then
			n10 = 250
			n7 = 100
		end

		n30 = n8 + v67(111111, 999999) + v68(1234, 5678) + n7 % 99915 + n24
		tbl14[4] = n8 + n7 % 9951
		v67(100000, 1000000 + n7 % 1000)
		tbl14[5] = n7 % 8005 + n24 + v68(100000, 1000000 + n7 % 5000)
		tbl14[6] = v67(100000, 1000000)
		fn27(2)
		v81 = v79[10]
		local v82 = tbl14[6]
		local v83 = tbl14[4]
		str4 = fn26(v4[fn2("", 11551667071494)] .. fn13(v79[13] + 14843) .. fn17(n30 + n10) .. fn16(v79[10] + v69)) .. fn26(tbl14[5] .. v4[fn2("", 33512505047530)]) .. fn26(v4[fn2("", 24280191096916)] .. n30) .. fn26(v4[fn2("", 281328943366)] .. v82) .. fn26(v83 .. v4[fn2("", 30946183770260)])
	end

	local str5 = fn26(fn13(fn27(3) + 2845) .. v4[fn2("", 1284234413228)], true) .. str4
	local v82 = v79[12]
	local response = v15:HttpGet(tbl5[v4[fn2("\204=\165,", 285624041738)]] .. v4[fn2("\215", 34962100748080)] .. v10 .. v4[fn2("\180T}\144E`\233N0\18\159\197", 5342028600175)] .. v82 .. v4[fn2("l4\190", 13551035363660)] .. str5)

	while v80 ~= tbl16[6] do
	end

	if response == v4[fn2("-\n+", 31841711780822)] then
		while true do
		end
	else
		if v27(response, 1, 1) == v4[fn2("\231", 5502021014532)] then
			v15:GetService(v4[fn2("<\165\18]\1795\142", 2067016091525)])[v4[fn2("\135\2218q\250\240\249wOź", 21595754614416)]]:Kick(response)
			fn9()
		end

		do
			local v83 = fn25(response)
			local n31 = 1
			local v84 = fn28(1 + v67(100, 1000 + n24) + v68(500, 5000 + n24) + n8 % 10000)
			local flag15 = false
			local n32 = 0
			local flag16 = false
			local flag17 = false
			local v85 = nil

			for i = 1, 3 do
				local v86 = v83[3]
				local str6 = fn13(tbl14[5] + 19194) .. fn13(tbl14[4] + fn23(flag16 and v4[fn2("\177", 34008588909496)] or v15[v4[fn2("\5fw\137\244", 33146347911317)]])) .. fn13(tbl14[6] + tbl14[2])

				if v86 == str6 and ({ [str6] = true })[v86] then
					flag3 = true

					if not (v83[8] and v83[8] ~= v4[fn2("C", 5343102374768)] and v83[8]) then
						local v87 = v4[fn2("x\138\221<\173~N", 31676350493500)]
					end

					if not (v83[9] and v83[9]) then
						local v87 = v4[fn2("\190;h\148\252\0\245", 23283728274612)]
					end

					v85 = v83[6]

					do
						local n = v83[1] - tbl14[4]
						local n33 = v83[7] - tbl14[5]
						local n34 = v83[5] - tbl14[6]
						local v87 = n27
						local v88 = n28
						local v89 = n29

						n27 = function(arg)
							local v90 = flag15
							local flag18

							if flag15 then
								flag18 = v90
							else
								flag18 = n32 < v30() - 8
							end

							if not flag18 then
								n31 = (n31 + arg % 66) % 6644
								return v87 * arg % n + arg * 3
							end

							while true do
							end
						end

						n28 = function(arg)
							if not (flag15 or n32 < v30() - 8) then
								n31 = (n31 + arg % 50) % 5891
								return v88 * arg % 10000 + arg * n33 % 4
							end

							while true do
							end
						end

						n29 = function(arg)
							if not (flag15 or n32 < v30() - 8) then
								n31 = (n31 + arg % 35) % 6711
								return (arg + n34) % 100 * arg % (v89 % 100 + 1)
							end

							while true do
							end
						end
					end

					flag17 = true
					break
				elseif i == 3 then
					v85 = nil
				else
					flag16 = true
					v85 = nil
				end
			end

			if not flag17 then
				while true do
				end
			elseif flag14 then
				while true do
				end
			else
				local v86

				do
					do
						while not flag12 do
							v29:Wait()
						end

						flag7 = true

						do
							local flag18 = false
							local flag19 = false
							local n = 0
							local n33 = 0
							local n34 = 0
							local flag20 = false
							local n35 = 0
							local n36 = 0
							local v87 = v79[12]

							v28(function()
								flag19 = true

								while not flag9 do
									local n37 = v84(1000, n31 + 10000) + n31
									local n38 = v84(1000, n31 + 10000) + n31
									n35 = n37
									n36 = n38
									fn27(2)
									local v88 = fn26
									local str6 = fn26(n36 .. v4[fn2("", 15363566876644)]) .. v88(fn17(n36 + v81) .. v4[fn2("", 6862493423863)] .. fn16(n35 + n17)) .. fn26(n35 .. v4[fn2("", 13612240515461)])
									local v89 = v4[fn2("", 26792823644536)]
									... (7 MB left)
