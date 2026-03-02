-- ========================================
-- ECLIPSE HUB - PREHISTORIC KAITUN STANDALONE
-- (Trích xuất từ file gốc)
-- ========================================

-- Khởi tạo dịch vụ
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local VirtualUser = game:GetService("VirtualUser")
local VirtualInputManager = game:GetService("VirtualInputManager")
local StarterGui = game:GetService("StarterGui")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")

local client = Players.LocalPlayer

-- Xác định Sea
if game.PlaceId == 2753915549 or game.PlaceId == 85211729168715 then
    World1 = true
elseif game.PlaceId == 4442272183 or game.PlaceId == 79091703265657 then
    World2 = true
elseif game.PlaceId == 7449423635 or game.PlaceId == 100117331123089 then
    World3 = true
end

-- ========================================
-- CẤU HÌNH _G.Settings (rút gọn)
-- ========================================
_G.Settings = _G.Settings or {}
_G.Settings.Main = _G.Settings.Main or {
    ["Selected Weapon"] = "Melee",
    ["Auto Farm"] = false,
}
_G.Settings.SeaEvent = _G.Settings.SeaEvent or {
    ["Selected Boat"] = "Guardian",
    ["Boat Tween Speed"] = 300,
}
_G.Settings.Setting = _G.Settings.Setting or {
    ["Farm Distance"] = 35,
    ["Player Tween Speed"] = 350,
    ["Bring Mob"] = true,
    ["Fast Attack"] = true,
    ["Fast Attack Delay"] = 0.22,
    ["Mastery Health"] = 25,
    ["Spin Position"] = false,
}

-- ========================================
-- HÀM HỖ TRỢ CHUNG
-- ========================================

G = G or {}
function G.Alive(mob)
    return mob and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0
end

function Click()
    VirtualUser:CaptureController()
    VirtualUser:Button1Down(Vector2.new(1280, 672))
end

function AutoHaki()
    if not client.Character:FindFirstChild("HasBuso") then
        ReplicatedStorage.Remotes.CommF_:InvokeServer("Buso")
    end
end

function UnEquipWeapon(weapon)
    local char = client.Character
    if char and char:FindFirstChild(weapon) then
        char[weapon].Parent = client.Backpack
    end
end

function EquipWeapon(toolName)
    local char = client.Character
    if not char then return end
    if not char:FindFirstChild(toolName) then
        local tool = client.Backpack:FindFirstChild(toolName)
        if tool then
            char.Humanoid:EquipTool(tool)
        end
    end
end

function EquipFarmWeapon()
    local wp = _G.ChooseWP or "Melee"
    local char = client.Character
    if not char then return end
    if wp == "Sword" then
        for _, v in pairs(client.Backpack:GetChildren()) do
            if v:IsA("Tool") and v.ToolTip == "Sword" then
                char.Humanoid:EquipTool(v); return
            end
        end
    elseif wp == "Fruit" then
        for _, v in pairs(client.Backpack:GetChildren()) do
            if v:IsA("Tool") and v.ToolTip == "Blox Fruit" then
                char.Humanoid:EquipTool(v); return
            end
        end
    elseif wp == "Gun" then
        for _, v in pairs(client.Backpack:GetChildren()) do
            if v:IsA("Tool") and v.ToolTip == "Gun" then
                char.Humanoid:EquipTool(v); return
            end
        end
    else
        for _, v in pairs(client.Backpack:GetChildren()) do
            if v:IsA("Tool") and (v.ToolTip == "Melee" or v.ToolTip == "Fighting Style") then
                char.Humanoid:EquipTool(v); return
            end
        end
    end
end

-- TweenPlayer
local C = Instance.new("Part", Workspace)
C.Size = Vector3.new(1, 1, 1)
C.Name = "SaturnFarmPart"
C.Anchored = true
C.CanCollide = false
C.CanTouch = false
C.Transparency = 1
local existingC = Workspace:FindFirstChild(C.Name)
if existingC and existingC ~= C then existingC:Destroy() end

getgenv().TweenSpeedFar = 350
getgenv().TweenSpeedNear = 700
local shouldTween = false

