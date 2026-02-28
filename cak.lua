local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer
local camera = Workspace.CurrentCamera

-- ==========================================
--               CẤU HÌNH (SETTINGS)
-- ==========================================
local Settings = {
    Attacking = true,           -- Bật/Tắt Script
    
    -- [Di chuyển & Né]
    TweenSpeed = 350,           -- Tốc độ bay (300-350 là ổn)
    Distance = 4,               -- Khoảng cách giữ với địch
    AutoDodgeSkill = true,      -- Tự bật Haki Quan Sát (Key E)
    
    -- [Bộ lọc mục tiêu]
    TeamCheck = true,           -- Bật: Không đánh đồng đội
    IgnoreMarines = true,       -- Bật: Bỏ qua phe Marine (Nếu bạn là Hải Tặc)
    CheckSafeZone = true,       -- Bật: Bỏ qua người có ForceField (SafeZone/PvP Off)
    
    -- [Fix Sus Bounty]
    AvoidSusKill = true,        -- Bật: Không đánh lại người vừa giết ngay lập tức
    SusCooldown = 600,          -- Thời gian chờ (Giây). 600s = 10 phút.
    
    -- [Auto Buff]
    AutoHaki = true,            -- Key J
    AutoV3 = true,              -- Key T
    AutoV4 = true,              -- Key Y
}

-- Danh sách đen tạm thời (Lưu tên người vừa giết)
local Blacklist = {} 

function getChar()
    return player.Character or player.CharacterAdded:Wait()
end

function getRoot()
    local char = getChar()
    return char:WaitForChild("HumanoidRootPart", 10)
end

-- ==========================================
--           HÀM CHECK SUS / SAFE ZONE
-- ==========================================
function isPlayerIgnored(pName)
    if not Settings.AvoidSusKill then return false end
    
    local killTime = Blacklist[pName]
    if killTime then
        -- Nếu chưa hết thời gian chờ -> Bỏ qua
        if (tick() - killTime) < Settings.SusCooldown then
            return true
        else
            -- Hết giờ -> Xóa khỏi list
            Blacklist[pName] = nil 
            return false
        end
    end
    return false
end

function getSmartTarget()
    local bestTarget = nil
    local shortestDist = math.huge
    local root = getRoot()
    if not root then return nil end

    for _, p in pairs(Players:GetPlayers()) do
        if p ~= player then
            -- 1. Check Blacklist (Sus Bounty)
            if not isPlayerIgnored(p.Name) then
                
                -- 2. Check Team
                local isMarine = (p.Team and p.Team.Name == "Marines")
                local isSameTeam = (player.Team and p.Team and player.Team == p.Team)
                
                local passTeamCheck = true
                if Settings.IgnoreMarines and isMarine then passTeamCheck = false end
                if Settings.TeamCheck and isSameTeam then passTeamCheck = false end

                if passTeamCheck then
                    local char = p.Character
                    if char and char:FindFirstChild("Humanoid") and char:FindFirstChild("HumanoidRootPart") then
                        local hum = char.Humanoid
                        
                        -- 3. Check Safe Zone / ForceField
                        local isSafe = char:FindFirstChildOfClass("ForceField")
                        
                        if hum.Health > 0 and (not Settings.CheckSafeZone or not isSafe) then
                            local dist = (char.HumanoidRootPart.Position - root.Position).Magnitude
                            
                            -- Lấy người gần nhất
                            if dist < shortestDist then
                                shortestDist = dist
                                bestTarget = p 
                            end
                        end
                    end
                end
            end
        end
    end
    return bestTarget
end

