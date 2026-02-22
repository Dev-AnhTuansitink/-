-- =====================================================
-- HIRU HUB - AUTO FRUIT HUNTER (SIÊU NÂNG CẤP)
-- =====================================================
repeat wait() until game.IsLoaded and game.Players.LocalPlayer and game.Players.LocalPlayer.Character

-- Khởi tạo dịch vụ
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local VirtualUser = game:GetService("VirtualUser")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

-- ========== CẤU HÌNH ==========
local CONFIG = {
    AutoFindFruit = true,      -- Bật/tắt tự động tìm trái
    AutoStore = true,           -- Tự động lưu trái vào kho
    AutoHopWhenNoFruit = true,  -- Tự động chuyển server nếu không có trái
    AutoJoinTeam = true,        -- Tự động chọn team (Pirates)
    Team = "Pirates",           -- "Pirates" hoặc "Marines"
    MoveSpeed = 350,            -- Tốc độ di chuyển
    ReachDistance = 5,          -- Khoảng cách nhặt
    RandomDelay = {0.5, 1.5},   -- Delay ngẫu nhiên giữa các lần nhặt
    HopDelay = 5,              -- Thời gian chờ trước khi hop (giây)
    IgnoreFruits = {"Fake", "Test"},  -- Tên trái cần bỏ qua
    WebhookURL = "https://discord.com/api/webhooks/1394759006064607404/sI1QKoTRAguH4XgDTMpFjKKrmMlKpBuAnjd6kazoP3-AL41xNvlEvJ8Qxj1s7Xs6tgxQ",            -- Discord webhook (để trống nếu không dùng)
    ServerBlacklist = {}        -- Danh sách server đã đi qua
}

-- ========== BIẾN TRẠNG THÁI ==========
local statusText = "Đang chờ..."
local currentAction = "none"  -- none, finding, hopping
local fruitsInMap = 0
local hopTimer = 0

