local Modules = getgenv().Modules or {}
Modules.Players = game:GetService("Players")
Modules.ReplicatedStorage = game:GetService("ReplicatedStorage")

local Settings = getgenv().Settings or {
    ["Attack Mobs"] = true,
    ["Attack Players"] = true,
}

local BringMob = getgenv().BringMob or false
local BringMobName = getgenv().BringMobName or nil

local FakeId = ""
task.spawn(function()
    local threadStr = tostring(coroutine.running())
    local threadId = string.sub(threadStr, -5) 
    FakeId = tostring(Modules.Players.LocalPlayer.UserId):sub(2, 4) .. threadId
end)

local Hits_Function
local PlayerScripts = Modules.Players.LocalPlayer:WaitForChild("PlayerScripts")

task.spawn(function()
    if PlayerScripts then
        local LocalScript = PlayerScripts:FindFirstChildOfClass("LocalScript")
        local timeout = 0
        while not LocalScript and timeout < 50 do
            task.wait(0.1)
            timeout = timeout + 1
            LocalScript = PlayerScripts:FindFirstChildOfClass("LocalScript")
        end
        
        if LocalScript and getsenv then
            local success, env = pcall(getsenv, LocalScript)
            if success and env and env._G then
                Hits_Function = env._G.SendHitsToServer
            end
        end
    end
end)

local waitHitTimeout = 0
while not Hits_Function and waitHitTimeout < 50 do
    task.wait(0.1)
    waitHitTimeout = waitHitTimeout + 1
end

if Hits_Function then
    print("Get Hit Function Success")
else
    print("Warning: Could not get SendHitsToServer. Falling back to default remote.")
end

local Flag_FastAttack = true
local success, COMBAT_REMOTE_THREAD = pcall(function()
    return require(Modules.ReplicatedStorage.Modules:WaitForChild("Flags")).COMBAT_REMOTE_THREAD
end)
if success then
    Flag_FastAttack = COMBAT_REMOTE_THREAD or false
end

function Modules:IsAlive(v)
    return v and v.Parent and not v:FindFirstChild("VehicleSeat") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart")
end

function Modules:GetDistance(targetPosition)
    local localRoot = Modules.Players.LocalPlayer.Character and Modules.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if localRoot then
        return (localRoot.Position - targetPosition).Magnitude
    end
    return math.huge
end

function Modules:GetBladeHits(RANGE)
    local BLADE_HITS = {}
    RANGE = RANGE or 67
    
    if Settings["Attack Mobs"] then
        for _, v in ipairs(workspace.Enemies:GetChildren()) do
            if v:IsA("Model") and self:IsAlive(v) and self:GetDistance(v.HumanoidRootPart.Position) <= RANGE then
                table.insert(BLADE_HITS, v)
            end
        end
    end
    
    if Settings["Attack Players"] then
        for _, v in ipairs(workspace.Characters:GetChildren()) do
            if v.Name ~= Modules.Players.LocalPlayer.Name and v:IsA("Model") and self:IsAlive(v) and self:GetDistance(v.HumanoidRootPart.Position) <= RANGE then
                table.insert(BLADE_HITS, v)
            end
        end
    end
    return BLADE_HITS
end

function Modules:StartAttack()
    if getgenv().SingleAttack then return end
    
    local character = Modules.Players.LocalPlayer.Character
    if not character then return end
    
    local BladeHits = self:GetBladeHits()
    local EnemyList = {}
    
    if #BladeHits > 0 then
        local CurrentTool = character:FindFirstChildOfClass("Tool")
        if not CurrentTool then return end
        
        if CurrentTool.ToolTip == "Blox Fruit" then
            local left = CurrentTool:FindFirstChild("LeftClickRemote")
            if left and left:IsA("RemoteEvent") then
                left:FireServer(Vector3.new(0, -500, 0), math.random(1, 3), true)
                task.wait(0.01)
                left:FireServer(false)
            end
        else
            for _, mob in ipairs(BladeHits) do
                if self:IsAlive(mob) and mob:FindFirstChild("Head") then
                    table.insert(EnemyList, {mob, mob.Head})
                end
            end
            
            if #EnemyList > 0 then
                local EnemyHit = EnemyList[1][2]
                local net = Modules.ReplicatedStorage.Modules:FindFirstChild("Net")
                if net then
                    local registerAttack = net:FindFirstChild("RE/RegisterAttack")
                    local registerHit = net:FindFirstChild("RE/RegisterHit")
                    
                    if registerAttack then registerAttack:FireServer(0) end
                    
                    if Flag_FastAttack and Hits_Function then
                        Hits_Function(EnemyHit, EnemyList, nil, FakeId)
                    elseif registerHit then
                        registerHit:FireServer(EnemyHit, EnemyList, nil, FakeId)
                    end
                end
            end
        end
    end
end

task.spawn(function()
    while task.wait() do
        pcall(function()
            if getgenv().BringMob then
                if sethiddenproperty then
                    sethiddenproperty(Modules.Players.LocalPlayer, "SimulationRadius", 3150)
                end
                if type(Modules.BringMob) == "function" then
                    Modules:BringMob()
                end
            end
            Modules:StartAttack()
        end)
    end
end)
