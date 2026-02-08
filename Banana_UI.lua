-- // UI Large \\ --
local Lighting = game:GetService("Lighting")

local blur = Instance.new("BlurEffect")
blur.Name = "CameraBlur"
blur.Size = 24
blur.Parent = Lighting

local CoinCard_1 = Instance.new("ScreenGui")
local DropShadowHolder_1 = Instance.new("Frame")
local Main_1 = Instance.new("Frame")
local UICorner_1 = Instance.new("UICorner")
local UIStroke_1 = Instance.new("UIStroke")
local Divider_1 = Instance.new("Frame")
local Divider_2 = Instance.new("Frame")
local TypeAccountScroll_1 = Instance.new("Frame")
local ItemLabel1_1 = Instance.new("TextLabel")
local ItemLabel2_1 = Instance.new("TextLabel")
local ItemLabel1_2 = Instance.new("TextLabel")
local BeliLabel_1 = Instance.new("TextLabel")
local LevelLabel_1 = Instance.new("TextLabel")
local RaceLabel_1 = Instance.new("TextLabel")
local TextLabel_1 = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local TextLabel_7 = Instance.new("TextLabel")
local Top_1 = Instance.new("TextLabel")
local UIGradient_1 = Instance.new("UIGradient")
local Under_1 = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")
local Under_2 = Instance.new("TextLabel")
local UIGradient_3 = Instance.new("UIGradient")
local DropShadow_1 = Instance.new("ImageLabel")

CoinCard_1.Name = "CoinCard"
CoinCard_1.Parent = game:GetService("CoreGui")
CoinCard_1.ResetOnSpawn = false
CoinCard_1.DisplayOrder = 20

DropShadowHolder_1.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadowHolder_1.BackgroundColor3 = Color3.fromRGB(163, 163, 163)
DropShadowHolder_1.BackgroundTransparency = 1
DropShadowHolder_1.BorderColor3 = Color3.fromRGB(27, 42, 53)
DropShadowHolder_1.Name = "DropShadowHolder"
DropShadowHolder_1.Parent = CoinCard_1
DropShadowHolder_1.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadowHolder_1.Size = UDim2.new(0, 600, 0, 400)
DropShadowHolder_1.ZIndex = 1
DropShadowHolder_1.Selectable = false

Main_1.AnchorPoint = Vector2.new(0.5, 0.5)
Main_1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main_1.BackgroundTransparency = 0.5
Main_1.Name = "Main"
Main_1.Parent = DropShadowHolder_1
Main_1.Position = UDim2.new(0.5, 0, 0.5, 0)
Main_1.Size = UDim2.new(1, -47, 1, -47)
Main_1.Selectable = false

UICorner_1.CornerRadius = UDim.new(0, 5)
UICorner_1.Parent = Main_1

UIStroke_1.Color = Color3.fromRGB(0, 150, 255)
UIStroke_1.Thickness = 2.5
UIStroke_1.Parent = Main_1

Divider_1.BorderColor3 = Color3.fromRGB(27, 42, 53)
Divider_1.Name = "Divider"
Divider_1.Parent = Main_1
Divider_1.Position = UDim2.new(0.15000000596046448, 0, 0.15000000596046448, 0)
Divider_1.Size = UDim2.new(0.699999988079071, 0, 0, 2)
Divider_1.Selectable = false

Divider_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Divider_2.Name = "Divider"
Divider_2.Parent = Main_1
Divider_2.Position = UDim2.new(0.10000000149011612, 0, 0.75, 0)
Divider_2.Size = UDim2.new(0.800000011920929, 0, 0, 2)
Divider_2.Selectable = false

TypeAccountScroll_1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TypeAccountScroll_1.BackgroundTransparency = 1
TypeAccountScroll_1.BorderColor3 = Color3.fromRGB(27, 42, 53)
TypeAccountScroll_1.Name = "TypeAccountScroll"
TypeAccountScroll_1.Parent = Main_1
TypeAccountScroll_1.Position = UDim2.new(0.550000011920929, 0, 0.3499999940395355, 0)
TypeAccountScroll_1.Size = UDim2.new(0.4000000059604645, 0, 0.3499999940395355, 0)
TypeAccountScroll_1.Selectable = false

ItemLabel1_1.BackgroundTransparency = 1
ItemLabel1_1.Name = "ItemLabel1"
ItemLabel1_1.Parent = TypeAccountScroll_1
ItemLabel1_1.Size = UDim2.new(1, 0, 0, 18)
ItemLabel1_1.Selectable = false
ItemLabel1_1.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
ItemLabel1_1.Text = "Item 1"
ItemLabel1_1.TextColor3 = Color3.fromRGB(255, 255, 255)
ItemLabel1_1.TextSize = 16