task.spawn(function()
    repeat task.wait() until client.Character and client.Character.PrimaryPart
    C.CFrame = client.Character.PrimaryPart.CFrame
    while task.wait() do
        pcall(function()
            if shouldTween then
                if C and C.Parent == Workspace then
                    local e = client.Character and client.Character.PrimaryPart
                    if e and (e.Position - C.Position).Magnitude <= 200 then
                        e.CFrame = C.CFrame
                    else
                        C.CFrame = e.CFrame
                    end
                end
                local e = client.Character
                if e then
                    for _, v in pairs(e:GetChildren()) do
                        if v:IsA("BasePart") then v.CanCollide = false end
                    end
                end
            else
                local e = client.Character
                if e then
                    for _, v in pairs(e:GetChildren()) do
                        if v:IsA("BasePart") then v.CanCollide = true end
                    end
                end
            end
        end)
    end
end)

function TweenPlayer(pos)
    local plr = client
    local e = plr.Character
    if not e or not e:FindFirstChild("HumanoidRootPart") then return end
    local HRP = e.HumanoidRootPart
    shouldTween = true
    if HRP.Anchored then HRP.Anchored = false; task.wait() end
    local dist = (pos.Position - HRP.Position).Magnitude
    local speed = dist <= 15 and (getgenv().TweenSpeedNear or 700) or (getgenv().TweenSpeedFar or 350)
    local info = TweenInfo.new(dist / speed, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(C, info, {CFrame = pos})
    if e.Humanoid.Sit == true then
        C.CFrame = CFrame.new(C.Position.X, pos.Y, C.Position.Z)
    end
    tween:Play()
    task.spawn(function()
        while tween.PlaybackState == Enum.PlaybackState.Playing do
            if not shouldTween or _G.StopTween then
                tween:Cancel()
                shouldTween = false
                break
            end
            task.wait(0.1)
        end
    end)
end

function StopTween(State)
    if not State then
        if _G.BypassTeleportActive then return end
        _G.StopTween = true
        shouldTween = false
        pcall(function() TweenPlayer(client.Character.HumanoidRootPart.CFrame) end)
        pcall(function()
            if client.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                client.Character.HumanoidRootPart.BodyClip:Destroy()
            end
        end)
        _G.StopTween = false
    end
end

-- TweenBoat
function TweenBoat(pos)
    local Boat = Workspace.Boats[_G.Settings.SeaEvent["Selected Boat"]]
    if not Boat or not Boat:FindFirstChild("VehicleSeat") then
        warn("Boat atau VehicleSeat tidak ditemukan!")
        return { Stop = function() end }
    end
    local targetCFrame = pos
    if typeof(pos) == "Instance" and pos:IsA("BasePart") then
        targetCFrame = pos.CFrame
    elseif typeof(pos) ~= "CFrame" then
        warn("Argumen 'pos' harus berupa CFrame atau BasePart!")
        return { Stop = function() end }
    end
    local startPosition = Boat.VehicleSeat.Position
    local endPosition = targetCFrame.Position
    local distance = (startPosition - endPosition).Magnitude
    local duration = distance / (_G.Settings.SeaEvent["Boat Tween Speed"] or 100)
    local info = TweenInfo.new(duration, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(Boat.VehicleSeat, info, { CFrame = targetCFrame })
    if distance > 25 then tween:Play() end
    local StopTweenBoat = {}
    function StopTweenBoat:Stop()
        if tween and tween.PlaybackState == Enum.PlaybackState.Playing then
            tween:Cancel()
        end
    end
    return StopTweenBoat
end

-- AttackModule
local modules = ReplicatedStorage:WaitForChild("Modules")
local net = modules:WaitForChild("Net")
local RegisterAttack = net:WaitForChild("RE/RegisterAttack")
local RegisterHit = net:WaitForChild("RE/RegisterHit")
local AttackModule = {}
function AttackModule:AttackEnemy(EnemyHead, Table)
    if EnemyHead then
        RegisterAttack:FireServer(0)
        RegisterAttack:FireServer(1)
        RegisterAttack:FireServer(2)
        RegisterAttack:FireServer(3)
        RegisterHit:FireServer(EnemyHead, Table or {})
    end
end
function AttackModule:AttackNearest()
    local mon = {nil, {}}
    for _, Enemy in pairs(Workspace.Enemies:GetChildren()) do
        if not mon[1] and Enemy:FindFirstChild("HumanoidRootPart", true) and client:DistanceFromCharacter(Enemy.HumanoidRootPart.Position) < 60 then
            mon[1] = Enemy:FindFirstChild("HumanoidRootPart")
        elseif Enemy:FindFirstChild("HumanoidRootPart", true) and client:DistanceFromCharacter(Enemy.HumanoidRootPart.Position) < 60 then
            table.insert(mon[2], {[1] = Enemy, [2] = Enemy:FindFirstChild("HumanoidRootPart")})
        end
    end
    self:AttackEnemy(unpack(mon))
end
function AttackModule:BladeHits() self:AttackNearest() end

function Attack()
    if not _G.Settings.Main["Auto Farm Fruit Mastery"] and not _G.Settings.Main["Auto Farm Gun Mastery"] then
        if _G.Settings.Setting["Fast Attack"] then
            wait(_G.Settings.Setting["Fast Attack Delay"] or 0.22)
            AttackModule:BladeHits()
        else
            wait(0.5)
            AttackModule:BladeHits()
        end
    end
end

-- Bring Enemy
local _B = false
local PosMon = nil
_G.BringRange = _G.BringRange or 235
_G.MaxBringMobs = _G.MaxBringMobs or 3
_G.MobHeight = _G.MobHeight or 20

local function IsRaidMob(mob)
    local n = mob.Name:lower()
    if n:find("raid") or n:find("microchip") or n:find("island") then return true end
    if mob:GetAttribute("IsRaid") or mob:GetAttribute("RaidMob") or mob:GetAttribute("IsBoss") then return true end
    local hum = mob:FindFirstChild("Humanoid")
    if hum and hum.WalkSpeed == 0 then return true end
    return false
end

function BringEnemy()
    if not _G.Settings.Setting["Bring Mob"] or not _B then return end
    local plr = client
    local char = plr.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    pcall(function() sethiddenproperty(plr, "SimulationRadius", math.huge) end)
    local rawPos = PosMon or hrp.Position
    local targetPos = typeof(rawPos) == "CFrame" and rawPos.Position or rawPos
    local enemies = Workspace.Enemies:GetChildren()
    local count = 0
    for _, mob in ipairs(enemies) do
        if count >= _G.MaxBringMobs then break end
        local hum = mob:FindFirstChild("Humanoid")
        local root = mob:FindFirstChild("HumanoidRootPart")
        if hum and root and hum.Health > 0 and not IsRaidMob(mob) then
            local dist = (root.Position - targetPos).Magnitude
            if dist <= _G.BringRange and not root:GetAttribute("Tweening") then
                count = count + 1
                root:SetAttribute("Tweening", true)
                root.CFrame = CFrame.new(targetPos)
                root:SetAttribute("Tweening", false)
                pcall(function()
                    local head = mob:FindFirstChild("Head") or root
                    if head and hum.Health > 0 then
                        local otherMobs = {}
                        for _, m2 in ipairs(enemies) do
                            if m2 ~= mob and m2:FindFirstChild("HumanoidRootPart") then
                                table.insert(otherMobs, {[1] = m2, [2] = m2:FindFirstChild("HumanoidRootPart")})
                            end
                        end
                        AttackModule:AttackEnemy(head, otherMobs)
                    end
                end)
            end
        end
    end
end

task.spawn(function()
    while task.wait(0.8) do
        if _G.Settings.Setting["Bring Mob"] then _B = true; BringEnemy() else _B = false end
    end
end)

-- G.Kill
G.Kill = function(I, e)
    if not (I and e) then return end
    local hrp = I:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local hum = I:FindFirstChild("Humanoid")
    if not hum or hum.Health <= 0 then return end
    if not I:GetAttribute("Locked") then I:SetAttribute("Locked", hrp.CFrame) end
    PosMon = (I:GetAttribute("Locked")).Position
    _B = true
    BringEnemy()
    EquipWeapon(_G.SelectWeapon or _G.Settings.Main["Selected Weapon"])
    local tool = client.Character:FindFirstChildOfClass("Tool")
    if not tool then return end
    TweenPlayer(hrp.CFrame * CFrame.new(0, _G.MobHeight or 20, 0))
    task.spawn(function()
        task.wait(0.12)
        pcall(function()
            if hum and hum.Health > 0 then
                local head = I:FindFirstChild("Head") or hrp
                AttackModule:AttackEnemy(head, {})
            end
        end)
    end)
end

-- GetConnectionEnemies
GetConnectionEnemies = function(I)
    for _, K in pairs(ReplicatedStorage:GetChildren()) do
        if K:IsA("Model") and ((typeof(I) == "table" and table.find(I, K.Name) or K.Name == I) and (K:FindFirstChild("Humanoid") and K.Humanoid.Health > 0)) then
            return K
        end
    end
    for _, K in next, Workspace.Enemies:GetChildren() do
        if K:IsA("Model") and ((typeof(I) == "table" and table.find(I, K.Name) or K.Name == I) and (K:FindFirstChild("Humanoid") and K.Humanoid.Health > 0)) then
            return K
        end
    end
end

-- ========================================
-- HÀM DRAGON DOJO (Blaze Ember)
-- ========================================
function getBlazeEmberQuest()
    local ResQuest = net:FindFirstChild("RF/DragonHunter"):InvokeServer({ Context = "Check" })
    if ResQuest then
        for key, value in pairs(ResQuest) do
            if key == "Text" then return value end
        end
    end
end

function getIsOnQuest()
    local ResQuest = net:FindFirstChild("RF/DragonHunter"):InvokeServer({ Context = "Check" })
    if ResQuest then
        for key, value in pairs(ResQuest) do
            if key == "Text" then
                if string.find(value, "Venomous Assailant") or string.find(value, "Hydra Enforcer") or string.find(value, "Destroy 10 trees") then
                    return true
                end
            end
        end
    end
    return false
end

function SaveBlazeEmberQuest()
    if string.find(getBlazeEmberQuest(), "Venomous Assailant") then
        _G.BlazeEmberQuest = "Venomous Assailant"
    elseif string.find(getBlazeEmberQuest(), "Hydra Enforcer") then
        _G.BlazeEmberQuest = "Hydra Enforcer"
    elseif string.find(getBlazeEmberQuest(), "Destroy 10 trees") then
        _G.BlazeEmberQuest = "Destroy 10 trees"
    end
end

function CollectBlazeEmber()
    local ember = Workspace:FindFirstChild("EmberTemplate")
    if ember then
        local part = ember:FindFirstChild("Part")
        if part then TweenPlayer(part.CFrame) end
    end
end

function autoKillVenemousAssailant()
    if not Workspace.Enemies:FindFirstChild("Venomous Assailant") then
        TweenPlayer(CFrame.new(4789.29639, 1078.59082, 962.764099))
    else
        for _, v in pairs(Workspace.Enemies:GetChildren()) do
            if v.Name == "Venomous Assailant" then
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    repeat
                        task.wait()
                        AutoHaki()
                        EquipWeapon(_G.Settings.Main["Selected Weapon"])
                        v.Humanoid.WalkSpeed = 0
                        v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                        PosMon = v.HumanoidRootPart.CFrame
                        MonFarm = v.Name
                        TweenPlayer(v.HumanoidRootPart.CFrame * (Pos or CFrame.new(0,20,0)))
                        Attack()
                    until not v.Parent or v.Humanoid.Health <= 0 or not _G.OnBlzeQuest
                end
            end
        end
    end
end

function autoKillHydraEnforcer()
    if not Workspace.Enemies:FindFirstChild("Hydra Enforcer") then
        TweenPlayer(CFrame.new(4789.29639, 1078.59082, 962.764099))
    else
        for _, v in pairs(Workspace.Enemies:GetChildren()) do
            if v.Name == "Hydra Enforcer" then
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    repeat
                        task.wait()
                        AutoHaki()
                        EquipWeapon(_G.Settings.Main["Selected Weapon"])
                        v.Humanoid.WalkSpeed = 0
                        v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                        PosMon = v.HumanoidRootPart.CFrame
                        MonFarm = v.Name
                        TweenPlayer(v.HumanoidRootPart.CFrame * (Pos or CFrame.new(0,20,0)))
                        Attack()
                    until not v.Parent or v.Humanoid.Health <= 0 or not _G.OnBlzeQuest
                end
            end
        end
    end
end

function autoDestroyHydraTrees()
    local Pos1 = CFrame.new(5260.28223, 1004.24329, 347.062622)
    local Pos2 = CFrame.new(5237.94775, 1004.24329, 429.596344)
    local Pos3 = CFrame.new(5320.87793, 1004.24329, 439.152954)
    local Pos4 = CFrame.new(5346.70752, 1004.24329, 359.389008)
    local myPos = client.Character.HumanoidRootPart.CFrame
    if (myPos.Position - Pos1.Position).Magnitude <= 3 then useAllSkill() else TweenPlayer(Pos1) end
    if (myPos.Position - Pos2.Position).Magnitude <= 3 then useAllSkill() else TweenPlayer(Pos2) end
    if (myPos.Position - Pos3.Position).Magnitude <= 3 then useAllSkill() else TweenPlayer(Pos3) end
    if (myPos.Position - Pos4.Position).Magnitude <= 3 then useAllSkill() else TweenPlayer(Pos4) end
end

function useAllSkill() Click() end

-- Biến Pos (cập nhật vòng lặp)
spawn(function()
    local angle = 0
    while wait() do
        if _G.Settings.Setting["Spin Position"] then
            local radius = 20
            local farmDistance = _G.Settings.Setting["Farm Distance"]
            local radian = math.rad(angle)
            local x = math.cos(radian) * radius
            local z = math.sin(radian) * radius
            Pos = CFrame.new(x, farmDistance, z)
            angle = (angle + 30) % 360
        else
            Pos = CFrame.new(0, _G.Settings.Setting["Farm Distance"] or 35, 0)
        end
        wait(0)
    end
end)

-- ========================================
-- PHẦN PREHISTORIC KAITUN (nguyên bản)
-- ========================================
_G.FullyPrehistoricActive = true;
_G.PrehistoricAutoReset = true;
_G.PrehistoricCollectEgg = true;
_G.PrehistoricCollectBone = true;
_G._prehistoricPhase = "idle";

local _SCRAP_PIRATE_POS     = CFrame.new(-1211.87, 4.78, 3916.83);
local _SCRAP_PIRATE_POS_W1  = CFrame.new(-1132.42, 14.84, 4293.30);
local _BLAZE_DRAGON_POS     = CFrame.new(5864.86, 1209.55, 812.77);
local _TIKI_BOAT_NPC_CF     = CFrame.new(-16927.45, 9.08, 433.86);
local _PREHISTORIC_BOAT_CF  = CFrame.new(-148073.36, 9.0, 7721.05, -0.0825930536, -0.00000154416148, 0.996583343, -0.000018696026, 1, 0, -0.996583343, -0.0000186321486, -0.0825930536);
local _TIKI_HEAD_WAIT_CF    = CFrame.new(-16800, 50, 430);
local _TREX_HEAD_CF         = CFrame.new(-148100, 60, 7700);
local _PREHISTORIC_ISLAND_CF = CFrame.new(-148073, 20, 7720);
local _BLAZE_EMBERS_NEEDED  = 15;
local _SCRAP_METALS_NEEDED  = 10;

local function _getInventoryCount(itemName)
	local plr = game.Players.LocalPlayer;
	local count = 0;
	local inv = plr:FindFirstChild("Inventory") or plr:FindFirstChild("BackpackFolder");
	if inv then
		for _, v in pairs(inv:GetChildren()) do
			if v.Name == itemName or (v:FindFirstChild("Name") and v.Name:lower():find(itemName:lower())) then
				count = count + (v:FindFirstChild("Count") and v.Count.Value or 1);
			end;
		end;
	end;
	pcall(function()
		local data = plr:FindFirstChild("Data");
		if data then
			local mat = data:FindFirstChild("Backpack") or data:FindFirstChild("Materials");
			if mat then
				for _, v in pairs(mat:GetChildren()) do
					if v.Name == itemName then count = tonumber(v.Value) or count; end;
				end;
			end;
		end;
	end);
	return count;
end;

local function _hasItem(itemName)
	local plr = game.Players.LocalPlayer;
	local found = false;
	pcall(function()
		local data = plr:FindFirstChild("Data");
		if data then
			local bp = data:FindFirstChildOfClass("Folder") or data;
			for _, v in pairs(bp:GetDescendants()) do
				if v.Name == itemName then found = true; end;
			end;
		end;
	end);
	pcall(function()
		for _, v in pairs(plr:GetChildren()) do
			if v:IsA("Folder") or v:IsA("Backpack") then
				for _, tool in pairs(v:GetChildren()) do
					if tool.Name == itemName then found = true; end;
				end;
			end;
		end;
	end);
	pcall(function()
		local res = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CheckItem", itemName);
		if res then found = true; end;
	end);
	return found;
end;

local function _prehistoricNotify(txt, dur)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Prehistoric Kaitun",
		Text = txt,
		Duration = dur or 4
	});