-- ========== TẠO UI CỰC ĐẸP ==========
local function createUI()
    -- Xóa GUI cũ
    for _, v in pairs(CoreGui:GetChildren()) do
        if v.Name:find("HiruHub") then v:Destroy() end
    end

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "HiruHub"
    screenGui.Parent = CoreGui
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    screenGui.ResetOnSpawn = false

    -- Main Frame
    local main = Instance.new("Frame")
    main.Name = "MainFrame"
    main.Parent = screenGui
    main.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
    main.BorderSizePixel = 0
    main.Position = UDim2.new(0.02, 0, 0.3, 0)
    main.Size = UDim2.new(0, 320, 0, 450)
    main.Active = true
    main.Draggable = true
    main.ClipsDescendants = true

    -- Bo góc và hiệu ứng
    local mainCorner = Instance.new("UICorner")
    mainCorner.CornerRadius = UDim.new(0, 12)
    mainCorner.Parent = main

    local mainStroke = Instance.new("UIStroke")
    mainStroke.Color = Color3.fromRGB(100, 150, 255)
    mainStroke.Thickness = 2
    mainStroke.Parent = main

    local shadow = Instance.new("ImageLabel")
    shadow.Parent = main
    shadow.BackgroundTransparency = 1
    shadow.Position = UDim2.new(0, -10, 0, -10)
    shadow.Size = UDim2.new(1, 20, 1, 20)
    shadow.Image = "rbxassetid://1316045217"
    shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    shadow.ImageTransparency = 0.6
    shadow.ScaleType = Enum.ScaleType.Slice
    shadow.SliceCenter = Rect.new(10, 10, 118, 118)

    -- Header
    local header = Instance.new("Frame")
    header.Parent = main
    header.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
    header.BorderSizePixel = 0
    header.Size = UDim2.new(1, 0, 0, 50)

    local headerCorner = Instance.new("UICorner")
    headerCorner.CornerRadius = UDim.new(0, 12)
    headerCorner.Parent = header

    local title = Instance.new("TextLabel")
    title.Parent = header
    title.BackgroundTransparency = 1
    title.Position = UDim2.new(0, 15, 0, 0)
    title.Size = UDim2.new(0, 200, 1, 0)
    title.Font = Enum.Font.GothamBold
    title.Text = "🍎 HIRU FRUIT HUNTER"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 18
    title.TextXAlignment = Enum.TextXAlignment.Left

    -- Avatar và tên người chơi
    local avatar = Instance.new("ImageLabel")
    avatar.Parent = header
    avatar.BackgroundColor3 = Color3.fromRGB(255,255,255)
    avatar.BackgroundTransparency = 1
    avatar.Position = UDim2.new(1, -45, 0.5, -17)
    avatar.Size = UDim2.new(0, 34, 0, 34)
    avatar.Image = Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.AvatarThumbnail, Enum.ThumbnailSize.Size420x420)
    avatar.ImageColor3 = Color3.fromRGB(255,255,255)

    local avatarCorner = Instance.new("UICorner")
    avatarCorner.CornerRadius = UDim.new(1, 0)
    avatarCorner.Parent = avatar

    local playerName = Instance.new("TextLabel")
    playerName.Parent = header
    playerName.BackgroundTransparency = 1
    playerName.Position = UDim2.new(1, -90, 0.5, -10)
    playerName.Size = UDim2.new(0, 40, 0, 20)
    playerName.Font = Enum.Font.Gotham
    playerName.Text = player.Name
    playerName.TextColor3 = Color3.fromRGB(200, 200, 255)
    playerName.TextSize = 12
    playerName.TextXAlignment = Enum.TextXAlignment.Right

    -- Close Button
    local closeBtn = Instance.new("ImageButton")
    closeBtn.Parent = header
    closeBtn.BackgroundTransparency = 1
    closeBtn.Size = UDim2.new(0, 30, 0, 30)
    closeBtn.Position = UDim2.new(1, -35, 0.5, -15)
    closeBtn.Image = "rbxassetid://6031094678"
    closeBtn.ImageColor3 = Color3.fromRGB(255, 100, 100)
    closeBtn.MouseButton1Click:Connect(function()
        screenGui.Enabled = false
        toggleBtn.Visible = true
    end)

    -- Toggle button (nút nhỏ để mở lại)
    local toggleBtn = Instance.new("ImageButton")
    toggleBtn.Name = "ToggleButton"
    toggleBtn.Parent = CoreGui
    toggleBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
    toggleBtn.BackgroundTransparency = 0.2
    toggleBtn.Position = UDim2.new(0.02, 0, 0.5, 0)
    toggleBtn.Size = UDim2.new(0, 50, 0, 50)
    toggleBtn.Image = "rbxassetid://16601446273"
    toggleBtn.ImageColor3 = Color3.fromRGB(255, 255, 255)
    toggleBtn.Draggable = true
    toggleBtn.Visible = false
    local toggleCorner = Instance.new("UICorner")
    toggleCorner.CornerRadius = UDim.new(0, 8)
    toggleCorner.Parent = toggleBtn
    toggleBtn.MouseButton1Click:Connect(function()
        screenGui.Enabled = true
        toggleBtn.Visible = false
    end)

    -- Content Frame
    local content = Instance.new("ScrollingFrame")
    content.Parent = main
    content.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    content.BorderSizePixel = 0
    content.Position = UDim2.new(0, 0, 0, 50)
    content.Size = UDim2.new(1, 0, 1, -50)
    content.CanvasSize = UDim2.new(0, 0, 0, 400)
    content.ScrollBarThickness = 5
    content.ScrollBarImageColor3 = Color3.fromRGB(100, 150, 255)

    local layout = Instance.new("UIListLayout")
    layout.Parent = content
    layout.Padding = UDim.new(0, 10)
    layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    layout.SortOrder = Enum.SortOrder.LayoutOrder

    local padding = Instance.new("UIPadding")
    padding.Parent = content
    padding.PaddingTop = UDim.new(0, 10)
    padding.PaddingBottom = UDim.new(0, 10)
    padding.PaddingLeft = UDim.new(0, 10)
    padding.PaddingRight = UDim.new(0, 10)

    -- ===== CÁC NÚT CHỨC NĂNG =====
    -- Nút Auto Find Fruit
    local findBtn = createToggleButton(content, "🍎 Auto Find Fruit", CONFIG.AutoFindFruit, function(state)
        CONFIG.AutoFindFruit = state
    end)

    -- Nút Auto Store
    local storeBtn = createToggleButton(content, "📦 Auto Store", CONFIG.AutoStore, function(state)
        CONFIG.AutoStore = state
    end)

    -- Nút Auto Hop khi không có trái
    local hopBtn = createToggleButton(content, "🌐 Auto Hop (No Fruit)", CONFIG.AutoHopWhenNoFruit, function(state)
        CONFIG.AutoHopWhenNoFruit = state
    end)

    -- Nút Auto Join Team
    local teamBtn = createToggleButton(content, "⚔️ Auto Join Team", CONFIG.AutoJoinTeam, function(state)
        CONFIG.AutoJoinTeam = state
    end)

    -- Hiển thị trạng thái
    local statusFrame = createSection(content, "Trạng thái")
    local statusLabel = createTextLabel(statusFrame, "Đang chờ...", Color3.fromRGB(255, 255, 255))
    local fruitCountLabel = createTextLabel(statusFrame, "Trái trong map: 0", Color3.fromRGB(200, 200, 200))
    local hopTimerLabel = createTextLabel(statusFrame, "Hop sau: --", Color3.fromRGB(200, 200, 200))

    -- Hiển thị danh sách trái trong map
    local fruitListFrame = createSection(content, "Trái trong map")
    local fruitList = Instance.new("ScrollingFrame")
    fruitList.Parent = fruitListFrame
    fruitList.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
    fruitList.BorderSizePixel = 0
    fruitList.Size = UDim2.new(1, 0, 0, 120)
    fruitList.CanvasSize = UDim2.new(0, 0, 0, 0)
    fruitList.ScrollBarThickness = 5

    local fruitListLayout = Instance.new("UIListLayout")
    fruitListLayout.Parent = fruitList
    fruitListLayout.Padding = UDim.new(0, 2)

    -- Nút lưu cấu hình
    local saveBtn = Instance.new("TextButton")
    saveBtn.Parent = content
    saveBtn.BackgroundColor3 = Color3.fromRGB(100, 150, 255)
    saveBtn.BorderSizePixel = 0
    saveBtn.Size = UDim2.new(1, -20, 0, 40)
    saveBtn.Font = Enum.Font.GothamBold
    saveBtn.Text = "💾 Lưu cấu hình"
    saveBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    saveBtn.TextSize = 16
    local saveCorner = Instance.new("UICorner")
    saveCorner.CornerRadius = UDim.new(0, 8)
    saveCorner.Parent = saveBtn
    saveBtn.MouseButton1Click:Connect(function()
        saveConfig()
        saveBtn.Text = "✅ Đã lưu!"
        wait(1)
        saveBtn.Text = "💾 Lưu cấu hình"
    end)

    -- Cập nhật canvas size
    local function updateCanvas()
        content.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 20)
    end
    layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateCanvas)
    updateCanvas()

    -- Trả về các thành phần cần cập nhật
    return {
        screenGui = screenGui,
        toggleBtn = toggleBtn,
        statusLabel = statusLabel,
        fruitCountLabel = fruitCountLabel,
        hopTimerLabel = hopTimerLabel,
        fruitList = fruitList,
        fruitListLayout = fruitListLayout
    }