ItemLabel2_1.BackgroundTransparency = 1
ItemLabel2_1.Name = "ItemLabel2"
ItemLabel2_1.Parent = TypeAccountScroll_1
ItemLabel2_1.Position = UDim2.new(0, 0, 0, 20)
ItemLabel2_1.Size = UDim2.new(1, 0, 0, 18)
ItemLabel2_1.Selectable = false
ItemLabel2_1.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
ItemLabel2_1.Text = "Item 2"
ItemLabel2_1.TextColor3 = Color3.fromRGB(255, 255, 255)
ItemLabel2_1.TextSize = 16

ItemLabel1_2.BackgroundTransparency = 1
ItemLabel1_2.Name = "ItemLabel1"
ItemLabel1_2.Parent = TypeAccountScroll_1
ItemLabel1_2.Position = UDim2.new(0, 0, 0, 40)
ItemLabel1_2.Size = UDim2.new(1, 0, 0, 18)
ItemLabel1_2.Selectable = false
ItemLabel1_2.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
ItemLabel1_2.Text = "Item 3"
ItemLabel1_2.TextColor3 = Color3.fromRGB(255, 255, 255)
ItemLabel1_2.TextSize = 16

BeliLabel_1.BackgroundTransparency = 1
BeliLabel_1.Name = "BeliLabel"
BeliLabel_1.Parent = Main_1
BeliLabel_1.Position = UDim2.new(0.07000000029802322, 0, 0.550000011920929, 0)
BeliLabel_1.Size = UDim2.new(0, 0, 0, 18)
BeliLabel_1.Selectable = false
BeliLabel_1.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
BeliLabel_1.Text = "Beli: N/A"
BeliLabel_1.TextColor3 = Color3.fromRGB(255, 255, 255)
BeliLabel_1.TextSize = 16
BeliLabel_1.TextXAlignment = Enum.TextXAlignment.Left
BeliLabel_1.TextYAlignment = Enum.TextYAlignment.Bottom

LevelLabel_1.BackgroundTransparency = 1
LevelLabel_1.Name = "LevelLabel"
LevelLabel_1.Parent = Main_1
LevelLabel_1.Position = UDim2.new(0.07000000029802322, 0, 0.3499999940395355, 0)
LevelLabel_1.Size = UDim2.new(0, 0, 0, 18)
LevelLabel_1.Selectable = false
LevelLabel_1.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
LevelLabel_1.Text = "Level: N/A    Third Sea : ❌"
LevelLabel_1.TextColor3 = Color3.fromRGB(255, 255, 255)
LevelLabel_1.TextSize = 16
LevelLabel_1.TextXAlignment = Enum.TextXAlignment.Left
LevelLabel_1.TextYAlignment = Enum.TextYAlignment.Bottom

RaceLabel_1.BackgroundTransparency = 1
RaceLabel_1.Name = "RaceLabel"
RaceLabel_1.Parent = Main_1
RaceLabel_1.Position = UDim2.new(0.07000000029802322, 0, 0.44999998807907104, 0)
RaceLabel_1.Size = UDim2.new(0, 0, 0, 18)
RaceLabel_1.Selectable = false
RaceLabel_1.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
RaceLabel_1.Text = "Race: N/A"
RaceLabel_1.TextColor3 = Color3.fromRGB(255, 255, 255)
RaceLabel_1.TextSize = 16
RaceLabel_1.TextXAlignment = Enum.TextXAlignment.Left
RaceLabel_1.TextYAlignment = Enum.TextYAlignment.Bottom

TextLabel_1.BackgroundTransparency = 1
TextLabel_1.Parent = Main_1
TextLabel_1.Position = UDim2.new(0.07000000029802322, 0, 0.800000011920929, 0)
TextLabel_1.Size = UDim2.new(0, 0, 0, 18)
TextLabel_1.Selectable = false
TextLabel_1.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel_1.Text = "🔴 GodHuman"
TextLabel_1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_1.TextSize = 16
TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_1.TextYAlignment = Enum.TextYAlignment.Bottom

TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Parent = Main_1
TextLabel_2.Position = UDim2.new(0.75, 0, 0.8999999761581421, 0)
TextLabel_2.Size = UDim2.new(0, 0, 0, 18)
TextLabel_2.Selectable = false
TextLabel_2.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel_2.Text = "🔴 Pull Lever"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 16
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_2.TextYAlignment = Enum.TextYAlignment.Bottom