-- ==========================================
--              HÀM HỖ TRỢ (UTILS)
-- ==========================================
function tweenTo(targetCFrame)
    local root = getRoot()
    if not root then return end
    local dist = (root.Position - targetCFrame.Position).Magnitude
    
    if dist < 5 then 
        root.CFrame = targetCFrame 
        return 
    end
    
    local tweenInfo = TweenInfo.new(dist / Settings.TweenSpeed, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(root, tweenInfo, {CFrame = targetCFrame})
    tween:Play()
end

function pressKey(key)
    task.spawn(function()
        VirtualInputManager:SendKeyEvent(true, key, false, game)
        task.wait(0.01)
        VirtualInputManager:SendKeyEvent(false, key, false, game)
    end)
end

function equipToolByIndex(index)
    local tools = {}
    -- Lấy tool trong Balo
    if player.Backpack then
        for _, t in pairs(player.Backpack:GetChildren()) do
            if t:IsA("Tool") and t:FindFirstChild("Handle") then table.insert(tools, t) end
        end
    end
    -- Lấy tool đang cầm
    local char = getChar()
    if char then
        for _, t in pairs(char:GetChildren()) do 
            if t:IsA("Tool") then table.insert(tools, t) end 
        end
    end
    
    -- Thực hiện đổi
    if #tools > 0 then
        local realIndex = ((index - 1) % #tools) + 1
        local tool = tools[realIndex]
        if tool and tool.Parent ~= char then
            local curr = char:FindFirstChildWhichIsA("Tool")
            if curr then curr.Parent = player.Backpack end
            tool.Parent = char
        end
    end
end

-- ==========================================
--           MAIN LOOP (AUTO PVP)
-- ==========================================
task.spawn(function()
    local toolIndex = 1
    local lastSwitch = 0
    
    -- Thông báo bắt đầu
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = "Auto PvP Fixed";
            Text = "Anti-Sus & SafeCheck ON";
            Duration = 5;
        })
    end)

    while Settings.Attacking do
        task.wait() -- Heartbeat wait
        
        pcall(function()
            local targetPlayer = getSmartTarget()
            
            if targetPlayer then
                local targetChar = targetPlayer.Character
                local tRoot = targetChar:FindFirstChild("HumanoidRootPart")
                local tHum = targetChar:FindFirstChild("Humanoid")
                
                -- Vòng lặp chiến đấu với mục tiêu
                while targetChar and targetChar.Parent and tHum.Health > 0 and tRoot do
                    local root = getRoot()
                    if not root then break end

                    -- [CHECK 1]: Địch chạy vào Safe Zone -> Bỏ qua
                    if Settings.CheckSafeZone and targetChar:FindFirstChildOfClass("ForceField") then
                        break 
                    end
                    
                    -- [CHECK 2]: Địch chết -> Thêm vào Blacklist -> Break để tìm người mới
                    if tHum.Health <= 0 then
                        Blacklist[targetPlayer.Name] = tick()
                        break
                    end

                    -- 1. Aim & Tween (Prediction nhẹ)
                    local predictPos = tRoot.Position + (tRoot.Velocity * 0.15)
                    local chaseCFrame = CFrame.lookAt(tRoot.Position + Vector3.new(0, Settings.Distance, 0), predictPos)
                    
                    tweenTo(chaseCFrame)
                    camera.CFrame = CFrame.new(camera.CFrame.Position, predictPos)

                    -- 2. Auto Đổi Tool
                    if tick() - lastSwitch > 3.5 then
                        equipToolByIndex(toolIndex)
                        toolIndex = toolIndex + 1
                        lastSwitch = tick()
                    end

                    -- 3. Click Đánh
                    local vp = camera.ViewportSize
                    VirtualInputManager:SendMouseButtonEvent(vp.X/2, vp.Y/2, 0, true, game, 1)
                    VirtualInputManager:SendMouseButtonEvent(vp.X/2, vp.Y/2, 0, false, game, 1)

                    -- 4. Spam Skill Random
                    local keys = {Enum.KeyCode.Z, Enum.KeyCode.X, Enum.KeyCode.C, Enum.KeyCode.V}
                    for _, k in ipairs(keys) do pressKey(k) end
                    
                    -- 5. Né Skill (E)
                    if Settings.AutoDodgeSkill then pressKey(Enum.KeyCode.E) end

                    task.wait()
                    
                    -- Kiểm tra lại xem địch còn tồn tại không
                    if not targetPlayer or not targetPlayer.Parent then break end
                end
            end
        end)
    end
end)

-- ==========================================
--           AUTO BUFF (LOOP RIÊNG)
-- ==========================================
task.spawn(function()
    while Settings.Attacking do
        task.wait(2)
        if Settings.AutoHaki then pressKey(Enum.KeyCode.J) end
        if Settings.AutoV3 then pressKey(Enum.KeyCode.T) end
        if Settings.AutoV4 then pressKey(Enum.KeyCode.Y) end
    end
end)