end;

local function _getScrapCount()
	return _getInventoryCount("Scrap Metal");
end;

local function _getBlazeCount()
	return _getInventoryCount("Blaze Ember");
end;

local function _hasVolcanicMagnect()
	return _hasItem("Volcanic Magnet") or _hasItem("VolcanicMagnet");
end;

local function _craftVolcanicMagnect()
	_prehistoricNotify("Craftando Volcanic Magnect...", 3);
	pcall(function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem", "Craft", "Volcanic Magnet");
	end);
	task.wait(2);
end;

local function _farmScrapMetal()
	_prehistoricNotify("Indo Sea 1 farmar Scrap Metal (Brute Island)...", 5);
	pcall(function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelSea", 1);
	end);
	task.wait(5);
	local timeout = 0;
	while _G.FullyPrehistoricActive and _getScrapCount() < _SCRAP_METALS_NEEDED and timeout < 600 do
		pcall(function()
			local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart");
			if not hrp then task.wait(1); return; end;
			TweenPlayer(_SCRAP_PIRATE_POS_W1);
			task.wait(1.5);
			for _, v in pairs(workspace.Enemies:GetChildren()) do
				if (v.Name == "Brute" or v.Name == "Pirate") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					AutoHaki();
					EquipWeapon(_G.Settings.Main["Selected Weapon"]);
					v.HumanoidRootPart.Size = Vector3.new(1,1,1);
					TweenPlayer(v.HumanoidRootPart.CFrame * Pos);
					Attack();
					task.wait(0.1);
				end;
			end;
		end);
		task.wait(0.3);
		timeout = timeout + 0.3;
	end;
	_prehistoricNotify("Scrap Metal coletado! Voltando ao Sea 3...", 4);
	pcall(function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelSea", 3);
	end);
	task.wait(5);