end

-- Hàm tạo nút bật/tắt đẹp
function createToggleButton(parent, text, defaultState, callback)
    local frame = Instance.new("Frame")
    frame.Parent = parent
    frame.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
    frame.BorderSizePixel = 0
    frame.Size = UDim2.new(1, -20, 0, 50)

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = frame

    local label = Instance.new("TextLabel")
    label.Parent = frame
    label.BackgroundTransparency = 1
    label.Position = UDim2.new(0, 10, 0, 0)
    label.Size = UDim2.new(0, 180, 1, 0)
    label.Font = Enum.Font.Gotham
    label.Text = text
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.TextSize = 15
    label.TextXAlignment = Enum.TextXAlignment.Left

    local toggleBtn = Instance.new("TextButton")
    toggleBtn.Parent = frame
    toggleBtn.BackgroundColor3 = defaultState and Color3.fromRGB(100, 255, 100) or Color3.fromRGB(255, 100, 100)
    toggleBtn.BorderSizePixel = 0
    toggleBtn.Position = UDim2.new(1, -60, 0.5, -15)
    toggleBtn.Size = UDim2.new(0, 50, 0, 30)
    toggleBtn.Font = Enum.Font.GothamBold
    toggleBtn.Text = defaultState and "ON" or "OFF"
    toggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    toggleBtn.TextSize = 14

    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 6)
    btnCorner.Parent = toggleBtn

    toggleBtn.MouseButton1Click:Connect(function()
        local newState = not (toggleBtn.Text == "ON")
        toggleBtn.Text = newState and "ON" or "OFF"
        toggleBtn.BackgroundColor3 = newState and Color3.fromRGB(100, 255, 100) or Color3.fromRGB(255, 100, 100)
        callback(newState)
    end)

    return frame
