-- ============================================
-- SUPER FAST ATTACK BYPASS (Night Hub style)
-- ============================================

-- Khởi tạo global environment để tương thích
getgenv().SuperFastAttack = getgenv().SuperFastAttack or {}

local SFA = getgenv().SuperFastAttack

-- Đảm bảo Modules tồn tại
SFA.Modules = SFA.Modules or {}
SFA.Modules.Players = game:GetService("Players")
SFA.Modules.ReplicatedStorage = game:GetService("ReplicatedStorage")
SFA.Modules.RunService = game:GetService("RunService")

-- Settings (có thể chỉnh sau)
SFA.Settings = SFA.Settings or {
    AttackMobs = true,
    AttackPlayers = false,
    AttackRange = 80,
    FastAttack = true,
}

-- Biến trạng thái
SFA.BringMob = false
SFA.BringMobFunction = nil  -- Hàm kéo mob nếu có
SFA.FakeId = ""
SFA.HitsFunction = nil
SFA.FastAttackFlag = true

-- Tạo FakeId đồng bộ
do
    local userId = SFA.Modules.Players.LocalPlayer.UserId
    local threadId = string.sub(tostring(coroutine.running()), -5)
    SFA.FakeId = tostring(userId):sub(2, 4) .. threadId
end

-- Lấy Hits_Function từ PlayerScripts (có timeout)
task.spawn(function()
    local playerScripts = SFA.Modules.Players.LocalPlayer:WaitForChild("PlayerScripts")
    local localScript = playerScripts:FindFirstChildOfClass("LocalScript")
    local timeout = 0
    while not localScript and timeout < 50 do
        task.wait(0.1)
        timeout = timeout + 1
        localScript = playerScripts:FindFirstChildOfClass("LocalScript")
    end
    if localScript and getsenv then
        local success, env = pcall(getsenv, localScript)
        if success and env and env._G then
            SFA.HitsFunction = env._G.SendHitsToServer
        end
    end
    if SFA.HitsFunction then
        print("[SFA] Got Hits Function")
    else
        print("[SFA] Using fallback remote")
    end
end)

-- Xác định flag fast attack từ game
local success, flag = pcall(function()
    return require(SFA.Modules.ReplicatedStorage.Modules:WaitForChild("Flags")).COMBAT_REMOTE_THREAD
end)
if success then
    SFA.FastAttackFlag = flag or true
end

-- Hàm kiểm tra alive
function SFA:IsAlive(instance)
    return instance and instance.Parent 
        and instance:FindFirstChild("Humanoid") 
        and instance.Humanoid.Health > 0 
        and instance:FindFirstChild("HumanoidRootPart")
        and not instance:FindFirstChild("VehicleSeat")
end

-- Hàm lấy khoảng cách
function SFA:GetDistance(pos)
    local root = SFA.Modules.Players.LocalPlayer.Character 
        and SFA.Modules.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if root then
        return (root.Position - pos).Magnitude
    end
    return math.huge
end

-- Hàm lấy danh sách mục tiêu
function SFA:GetTargets()
    local targets = {}
    local range = SFA.Settings.AttackRange
    if SFA.Settings.AttackMobs then
        for _, v in ipairs(workspace.Enemies:GetChildren()) do
            if v:IsA("Model") and self:IsAlive(v) and self:GetDistance(v.HumanoidRootPart.Position) <= range then
                table.insert(targets, v)
            end
        end
    end
    if SFA.Settings.AttackPlayers then
        for _, v in ipairs(workspace.Characters:GetChildren()) do
            if v.Name ~= SFA.Modules.Players.LocalPlayer.Name 
                and v:IsA("Model") and self:IsAlive(v) 
                and self:GetDistance(v.HumanoidRootPart.Position) <= range then
                table.insert(targets, v)
            end
        end
    end
    return targets
end

-- Hàm tấn công siêu nhanh
function SFA:FastAttack()
    local character = SFA.Modules.Players.LocalPlayer.Character
    if not character then return end

    local targets = self:GetTargets()
    if #targets == 0 then return end

    local tool = character:FindFirstChildOfClass("Tool")
    if not tool then return end

    -- Nếu là trái ác quỷ, dùng LeftClickRemote
    if tool.ToolTip == "Blox Fruit" then
        local leftClick = tool:FindFirstChild("LeftClickRemote")
        if leftClick and leftClick:IsA("RemoteEvent") then
            leftClick:FireServer(Vector3.new(0, -500, 0), math.random(1, 3), true)
            task.wait(0.01)
            leftClick:FireServer(false)
        end
        return
    end

    -- Tạo danh sách enemy cho hits function
    local enemyList = {}
    for _, mob in ipairs(targets) do
        if self:IsAlive(mob) and mob:FindFirstChild("Head") then
            table.insert(enemyList, {mob, mob.Head})
        end
    end
    if #enemyList == 0 then return end

    local enemyHit = enemyList[1][2] -- head của mob đầu tiên
    local net = SFA.Modules.ReplicatedStorage.Modules:FindFirstChild("Net")
    if not net then return end

    -- Gửi RegisterAttack (cần cho cả hai phương thức)
    local registerAttack = net:FindFirstChild("RE/RegisterAttack")
    if registerAttack then
        registerAttack:FireServer(0)
    end

    -- Sử dụng HitsFunction nếu có và được bật
    if SFA.Settings.FastAttack and SFA.HitsFunction then
        pcall(SFA.HitsFunction, enemyHit, enemyList, nil, SFA.FakeId)
    else
        local registerHit = net:FindFirstChild("RE/RegisterHit")
        if registerHit then
            registerHit:FireServer(enemyHit, enemyList, nil, SFA.FakeId)
        end
    end
end

-- Vòng lặp chính (dùng RunService.Heartbeat để tấn công nhanh nhất có thể)
SFA.Connection = SFA.Modules.RunService.Heartbeat:Connect(function()
    pcall(function()
        if SFA.BringMob and type(SFA.BringMobFunction) == "function" then
            -- Có thể kích hoạt simulation radius
            if sethiddenproperty then
                sethiddenproperty(SFA.Modules.Players.LocalPlayer, "SimulationRadius", 3150)
            end
            SFA:BringMobFunction()
        end
        SFA:FastAttack()
    end)
end)

print("[SFA] Super Fast Attack loaded. FakeId:", SFA.FakeId)

-- Hàm dừng (có thể gọi khi cần)
-- SFA.Connection:Disconnect()