end;

local function _farmBlazeEmbers()
	_prehistoricNotify("Farmando Blaze Ember via quests Dragon Hunter...", 5);
	local timeout = 0;
	while _G.FullyPrehistoricActive and _getBlazeCount() < _BLAZE_EMBERS_NEEDED and timeout < 600 do
		pcall(function()
			if not getIsOnQuest() then
				TweenPlayer(_BLAZE_DRAGON_POS);
				task.wait(2);
				game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/DragonHunter"):InvokeServer({ Context = "RequestQuest" });
				task.wait(1);
			end;
			SaveBlazeEmberQuest();
			_G.OnBlzeQuest = true;
			if _G.BlazeEmberQuest == "Venomous Assailant" then autoKillVenemousAssailant();
			elseif _G.BlazeEmberQuest == "Hydra Enforcer" then autoKillHydraEnforcer();
			elseif _G.BlazeEmberQuest == "Destroy 10 trees" then autoDestroyHydraTrees(); end;
			if workspace:FindFirstChild("EmberTemplate") and workspace.EmberTemplate:FindFirstChild("Part") then
				CollectBlazeEmber();
			end;
		end);
		task.wait(0.5);
		timeout = timeout + 0.5;
	end;
	_prehistoricNotify("Blaze Embers coletadas!", 3);
