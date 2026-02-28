--[[
    ULTIMATE BLOX FRUITS PVP V8 - FULL FINAL
    Features:
    1. Auto Enable PvP (Fix)
    2. GUI Skip Button (Restored)
    3. Auto Skip Safe Zone Notification
    4. Smart Retreat & Orbit
]]

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local CoreGui = game:GetService("CoreGui")
local Stats = game:GetService("Stats")

local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

-- ==========================================
--              CẤU HÌNH (SETTINGS)
-- ==========================================
local Settings = {
    Enable = true,
    
    -- [System]
    AutoEnablePvP = true,       -- Tự động bật PvP
    SkipOnNotification = true,  -- Skip khi thấy thông báo Safe Zone
    TeamCheck = true,
    IgnoreMarines = true,

    -- [Movement]
    TweenSpeed = 350,
    Height = 15,                
    HoldDistance = 15,          
    OrbitMode = true,           
    OrbitSpeed = 2,             

    -- [Safe Retreat]
    LowHealthRetreat = true,    
    LowHP = 30,                 
    SafeHP = 70,                
    RetreatHeight = 2000,       
    
    -- [Skip Logic]
    OneKillPerPlayer = true,    
    NoDamageTimeout = 15,       
    
    -- [Smart Moves]
    SmartDash = true,           
    SmartJump = true,           
    SmartSoru = true,           
}

-- Variables
local CurrentTarget = nil
local Blacklist = {} 
local IsRetreating = false
local LastDamageTime = 0
local EnemyLastHealth = 0
local ToolIndex = 1
local LastBuffTime = 0
local LastToolSwitch = 0
local LastUIScan = 0

-- ==========================================
--        FEATURE 8: NÚT SKIP GUI
-- ==========================================
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = CoreGui
ScreenGui.Name = "AutoPvpV8"

local SkipBtn = Instance.new("TextButton")
SkipBtn.Parent = ScreenGui
SkipBtn.Size = UDim2.new(0, 150, 0, 50)
SkipBtn.Position = UDim2.new(0.5, -75, 0.15, 0) -- Giữa trên màn hình
SkipBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
SkipBtn.Text = "SKIP TARGET"
SkipBtn.TextColor3 = Color3.new(1,1,1)
SkipBtn.Font = Enum.Font.GothamBold
SkipBtn.TextSize = 16
SkipBtn.Visible = false
SkipBtn.BorderSizePixel = 2

SkipBtn.MouseButton1Click:Connect(function()
    if CurrentTarget then
        Blacklist[CurrentTarget.Name] = tick()
        CurrentTarget = nil
        SkipBtn.Visible = false
        print("Đã Skip mục tiêu thủ công!")
    end
end)

