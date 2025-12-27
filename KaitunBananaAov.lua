repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer

-- SERVICES
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

-- PLAYER
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- GUI ROOT
local Gui = Instance.new("ScreenGui")
Gui.Name = "FPS_PING_SYSTEM"
Gui.ResetOnSpawn = false
Gui.Parent = PlayerGui

-- MAIN FRAME
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0,260,0,110)
Frame.BackgroundColor3 = Color3.fromRGB(20,20,20)
Frame.BackgroundTransparency = 0.15
Frame.BorderSizePixel = 0
Frame.Visible = false
Frame.Parent = Gui

Instance.new("UICorner", Frame).CornerRadius = UDim.new(0,18)
local Stroke = Instance.new("UIStroke", Frame)
Stroke.Thickness = 2

-- TITLE
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1,0,0,30)
Title.BackgroundTransparency = 1
Title.Text = "FPS • PING"
Title.Font = Enum.Font.GothamBold
Title.TextScaled = true
Title.TextColor3 = Color3.new(1,1,1)
Title.Parent = Frame

-- INFO
local Info = Instance.new("TextLabel")
Info.Size = UDim2.new(1,0,0,35)
Info.Position = UDim2.new(0,0,0,32)
Info.BackgroundTransparency = 1
Info.Text = "FPS: -- | Ping: --"
Info.Font = Enum.Font.Gotham
Info.TextScaled = true
Info.TextColor3 = Color3.new(1,1,1)
Info.Parent = Frame

-- USERNAME
local User = Instance.new("TextLabel")
User.Size = UDim2.new(1,0,0,25)
User.Position = UDim2.new(0,0,0,70)
User.BackgroundTransparency = 1
User.Text = "@ "..Player.Name
User.Font = Enum.Font.GothamMedium
User.TextScaled = true
User.TextColor3 = Color3.fromRGB(200,200,200)
User.Parent = Frame

-- POSITION
task.wait()
local cam = workspace.CurrentCamera.ViewportSize
Frame.Position = UDim2.new(
	0, math.floor(cam.X * 0.5 - Frame.Size.X.Offset / 2),
	0, math.floor(cam.Y * 0.1)
)

-- FPS / COLOR
local fps = 60
RunService.RenderStepped:Connect(function(dt)
	if dt > 0 then
		fps = math.floor(1 / dt)
	end
	local c = Color3.fromHSV((os.clock() % 5) / 5, 0.85, 1)
	Title.TextColor3 = c
	Stroke.Color = c
end)

-- PING
local function getPing()
	return math.floor(Player:GetNetworkPing() * 1000)
end

task.spawn(function()
	while task.wait(0.5) do
		Info.Text = string.format("FPS: %d | Ping: %d ms", fps, getPing())
	end
end)

-- DRAG FRAME
local dragging, dragStart, startPos
Frame.InputBegan:Connect(function(input, gpe)
	if gpe then return end
	if input.UserInputType == Enum.UserInputType.MouseButton1
	or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = Frame.Position
	end
end)

Frame.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1
	or input.UserInputType == Enum.UserInputType.Touch then
		dragging = false
	end
end)

UserInputService.InputChanged:Connect(function(input, gpe)
	if not dragging or gpe then return end
	if input.UserInputType == Enum.UserInputType.MouseMovement
	or input.UserInputType == Enum.UserInputType.Touch then
		local delta = input.Position - dragStart
		local s = workspace.CurrentCamera.ViewportSize
		Frame.Position = UDim2.new(
			0, math.clamp(startPos.X.Offset + delta.X, 0, s.X - Frame.AbsoluteSize.X),
			0, math.clamp(startPos.Y.Offset + delta.Y, 0, s.Y - Frame.AbsoluteSize.Y)
		)
	end
end)

-- FLOAT BUTTON
local Btn = Instance.new("TextButton")
Btn.Size = UDim2.new(0,52,0,52)
Btn.Position = UDim2.new(0,20,0.5,-26)
Btn.BackgroundColor3 = Color3.fromRGB(25,25,25)
Btn.BackgroundTransparency = 0.1
Btn.Text = "FPS"
Btn.Font = Enum.Font.GothamBold
Btn.TextSize = 16
Btn.TextColor3 = Color3.new(1,1,1)
Btn.BorderSizePixel = 0
Btn.Parent = Gui