end;

local function _goToPrehistoricIsland()
	_prehistoricNotify("Comprando barco e navegando para Prehistoric Island...", 5);
	pcall(function()
		if not workspace.Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]) then
			TweenPlayer(_TIKI_BOAT_NPC_CF);
			task.wait(3);
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", _G.Settings.SeaEvent["Selected Boat"]);
			task.wait(2);
		end;
	end);
	local boatTimeout = 0;
	while _G.FullyPrehistoricActive and not workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") and boatTimeout < 300 do
		pcall(function()
			local boat = workspace.Boats:FindFirstChild(_G.Settings.SeaEvent["Selected Boat"]);
			if boat then
				local seat = boat:FindFirstChild("VehicleSeat");
				if seat and not game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit then
					TweenPlayer(seat.CFrame * CFrame.new(0,1,0));
					task.wait(1);
				elseif seat and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit then
					local tw = TweenBoat(_PREHISTORIC_BOAT_CF);
				end;
			end;
		end);
		task.wait(1);
		boatTimeout = boatTimeout + 1;
	end;
end;

local function _activatePrehistoricIsland()
	pcall(function()
		local loc = workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island");
		if loc then
			TweenPlayer(CFrame.new(loc.Position));
			task.wait(2);
		end;
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ActivatePrehistoricIsland");
	end);
	pcall(function()
		local tp = workspace.Map:FindFirstChild("PrehistoricIsland") and workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport");
		if tp then TweenPlayer(CFrame.new(tp.Position)); end;
	end);
	task.wait(2);