end

function createSection(parent, title)
    local frame = Instance.new("Frame")
    frame.Parent = parent
    frame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
    frame.BorderSizePixel = 0
    frame.Size = UDim2.new(1, -20, 0, 0)
    frame.AutomaticSize = Enum.AutomaticSize.Y

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = frame

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Parent = frame
    titleLabel.BackgroundTransparency = 1
    titleLabel.Position = UDim2.new(0, 10, 0, 5)
    titleLabel.Size = UDim2.new(1, -20, 0, 25)
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(150, 200, 255)
    titleLabel.TextSize = 16
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left

    local content = Instance.new("Frame")
    content.Parent = frame
    content.BackgroundTransparency = 1
    content.Position = UDim2.new(0, 10, 0, 35)
    content.Size = UDim2.new(1, -20, 0, 0)
    content.AutomaticSize = Enum.AutomaticSize.Y

    return content
end

function createTextLabel(parent, text, color)
    local label = Instance.new("TextLabel")
    label.Parent = parent
    label.BackgroundTransparency = 1
    label.Size = UDim2.new(1, 0, 0, 25)
    label.Font = Enum.Font.Gotham
    label.Text = text
    label.TextColor3 = color
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left
    return label
end

-- Tạo UI và lấy các tham chiếu
local ui = createUI()

-- ========== HÀM TIỆN ÍCH ==========
function saveConfig()
    local data = HttpService:JSONEncode(CONFIG)
    writefile("HiruHub_Config.json", data)
end

function loadConfig()
    if isfile("HiruHub_Config.json") then
        local data = readfile("HiruHub_Config.json")
        local success, decoded = pcall(HttpService.JSONDecode, HttpService, data)
        if success then
            for k, v in pairs(decoded) do
                CONFIG[k] = v
            end
        end
    end
end
loadConfig()

-- ========== AUTO JOIN TEAM ==========
function joinTeam()
    if not CONFIG.AutoJoinTeam then return end
    local mainGui = player.PlayerGui:FindFirstChild("Main")
    if mainGui and mainGui:FindFirstChild("ChooseTeam") then
        local remote = ReplicatedStorage:FindFirstChild("Remotes") and ReplicatedStorage.Remotes:FindFirstChild("CommF_")
        if remote then
            remote:InvokeServer("SetTeam", CONFIG.Team)
            wait(1)
        end
    end
end
spawn(joinTeam)

-- ========== KIỂM TRA TRÁI HỢP LỆ ==========
function isValidFruit(obj)
    if not obj then return false end
    local name = obj.Name
    for _, ignore in ipairs(CONFIG.IgnoreFruits) do
        if name:find(ignore) then return false end
    end
    return true