Instance.new("UICorner", Btn).CornerRadius = UDim.new(1,0)
local BtnStroke = Instance.new("UIStroke", Btn)
BtnStroke.Thickness = 2

task.spawn(function()
	while Btn.Parent do
		BtnStroke.Color = Color3.fromHSV((os.clock() % 4) / 4, 0.9, 1)
		task.wait(0.03)
	end
end)

Btn.MouseButton1Click:Connect(function()
	Frame.Visible = not Frame.Visible
end)

-- DRAG BUTTON
local bDrag, bStart, bPos
Btn.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1
	or input.UserInputType == Enum.UserInputType.Touch then
		bDrag = true
		bStart = input.Position
		bPos = Btn.Position
	end
end)

Btn.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1
	or input.UserInputType == Enum.UserInputType.Touch then
		bDrag = false
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if not bDrag then return end
	if input.UserInputType == Enum.UserInputType.MouseMovement
	or input.UserInputType == Enum.UserInputType.Touch then
		local delta = input.Position - bStart
		local s = workspace.CurrentCamera.ViewportSize
		Btn.Position = UDim2.new(
			0, math.clamp(bPos.X.Offset + delta.X, 0, s.X - Btn.AbsoluteSize.X),
			0, math.clamp(bPos.Y.Offset + delta.Y, 0, s.Y - Btn.AbsoluteSize.Y)
		)
	end
end)

-- STARTUP NOTIFY
local function StartupNotify()
	local N = Instance.new("Frame")
	N.Size = UDim2.new(0,320,0,90)
	N.Position = UDim2.new(1,40,0,40)
	N.BackgroundColor3 = Color3.fromRGB(18,18,18)
	N.BorderSizePixel = 0
	N.Parent = Gui

	Instance.new("UICorner", N).CornerRadius = UDim.new(0,16)

	-- STROKE (MÀU)
	local NS = Instance.new("UIStroke", N)
	NS.Thickness = 2

	-- TITLE (TÊN)
	local Title = Instance.new("TextLabel")
	Title.Size = UDim2.new(1,-20,0,30)
	Title.Position = UDim2.new(0,10,0,8)
	Title.BackgroundTransparency = 1
	Title.Text = "AOV NOTIFY SYSTEM"
	Title.Font = Enum.Font.GothamBold
	Title.TextSize = 18
	Title.TextXAlignment = Enum.TextXAlignment.Left
	Title.TextColor3 = Color3.new(1,1,1)
	Title.Parent = N

	-- MESSAGE
	local Msg = Instance.new("TextLabel")
	Msg.Size = UDim2.new(1,-20,0,36)
	Msg.Position = UDim2.new(0,10,0,44)
	Msg.BackgroundTransparency = 1
	Msg.TextWrapped = true
	Msg.TextXAlignment = Enum.TextXAlignment.Left
	Msg.Text = "LOADING SCRIPT, PLS WAIT..."
	Msg.Font = Enum.Font.Gotham
	Msg.TextSize = 14
	Msg.TextColor3 = Color3.fromRGB(220,220,220)
	Msg.Parent = N

	-- SLIDE IN
	TweenService:Create(N, TweenInfo.new(0.45, Enum.EasingStyle.Back), {
		Position = UDim2.new(1, -360, 0, 40)
	}):Play()

	-- RGB EFFECT
	task.spawn(function()
		while N.Parent do
			local c = Color3.fromHSV((os.clock() % 4) / 4, 1, 1)
			NS.Color = c
			Title.TextColor3 = c
			task.wait(0.03)
		end
	end)

	-- AUTO CLOSE
	task.delay(2.5, function()
		TweenService:Create(N, TweenInfo.new(0.3), {
			Position = UDim2.new(1, 40, 0, 40)
		}):Play()
		task.wait(0.4)
		N:Destroy()
		Frame.Visible = true
	    print([[
========================================
  ✔ CAM ON DA SU DUNG CONFIG AOV
     KAITUN BLOC FRUITS OP
========================================
]])
		pcall(function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaCat-kaitunBF.lua"))()
		end)
	end)
end

StartupNotify()