end;

local _HOLE_POSITIONS = {
	CFrame.new(-148073, 22, 7710),
	CFrame.new(-148050, 22, 7730),
	CFrame.new(-148095, 22, 7695),
	CFrame.new(-148060, 22, 7750),
	CFrame.new(-148110, 22, 7715),
};
local function _solvePrehistoricIsland()
	_prehistoricNotify("Solucionando ilha: tampando buracos e matando Golems...", 4);
	local islandDone = false;
	local islandStart = os.time();
	task.spawn(function()
		while _G.FullyPrehistoricActive and not islandDone do
			pcall(function()
				for _, holePos in ipairs(_HOLE_POSITIONS) do
					if not _G.FullyPrehistoricActive or islandDone then break; end;
					local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart");
					if hrp then
						hrp.CFrame = holePos;
						task.wait(0.15);
					end;
				end;
			end);
			task.wait(0.2);
		end;
	end);
	while _G.FullyPrehistoricActive and not islandDone do
		pcall(function()
			for _, v in pairs(workspace.Enemies:GetChildren()) do
				if (v.Name:lower():find("golem") or v.Name:lower():find("lava") or v.Name:lower():find("prehistoric")) and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					AutoHaki();
					EquipWeapon(_G.Settings.Main["Selected Weapon"]);
					v.HumanoidRootPart.Size = Vector3.new(1,1,1);
					TweenPlayer(v.HumanoidRootPart.CFrame * Pos);
					Attack();
				end;
			end;
		end);
		pcall(function()
			if not workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") and (os.time() - islandStart) > 30 then
				islandDone = true;
			end;
			if (os.time() - islandStart) >= 240 then islandDone = true; end;
		end);
		task.wait(0.3);
	end;
	islandDone = true;