end

function getFruitPosition(fruit)
    if fruit:IsA("Tool") and fruit.Handle then
        return fruit.Handle.Position, fruit.Handle.CFrame, fruit.Handle.Size.Y
    elseif fruit:IsA("Model") then
        local handle = fruit:FindFirstChild("Handle")
        if handle then
            return handle.Position, handle.CFrame, handle.Size.Y
        end
    end
    return nil
end

-- ========== NHẶT TRÁI ==========
function collectFruit(fruit)
    local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then
        player.CharacterAdded:Wait()
        hrp = player.Character:WaitForChild("HumanoidRootPart")
    end

    local pos, cf, sizeY = getFruitPosition(fruit)
    if not pos then return false end

    -- Di chuyển đến
    local bv = Instance.new("BodyVelocity")
    bv.MaxForce = Vector3.new(1/0,1/0,1/0)
    bv.Velocity = Vector3.new(0,0,0)
    bv.Parent = hrp

    local distance = (hrp.Position - pos).Magnitude
    local tweenTime = math.max(0.2, distance / CONFIG.MoveSpeed)
    local targetCF = cf * CFrame.new(0, sizeY + 2, 0)
    local tween = TweenService:Create(hrp, TweenInfo.new(tweenTime, Enum.EasingStyle.Linear), {CFrame = targetCF})
    tween:Play()
    tween.Completed:Wait()

    hrp.CFrame = targetCF
    bv:Destroy()

    -- Delay ngẫu nhiên
    wait(math.random(CONFIG.RandomDelay[1]*10, CONFIG.RandomDelay[2]*10)/10)

    -- Lấy tool fruit
    local fruitTool = player.Character:FindFirstChildOfClass("Tool")
    if fruitTool and fruitTool.Name:find("Fruit") then
        -- ok
    else
        for _, item in pairs(player.Backpack:GetChildren()) do
            if item:IsA("Tool") and item.Name:find("Fruit") then
                fruitTool = item
                break
            end
        end
    end

    if fruitTool and CONFIG.AutoStore then
        local originalName = fruitTool:GetAttribute("OriginalName") or fruitTool.Name
        local remote = ReplicatedStorage:FindFirstChild("Remotes") and ReplicatedStorage.Remotes:FindFirstChild("CommF_")
        if remote then
            pcall(function()
                remote:InvokeServer("StoreFruit", originalName, fruitTool)
                -- Gửi webhook nếu có
                if CONFIG.WebhookURL ~= "" then
                    local message = string.format("**%s** đã lưu **%s**", player.Name, fruitTool.Name)
                    HttpService:PostAsync(CONFIG.WebhookURL, HttpService:JSONEncode({content=message, username="Hiru Hub"}), Enum.HttpContentType.ApplicationJson)
                end
            end)
        end
    end
    return true
end

-- ========== TÌM TRÁI TRONG MAP ==========
function scanFruits()
    local fruits = {}
    for _, obj in pairs(workspace:GetChildren()) do
        if obj.Name:find("Fruit") and (obj:IsA("Tool") or obj:IsA("Model")) then
            if isValidFruit(obj) then
                table.insert(fruits, obj)
            end
        end
    end
    return fruits
end

