local vu32 = loadstring(game:HttpGet("https://raw.githubusercontent.com/PlockScripts/Library-ui/refs/heads/main/redz-V5-remake/main.luau"))()
local v466 = vu32:MakeWindow({
    Title = "buy melee tween",
    SubTitle = "blox fruits",
    SaveFolder = "Redz | redz lib v5.lua"
})

v466:AddMinimizeButton({
    Button = { Image = "rbxassetid://16274808221", BackgroundTransparency = 0 },
    Size = UDim2.new(0, 35, 0, 35),
    Corner = { CornerRadius = UDim.new(0.25, 0) },
})

local v495 = v466:MakeTab({"Shop", "shoppingCart"})
v495:AddSection({"Fighting Style"})

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local LP = Players.LocalPlayer

-- Xác định Sea
local SEA
if game.PlaceId == 2753915549 or game.PlaceId == 85211729168715 then
	SEA = 1
elseif game.PlaceId == 4442272183 or game.PlaceId == 79091703265657 then
	SEA = 2
elseif game.PlaceId == 7449423635 or game.PlaceId == 100117331123089 then
	SEA = 3
else
	game.StarterGui:SetCore("SendNotification", {
		Title = "Lỗi",
		Text = "Game không được hỗ trợ",
		Duration = 5
	})
	return
end

_G.BuyFly = false
local currentTween = nil
local TargetPos = nil
local antiGravityConnection = nil

-- Hàm thông báo
local function Notify(msg, duration)
	game.StarterGui:SetCore("SendNotification", {
		Title = "Buy Melee",
		Text = tostring(msg),
		Duration = duration or 3
	})
end

local NPCS = {
	BlackLeg={[1]={Vector3.new(-988,13,3996)},[2]={Vector3.new(-4750.61, 35.08, -4846.33)},[3]={Vector3.new(-5043.64,371.35,-3183.40)}},
	Electro={[1]={Vector3.new(-5382.27,14.15,-2150.34)},[2]={Vector3.new(-4863.81, 35.08, -4767.54)},[3]={Vector3.new(-4993.20,314.56,-3198.06)}},
	FishmanKarate={[1]={Vector3.new(61584.35,18.85,988.89)},[2]={Vector3.new(-4960.04, 35.08, -4662.67)},[3]={Vector3.new(-5017.39,371.35,-3187.53)}},
	Superhuman={[2]={Vector3.new(1378.05, 247.43, -5189.37)},[3]={Vector3.new(-4997.53,371.35,-3197.46)}},
	DeathStep={[2]={Vector3.new(6360.04, 296.67, -6763.93)},[3]={Vector3.new(-4997.64,314.56,-3220.37)}},
	SharkmanKarate={[2]={Vector3.new(-2602.40, 239.22, -10314.75)},[3]={Vector3.new(-4970.48,314.56,-3225.04)}},
	ElectricClaw={[3]={Vector3.new(-10369.83,331.69,-10126.49)}},
	DragonTalon={[3]={Vector3.new(5662.03,1211.32,858.60)}},
	GodHuman={[3]={Vector3.new(-13775.56,334.66,-9877.67)}},
	SanguineArt={[3]={Vector3.new(-16514.86,23.18,-190.84)}}
}

local function HRP()
	return LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
end