-- ==========================================
--        AUTO ENABLE PVP (THREAD RIÊNG)
-- ==========================================
task.spawn(function()
    while true do
        task.wait(2)
        if Settings.Enable and Settings.AutoEnablePvP then
            pcall(function()
                local gui = player:FindFirstChild("PlayerGui")
                if gui then
                    for _, v in pairs(gui:GetDescendants()) do
                        if v:IsA("TextButton") or v:IsA("ImageButton") then
                            local name = string.lower(v.Name)
                            local text = v:IsA("TextButton") and string.lower(v.Text) or ""
                            if (string.find(name, "enable") or string.find(text, "enable") or string.find(text, "bật")) and string.find(name, "pvp") then
                                if v.Visible and v.AbsolutePosition.X > 0 then
                                    VirtualInputManager:SendMouseButtonEvent(v.AbsolutePosition.X + 10, v.AbsolutePosition.Y + 10, 0, true, game, 0)
                                    task.wait(0.1)
                                    VirtualInputManager:SendMouseButtonEvent(v.AbsolutePosition.X + 10, v.AbsolutePosition.Y + 10, 0, false, game, 0)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

-- ==========================================
--        UTILS & HELPERS
-- ==========================================
function getChar() return player.Character or player.CharacterAdded:Wait() end
function getRoot() return getChar():WaitForChild("HumanoidRootPart", 10) end
function getHum() return getChar():WaitForChild("Humanoid", 10) end

function pressKey(key)
    VirtualInputManager:SendKeyEvent(true, key, false, game)
    task.wait(0.01)
    VirtualInputManager:SendKeyEvent(false, key, false, game)
end

function getAimPosition(targetRoot)
    local ping = Stats.Network.ServerStatsItem["Data Ping"]:GetValueString()
    local pingNumber = tonumber(ping:match("%d+")) or 60
    local prediction = pingNumber / 1000 + 0.045
    return targetRoot.Position + (targetRoot.Velocity * prediction)
end

function checkSafeZoneNotification()
    if not Settings.SkipOnNotification then return false end
    local playerGui = player:FindFirstChild("PlayerGui")
    if not playerGui then return false end
    
    local keywords = {"safe zone", "an toàn", "disabled", "pvp is disabled", "no pvp", "protection"}
    for _, v in pairs(playerGui:GetDescendants()) do
        if v:IsA("TextLabel") and v.Visible and v.TextTransparency < 1 then
            local text = string.lower(v.Text)
            for _, key in pairs(keywords) do
                if string.find(text, key) then return true end
            end
        end
    end
    return false
end

-- ==========================================
--        NOCLIP & ANTI-FALL
-- ==========================================
RunService.Stepped:Connect(function()
    if not Settings.Enable then return end
    local char = getChar()
    if char then
        for _, v in pairs(char:GetDescendants()) do
            if v:IsA("BasePart") and v.CanCollide then v.CanCollide = false end
        end
        
        local root = char:FindFirstChild("HumanoidRootPart")
        if root then
            if not root:FindFirstChild("AntiFallBV") then
                local bv = Instance.new("BodyVelocity")
                bv.Name = "AntiFallBV"
                bv.Parent = root
                bv.MaxForce = Vector3.new(0, math.huge, 0)
                bv.Velocity = Vector3.new(0, 0, 0)
            end
            
            local bv = root:FindFirstChild("AntiFallBV")
            if bv then
                if IsRetreating then
                    bv.Velocity = Vector3.new(0, 50, 0) 
                else
                    bv.Velocity = Vector3.new(0, 0, 0)
                end
            end
        end
    end
end)

-- ==========================================
--        SMART TOOL SWITCH
-- ==========================================
function switchToolSmart()
    local hum = getHum()
    local backpack = player.Backpack
    local tools = {}
    local allItems = {}
    
    for _, t in pairs(backpack:GetChildren()) do table.insert(allItems, t) end
    for _, t in pairs(getChar():GetChildren()) do if t:IsA("Tool") then table.insert(allItems, t) end end
    
    for _, t in pairs(allItems) do
        if t:IsA("Tool") and t:FindFirstChild("Handle") then table.insert(tools, t) end
    end
    
    if #tools > 0 then
        ToolIndex = ToolIndex + 1
        if ToolIndex > #tools then ToolIndex = 1 end
        local targetTool = tools[ToolIndex]
        if targetTool then hum:EquipTool(targetTool) end
    end
end

function tweenTo(targetCFrame)
    local root = getRoot()
    if not root then return end
    local speed = IsRetreating and 500 or Settings.TweenSpeed
    local dist = (root.Position - targetCFrame.Position).Magnitude
    local info = TweenInfo.new(dist / speed, Enum.EasingStyle.Linear)
    TweenService:Create(root, info, {CFrame = targetCFrame}):Play()
end

-- ==========================================
--           MAIN LOGIC LOOP
-- ==========================================
task.spawn(function()
    while Settings.Enable do
        task.wait()
        pcall(function()
            local myHum = getHum()
            local myRoot = getRoot()
            
            -- [1] RETREAT LOGIC
            local hpPercent = (myHum.Health / myHum.MaxHealth) * 100
            if hpPercent <= Settings.LowHP then IsRetreating = true
            elseif hpPercent >= Settings.SafeHP then IsRetreating = false end
            
            if IsRetreating then
                SkipBtn.Visible = false
                tweenTo(CFrame.new(myRoot.Position.X, Settings.RetreatHeight, myRoot.Position.Z))
                return 
            end
            
            -- [2] TARGET SCANNER
            if not CurrentTarget or not CurrentTarget.Parent or not CurrentTarget.Character or CurrentTarget.Character.Humanoid.Health <= 0 then
                CurrentTarget = nil
                SkipBtn.Visible = false
                local minDist = math.huge
                for _, p in pairs(Players:GetPlayers()) do
                    if p ~= player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                        local isBlacklisted = Blacklist[p.Name] and (tick() - Blacklist[p.Name] < 300)
                        local isMarine = (Settings.IgnoreMarines and p.Team and p.Team.Name == "Marines")
                        local isTeam = (Settings.TeamCheck and p.Team == player.Team)
                        local isSafe = p.Character:FindFirstChildOfClass("ForceField")
                        
                        if not isBlacklisted and not isMarine and not isTeam and not isSafe then
                            local d = (p.Character.HumanoidRootPart.Position - myRoot.Position).Magnitude
                            if d < minDist then
                                minDist = d
                                CurrentTarget = p
                            end
                        end
                    end
                end
                
                if CurrentTarget then
                    LastDamageTime = tick()
                    EnemyLastHealth = CurrentTarget.Character.Humanoid.Health
                    SkipBtn.Visible = true
                end
            end
            
            -- [3] COMBAT ENGINE
            if CurrentTarget and CurrentTarget.Character then
                local tChar = CurrentTarget.Character
                local tRoot = tChar.HumanoidRootPart
                local tHum = tChar.Humanoid
                
                -- Check SafeZone
                if tChar:FindFirstChildOfClass("ForceField") then
                    CurrentTarget = nil
                    return
                end

                -- Check Notification
                if tick() - LastUIScan > 0.5 then
                    if checkSafeZoneNotification() then
                        Blacklist[CurrentTarget.Name] = tick()
                        CurrentTarget = nil
                        return
                    end
                    LastUIScan = tick()
                end

                -- One Kill Skip
                if tHum.Health <= 0 then
                    if Settings.OneKillPerPlayer then Blacklist[CurrentTarget.Name] = tick() end
                    CurrentTarget = nil
                    return
                end
                
                -- No Damage Skip
                if tHum.Health < EnemyLastHealth then
                    EnemyLastHealth = tHum.Health
                    LastDamageTime = tick() 
                elseif tick() - LastDamageTime > Settings.NoDamageTimeout then
                    Blacklist[CurrentTarget.Name] = tick()
                    CurrentTarget = nil
                    return
                end
                
                -- ORBIT & MOVEMENT
                local targetPos = tRoot.Position
                local aimPos = getAimPosition(tRoot)
                local finalCFrame
                
                if Settings.OrbitMode then
                    local t = tick() * Settings.OrbitSpeed
                    local offset = Vector3.new(math.cos(t) * Settings.HoldDistance, Settings.Height, math.sin(t) * Settings.HoldDistance)
                    finalCFrame = CFrame.new(targetPos + offset, aimPos) 
                else
                    finalCFrame = CFrame.new(targetPos + Vector3.new(0, Settings.Height, 0), aimPos)
                end
                
                tweenTo(finalCFrame)
                camera.CFrame = CFrame.new(camera.CFrame.Position, aimPos)
                
                -- SMART MOVES
                local dist = (myRoot.Position - targetPos).Magnitude
                if dist < 25 then
                    if Settings.SmartDash and math.random() > 0.9 then pressKey(Enum.KeyCode.Q) end
                    if Settings.SmartSoru and math.random() > 0.9 then pressKey(Enum.KeyCode.F) end
                    if Settings.SmartJump and math.random() > 0.9 then myHum.Jump = true end
                end
                
                -- ATTACK
                if tick() - LastToolSwitch > 3.5 then
                    switchToolSmart()
                    LastToolSwitch = tick()
                end
                
                VirtualInputManager:SendMouseButtonEvent(camera.ViewportSize.X/2, camera.ViewportSize.Y/2, 0, true, game, 1)
                VirtualInputManager:SendMouseButtonEvent(camera.ViewportSize.X/2, camera.ViewportSize.Y/2, 0, false, game, 1)
                
                local skills = {Enum.KeyCode.Z, Enum.KeyCode.X, Enum.KeyCode.C, Enum.KeyCode.V}
                pressKey(skills[math.random(1, #skills)])
                
                if tick() - LastBuffTime > 6 then
                    pressKey(Enum.KeyCode.T)
                    pressKey(Enum.KeyCode.Y) 
                    LastBuffTime = tick()
                end
                pressKey(Enum.KeyCode.E) 
            end
        end)
    end
end)