-- ========== AUTO HOP SERVER KHI KHÔNG CÓ TRÁI ==========
function hopServer()
    if not CONFIG.AutoHopWhenNoFruit then return end
    currentAction = "hopping"
    statusText = "Đang chuyển server..."
    ui.statusLabel.Text = statusText

    local placeId = game.PlaceId
    local function fetchServers(cursor)
        local url = "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?limit=100"
        if cursor then url = url .. "&cursor=" .. cursor end
        local data = game:HttpGet(url)
        return HttpService:JSONDecode(data)
    end

    local function findServerWithFruits()
        -- Hàm này kiểm tra một server có trái không bằng cách lấy dữ liệu cơ bản? Không thể biết trực tiếp.
        -- Thay vào đó ta sẽ thử teleport đến server bất kỳ có chỗ trống, và hy vọng có trái.
        -- Có thể lọc server có ít người để tăng cơ hội.
        local cursor = nil
        local bestServer = nil
        local lowestPlayers = 100
        repeat
            local response = fetchServers(cursor)
            for _, server in pairs(response.data) do
                if server.playing < server.maxPlayers and not CONFIG.ServerBlacklist[server.id] then
                    -- Ưu tiên server ít người
                    if server.playing < lowestPlayers then
                        lowestPlayers = server.playing
                        bestServer = server.id
                    end
                end
            end
            cursor = response.nextPageCursor
        until not cursor or cursor == "null"
        return bestServer
    end

    local serverId = findServerWithFruits()
    if serverId then
        CONFIG.ServerBlacklist[serverId] = true
        saveConfig()
        TeleportService:TeleportToPlaceInstance(placeId, serverId, player)
    else
        statusText = "Không tìm được server phù hợp"
    end
    currentAction = "none"
end

-- ========== VÒNG LẶP CHÍNH ==========
spawn(function()
    while true do
        -- Cập nhật danh sách trái
        local fruits = scanFruits()
        fruitsInMap = #fruits

        -- Cập nhật UI danh sách trái
        for _, v in pairs(ui.fruitList:GetChildren()) do
            if v:IsA("TextButton") then v:Destroy() end
        end
        for _, fruit in ipairs(fruits) do
            local btn = Instance.new("TextButton")
            btn.Parent = ui.fruitList
            btn.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
            btn.BorderSizePixel = 0
            btn.Size = UDim2.new(1, 0, 0, 25)
            btn.Font = Enum.Font.Gotham
            btn.Text = fruit.Name
            btn.TextColor3 = Color3.fromRGB(255, 255, 255)
            btn.TextSize = 12
            btn.AutoButtonColor = false
        end
        ui.fruitList.CanvasSize = UDim2.new(0, 0, 0, #fruits * 27)

        -- Cập nhật trạng thái
        if currentAction == "finding" then
            statusText = "Đang tìm trái..."
        elseif currentAction == "hopping" then
            statusText = "Đang chuyển server..."
        elseif fruitsInMap == 0 then
            statusText = "Không có trái, chờ hop..."
        else
            statusText = "Đang hoạt động"
        end

        ui.statusLabel.Text = statusText
        ui.fruitCountLabel.Text = "Trái trong map: " .. fruitsInMap

        -- Xử lý auto find fruit
        if CONFIG.AutoFindFruit and fruitsInMap > 0 then
            currentAction = "finding"
            for _, fruit in ipairs(fruits) do
                if not CONFIG.AutoFindFruit then break end
                local success, err = pcall(collectFruit, fruit)
                if not success then
                    warn("Lỗi khi nhặt:", err)
                end
                wait(math.random(CONFIG.RandomDelay[1]*10, CONFIG.RandomDelay[2]*10)/10)
            end
            currentAction = "none"
        end

        -- Xử lý auto hop khi không có trái
        if CONFIG.AutoHopWhenNoFruit and fruitsInMap == 0 and currentAction ~= "hopping" then
            hopTimer = hopTimer + 1
            ui.hopTimerLabel.Text = "Hop sau: " .. (CONFIG.HopDelay - hopTimer) .. "s"
            if hopTimer >= CONFIG.HopDelay then
                hopServer()
                hopTimer = 0
            end
        else
            hopTimer = 0
            ui.hopTimerLabel.Text = "Hop sau: --"
        end

        wait(1)
    end
end)

-- ========== CHỐNG AFK ==========
player.Idled:Connect(function()
    while wait(3) do
        VirtualUser:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        wait(1)
        VirtualUser:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    end
end)

-- Lưu cấu hình khi thoát
game:BindToClose(function()
    saveConfig()
end)

print("✅ Hiru Hub - Fruit Hunter đã khởi động!")