TextLabel_3.BackgroundTransparency = 1
TextLabel_3.Parent = Main_1
TextLabel_3.Position = UDim2.new(0.75, 0, 0.800000011920929, 0)
TextLabel_3.Size = UDim2.new(0, 0, 0, 18)
TextLabel_3.Selectable = false
TextLabel_3.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel_3.Text = "🔴 Valkyrie Helm"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 16
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_3.TextYAlignment = Enum.TextYAlignment.Bottom

TextLabel_4.BackgroundTransparency = 1
TextLabel_4.Parent = Main_1
TextLabel_4.Position = UDim2.new(0.4000000059604645, 0, 0.8999999761581421, 0)
TextLabel_4.Size = UDim2.new(0, 0, 0, 18)
TextLabel_4.Selectable = false
TextLabel_4.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel_4.Text = "🔴 Mirror Fractal"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 16
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_4.TextYAlignment = Enum.TextYAlignment.Bottom

TextLabel_5.BackgroundTransparency = 1
TextLabel_5.Parent = Main_1
TextLabel_5.Position = UDim2.new(0.07000000029802322, 0, 0.8999999761581421, 0)
TextLabel_5.Size = UDim2.new(0, 0, 0, 18)
TextLabel_5.Selectable = false
TextLabel_5.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel_5.Text = "🔴 Skull Guitar"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextSize = 16
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_5.TextYAlignment = Enum.TextYAlignment.Bottom

TextLabel_6.BackgroundTransparency = 1
TextLabel_6.Parent = Main_1
TextLabel_6.Position = UDim2.new(0.07000000029802322, 0, 0.6499999761581421, 0)
TextLabel_6.Size = UDim2.new(0, 33, 0, 18)
TextLabel_6.Selectable = false
TextLabel_6.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel_6.Text = "Frag: N/A"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextSize = 16
TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_6.TextYAlignment = Enum.TextYAlignment.Bottom

TextLabel_7.BackgroundTransparency = 1
TextLabel_7.Parent = Main_1
TextLabel_7.Position = UDim2.new(0.4000000059604645, 0, 0.800000011920929, 0)
TextLabel_7.Size = UDim2.new(0, 0, 0, 18)
TextLabel_7.Selectable = false
TextLabel_7.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
TextLabel_7.Text = "🔴 Curse Dual Katana"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextSize = 16
TextLabel_7.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_7.TextYAlignment = Enum.TextYAlignment.Bottom

Top_1.BackgroundTransparency = 0.9990000128746033
Top_1.Name = "Top"
Top_1.Parent = Main_1
Top_1.Position = UDim2.new(0.5, 0, 0.05000000074505806, 0)
Top_1.Size = UDim2.new(0, 0, 0, 18)
Top_1.Selectable = false
Top_1.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Top_1.Text = "NatAov Stats Checker"
Top_1.TextColor3 = Color3.fromRGB(255, 255, 255)
Top_1.TextSize = 16
Top_1.TextYAlignment = Enum.TextYAlignment.Bottom

UIGradient_1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 150, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 150, 255)), }
UIGradient_1.Parent = Top_1

Under_1.BackgroundTransparency = 0.9990000128746033
Under_1.Name = "Under"
Under_1.Parent = Main_1
Under_1.Position = UDim2.new(0.20000000298023224, 0, 0.25, 0)
Under_1.Size = UDim2.new(0, 0, 0, 18)
Under_1.Selectable = false
Under_1.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Under_1.Text = "Account Stats"
Under_1.TextColor3 = Color3.fromRGB(255, 255, 255)
Under_1.TextSize = 16
Under_1.TextYAlignment = Enum.TextYAlignment.Bottom

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 150, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 150, 255)), }
UIGradient_2.Parent = Under_1

Under_2.BackgroundTransparency = 0.9990000128746033
Under_2.Name = "Under"
Under_2.Parent = Main_1
Under_2.Position = UDim2.new(0.75, 0, 0.25, 0)
Under_2.Size = UDim2.new(0, 0, 0, 18)
Under_2.Selectable = false
Under_2.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Under_2.Text = "Account Items"
Under_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Under_2.TextSize = 16
Under_2.TextYAlignment = Enum.TextYAlignment.Bottom

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 150, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 150, 255)), }
UIGradient_3.Parent = Under_2

DropShadow_1.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow_1.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
DropShadow_1.BackgroundTransparency = 1
DropShadow_1.BorderColor3 = Color3.fromRGB(27, 42, 53)
DropShadow_1.Name = "DropShadow"
DropShadow_1.Parent = DropShadowHolder_1
DropShadow_1.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow_1.Size = UDim2.new(1, 47, 1, 47)
DropShadow_1.ZIndex = 0
DropShadow_1.Image = "rbxassetid://6015897843"
DropShadow_1.ImageTransparency = 0.25
DropShadow_1.ImageColor3 = Color3.fromRGB(0, 0, 0)