end;

local function _collectEggAndBone()
	if _G.PrehistoricCollectEgg then
		_prehistoricNotify("Coletando Egg...", 3);
		local eggTimeout = 0;
		while _G.FullyPrehistoricActive and eggTimeout < 30 do
			pcall(function()
				for _, v in pairs(workspace:GetDescendants()) do
					if v.Name:lower():find("egg") and v:IsA("BasePart") then
						local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart");
						if hrp then hrp.CFrame = CFrame.new(v.Position); task.wait(0.5); end;
					end;
				end;
			end);
			task.wait(1);
			eggTimeout = eggTimeout + 1;
		end;
	end;
	if _G.PrehistoricCollectBone then
		_prehistoricNotify("Coletando Bone...", 3);
		local boneTimeout = 0;
		while _G.FullyPrehistoricActive and boneTimeout < 30 do
			pcall(function()
				for _, v in pairs(workspace:GetDescendants()) do
					if (v.Name:lower():find("bone") or v.Name:lower():find("batu") or v.Name:lower():find("skull")) and v:IsA("BasePart") then
						local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart");
						if hrp then
							local distToLava = math.huge;
							pcall(function()
								for _, lava in pairs(workspace:GetDescendants()) do
									if lava.Name:lower():find("lava") and lava:IsA("BasePart") then
										local d = (lava.Position - hrp.Position).Magnitude;
										if d < distToLava then distToLava = d; end;
									end;
								end;
							end);
							if distToLava > 8 then
								hrp.CFrame = CFrame.new(v.Position);
								task.wait(0.5);
							end;
						end;
					end;
				end;
			end);
			task.wait(1);
			boneTimeout = boneTimeout + 1;
		end;
	end;