-- Dừng bay, hủy tween và khôi phục trạng thái
local function StopFly()
	if currentTween then
		currentTween:Cancel()
		currentTween = nil
	end
	if antiGravityConnection then
		antiGravityConnection:Disconnect()
		antiGravityConnection = nil
	end
	TargetPos = nil

	-- Bật lại va chạm và khôi phục gravity
	local char = LP.Character
	if char then
		for _, v in ipairs(char:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = true
			end
		end
	end
end

-- Hàm bay tween đến vị trí
local function FlyTo(pos)
	TargetPos = pos
	local hrp = HRP()
	if not hrp then return end

	-- Hủy tween và anti-gravity cũ nếu có
	StopFly()

	-- Tắt va chạm khi bay
	for _, v in ipairs(LP.Character:GetDescendants()) do
		if v:IsA("BasePart") then
			v.CanCollide = false
		end
	end

	-- Chống rơi: giữ vận tốc = 0 trong suốt quá trình tween
	antiGravityConnection = RunService.Stepped:Connect(function()
		local h = HRP()
		if h then
			h.Velocity = Vector3.zero
			h.RotVelocity = Vector3.zero
		end
	end)

	-- Tính thời gian di chuyển (tốc độ 250 studs/s)
	local distance = (hrp.Position - pos).Magnitude
	local duration = distance / 250

	local tweenInfo = TweenInfo.new(
		duration,
		Enum.EasingStyle.Linear,
		Enum.EasingDirection.Out
	)

	local goal = {CFrame = CFrame.new(pos)}
	currentTween = TweenService:Create(hrp, tweenInfo, goal)

	currentTween.Completed:Connect(function()
		if antiGravityConnection then
			antiGravityConnection:Disconnect()
			antiGravityConnection = nil
		end
		currentTween = nil
		-- Khi đến nơi, thông báo
		Notify("✅ Đã đến NPC", 2)
	end)

	currentTween:Play()
end

-- Hàm mua và điều khiển
local function Buy(style, remote)
	task.spawn(function()
		local posList = NPCS[style] and NPCS[style][SEA]
		if not posList then
			Notify("❌ Không có NPC " .. style .. " ở Sea " .. SEA, 4)
			_G.BuyFly = false
			return
		end
		local pos = posList[1]

		Notify("✈️ Đang bay đến " .. style .. " ...", 3)
		FlyTo(pos)

		-- Chờ đến gần NPC
		repeat task.wait()
			local hrp = HRP()
			if not hrp then break end
		until (HRP() and (HRP().Position - pos).Magnitude <= 5) or not _G.BuyFly

		if _G.BuyFly then
			-- Gọi lệnh mua
			local success, err = pcall(function()
				ReplicatedStorage.Remotes.CommF_:InvokeServer(remote)
			end)
			if success then
				Notify("🎉 Mua " .. style .. " thành công!", 4)
			else
				Notify("❌ Lỗi khi mua: " .. tostring(err), 5)
			end
			_G.BuyFly = false
			StopFly()
		else
			Notify("⏹️ Đã hủy mua " .. style, 2)
		end
	end)
end

-- Xử lý khi nhân vật respawn
LP.CharacterAdded:Connect(function()
	task.wait(0.5)
	if _G.BuyFly and TargetPos then
		Notify("🔄 Nhân vật hồi sinh, tiếp tục bay...", 2)
		FlyTo(TargetPos)
	end
end)

local function StopAllBuy()
	_G.BuyFly = false
	StopFly()
end

-- Tạo các toggle mua (giữ nguyên từng cái riêng lẻ)
v495:AddToggle({
	Title = "Buy Black Leg",
	Value = false,
	Callback = function(v)
		StopAllBuy()
		if v then
			_G.BuyFly = true
			Buy("BlackLeg","BuyBlackLeg")
		end
	end
})

v495:AddToggle({
	Title = "Buy Electro",
	Value = false,
	Callback = function(v)
		StopAllBuy()
		if v then
			_G.BuyFly = true
			Buy("Electro","BuyElectro")
		end
	end
})

v495:AddToggle({
	Title = "Buy Fishman Karate",
	Value = false,
	Callback = function(v)
		StopAllBuy()
		if v then
			_G.BuyFly = true
			Buy("FishmanKarate","BuyFishmanKarate")
		end
	end
})

v495:AddToggle({
	Title = "Buy Superhuman",
	Value = false,
	Callback = function(v)
		StopAllBuy()
		if v then
			_G.BuyFly = true
			Buy("Superhuman","BuySuperhuman")
		end
	end
})

v495:AddToggle({
	Title = "Buy Death Step",
	Value = false,
	Callback = function(v)
		StopAllBuy()
		if v then
			_G.BuyFly = true
			Buy("DeathStep","BuyDeathStep")
		end
	end
})

v495:AddToggle({
	Title = "Buy Sharkman Karate",
	Value = false,
	Callback = function(v)
		StopAllBuy()
		if v then
			_G.BuyFly = true
			Buy("SharkmanKarate","BuySharkmanKarate")
		end
	end
})

v495:AddToggle({
	Title = "Buy Electric Claw",
	Value = false,
	Callback = function(v)
		StopAllBuy()
		if v then
			_G.BuyFly = true
			Buy("ElectricClaw","BuyElectricClaw")
		end
	end
})

v495:AddToggle({
	Title = "Buy Dragon Talon",
	Value = false,
	Callback = function(v)
		StopAllBuy()
		if v then
			_G.BuyFly = true
			Buy("DragonTalon","BuyDragonTalon")
		end
	end
})

v495:AddToggle({
	Title = "Buy God Human",
	Value = false,
	Callback = function(v)
		StopAllBuy()
		if v then
			_G.BuyFly = true
			Buy("GodHuman","BuyGodhuman")
		end
	end
})

v495:AddToggle({
	Title = "Buy Sanguine Art",
	Value = false,
	Callback = function(v)
		StopAllBuy()
		if v then
			_G.BuyFly = true
			Buy("SanguineArt","BuySanguineArt")
		end
	end
})