-- // Toggle UI \\ --

local LonelyHubBtn = Instance.new("ScreenGui")
local dutdit = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")

LonelyHubBtn.Name = "Lonely Hub Btn"  
LonelyHubBtn.Parent = game:GetService("CoreGui")
LonelyHubBtn.ZIndexBehavior = Enum.ZIndexBehavior.Sibling  
LonelyHubBtn.DisplayOrder = 10

dutdit.Name = "dut dit"  
dutdit.Parent = LonelyHubBtn  
dutdit.AnchorPoint = Vector2.new(0.1, 0.1)  
dutdit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
dutdit.Position = UDim2.new(0, 20, 0.1, -6)  
dutdit.Size = UDim2.new(0, 50, 0, 50)  
dutdit.Active = true
dutdit.Draggable = true

UICorner.CornerRadius = UDim.new(1, 0)  
UICorner.Parent = dutdit  

ImageLabel.Parent = dutdit  
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)  
ImageLabel.BackgroundTransparency = 1.0  
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)  
ImageLabel.Size = UDim2.new(0, 40, 0, 40)  
ImageLabel.Image = "rbxassetid://112485471724320"  

TextButton.Parent = dutdit  
TextButton.BackgroundTransparency = 1.0  
TextButton.Size = UDim2.new(1, 0, 1, 0)  
TextButton.Font = Enum.Font.SourceSans  
TextButton.Text = ""  
TextButton.TextColor3 = Color3.fromRGB(27, 42, 53)  

local TweenService = game:GetService("TweenService")  
local VirtualInputManager = game:GetService("VirtualInputManager")  

local zoomedIn = false  
local originalSize = UDim2.new(0, 40, 0, 40)  
local zoomedSize = UDim2.new(0, 30, 0, 30)  
local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)  

local faded = false  
local fadeInTween = TweenService:Create(dutdit, tweenInfo, {BackgroundTransparency = 0.25})  
local fadeOutTween = TweenService:Create(dutdit, tweenInfo, {BackgroundTransparency = 0})  