end;

local _prehistoricMainLoop;
_prehistoricMainLoop = function()
	while _G.FullyPrehistoricActive do
		_G._prehistoricPhase = "checking";
		_prehistoricNotify("Iniciando Fully Prehistoric Kaitun...", 3);
		task.wait(1);
		if not _hasVolcanicMagnect() then
			local scrap = _getScrapCount();
			local blaze = _getBlazeCount();
			_G._prehistoricPhase = "gathering";
			if scrap < _SCRAP_METALS_NEEDED then
				_farmScrapMetal();
				if not _G.FullyPrehistoricActive then break; end;
			end;
			if blaze < _BLAZE_EMBERS_NEEDED then
				_farmBlazeEmbers();
				if not _G.FullyPrehistoricActive then break; end;
			end;
			_G._prehistoricPhase = "crafting";
			_craftVolcanicMagnect();
			task.wait(2);
		end;
		if not _G.FullyPrehistoricActive then break; end;
		_G._prehistoricPhase = "sailing";
		if not workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") then
			_goToPrehistoricIsland();
		end;
		if not _G.FullyPrehistoricActive then break; end;
		_G._prehistoricPhase = "activating";
		_activatePrehistoricIsland();
		task.wait(3);
		_G._prehistoricPhase = "solving";
		_solvePrehistoricIsland();
		if not _G.FullyPrehistoricActive then break; end;
		_G._prehistoricPhase = "trex";
		_prehistoricNotify("Concluindo! Aguardando no T-Rex...", 3);
		pcall(function()
			local hrp = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart");
			if hrp then hrp.CFrame = _TREX_HEAD_CF; end;
		end);
		task.wait(3);
		_collectEggAndBone();
		_prehistoricNotify("Fully Volcanic Completed!", 6);
		if _G.PrehistoricAutoReset and _G.FullyPrehistoricActive then
			_prehistoricNotify("Auto Reset em 10 segundos...", 10);
			local t = 0;
			while t < 10 and _G.FullyPrehistoricActive and _G.PrehistoricAutoReset do
				task.wait(1);
				t = t + 1;
			end;
			if _G.FullyPrehistoricActive and _G.PrehistoricAutoReset then
				pcall(function()
					local hum = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid");
					if hum then hum.Health = 0; end;
				end);
				task.wait(4);
				_G._prehistoricPhase = "idle";
			else
				break;
			end;
		else
			_G.FullyPrehistoricActive = false;
			_G._prehistoricPhase = "idle";
			break;
		end;
	end;
	_G._prehistoricPhase = "idle";
end;

-- Kích hoạt bằng tay (bạn có thể thêm UI toggle, ở đây chỉ để tự chạy khi set biến)
-- Ví dụ: _G.FullyPrehistoricActive = true; task.spawn(_prehistoricMainLoop)
-- Bạn có thể thêm dòng dưới để chạy ngay khi script load (cẩn thận)
-- _G.FullyPrehistoricActive = true; task.spawn(_prehistoricMainLoop)