TextButton.MouseButton1Down:Connect(  
    function()  
        if zoomedIn then  
            TweenService:Create(ImageLabel, tweenInfo, {Size = originalSize}):Play()  
        else  
            TweenService:Create(ImageLabel, tweenInfo, {Size = zoomedSize}):Play()  
        end  
        zoomedIn = not zoomedIn  

        if faded then  
            fadeOutTween:Play()  
        else  
            fadeInTween:Play()  
        end  
        faded = not faded  
        
        if CoinCard_1.Enabled == false then
            CoinCard_1.Enabled = true
        else
            CoinCard_1.Enabled = false
        end
        
        if blur.Size == 24 then
            blur.Size = 0
        else
            blur.Size = 24
        end
    end  
--------------------------------------------------------------------
-- // LOGIC SCRIPT - CHECK ITEMS & STATS (DÁN VÀO CUỐI FILE) \\ --
--------------------------------------------------------------------

local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- [1] CẤU HÌNH LẠI SCROLL LIST (Để danh sách item tự sắp xếp đẹp)
-- Vì UI gốc của bạn TypeAccountScroll_1 là Frame, ta thêm ListLayout vào
local listLayout = TypeAccountScroll_1:FindFirstChild("UIListLayout") or Instance.new("UIListLayout")
listLayout.Parent = TypeAccountScroll_1
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Padding = UDim.new(0, 2)

-- [2] CÁC HÀM HỖ TRỢ (UTILS)
local function FormatNumber(n)
    return tostring(n):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end

local function GetRarityColor(Rarity)
    if Rarity == "Mythical" then return Color3.fromRGB(255, 50, 50) -- Đỏ
    elseif Rarity == "Legendary" then return Color3.fromRGB(255, 0, 255) -- Tím
    elseif Rarity == "Rare" then return Color3.fromRGB(0, 170, 255) -- Xanh dương
    else return Color3.fromRGB(255, 255, 255) end
end

-- Hàm check item trong Inventory thật (Dùng Remote CommF_)
local function GetInventoryData()
    local success, result = pcall(function()
        return ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
    end)
    return success and result or {}
end

-- Hàm check GodHuman (Vì nó là Style, không nằm trong Inventory thường)
local function CheckGodHuman()
    local success, result = pcall(function()
        -- Tham số true để check sở hữu, không mua
        return ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyGodhuman", true)
    end)
    if success and result == 1 then return true end -- 1 = Đã sở hữu
    return false
end

-- [3] VÒNG LẶP CHÍNH (MAIN LOOP)
task.spawn(function()
    while task.wait(3) do -- Check mỗi 3 giây để tối ưu game
        pcall(function()
            -- A. CẬP NHẬT CHỈ SỐ (STATS)
            local Data = LocalPlayer.Data
            
            -- Level & Sea
            local Level = Data.Level.Value
            local IsThirdSea = Level >= 1500 and "✅" or "❌"
            LevelLabel_1.Text = "Level: " .. Level .. "    Third Sea : " .. IsThirdSea
            
            -- Beli & Frag
            BeliLabel_1.Text = "Beli: " .. FormatNumber(Data.Beli.Value)
            TextLabel_6.Text = "Frag: " .. FormatNumber(Data.Fragments.Value) -- TextLabel_6 là FragLabel cũ
            
            -- Race
            RaceLabel_1.Text = "Race: " .. tostring(Data.Race.Value)

            -- B. CẬP NHẬT ITEMS (Màu Đỏ/Xanh)
            -- Lấy toàn bộ kho đồ 1 lần để check cho nhanh
            local Inventory = GetInventoryData()
            local InvMap = {}
            for _, v in pairs(Inventory) do InvMap[v.Name] = true end

            -- Hàm update trạng thái label
            local function UpdateStatus(Label, HasItem, NameText)
                if HasItem then
                    Label.Text = "🟢 " .. NameText
                    Label.TextColor3 = Color3.fromRGB(0, 255, 100) -- Xanh lá
                else
                    Label.Text = "🔴 " .. NameText
                    Label.TextColor3 = Color3.fromRGB(255, 255, 255) -- Trắng
                end
            end

            -- 1. GodHuman (TextLabel_1)
            UpdateStatus(TextLabel_1, CheckGodHuman(), "GodHuman")

            -- 2. Valkyrie Helm (TextLabel_3)
            UpdateStatus(TextLabel_3, InvMap["Valkyrie Helm"], "Valkyrie Helm")

            -- 3. Mirror Fractal (TextLabel_4)
            UpdateStatus(TextLabel_4, InvMap["Mirror Fractal"], "Mirror Fractal")

            -- 4. Soul Guitar (TextLabel_5)
            UpdateStatus(TextLabel_5, InvMap["Soul Guitar"], "Skull Guitar")

            -- 5. Cursed Dual Katana (TextLabel_7)
            UpdateStatus(TextLabel_7, InvMap["Cursed Dual Katana"], "Curse Dual Katana")

            -- 6. Pull Lever (TextLabel_2)
            -- Check Logic: Có Mirror Fractal + Valkyrie Helm thì khả năng cao là gạt cần được
            if InvMap["Mirror Fractal"] and InvMap["Valkyrie Helm"] then
                UpdateStatus(TextLabel_2, true, "Pull Lever (Ready)")
            else
                UpdateStatus(TextLabel_2, false, "Pull Lever")
            end

            -- C. CẬP NHẬT DANH SÁCH ITEM (SCROLL LIST)
            -- Xóa item cũ trong list
            for _, child in pairs(TypeAccountScroll_1:GetChildren()) do
                if child:IsA("TextLabel") and child.Name ~= "ItemLabel1" then -- Giữ lại mẫu nếu cần, hoặc xóa hết
                    child:Destroy()
                end
            end
            
            -- Ẩn các label mẫu cũ của bạn
            if ItemLabel1_1 then ItemLabel1_1.Visible = false end
            if ItemLabel2_1 then ItemLabel2_1.Visible = false end
            if ItemLabel1_2 then ItemLabel1_2.Visible = false end

            -- Tạo list mới
            for _, item in pairs(Inventory) do
                -- Chỉ hiện: Mythical, Legendary hoặc Trái Ác Quỷ
                if item.Rarity == "Mythical" or item.Rarity == "Legendary" or item.Type == "Blox Fruit" then
                    local newLbl = Instance.new("TextLabel")
                    newLbl.Parent = TypeAccountScroll_1
                    newLbl.BackgroundTransparency = 1
                    newLbl.Size = UDim2.new(1, 0, 0, 18)
                    newLbl.Font = Enum.Font.GothamBold
                    newLbl.TextSize = 14
                    newLbl.TextXAlignment = Enum.TextXAlignment.Left
                    newLbl.Text = " [" .. (item.Type or "Item") .. "] " .. item.Name
                    newLbl.TextColor3 = GetRarityColor(item.Rarity)
                end
            end
        end)
    end
end)
