--// This file was created by XHider https://discord.com/invite/E2N7w35zkt

local X = {};
X[2] = table.concat;
do
	ply = game.Players;
	plr = ply.LocalPlayer;
	Root = plr.Character.HumanoidRootPart;
	replicated = game:GetService("ReplicatedStorage");
	Lv = game.Players.LocalPlayer.Data.Level.Value;
	TeleportService = game:GetService("TeleportService");
	TW = game:GetService("TweenService");
	Lighting = game:GetService("Lighting");
	Enemies = workspace.Enemies;
	vim1 = game:GetService("VirtualInputManager");
	vim2 = game:GetService("VirtualUser");
	TeamSelf = plr.Team;
	RunSer = game:GetService("RunService");
	Stats = game:GetService("Stats");
	Energy = plr.Character.Energy.Value;
	BringConnections = {};
	BossList = {};
	MaterialList = {};
	NPCList = {};
	shouldTween = false;
	SoulGuitar = false;
	KenTest = true;
	debug = false;
	Brazier1 = false;
	Brazier2 = false;
	Brazier3 = false;
	Sec = .1;
	ClickState = 0;
	Num_self = 25;
end;
repeat
	local X = {};
	X[2] = (plr.PlayerGui:WaitForChild("Main")):WaitForChild("Loading") and game:IsLoaded();
	wait();
until X[2];
World1 = game.PlaceId == 2753915549 or game.PlaceId == 85211729168715;
World2 = game.PlaceId == 4442272183 or game.PlaceId == 79091703265657;
World3 = game.PlaceId == 7449423635 or game.PlaceId == 100117331123090.0;
Marines = function()
		replicated.Remotes.CommF_:InvokeServer("SetTeam", "Marines");
	end;
Pirates = function()
		replicated.Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
	end;
if World1 then
	BossList = {
			"The Gorilla King",
			"Bobby",
			"The Saw",
			"Yeti",
			"Mob Leader",
			"Vice Admiral",
			"Saber Expert",
			"Warden",
			"Chief Warden",
			"Swan",
			"Magma Admiral",
			"Fishman Lord",
			"Wysper",
			"Thunder God",
			"Cyborg",
			"Ice Admiral",
			"Greybeard",
		};
elseif World2 then
	BossList = {
			"Diamond",
			"Jeremy",
			"Orbitus",
			"Don Swan",
			"Smoke Admiral",
			"Awakened Ice Admiral",
			"Tide Keeper",
			"Darkbeard",
			"Cursed Captain",
			"Order",
		};
elseif World3 then
	BossList = {
			"Stone",
			"Hydra Leader",
			"Kilo Admiral",
			"Captain Elephant",
			"Beautiful Pirate",
			"Cake Queen",
			"Dough King",
			"Longma",
			"Soul Reaper",
			"rip_indra True Form",
			"Tyrant of the Skies",
		};
end;
if World1 then
	MaterialList = {
			X[2]({ "Leather + Scrap Meta", "l" }),
			"Angel Wings",
			"Magma Ore",
			"Fish Tail",
		};
elseif World2 then
	MaterialList = {
			X[2]({ "Leather + Scrap Meta", "l" }),
			"Radioactive Material",
			"Ectoplasm",
			"Mystic Droplet",
			"Magma Ore",
			"Vampire Fang",
		};
elseif World3 then
	MaterialList = {
			"Scrap Metal",
			"Demonic Wisp",
			"Conjured Cocoa",
			"Dragon Scale",
			"Gunpowder",
			"Fish Tail",
			"Mini Tusk",
		};
end;
X[15] = {
		"Flame",
		"Ice",
		"Quake",
		"Light",
		"Dark",
		"String",
		"Rumble",
		"Magma",
		"Human: Buddha",
		"Sand",
		"Bird: Phoenix",
		"Dough",
	};
X[138] = {
		"Snow Lurker",
		"Arctic Warrior",
		"Hidden Key",
		"Awakened Ice Admiral",
	};
X[24] = {
		Mob = "Mythological Pirate",
		Mob2 = "Cursed Skeleton",
		"Hell\'s Messenger",
		Mob3 = "Cursed Skeleton",
		"Heaven\'s Guardian",
	};
X[26] = {
		"Part",
		"SpawnLocation",
		"Terrain",
		"WedgePart",
		"MeshPart",
	};
X[81] = { "Swan Pirate", "Jeremy" };
X[126] = { "Forest Pirate", "Captain Elephant" };
X[110] = { "Fajita", "Jeremy", "Diamond" };
X[12] = {
		"Beast Hunter",
		"Lantern",
		"Guardian",
		"Grand Brigade",
		"Dinghy",
		"Sloop",
		"The Sentinel",
	};
X[122] = { "Cookie Crafter" };
X[95] = { "Reborn Skeleton" };
X[22] = {
		["Pirate Millionaire"] = CFrame.new(-712.82727050781, 98.577049255371, 5711.9541015625),
		["Pistol Billionaire"] = CFrame.new(-723.43316650391, 147.42906188965, 5931.9931640625),
		["Dragon Crew Warrior"] = CFrame.new(7021.5043945312, 55.762702941895, -730.12908935547),
		["Dragon Crew Archer"] = CFrame.new(6625, 378, 244),
		["Female Islander"] = CFrame.new(4692.7939453125, 797.97668457031, 858.84802246094),
		["Venomous Assailant"] = CFrame.new(4902, 670, 39),
		["Marine Commodore"] = CFrame.new(2401, 123, -7589),
		["Marine Rear Admiral"] = CFrame.new(3588, 229, -7085),
		["Fishman Raider"] = CFrame.new(-10941, 332, -8760),
		["Fishman Captain"] = CFrame.new(-11035, 332, -9087),
		["Forest Pirate"] = CFrame.new(-13446, 413, -7760),
		["Mythological Pirate"] = CFrame.new(-13510, 584, -6987),
		["Jungle Pirate"] = CFrame.new(-11778, 426, -10592),
		["Musketeer Pirate"] = CFrame.new(-13282, 496, -9565),
		["Reborn Skeleton"] = CFrame.new(-8764, 142, 5963),
		["Living Zombie"] = CFrame.new(-10227, 421, 6161),
		["Demonic Soul"] = CFrame.new(-9579, 6, 6194),
		["Posessed Mummy"] = CFrame.new(-9579, 6, 6194),
		["Peanut Scout"] = CFrame.new(-1993, 187, -10103),
		["Peanut President"] = CFrame.new(-2215, 159, -10474),
		["Ice Cream Chef"] = CFrame.new(-877, 118, -11032),
		["Ice Cream Commander"] = CFrame.new(-877, 118, -11032),
		["Cookie Crafter"] = CFrame.new(-2021, 38, -12028),
		["Cake Guard"] = CFrame.new(-2024, 38, -12026),
		["Baking Staff"] = CFrame.new(-1932, 38, -12848),
		["Head Baker"] = CFrame.new(-1932, 38, -12848),
		["Cocoa Warrior"] = CFrame.new(95, 73, -12309),
		[X[2]({ "Chocolate Bar Battle", "r" })] = CFrame.new(647, 42, -12401),
		["Sweet Thief"] = CFrame.new(116, 36, -12478),
		["Candy Rebel"] = CFrame.new(47, 61, -12889),
		Ghost = CFrame.new(5251, 5, 1111),
	};
X[64] = { RFJobsRemoteFunction = replicated.Modules.Net[X[2]({ "RF/JobsRemoteFunctio", "n" })], RFCraft = ((replicated:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/Craft") };
EquipWeapon = function(X)
		local e = {};
		e[1] = X;
		if not e[1] then
			return;
		end;
		if plr.Backpack:FindFirstChild(e[1]) then
			plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild(e[1]));
		end;
	end;
weaponSc = function(X)
		local e = {};
		e[2] = X;
		for X, k in pairs(plr.Backpack:GetChildren()) do
			local p = {};
			p[1], p[3] = X, k;
			if p[3]:IsA("Tool") then
				if p[3].ToolTip == e[2] then
					EquipWeapon(p[3].Name);
				end;
			end;
		end;
	end;
X[4] = {};
X[4].__index = X[4];
X[4].Alive = function(X)
		local e = {};
		e[2] = X;
		if not e[2] then
			return;
		end;
		e[3] = e[2]:FindFirstChild("Humanoid");
		return e[3] and e[3].Health > 0;
	end;
X[4].Pos = function(X, e)
		local k = {};
		k[1], k[2] = X, e;
		return (Root.Position - mode.Position).Magnitude <= k[2];
	end;
X[4].Dist = function(X, e)
		local k = {};
		k[1], k[2] = X, e;
		return (Root.Position - (k[1]:FindFirstChild("HumanoidRootPart")).Position).Magnitude <= k[2];
	end;
X[4].DistH = function(X, e)
		local k = {};
		k[2], k[3] = X, e;
		return (Root.Position - (k[2]:FindFirstChild("HumanoidRootPart")).Position).Magnitude > k[3];
	end;
X[4].Kill = function(X, e)
		local k = {};
		k[1], k[3] = X, e;
		if k[1] and k[3] then
			local X = {};
			if not k[1]:GetAttribute("Locked") then
				k[1]:SetAttribute("Locked", k[1].HumanoidRootPart.CFrame);
			end;
			PosMon = (k[1]:GetAttribute("Locked")).Position;
			BringEnemy();
			EquipWeapon(_G.SelectWeapon);
			X[2] = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool");
			X[1] = X[2].ToolTip;
			if X[1] == "Blox Fruit" then
				_tp((k[1].HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)) * CFrame.Angles(0, math.rad(90), 0));
			else
				_tp((k[1].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)) * CFrame.Angles(0, math.rad(180), 0));
			end;
			if RandomCFrame then
				wait(.5);
				_tp(k[1].HumanoidRootPart.CFrame * CFrame.new(0, 30, 25));
				wait(.5);
				_tp(k[1].HumanoidRootPart.CFrame * CFrame.new(25, 30, 0));
				wait(.5);
				_tp(k[1].HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0));
				wait(.5);
				_tp(k[1].HumanoidRootPart.CFrame * CFrame.new(0, 30, 25));
				wait(.5);
				_tp(k[1].HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0));
			end;
		end;
	end;
X[4].Kill2 = function(X, e)
		local k = {};
		k[1], k[2] = X, e;
		if k[1] and k[2] then
			local X = {};
			if not k[1]:GetAttribute("Locked") then
				k[1]:SetAttribute("Locked", k[1].HumanoidRootPart.CFrame);
			end;
			PosMon = (k[1]:GetAttribute("Locked")).Position;
			BringEnemy();
			EquipWeapon(_G.SelectWeapon);
			X[1] = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool");
			X[3] = X[1].ToolTip;
			if X[3] == "Blox Fruit" then
				_tp((k[1].HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)) * CFrame.Angles(0, math.rad(90), 0));
			else
				_tp((k[1].HumanoidRootPart.CFrame * CFrame.new(0, 30, 8)) * CFrame.Angles(0, math.rad(180), 0));
			end;
			if RandomCFrame then
				wait(.1);
				_tp(k[1].HumanoidRootPart.CFrame * CFrame.new(0, 30, 25));
				wait(.1);
				_tp(k[1].HumanoidRootPart.CFrame * CFrame.new(25, 30, 0));
				wait(.1);
				_tp(k[1].HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0));
				wait(.1);
				_tp(k[1].HumanoidRootPart.CFrame * CFrame.new(0, 30, 25));
				wait(.1);
				_tp(k[1].HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0));
			end;
		end;
	end;
X[4].KillSea = function(X, e)
		local k = {};
		k[2], k[1] = X, e;
		if k[2] and k[1] then
			local X = {};
			if not k[2]:GetAttribute("Locked") then
				k[2]:SetAttribute("Locked", k[2].HumanoidRootPart.CFrame);
			end;
			PosMon = (k[2]:GetAttribute("Locked")).Position;
			BringEnemy();
			EquipWeapon(_G.SelectWeapon);
			X[1] = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool");
			X[2] = X[1].ToolTip;
			if X[2] == "Blox Fruit" then
				_tp((k[2].HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)) * CFrame.Angles(0, math.rad(90), 0));
			else
				notween(k[2].HumanoidRootPart.CFrame * CFrame.new(0, 50, 8));
				wait(.85);
				notween(k[2].HumanoidRootPart.CFrame * CFrame.new(0, 400, 0));
				wait(1);
			end;
		end;
	end;
X[4].Sword = function(X, e)
		local k = {};
		k[2], k[3] = X, e;
		if k[2] and k[3] then
			if not k[2]:GetAttribute("Locked") then
				k[2]:SetAttribute("Locked", k[2].HumanoidRootPart.CFrame);
			end;
			PosMon = (k[2]:GetAttribute("Locked")).Position;
			BringEnemy();
			weaponSc("Sword");
			_tp(k[2].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
			if RandomCFrame then
				wait(.1);
				_tp(k[2].HumanoidRootPart.CFrame * CFrame.new(0, 30, 25));
				wait(.1);
				_tp(k[2].HumanoidRootPart.CFrame * CFrame.new(25, 30, 0));
				wait(.1);
				_tp(k[2].HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0));
				wait(.1);
				_tp(k[2].HumanoidRootPart.CFrame * CFrame.new(0, 30, 25));
				wait(.1);
				_tp(k[2].HumanoidRootPart.CFrame * CFrame.new(-25, 30, 0));
			end;
		end;
	end;
X[4].Mas = function(X, e)
		local k = {};
		k[2], k[3] = X, e;
		if k[2] and k[3] then
			if not k[2]:GetAttribute("Locked") then
				k[2]:SetAttribute("Locked", k[2].HumanoidRootPart.CFrame);
			end;
			PosMon = (k[2]:GetAttribute("Locked")).Position;
			BringEnemy();
			if k[2].Humanoid.Health <= HealthM then
				_tp(k[2].HumanoidRootPart.CFrame * CFrame.new(0, 20, 0));
				Useskills("Blox Fruit", "Z");
				Useskills("Blox Fruit", "X");
				Useskills("Blox Fruit", "C");
			else
				weaponSc("Melee");
				_tp(k[2].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
			end;
		end;
	end;
X[4].Masgun = function(X, e)
		local k = {};
		k[3], k[1] = X, e;
		if k[3] and k[1] then
			if not k[3]:GetAttribute("Locked") then
				k[3]:SetAttribute("Locked", k[3].HumanoidRootPart.CFrame);
			end;
			PosMon = (k[3]:GetAttribute("Locked")).Position;
			BringEnemy();
			if k[3].Humanoid.Health <= HealthM then
				_tp(k[3].HumanoidRootPart.CFrame * CFrame.new(0, 35, 8));
				Useskills("Gun", "Z");
				Useskills("Gun", "X");
			else
				weaponSc("Melee");
				_tp(k[3].HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
			end;
		end;
	end;
statsSetings = function(X, e)
		local k = {};
		k[3], k[2] = X, e;
		if k[3] == "Melee" then
			if plr.Data.Points.Value ~= 0 then
				replicated.Remotes.CommF_:InvokeServer("AddPoint", "Melee", k[2]);
			end;
		elseif k[3] == "Defense" then
			if plr.Data.Points.Value ~= 0 then
				replicated.Remotes.CommF_:InvokeServer("AddPoint", "Defense", k[2]);
			end;
		elseif k[3] == "Sword" then
			if plr.Data.Points.Value ~= 0 then
				replicated.Remotes.CommF_:InvokeServer("AddPoint", "Sword", k[2]);
			end;
		elseif k[3] == "Gun" then
			if plr.Data.Points.Value ~= 0 then
				replicated.Remotes.CommF_:InvokeServer("AddPoint", "Gun", k[2]);
			end;
		elseif k[3] == "Devil" then
			if plr.Data.Points.Value ~= 0 then
				replicated.Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", k[2]);
			end;
		end;
	end;
BringEnemy = function()
		local e = {};
		if not _B then
			return;
		end;
		if not PosMon then
			return;
		end;
		e[4] = game.Players.LocalPlayer;
		e[5] = e[4].Character and e[4].Character:FindFirstChild("HumanoidRootPart");
		if not e[5] then
			return;
		end;
		e[9] = game:GetService("TweenService");
		e[8] = _G.BringRange;
		e[7] = _G.SpeedB;
		e[6] = _G.MobM;
		e[1] = 0;
		e[2] = {};
		for k, p in pairs(workspace.Enemies:GetChildren()) do
			local q = {};
			q[4], q[1] = k, p;
			if e[1] >= e[6] then
				break;
			end;
			q[6] = false;
			for X, e in ipairs(BossList or {}) do
				local k = {};
				k[2], k[1] = X, e;
				if q[1].Name == k[1] then
					q[6] = true;
					break;
				end;
			end;
			if q[6] then
				continue;
			end;
			q[2] = q[1]:FindFirstChild("Humanoid");
			q[3] = q[1]:FindFirstChild("HumanoidRootPart");
			if not (q[2] and (q[3] and q[2].Health > 0)) then
				continue;
			end;
			if (q[3].Position - e[5].Position).Magnitude <= e[8] then
				local k = {};
				R_[1] += 1;
				k[2] = Vector3.zero;
				k[3] = 0;
				for X, e in pairs(workspace.Enemies:GetChildren()) do
					local k = {};
					k[2], k[5] = X, e;
					k[4] = k[5]:FindFirstChild("Humanoid");
					k[1] = k[5]:FindFirstChild("HumanoidRootPart");
					if k[4] and (k[1] and (k[4].Health > 0 and k[5].Name == q[1].Name)) then
						D_[2] += k[1].Position;
						D_[3] += 1;
					end;
				end;
				k[1] = k[3] > 0 and k[2] / k[3] or q[3].Position;
				k[4] = CFrame.new(k[1]);
				k[5] = (q[3].Position - k[4].Position).Magnitude;
				if k[5] > 3 then
					local X = {};
					X[2] = TweenInfo.new(k[5] / e[7], Enum.EasingStyle.Linear);
					(e[9]:Create(q[3], X[2], { CFrame = k[4] })):Play();
				end;
				q[3].CanCollide = false;
				q[3][X[2]({ "AssemblyLinearVeloci", "ty" })] = Vector3.zero;
				q[3][X[2]({ "AssemblyAngularVeloc", "ity" })] = Vector3.zero;
				if q[2]:FindFirstChild("Animator") then
					q[2].Animator:Destroy();
				end;
				if not q[3]:FindFirstChild("BodyVelocity") then
					local X = {};
					X[1] = Instance.new("BodyVelocity");
					X[1].Name = "BodyVelocity";
					X[1].MaxForce = Vector3.new(1000000000, 1000000000, 1000000000);
					X[1].Velocity = Vector3.zero;
					X[1].Parent = q[3];
				end;
				pcall(function()
					sethiddenproperty(e[4], "SimulationRadius", math.huge);
				end);
			end;
		end;
	end;
Useskills = function(X, e)
		local k = {};
		k[3], k[2] = X, e;
		if k[3] == "Melee" then
			weaponSc("Melee");
			if k[2] == "Z" then
				vim1:SendKeyEvent(true, "Z", false, game);
				vim1:SendKeyEvent(false, "Z", false, game);
			elseif k[2] == "X" then
				vim1:SendKeyEvent(true, "X", false, game);
				vim1:SendKeyEvent(false, "X", false, game);
			elseif k[2] == "C" then
				vim1:SendKeyEvent(true, "C", false, game);
				vim1:SendKeyEvent(false, "C", false, game);
			end;
		elseif k[3] == "Sword" then
			weaponSc("Sword");
			if k[2] == "Z" then
				vim1:SendKeyEvent(true, "Z", false, game);
				vim1:SendKeyEvent(false, "Z", false, game);
			elseif k[2] == "X" then
				vim1:SendKeyEvent(true, "X", false, game);
				vim1:SendKeyEvent(false, "X", false, game);
			end;
		elseif k[3] == "Blox Fruit" then
			weaponSc("Blox Fruit");
			if k[2] == "Z" then
				vim1:SendKeyEvent(true, "Z", false, game);
				vim1:SendKeyEvent(false, "Z", false, game);
			elseif k[2] == "X" then
				vim1:SendKeyEvent(true, "X", false, game);
				vim1:SendKeyEvent(false, "X", false, game);
			elseif k[2] == "C" then
				vim1:SendKeyEvent(true, "C", false, game);
				vim1:SendKeyEvent(false, "C", false, game);
			elseif k[2] == "V" then
				vim1:SendKeyEvent(true, "V", false, game);
				vim1:SendKeyEvent(false, "V", false, game);
			end;
		elseif k[3] == "Gun" then
			weaponSc("Gun");
			if k[2] == "Z" then
				vim1:SendKeyEvent(true, "Z", false, game);
				vim1:SendKeyEvent(false, "Z", false, game);
			elseif k[2] == "X" then
				vim1:SendKeyEvent(true, "X", false, game);
				vim1:SendKeyEvent(false, "X", false, game);
			end;
		end;
		if k[3] == "nil" and k[2] == "Y" then
			vim1:SendKeyEvent(true, "Y", false, game);
			vim1:SendKeyEvent(false, "Y", false, game);
		end;
	end;
X[96] = getrawmetatable(game);
X[123] = X[96].__namecall;
setreadonly(X[96], false);
X[96].__namecall = newcclosure(function(...)
		local e = {};
		e[2] = getnamecallmethod();
		e[1] = { ... };
		if tostring(e[2]) == "FireServer" then
			if tostring(e[1][1]) == "RemoteEvent" then
				if tostring(e[1][2]) ~= "true" and tostring(e[1][2]) ~= "false" then
					if _G.FarmMastery_G and not SoulGuitar or _G.FarmMastery_Dev or _G.FarmBlazeEM or _G.Prehis_Skills or _G.SeaBeast1 or _G.FishBoat or _G.PGB or _G.Leviathan1 or _G.Complete_Trials or _G.AimMethod and ABmethod == "Aim Player" or _G.AimMethod and ABmethod == "Nearest Aim" then
						e[1][2] = MousePos;
						return X[123](unpack(e[1]));
					end;
				end;
			end;
		end;
		return X[123](...);
	end);
GetConnectionEnemies = function(X)
		local e = {};
		e[1] = X;
		for X, k in pairs(replicated:GetChildren()) do
			local p = {};
			p[2], p[1] = X, k;
			if p[1]:IsA("Model") and ((typeof(e[1]) == "table" and table.find(e[1], p[1].Name) or p[1].Name == e[1]) and (p[1]:FindFirstChild("Humanoid") and p[1].Humanoid.Health > 0)) then
				return p[1];
			end;
		end;
		for X, k in next, game.Workspace.Enemies:GetChildren() do
			local p = {};
			p[2], p[3] = X, k;
			if p[3]:IsA("Model") and ((typeof(e[1]) == "table" and table.find(e[1], p[3].Name) or p[3].Name == e[1]) and (p[3]:FindFirstChild("Humanoid") and p[3].Humanoid.Health > 0)) then
				return p[3];
			end;
		end;
	end;
LowCpu = function()
		local e = {};
		e[4] = true;
		e[2] = game;
		e[3] = e[2].Workspace;
		e[6] = e[2].Lighting;
		e[5] = e[3].Terrain;
		e[5].WaterWaveSize = 0;
		e[5].WaterWaveSpeed = 0;
		e[5].WaterReflectance = 0;
		e[5].WaterTransparency = 0;
		e[6].GlobalShadows = false;
		e[6].FogEnd = 9000000000;
		e[6].Brightness = 0;
		(settings()).Rendering.QualityLevel = "Level01";
		for X, k in pairs(e[2]:GetDescendants()) do
			local p = {};
			p[3], p[2] = X, k;
			if p[2]:IsA("Part") or p[2]:IsA("Union") or p[2]:IsA("CornerWedgePart") or p[2]:IsA("TrussPart") then
				p[2].Material = "Plastic";
				p[2].Reflectance = 0;
			elseif p[2]:IsA("Decal") or p[2]:IsA("Texture") and e[4] then
				p[2].Transparency = 1;
			elseif p[2]:IsA("ParticleEmitter") or p[2]:IsA("Trail") then
				p[2].Lifetime = NumberRange.new(0);
			elseif p[2]:IsA("Explosion") then
				p[2].BlastPressure = 1;
				p[2].BlastRadius = 1;
			elseif p[2]:IsA("Fire") or p[2]:IsA("SpotLight") or p[2]:IsA("Smoke") or p[2]:IsA("Sparkles") then
				p[2].Enabled = false;
			elseif p[2]:IsA("MeshPart") then
				p[2].Material = "Plastic";
				p[2].Reflectance = 0;
				p[2].TextureID = 1.0385902758729e+016;
			end;
		end;
		for e, k in pairs(e[6]:GetChildren()) do
			local p = {};
			p[2], p[1] = e, k;
			if p[1]:IsA("BlurEffect") or p[1]:IsA("SunRaysEffect") or p[1]:IsA(X[2]({ "ColorCorrectionEffec", "t" })) or p[1]:IsA("BloomEffect") or p[1]:IsA("DepthOfFieldEffect") then
				p[1].Enabled = false;
			end;
		end;
	end;
CheckF = function()
		if GetBP("Dragon-Dragon") or GetBP("Gas-Gas") or GetBP("Yeti-Yeti") or GetBP("Kitsune-Kitsune") or GetBP("T-Rex-T-Rex") then
			return true;
		end;
	end;
CheckBoat = function()
		for X, e in pairs(workspace.Boats:GetChildren()) do
			local k = {};
			k[1], k[3] = X, e;
			if tostring(k[3].Owner.Value) == tostring(plr.Name) then
				return k[3];
			end;
		end;
		return false;
	end;
CheckEnemiesBoat = function()
		for X, e in pairs(workspace.Enemies:GetChildren()) do
			local k = {};
			k[1], k[2] = X, e;
			if k[2].Name == "FishBoat" and (k[2]:FindFirstChild("Health")).Value > 0 then
				return true;
			end;
		end;
		return false;
	end;
CheckPirateGrandBrigade = function()
		for X, e in pairs(workspace.Enemies:GetChildren()) do
			local k = {};
			k[2], k[1] = X, e;
			if (k[1].Name == "PirateGrandBrigade" or k[1].Name == "PirateBrigade") and (k[1]:FindFirstChild("Health")).Value > 0 then
				return true;
			end;
		end;
		return false;
	end;
CheckShark = function()
		for e, k in pairs(workspace.Enemies:GetChildren()) do
			local p = {};
			p[1], p[3] = e, k;
			if p[3].Name == "Shark" and X[4].Alive(p[3]) then
				return true;
			end;
		end;
		return false;
	end;
CheckTerrorShark = function()
		for e, k in pairs(workspace.Enemies:GetChildren()) do
			local p = {};
			p[3], p[1] = e, k;
			if p[1].Name == "Terrorshark" and X[4].Alive(p[1]) then
				return true;
			end;
		end;
		return false;
	end;
CheckPiranha = function()
		for e, k in pairs(workspace.Enemies:GetChildren()) do
			local p = {};
			p[3], p[1] = e, k;
			if p[1].Name == "Piranha" and X[4].Alive(p[1]) then
				return true;
			end;
		end;
		return false;
	end;
CheckFishCrew = function()
		for e, k in pairs(workspace.Enemies:GetChildren()) do
			local p = {};
			p[3], p[2] = e, k;
			if (p[2].Name == "Fish Crew Member" or p[2].Name == "Haunted Crew Member") and X[4].Alive(p[2]) then
				return true;
			end;
		end;
		return false;
	end;
CheckHauntedCrew = function()
		for e, k in pairs(workspace.Enemies:GetChildren()) do
			local p = {};
			p[3], p[2] = e, k;
			if p[2].Name == "Haunted Crew Member" and X[4].Alive(p[2]) then
				return true;
			end;
		end;
		return false;
	end;
CheckSeaBeast = function()
		if workspace.SeaBeasts:FindFirstChild("SeaBeast1") then
			return true;
		end;
		return false;
	end;
CheckLeviathan = function()
		if workspace.SeaBeasts:FindFirstChild("Leviathan") then
			return true;
		end;
		return false;
	end;
UpdStFruit = function()
		for X, e in next, plr.Backpack:GetChildren() do
			local k = {};
			k[3], k[1] = X, e;
			StoreFruit = k[1]:FindFirstChild("EatRemote", true);
			if StoreFruit then
				replicated.Remotes.CommF_:InvokeServer("StoreFruit", StoreFruit.Parent:GetAttribute("OriginalName"), plr.Backpack:FindFirstChild(k[1].Name));
			end;
		end;
	end;
collectFruits = function(X)
		local e = {};
		e[1] = X;
		if e[1] then
			local X = {};
			X[2] = plr.Character;
			for e, k in pairs(workspace:GetChildren()) do
				local p = {};
				p[1], p[2] = e, k;
				if string.find(p[2].Name, "Fruit") then
					p[2].Handle.CFrame = X[2].HumanoidRootPart.CFrame;
				end;
			end;
		end;
	end;
Getmoon = function()
		if World1 then
			return Lighting.FantasySky.MoonTextureId;
		elseif World2 then
			return Lighting.FantasySky.MoonTextureId;
		elseif World3 then
			return Lighting.Sky.MoonTextureId;
		end;
	end;
DropFruits = function()
		for X, e in next, plr.Backpack:GetChildren() do
			local k = {};
			k[3], k[2] = X, e;
			if string.find(k[2].Name, "Fruit") then
				EquipWeapon(k[2].Name);
				wait(.1);
				if plr.PlayerGui.Main.Dialogue.Visible == true then
					plr.PlayerGui.Main.Dialogue.Visible = false;
				end;
				EquipWeapon(k[2].Name);
				(plr.Character:FindFirstChild(k[2].Name)).EatRemote:InvokeServer("Drop");
			end;
		end;
		for X, e in pairs(plr.Character:GetChildren()) do
			local k = {};
			k[1], k[2] = X, e;
			if string.find(k[2].Name, "Fruit") then
				EquipWeapon(k[2].Name);
				wait(.1);
				if plr.PlayerGui.Main.Dialogue.Visible == true then
					plr.PlayerGui.Main.Dialogue.Visible = false;
				end;
				EquipWeapon(k[2].Name);
				(plr.Character:FindFirstChild(k[2].Name)).EatRemote:InvokeServer("Drop");
			end;
		end;
	end;
GetBP = function(X)
		local e = {};
		e[2] = X;
		return plr.Backpack:FindFirstChild(e[2]) or plr.Character:FindFirstChild(e[2]);
	end;
GetIn = function(X)
		local e = {};
		e[1] = X;
		for X, k in pairs(replicated.Remotes.CommF_:InvokeServer("getInventory")) do
			local p = {};
			p[2], p[3] = X, k;
			if type(p[3]) == "table" then
				if p[3].Name == e[1] or plr.Character:FindFirstChild(e[1]) or plr.Backpack:FindFirstChild(e[1]) then
					return true;
				end;
			end;
		end;
		return false;
	end;
GetM = function(X)
		local e = {};
		e[1] = X;
		for X, k in pairs(replicated.Remotes.CommF_:InvokeServer("getInventory")) do
			local p = {};
			p[2], p[3] = X, k;
			if type(p[3]) == "table" then
				if p[3].Type == "Material" then
					if p[3].Name == e[1] then
						return p[3].Count;
					end;
				end;
			end;
		end;
		return 0;
	end;
GetWP = function(X)
		local e = {};
		e[1] = X;
		for X, k in pairs(replicated.Remotes.CommF_:InvokeServer("getInventory")) do
			local p = {};
			p[2], p[1] = X, k;
			if type(p[1]) == "table" then
				if p[1].Type == "Sword" then
					if p[1].Name == e[1] or plr.Character:FindFirstChild(e[1]) or plr.Backpack:FindFirstChild(e[1]) then
						return true;
					end;
				end;
			end;
		end;
		return false;
	end;
getInfinity_Ability = function(X, e)
		local k = {};
		k[2], k[1] = X, e;
		if not Root then
			return;
		end;
		if k[2] == "Soru" and k[1] then
			for X, e in next, getgc() do
				local p = {};
				p[1], p[3] = X, e;
				if plr.Character.Soru then
					if typeof(p[3]) == "function" and (getfenv(p[3])).script == plr.Character.Soru then
						for X, e in next, getupvalues(p[3]) do
							local p = {};
							p[3], p[1] = X, e;
							if typeof(p[1]) == "table" then
								repeat
									wait(Sec);
									p[1].LastUse = 0;
								until not k[1] or plr.Character.Humanoid.Health <= 0;
							end;
						end;
					end;
				end;
			end;
		elseif k[2] == "Energy" and k[1] then
			plr.Character.Energy.Changed:connect(function()
				if k[1] then
					plr.Character.Energy.Value = Energy;
				end;
			end);
		elseif k[2] == "Observation" and k[1] then
			local X = {};
			X[2] = plr.VisionRadius;
			X[2].Value = math.huge;
		end;
	end;
Hop = function()
		pcall(function()
			for X = math.random(1, math.random(40, 75)), 100, 1 do
				local e = {};
				e[2] = X;
				e[1] = replicated.__ServerBrowser:InvokeServer(e[2]);
				for X, e in next, e[1] do
					local k = {};
					k[1], k[3] = X, e;
					if tonumber(k[3].Count) < 12 then
						TeleportService:TeleportToPlaceInstance(game.PlaceId, k[1]);
					end;
				end;
			end;
		end);
	end;
X[36] = Instance.new("Part", workspace);
X[36].Size = Vector3.new(1, 1, 1);
X[36].Name = "Rip_Indra";
X[36].Anchored = true;
X[36].CanCollide = false;
X[36].CanTouch = false;
X[36].Transparency = 1;
X[34] = workspace:FindFirstChild(X[36].Name);
if X[34] and X[34] ~= X[36] then
	X[34]:Destroy();
end;
task.spawn(function()
	while task.wait() do
		if X[36] and X[36].Parent == workspace then
			if shouldTween then
				(getgenv()).OnFarm = true;
			else
				(getgenv()).OnFarm = false;
			end;
		else
			(getgenv()).OnFarm = false;
		end;
	end;
end);
task.spawn(function()
	local e = {};
	e[1] = game.Players.LocalPlayer;
	repeat
		task.wait();
	until e[1].Character and e[1].Character.PrimaryPart;
	X[36].CFrame = e[1].Character.PrimaryPart.CFrame;
	while task.wait() do
		pcall(function()
			if (getgenv()).OnFarm then
				local k = {};
				if X[36] and X[36].Parent == workspace then
					local k = {};
					k[2] = e[1].Character and e[1].Character.PrimaryPart;
					if k[2] and (k[2].Position - X[36].Position).Magnitude <= 200 then
						k[2].CFrame = X[36].CFrame;
					else
						X[36].CFrame = k[2].CFrame;
					end;
				end;
				k[2] = e[1].Character;
				if k[2] then
					for X, e in pairs(k[2]:GetChildren()) do
						local k = {};
						k[2], k[1] = X, e;
						if k[1]:IsA("BasePart") then
							k[1].CanCollide = false;
						end;
					end;
				end;
			else
				local X = {};
				X[2] = e[1].Character;
				if X[2] then
					for X, e in pairs(X[2]:GetChildren()) do
						local k = {};
						k[1], k[3] = X, e;
						if k[3]:IsA("BasePart") then
							k[3].CanCollide = true;
						end;
					end;
				end;
			end;
		end);
	end;
end);
_tp = function(e)
		local k = {};
		k[4] = e;
		k[3] = plr.Character;
		if not k[3] or not k[3]:FindFirstChild("HumanoidRootPart") then
			return;
		end;
		k[6] = k[3].HumanoidRootPart;
		k[2] = (k[4].Position - k[6].Position).Magnitude;
		k[7] = TweenInfo.new(k[2] / 300, Enum.EasingStyle.Linear);
		k[1] = (game:GetService("TweenService")):Create(X[36], k[7], { CFrame = k[4] });
		if plr.Character.Humanoid.Sit == true then
			X[36].CFrame = CFrame.new(X[36].Position.X, k[4].Y, X[36].Position.Z);
		end;
		k[1]:Play();
		task.spawn(function()
			while k[1].PlaybackState == Enum.PlaybackState.Playing do
				if not shouldTween then
					k[1]:Cancel();
					break;
				end;
				task.wait(.1);
			end;
		end);
	end;
TeleportToTarget = function(X)
		local e = {};
		e[1] = X;
		if (e[1].Position - plr.Character.HumanoidRootPart.Position).Magnitude > 1000 then
			_tp(e[1]);
		else
			_tp(e[1]);
		end;
	end;
notween = function(X)
		local e = {};
		e[2] = X;
		plr.Character.HumanoidRootPart.CFrame = e[2];
	end;
function BTP(X)
	local e = {};
	e[5] = X;
	e[8] = game.Players.LocalPlayer;
	e[2] = e[8].Character.HumanoidRootPart;
	e[1] = e[8].Character.Humanoid;
	e[7] = e[8].PlayerGui.Main;
	e[6] = e[5].Position;
	e[4] = e[2].Position;
	repeat
		e[1].Health = 0;
		e[2].CFrame = e[5];
		e[7].Quest.Visible = false;
		if (e[2].Position - e[4]).Magnitude > 1 then
			e[4] = e[2].Position;
			e[2].CFrame = e[5];
		end;
		task.wait(.5);
	until (e[5].Position - e[2].Position).Magnitude <= 2000;
end;
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.SailBoat_Hydra or _G.WardenBoss or _G.AutoFactory or _G.HighestMirage or _G.HCM or _G.PGB or _G.Leviathan1 or _G.UPGDrago or _G.Complete_Trials or _G.TpDrago_Prehis or _G.BuyDrago or _G.AutoFireFlowers or _G.DT_Uzoth or _G.AutoBerry or _G.Prefully or _G.Prehis_Find or _G.Prehis_Skills or _G.Prehis_DB or _G.Prehis_DE or _G.FarmBlazeEM or _G.Dojoo or _G.CollectPresent or _G.AutoLawKak or _G.TpLab or _G.AutoPhoenixF or _G.AutoFarmChest or _G.AutoHytHallow or _G.LongsWord or _G.BlackSpikey or _G.AutoHolyTorch or _G.TrainDrago or _G.AutoSaber or _G.FarmMastery_Dev or _G.CitizenQuest or _G.AutoEctoplasm or _G.KeysRen or _G.Auto_Rainbow_Haki or _G.obsFarm or _G.AutoBigmom or _G.Doughv2 or _G.AuraBoss or _G.Raiding or _G.Auto_Cavender or _G.TpPly or _G.Bartilo_Quest or _G.Level or _G.FarmEliteHunt or _G.AutoZou or _G.AutoFarm_Bone or (getgenv()).AutoMaterial or _G.CraftVM or _G.FrozenTP or _G.TPDoor or _G.AcientOne or _G.AutoFarmNear or _G.AutoRaidCastle or _G.DarkBladev3 or _G.AutoFarmRaid or _G.Auto_Cake_Prince or _G.Addealer or _G.TPNpc or _G.TwinHook or _G.FindMirage or _G.FarmChestM or _G.Shark or _G.TerrorShark or _G.Piranha or _G.MobCrew or _G.SeaBeast1 or _G.FishBoat or _G.AutoPole or _G.AutoPoleV2 or _G.Auto_SuperHuman or _G.AutoDeathStep or _G.Auto_SharkMan_Karate or _G.Auto_Electric_Claw or _G.AutoDragonTalon or _G.Auto_Def_DarkCoat or _G.Auto_God_Human or _G.Auto_Tushita or _G.AutoMatSoul or _G.AutoKenVTWO or _G.AutoSerpentBow or _G.AutoFMon or _G.Auto_Soul_Guitar or _G.TPGEAR or _G.AutoSaw or _G.AutoTridentW2 or _G.AutoEvoRace or _G.AutoGetQuestBounty or _G.MarinesCoat or _G.TravelDres or _G.Defeating or _G.DummyMan or _G.Auto_Yama or _G.Auto_SwanGG or _G.SwanCoat or _G.AutoEcBoss or _G.Auto_Mink or _G.Auto_Human or _G.Auto_Skypiea or _G.Auto_Fish or _G.CDK_TS or _G.CDK_YM or _G.CDK or _G.AutoFarmGodChalice or _G.AutoFistDarkness or _G.AutoMiror or _G.Teleport or _G.AutoKilo or _G.AutoGetUsoap or _G.Praying or _G.TryLucky or _G.AutoColShad or _G.AutoUnHaki or _G.Auto_DonAcces or _G.AutoRipIngay or _G.DragoV3 or _G.DragoV1 or _G.SailBoats or NextIs or _G.FarmGodChalice or _G.IceBossRen or senth or senth2 or _G.Lvthan or _G.beasthunter or _G.DangerLV or _G.Relic123 or _G.tweenKitsune or _G.Collect_Ember or _G.AutofindKitIs or _G.snaguine or _G.TwFruits or _G.tweenKitShrine or _G.Tp_LgS or _G.Tp_MasterA or _G.tweenShrine or _G.FarmMastery_G or _G.FarmMastery_S or _G.FarmBoss or _G.AutoFarmAllBoss or _G.AutoFishSlap or _G.FarmTyrant or _G.FarmPhaBinh or _G.AutoSpawnCP or _G.AutoBerryH or _G.AutoChestBP or _G.FarmEliteHop or _G.AutoHop_Dough or _G.AutoDoughKing or _G.AutoAttackDoughKing or _G.AutoChipFruit or _G.AutoChipBeli or _G.StartEvent or _G.AutoMysticIsland or _G.AutoPlayerHunter or _G.SafeMode or _G.AutoKillMob or _G.AutoStartPrehistoric or _G.AutoUnHaki or _G.AutoAttackRipIndra or _G.AutoFarmIsland or _G.AutoFarmDungeon or _G.AutoFarmCandy or _G.AutoTP_Gift or _G.AutoTPGift or _G.AutoTPAndCollect or _G.MasterAutoLevel or _G.MasterAutoCandy or _G.TPFloor1 or _G.TPFloor2 or _G.TPFloor3 or _G.TPFloor4 then
				shouldTween = true;
				if not plr.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local X = {};
					X[1] = Instance.new("BodyVelocity");
					X[1].Name = "BodyClip";
					X[1].Parent = plr.Character.HumanoidRootPart;
					X[1].MaxForce = Vector3.new(100000, 100000, 100000);
					X[1].Velocity = Vector3.new(0, 0, 0);
				end;
				if not plr.Character:FindFirstChild("highlight") then
					local X = {};
					X[1] = Instance.new("Highlight");
					X[1].Name = "highlight";
					X[1].Enabled = true;
					X[1].FillColor = Color3.fromRGB(255, 165, 0);
					X[1].OutlineColor = Color3.fromRGB(255, 0, 0);
					X[1].FillTransparency = .5;
					X[1].OutlineTransparency = .2;
					X[1].Parent = plr.Character;
				end;
				for X, e in pairs(plr.Character:GetDescendants()) do
					local k = {};
					k[2], k[1] = X, e;
					if k[1]:IsA("BasePart") then
						k[1].CanCollide = false;
					end;
				end;
			else
				shouldTween = false;
				if plr.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					(plr.Character.HumanoidRootPart:FindFirstChild("BodyClip")):Destroy();
				end;
				if plr.Character:FindFirstChild("highlight") then
					(plr.Character:FindFirstChild("highlight")):Destroy();
				end;
			end;
		end);
	end;
end);
QuestB = function()
		if World1 then
			if _G.FindBoss == "The Gorilla King" then
				bMon = "The Gorilla King";
				Qname = "JungleQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102);
				PosB = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, .707079291, 0, 1, 0, -0.707079291, 0, -0.707134247);
			elseif _G.FindBoss == "Bobby" then
				bMon = "Bobby";
				Qname = "BuggyQuest1";
				Qdata = 3;
				PosQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188);
				PosB = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344);
			elseif _G.FindBoss == "The Saw" then
				bMon = "The Saw";
				PosB = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906);
			elseif _G.FindBoss == "Yeti" then
				bMon = "Yeti";
				Qname = "SnowQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156);
				PosB = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172);
			elseif _G.FindBoss == "Mob Leader" then
				bMon = "Mob Leader";
				PosB = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813);
			elseif _G.FindBoss == "Vice Admiral" then
				bMon = "Vice Admiral";
				Qname = "MarineQuest2";
				Qdata = 2;
				PosQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625);
				PosB = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375);
			elseif _G.FindBoss == "Saber Expert" then
				bMon = "Saber Expert";
				PosB = CFrame.new(-1458.89502, 29.8870335, -50.633564);
			elseif _G.FindBoss == "Warden" then
				bMon = "Warden";
				Qname = "ImpelQuest";
				Qdata = 1;
				PosB = CFrame.new(5278.04932, 2.15167475, 944.101929, .220546961, -4.49946401e-006, .975376427, -1.95412576e-005, 1, 9.03162072e-006, -0.975376427, -2.10519756e-005, .220546961);
				PosQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635);
			elseif _G.FindBoss == "Chief Warden" then
				bMon = "Chief Warden";
				Qname = "ImpelQuest";
				Qdata = 2;
				PosB = CFrame.new(5206.92578, .997753382, 814.976746, .342041343, -0.00062915677, .939684749, .00191645394, .999998152, -2.80422337e-005, -0.939682961, .00181045406, .342041939);
				PosQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635);
			elseif _G.FindBoss == "Swan" then
				bMon = "Swan";
				Qname = "ImpelQuest";
				Qdata = 3;
				PosB = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, .951042235, 0, 1, 0, -0.951042235, 0, -0.309060812);
				PosQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, .681965172, 0, 1, 0, -0.681965172, 0, -0.731384635);
			elseif _G.FindBoss == "Magma Admiral" then
				bMon = "Magma Admiral";
				Qname = "MagmaQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875);
				PosB = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875);
			elseif _G.FindBoss == "Fishman Lord" then
				bMon = "Fishman Lord";
				Qname = "FishmanQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
				PosB = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984);
			elseif _G.FindBoss == "Wysper" then
				bMon = "Wysper";
				Qname = "SkyExp1Quest";
				Qdata = 3;
				PosQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094);
				PosB = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531);
			elseif _G.FindBoss == "Thunder God" then
				bMon = "Thunder God";
				Qname = "SkyExp2Quest";
				Qdata = 3;
				PosQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125);
				PosB = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188);
			elseif _G.FindBoss == "Cyborg" then
				bMon = "Cyborg";
				Qname = "FountainQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875);
				PosB = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813);
			elseif _G.FindBoss == "Ice Admiral" then
				bMon = "Ice Admiral";
				Qdata = nil;
				PosQBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, .81913656, 0, -0.573599219);
				PosB = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, .81913656, 0, -0.573599219);
			elseif _G.FindBoss == "Greybeard" then
				bMon = "Greybeard";
				Qdata = nil;
				PosQBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188);
				PosB = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188);
			end;
		end;
		if World2 then
			if _G.FindBoss == "Diamond" then
				bMon = "Diamond";
				Qname = "Area1Quest";
				Qdata = 3;
				PosQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375);
				PosB = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407);
			elseif _G.FindBoss == "Jeremy" then
				bMon = "Jeremy";
				Qname = "Area2Quest";
				Qdata = 3;
				PosQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063);
				PosB = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109);
			elseif _G.FindBoss == "Orbitus" then
				bMon = "Orbitus";
				Qname = "MarineQuest3";
				Qdata = 3;
				PosQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031);
				PosB = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625);
			elseif _G.FindBoss == "Don Swan" then
				bMon = "Don Swan";
				PosB = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875);
			elseif _G.FindBoss == "Smoke Admiral" then
				bMon = "Smoke Admiral";
				Qname = "IceSideQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813);
				PosB = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875);
			elseif _G.FindBoss == "Awakened Ice Admiral" then
				bMon = "Awakened Ice Admiral";
				Qname = "FrostQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813);
				PosB = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125);
			elseif _G.FindBoss == "Tide Keeper" then
				bMon = "Tide Keeper";
				Qname = "ForgottenQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625);
				PosB = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188);
			elseif _G.FindBoss == "Darkbeard" then
				bMon = "Darkbeard";
				Qdata = nil;
				PosQBoss = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531);
				PosB = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531);
			elseif _G.FindBoss == "Cursed Captaim" then
				bMon = "Cursed Captain";
				Qdata = nil;
				PosQBoss = CFrame.new(916.928589, 181.092773, 33422);
				PosB = CFrame.new(916.928589, 181.092773, 33422);
			elseif _G.FindBoss == "Order" then
				bMon = "Order";
				Qdata = nil;
				PosQBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875);
				PosB = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875);
			end;
		end;
		if World3 then
			if _G.FindBoss == "Stone" then
				bMon = "Stone";
				Qname = "PiratePortQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625);
				PosB = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438);
			elseif _G.FindBoss == "Hydra Leader" then
				bMon = "Hydra Leader";
				Qname = "VenomCrewQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(5211.021484375, 1004.3577885938, 758.18475341797);
				PosB = CFrame.new(5821.8979492188, 1019.0950927734, -73.719230651855);
			elseif _G.FindBoss == "Kilo Admiral" then
				bMon = "Kilo Admiral";
				Qname = "MarineTreeIsland";
				Qdata = 3;
				PosQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938);
				PosB = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125);
			elseif _G.FindBoss == "Captain Elephant" then
				bMon = "Captain Elephant";
				Qname = "DeepForestIsland";
				Qdata = 3;
				PosQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875);
				PosB = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125);
			elseif _G.FindBoss == "Beautiful Pirate" then
				bMon = "Beautiful Pirate";
				Qname = "DeepForestIsland2";
				Qdata = 3;
				PosQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375);
				PosB = CFrame.new(5283.609375, 22.56223487854, -110.78285217285);
			elseif _G.FindBoss == "Cake Queen" then
				bMon = "Cake Queen";
				Qname = "IceCreamIslandQuest";
				Qdata = 3;
				PosQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, .642767608, 0, 1, 0, -0.642767608, 0, -0.766061664);
				PosB = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, .00149294338, .41757378, .00837114919, .999857843, .0146408929, -0.417492568, .0167988986, -0.90852499);
			elseif _G.FindBoss == "Longma" then
				bMon = "Longma";
				Qdata = nil;
				PosQBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125);
				PosB = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125);
			elseif _G.FindBoss == "Soul Reaper" then
				bMon = "Soul Reaper";
				Qdata = nil;
				PosQBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813);
				PosB = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813);
			end;
		end;
	end;
QuestBeta = function()
		local X = {};
		X[1] = QuestB();
		return {
			[0] = _G.FindBoss,
			[1] = bMon,
			[2] = Qdata,
			[3] = Qname,
			[4] = PosB,
			[5] = PosQBoss,
		};
	end;
QuestCheck = function()
		local e = {};
		e[2] = game.Players.LocalPlayer.Data.Level.Value;
		if World1 then
			if e[2] == 1 or e[2] <= 9 then
				if tostring(TeamSelf) == "Marines" then
					Mon = "Trainee";
					Qname = "MarineQuest";
					Qdata = 1;
					NameMon = "Trainee";
					PosM = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-008, -0.667371571, 4.32403588e-008, 1, -1.07884304e-007, .667371571, -1.09201515e-007, -0.744724929);
					PosQ = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-008, -0.667371571, 4.32403588e-008, 1, -1.07884304e-007, .667371571, -1.09201515e-007, -0.744724929);
				elseif tostring(TeamSelf) == "Pirates" then
					Mon = "Bandit";
					Qdata = 1;
					Qname = "BanditQuest1";
					NameMon = "Bandit";
					PosM = CFrame.new(1045.9626464844, 27.002508163452, 1560.8203125);
					PosQ = CFrame.new(1045.9626464844, 27.002508163452, 1560.8203125);
				end;
			elseif e[2] == 10 or e[2] <= 14 then
				Mon = "Monkey";
				Qdata = 1;
				Qname = "JungleQuest";
				NameMon = "Monkey";
				PosQ = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, 0, -1, 0, 0);
				PosM = CFrame.new(-1448.5180664062, 67.853012084961, 11.465796470642);
			elseif e[2] == 15 or e[2] <= 29 then
				Mon = "Gorilla";
				Qdata = 2;
				Qname = "JungleQuest";
				NameMon = "Gorilla";
				PosQ = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, 0, -1, 0, 0);
				PosM = CFrame.new(-1129.8836669922, 40.46354675293, -525.42370605469);
			elseif e[2] == 30 or e[2] <= 39 then
				Mon = "Pirate";
				Qdata = 1;
				Qname = "BuggyQuest1";
				NameMon = "Pirate";
				PosQ = CFrame.new(-1141.07483, 4.10001802, 3831.5498, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627);
				PosM = CFrame.new(-1103.5134277344, 13.752052307129, 3896.0910644531);
			elseif e[2] == 40 or e[2] <= 59 then
				Mon = "Brute";
				Qdata = 2;
				Qname = "BuggyQuest1";
				NameMon = "Brute";
				PosQ = CFrame.new(-1141.07483, 4.10001802, 3831.5498, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627);
				PosM = CFrame.new(-1140.0837402344, 14.809885025024, 4322.9213867188);
			elseif e[2] == 60 or e[2] <= 74 then
				Mon = "Desert Bandit";
				Qdata = 1;
				Qname = "DesertQuest";
				NameMon = "Desert Bandit";
				PosQ = CFrame.new(894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693);
				PosM = CFrame.new(924.7998046875, 6.4486746788025, 4481.5859375);
			elseif e[2] == 75 or e[2] <= 89 then
				Mon = "Desert Officer";
				Qdata = 2;
				Qname = "DesertQuest";
				NameMon = "Desert Officer";
				PosQ = CFrame.new(894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693);
				PosM = CFrame.new(1608.2822265625, 8.6142244338989, 4371.0073242188);
			elseif e[2] == 90 or e[2] <= 99 then
				Mon = "Snow Bandit";
				Qdata = 1;
				Qname = "SnowQuest";
				NameMon = "Snow Bandit";
				PosQ = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685);
				PosM = CFrame.new(1354.3479003906, 87.272773742676, -1393.9465332031);
			elseif e[2] == 100 or e[2] <= 119 then
				Mon = "Snowman";
				Qdata = 2;
				Qname = "SnowQuest";
				NameMon = "Snowman";
				PosQ = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685);
				PosM = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516);
			elseif e[2] == 120 or e[2] <= 149 then
				Mon = "Chief Petty Officer";
				Qdata = 1;
				Qname = "MarineQuest2";
				NameMon = "Chief Petty Officer";
				PosQ = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				PosM = CFrame.new(-4881.2309570312, 22.652044296265, 4273.7524414062);
			elseif e[2] == 150 or e[2] <= 174 then
				Mon = "Sky Bandit";
				Qdata = 1;
				Qname = "SkyQuest";
				NameMon = "Sky Bandit";
				PosQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
				PosM = CFrame.new(-4953.20703125, 295.74420166016, -2899.2290039062);
			elseif e[2] == 175 or e[2] <= 189 then
				Mon = "Dark Master";
				Qdata = 2;
				Qname = "SkyQuest";
				NameMon = "Dark Master";
				PosQ = CFrame.new(-4839.53027, 716.368591, -2619.44165, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
				PosM = CFrame.new(-5259.8447265625, 391.39767456055, -2229.0354003906);
			elseif e[2] == 190 or e[2] <= 209 then
				Mon = "Prisoner";
				Qdata = 1;
				Qname = "PrisonerQuest";
				NameMon = "Prisoner";
				PosQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-009, -0.995993316, 1.60817859e-009, 1, -5.16744869e-009, .995993316, -2.06384709e-009, -0.0894274712);
				PosM = CFrame.new(5098.9736328125, -0.3204058110714, 474.23733520508);
			elseif e[2] == 210 or e[2] <= 249 then
				Mon = "Dangerous Prisoner";
				Qdata = 2;
				Qname = "PrisonerQuest";
				NameMon = "Dangerous Prisoner";
				PosQ = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-009, -0.995993316, 1.60817859e-009, 1, -5.16744869e-009, .995993316, -2.06384709e-009, -0.0894274712);
				PosM = CFrame.new(5654.5634765625, 15.633401870728, 866.29919433594);
			elseif e[2] == 250 or e[2] <= 274 then
				Mon = "Toga Warrior";
				Qdata = 1;
				Qname = "ColosseumQuest";
				NameMon = "Toga Warrior";
				PosQ = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, .857167721, 0, -0.515037298);
				PosM = CFrame.new(-1820.21484375, 51.683856964111, -2740.6650390625);
			elseif e[2] == 275 or e[2] <= 299 then
				Mon = "Gladiator";
				Qdata = 2;
				Qname = "ColosseumQuest";
				NameMon = "Gladiator";
				PosQ = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, .857167721, 0, -0.515037298);
				PosM = CFrame.new(-1292.8381347656, 56.380882263184, -3339.0314941406);
			elseif e[2] == 300 or e[2] <= 324 then
				Boubty = false;
				Mon = "Military Soldier";
				Qdata = 1;
				Qname = "MagmaQuest";
				NameMon = "Military Soldier";
				PosQ = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469);
				PosM = CFrame.new(-5411.1645507812, 11.081554412842, 8454.29296875);
			elseif e[2] == 325 or e[2] <= 374 then
				Mon = "Military Spy";
				Qdata = 2;
				Qname = "MagmaQuest";
				NameMon = "Military Spy";
				PosQ = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469);
				PosM = CFrame.new(-5802.8681640625, 86.262413024902, 8828.859375);
			elseif e[2] == 375 or e[2] <= 399 then
				Mon = "Fishman Warrior";
				Qdata = 1;
				Qname = "FishmanQuest";
				NameMon = "Fishman Warrior";
				PosQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
				PosM = CFrame.new(60878.30078125, 18.482830047607, 1543.7574462891);
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
				end;
			elseif e[2] == 400 or e[2] <= 449 then
				Mon = "Fishman Commando";
				Qdata = 2;
				Qname = "FishmanQuest";
				NameMon = "Fishman Commando";
				PosQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
				PosM = CFrame.new(61922.6328125, 18.482830047607, 1493.9343261719);
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
				end;
			elseif e[2] == 450 or e[2] <= 474 then
				Mon = "God\'s Guard";
				Qdata = 1;
				Qname = "SkyExp1Quest";
				NameMon = "God\'s Guard";
				PosQ = CFrame.new(-4721.88867, 843.874695, -1949.96643, .996191859, 0, -0.0871884301, 0, 1, 0, .0871884301, 0, .996191859);
				PosM = CFrame.new(-4710.04296875, 845.27697753906, -1927.3079833984);
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688));
				end;
			elseif e[2] == 475 or e[2] <= 524 then
				Mon = "Shanda";
				Qdata = 2;
				Qname = "SkyExp1Quest";
				NameMon = "Shanda";
				PosQ = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, .906319618, 0, 1, 0, -0.906319618, 0, -0.422592998);
				PosM = CFrame.new(-7678.4897460938, 5566.4038085938, -497.21560668945);
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047));
				end;
			elseif e[2] == 525 or e[2] <= 549 then
				Mon = "Royal Squad";
				Qdata = 1;
				Qname = "SkyExp2Quest";
				NameMon = "Royal Squad";
				PosQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				PosM = CFrame.new(-7624.2524414062, 5658.1333007812, -1467.3542480469);
			elseif e[2] == 550 or e[2] <= 624 then
				Mon = "Royal Soldier";
				Qdata = 2;
				Qname = "SkyExp2Quest";
				NameMon = "Royal Soldier";
				PosQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				PosM = CFrame.new(-7836.7534179688, 5645.6640625, -1790.6236572266);
			elseif e[2] == 625 or e[2] <= 649 then
				Mon = "Galley Pirate";
				Qdata = 1;
				Qname = "FountainQuest";
				NameMon = "Galley Pirate";
				PosQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381);
				PosM = CFrame.new(5551.0219726562, 78.901351928711, 3930.4128417969);
			elseif e[2] >= 650 then
				Mon = "Galley Captain";
				Qdata = 2;
				Qname = "FountainQuest";
				NameMon = "Galley Captain";
				PosQ = CFrame.new(5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381);
				PosM = CFrame.new(5441.9516601562, 42.502059936523, 4950.09375);
			end;
		elseif World2 then
			if e[2] == 700 or e[2] <= 724 then
				Mon = "Raider";
				Qdata = 1;
				Qname = "Area1Quest";
				NameMon = "Raider";
				PosQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985);
				PosM = CFrame.new(-728.32672119141, 52.779319763184, 2345.7705078125);
			elseif e[2] == 725 or e[2] <= 774 then
				Mon = "Mercenary";
				Qdata = 2;
				Qname = "Area1Quest";
				NameMon = "Mercenary";
				PosQ = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985);
				PosM = CFrame.new(-1004.3244018555, 80.158866882324, 1424.6193847656);
			elseif e[2] == 775 or e[2] <= 799 then
				Mon = "Swan Pirate";
				Qdata = 1;
				Qname = "Area2Quest";
				NameMon = "Swan Pirate";
				PosQ = CFrame.new(638.43811, 71.769989, 918.282898, .139203906, 0, .99026376, 0, 1, 0, -0.99026376, 0, .139203906);
				PosM = CFrame.new(1068.6643066406, 137.61428833008, 1322.1060791016);
			elseif e[2] == 800 or e[2] <= 874 then
				Mon = "Factory Staff";
				Qname = "Area2Quest";
				Qdata = 2;
				NameMon = "Factory Staff";
				PosQ = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-010, -0.999488771, 1.36326533e-010, 1, 8.92172336e-010, .999488771, -1.07732087e-010, -0.0319722369);
				PosM = CFrame.new(73.078674316406, 81.863441467285, -27.470672607422);
			elseif e[2] == 875 or e[2] <= 899 then
				Mon = "Marine Lieutenant";
				Qdata = 1;
				Qname = "MarineQuest3";
				NameMon = "Marine Lieutenant";
				PosQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
				PosM = CFrame.new(-2821.3723144531, 75.897277832031, -3070.0891113281);
			elseif e[2] == 900 or e[2] <= 949 then
				Mon = "Marine Captain";
				Qdata = 2;
				Qname = "MarineQuest3";
				NameMon = "Marine Captain";
				PosQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
				PosM = CFrame.new(-1861.2310791016, 80.176582336426, -3254.6975097656);
			elseif e[2] == 950 or e[2] <= 974 then
				Mon = "Zombie";
				Qdata = 1;
				Qname = "ZombieQuest";
				NameMon = "Zombie";
				PosQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146);
				PosM = CFrame.new(-5657.7768554688, 78.969734191895, -928.68701171875);
			elseif e[2] == 975 or e[2] <= 999 then
				Mon = "Vampire";
				Qdata = 2;
				Qname = "ZombieQuest";
				NameMon = "Vampire";
				PosQ = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146);
				PosM = CFrame.new(-6037.66796875, 32.184638977051, -1340.6597900391);
			elseif e[2] == 1000 or e[2] <= 1049 then
				Mon = "Snow Trooper";
				Qdata = 1;
				Qname = "SnowMountainQuest";
				NameMon = "Snow Trooper";
				PosQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106);
				PosM = CFrame.new(549.14733886719, 427.38705444336, -5563.6987304688);
			elseif e[2] == 1050 or e[2] <= 1099 then
				Mon = "Winter Warrior";
				Qdata = 2;
				Qname = "SnowMountainQuest";
				NameMon = "Winter Warrior";
				PosQ = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106);
				PosM = CFrame.new(1142.7451171875, 475.63980102539, -5199.4165039062);
			elseif e[2] == 1100 or e[2] <= 1124 then
				Mon = "Lab Subordinate";
				Qdata = 1;
				Qname = "IceSideQuest";
				NameMon = "Lab Subordinate";
				PosQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578);
				PosM = CFrame.new(-5707.4716796875, 15.951709747314, -4513.3920898438);
			elseif e[2] == 1125 or e[2] <= 1174 then
				Mon = "Horned Warrior";
				Qdata = 2;
				Qname = "IceSideQuest";
				NameMon = "Horned Warrior";
				PosQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578);
				PosM = CFrame.new(-6341.3666992188, 15.951770782471, -5723.162109375);
			elseif e[2] == 1175 or e[2] <= 1199 then
				Mon = "Magma Ninja";
				Qdata = 1;
				Qname = "FireSideQuest";
				NameMon = "Magma Ninja";
				PosQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
				PosM = CFrame.new(-5449.6728515625, 76.658744812012, -5808.2006835938);
			elseif e[2] == 1200 or e[2] <= 1249 then
				Mon = "Lava Pirate";
				Qdata = 2;
				Qname = "FireSideQuest";
				NameMon = "Lava Pirate";
				PosQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
				PosM = CFrame.new(-5213.3315429688, 49.737880706787, -4701.451171875);
			elseif e[2] == 1250 or e[2] <= 1274 then
				Mon = "Ship Deckhand";
				Qdata = 1;
				Qname = "ShipQuest1";
				NameMon = "Ship Deckhand";
				PosQ = CFrame.new(1037.80127, 125.092171, 32911.6016);
				PosM = CFrame.new(1212.0111083984, 150.79205322266, 33059.24609375);
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
				end;
			elseif e[2] == 1275 or e[2] <= 1299 then
				Mon = "Ship Engineer";
				Qdata = 2;
				Qname = "ShipQuest1";
				NameMon = "Ship Engineer";
				PosQ = CFrame.new(1037.80127, 125.092171, 32911.6016);
				PosM = CFrame.new(919.47863769531, 43.544013977051, 32779.96875);
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
				end;
			elseif e[2] == 1300 or e[2] <= 1324 then
				Mon = "Ship Steward";
				Qdata = 1;
				Qname = "ShipQuest2";
				NameMon = "Ship Steward";
				PosQ = CFrame.new(968.80957, 125.092171, 33244.125);
				PosM = CFrame.new(919.43853759766, 129.55599975586, 33436.03515625);
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
				end;
			elseif e[2] == 1325 or e[2] <= 1349 then
				Mon = "Ship Officer";
				Qdata = 2;
				Qname = "ShipQuest2";
				NameMon = "Ship Officer";
				PosQ = CFrame.new(968.80957, 125.092171, 33244.125);
				PosM = CFrame.new(1036.0179443359, 181.4390411377, 33315.7265625);
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
				end;
			elseif e[2] == 1350 or e[2] <= 1374 then
				Mon = "Arctic Warrior";
				Qdata = 1;
				Qname = "FrostQuest";
				NameMon = "Arctic Warrior";
				PosQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909);
				PosM = CFrame.new(5966.24609375, 62.970020294189, -6179.3828125);
				if _G.Level and (PosQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
					BTP(PosM);
				end;
			elseif e[2] == 1375 or e[2] <= 1424 then
				Mon = "Snow Lurker";
				Qdata = 2;
				Qname = "FrostQuest";
				NameMon = "Snow Lurker";
				PosQ = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909);
				PosM = CFrame.new(5407.0737304688, 69.194374084473, -6880.8803710938);
			elseif e[2] == 1425 or e[2] <= 1449 then
				Mon = "Sea Soldier";
				Qdata = 1;
				Qname = "ForgottenQuest";
				NameMon = "Sea Soldier";
				PosQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, .990270376, 0, -0.13915664, 0, 1, 0, .13915664, 0, .990270376);
				PosM = CFrame.new(-3028.2236328125, 64.674514770508, -9775.4267578125);
			elseif e[2] >= 1450 then
				Mon = "Water Fighter";
				Qdata = 2;
				Qname = "ForgottenQuest";
				NameMon = "Water Fighter";
				PosQ = CFrame.new(-3054.44458, 235.544281, -10142.8193, .990270376, 0, -0.13915664, 0, 1, 0, .13915664, 0, .990270376);
				PosM = CFrame.new(-3352.9013671875, 285.01556396484, -10534.841796875);
			end;
		elseif World3 then
			if e[2] == 1500 or e[2] <= 1524 then
				Mon = "Pirate Millionaire";
				Qdata = 1;
				Qname = "PiratePortQuest";
				NameMon = "Pirate Millionaire";
				PosQ = CFrame.new(-712.82727050781, 98.577049255371, 5711.9541015625);
				PosM = CFrame.new(-712.82727050781, 98.577049255371, 5711.9541015625);
			elseif e[2] == 1525 or e[2] <= 1574 then
				Mon = "Pistol Billionaire";
				Qdata = 2;
				Qname = "PiratePortQuest";
				NameMon = "Pistol Billionaire";
				PosQ = CFrame.new(-723.43316650391, 147.42906188965, 5931.9931640625);
				PosM = CFrame.new(-723.43316650391, 147.42906188965, 5931.9931640625);
			elseif e[2] == 1575 or e[2] <= 1599 then
				Mon = "Dragon Crew Warrior";
				Qdata = 1;
				Qname = "DragonCrewQuest";
				NameMon = "Dragon Crew Warrior";
				PosQ = CFrame.new(6735.12061, 127.107239, -711.085754, -0.474887252, .0169004519, -0.879884422, -0.00234961393, .999787629, .020471612, .880043507, .0117890798, -0.474746734);
				PosM = CFrame.new(6735.12061, 127.107239, -711.085754, -0.474887252, .0169004519, -0.879884422, -0.00234961393, .999787629, .020471612, .880043507, .0117890798, -0.474746734);
			elseif e[2] == 1600 or e[2] <= 1624 then
				Mon = "Dragon Crew Archer";
				Qname = "DragonCrewQuest";
				Qdata = 2;
				NameMon = "Dragon Crew Archer";
				PosQ = CFrame.new(6955.8974609375, 546.66589355469, 309.04013061523);
				PosM = CFrame.new(6955.8974609375, 546.66589355469, 309.04013061523);
			elseif e[2] == 1625 or e[2] <= 1649 then
				Mon = "Hydra Enforcer";
				Qname = "VenomCrewQuest";
				Qdata = 1;
				NameMon = "Hydra Enforcer";
				PosQ = CFrame.new(4620.6157226562, 1002.2954711914, 399.08688354492);
				PosM = CFrame.new(4620.6157226562, 1002.2954711914, 399.08688354492);
			elseif e[2] == 1650 or e[2] <= 1699 then
				Mon = "Venomous Assailant";
				Qname = "VenomCrewQuest";
				Qdata = 2;
				NameMon = "Venomous Assailant";
				PosQ = CFrame.new(4697.5918, 1100.65137, 946.401978, .579397917, -4.19689783e-010, .81504482, -1.49287818e-010, 1, 6.21053986e-010, -0.81504482, -4.81513662e-010, .579397917);
				PosM = CFrame.new(4697.5918, 1100.65137, 946.401978, .579397917, -4.19689783e-010, .81504482, -1.49287818e-010, 1, 6.21053986e-010, -0.81504482, -4.81513662e-010, .579397917);
			elseif e[2] == 1700 or e[2] <= 1724 then
				Mon = "Marine Commodore";
				Qdata = 1;
				Qname = "MarineTreeIsland";
				NameMon = "Marine Commodore";
				PosQ = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, .258804798, 0, 1, 0, -0.258804798, 0, -0.965929747);
				PosM = CFrame.new(2286.0078125, 73.133918762207, -7159.8090820312);
			elseif e[2] == 1725 or e[2] <= 1774 then
				Mon = "Marine Rear Admiral";
				NameMon = "Marine Rear Admiral";
				Qname = "MarineTreeIsland";
				Qdata = 2;
				PosQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813);
				PosM = CFrame.new(3656.7736816406, 160.52406311035, -7001.5986328125);
			elseif e[2] == 1775 or e[2] <= 1799 then
				Mon = "Fishman Raider";
				Qdata = 1;
				Qname = "DeepForestIsland3";
				NameMon = "Fishman Raider";
				PosQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
				PosM = CFrame.new(-10407.526367188, 331.76263427734, -8368.5166015625);
			elseif e[2] == 1800 or e[2] <= 1824 then
				Mon = "Fishman Captain";
				Qdata = 2;
				Qname = "DeepForestIsland3";
				NameMon = "Fishman Captain";
				PosQ = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
				PosM = CFrame.new(-10994.701171875, 352.38140869141, -9002.1103515625);
			elseif e[2] == 1825 or e[2] <= 1849 then
				Mon = "Forest Pirate";
				Qdata = 1;
				Qname = "DeepForestIsland";
				NameMon = "Forest Pirate";
				PosQ = CFrame.new(-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247);
				PosM = CFrame.new(-13274.478515625, 332.37814331055, -7769.5805664062);
			elseif e[2] == 1850 or e[2] <= 1899 then
				Mon = "Mythological Pirate";
				Qdata = 2;
				Qname = "DeepForestIsland";
				NameMon = "Mythological Pirate";
				PosQ = CFrame.new(-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247);
				PosM = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125);
			elseif e[2] == 1900 or e[2] <= 1924 then
				Mon = "Jungle Pirate";
				Qdata = 1;
				Qname = "DeepForestIsland2";
				NameMon = "Jungle Pirate";
				PosQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002);
				PosM = CFrame.new(-12256.16015625, 331.73828125, -10485.836914062);
			elseif e[2] == 1925 or e[2] <= 1974 then
				Mon = "Musketeer Pirate";
				Qdata = 2;
				Qname = "DeepForestIsland2";
				NameMon = "Musketeer Pirate";
				PosQ = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002);
				PosM = CFrame.new(-13457.904296875, 391.54565429688, -9859.177734375);
			elseif e[2] == 1975 or e[2] <= 1999 then
				Mon = "Reborn Skeleton";
				Qdata = 1;
				Qname = "HauntedQuest1";
				NameMon = "Reborn Skeleton";
				PosQ = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0);
				PosM = CFrame.new(-8763.7236328125, 165.72299194336, 6159.8618164062);
			elseif e[2] == 2000 or e[2] <= 2024 then
				Mon = "Living Zombie";
				Qdata = 2;
				Qname = "HauntedQuest1";
				NameMon = "Living Zombie";
				PosQ = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0);
				PosM = CFrame.new(-10144.131835938, 138.6266784668, 5838.0888671875);
			elseif e[2] == 2025 or e[2] <= 2049 then
				Mon = "Demonic Soul";
				Qdata = 1;
				Qname = "HauntedQuest2";
				NameMon = "Demonic Soul";
				PosQ = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				PosM = CFrame.new(-9505.8720703125, 172.10482788086, 6158.9931640625);
			elseif e[2] == 2050 or e[2] <= 2074 then
				Mon = "Posessed Mummy";
				Qdata = 2;
				Qname = "HauntedQuest2";
				NameMon = "Posessed Mummy";
				PosQ = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				PosM = CFrame.new(-9582.0224609375, 6.2515273094177, 6205.478515625);
			elseif e[2] == 2075 or e[2] <= 2099 then
				Mon = "Peanut Scout";
				Qdata = 1;
				Qname = "NutsIslandQuest";
				NameMon = "Peanut Scout";
				PosQ = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				PosM = CFrame.new(-2143.2419433594, 47.721984863281, -10029.995117188);
			elseif e[2] == 2100 or e[2] <= 2124 then
				Mon = "Peanut President";
				Qdata = 2;
				Qname = "NutsIslandQuest";
				NameMon = "Peanut President";
				PosQ = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				PosM = CFrame.new(-1859.3540039062, 38.103168487549, -10422.4296875);
			elseif e[2] == 2125 or e[2] <= 2149 then
				Mon = "Ice Cream Chef";
				Qdata = 1;
				Qname = "IceCreamIslandQuest";
				NameMon = "Ice Cream Chef";
				PosQ = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				PosM = CFrame.new(-872.24658203125, 65.81957244873, -10919.95703125);
			elseif e[2] == 2150 or e[2] <= 2199 then
				Mon = "Ice Cream Commander";
				Qdata = 2;
				Qname = "IceCreamIslandQuest";
				NameMon = "Ice Cream Commander";
				PosQ = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				PosM = CFrame.new(-558.06103515625, 112.04895782471, -11290.774414062);
			elseif e[2] == 2200 or e[2] <= 2224 then
				Mon = "Cookie Crafter";
				Qdata = 1;
				Qname = "CakeQuest1";
				NameMon = "Cookie Crafter";
				PosQ = CFrame.new(-2021.32007, 37.7982254, -12028.7295, .957576931, -8.80302053e-008, .288177818, 6.9301187e-008, 1, 7.51931211e-008, -0.288177818, -5.2032135e-008, .957576931);
				PosM = CFrame.new(-2374.13671875, 37.798263549805, -12125.30859375);
			elseif e[2] == 2225 or e[2] <= 2249 then
				Mon = "Cake Guard";
				Qdata = 2;
				Qname = "CakeQuest1";
				NameMon = "Cake Guard";
				PosQ = CFrame.new(-2021.32007, 37.7982254, -12028.7295, .957576931, -8.80302053e-008, .288177818, 6.9301187e-008, 1, 7.51931211e-008, -0.288177818, -5.2032135e-008, .957576931);
				PosM = CFrame.new(-1598.3070068359, 43.773197174072, -12244.581054688);
			elseif e[2] == 2250 or e[2] <= 2274 then
				Mon = "Baking Staff";
				Qdata = 1;
				Qname = "CakeQuest2";
				NameMon = "Baking Staff";
				PosQ = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-008, .250778586, 4.74911062e-008, 1, 1.49904711e-008, -0.250778586, 2.64211941e-008, -0.96804446);
				PosM = CFrame.new(-1887.8099365234, 77.618507385254, -12998.350585938);
			elseif e[2] == 2275 or e[2] <= 2299 then
				Mon = "Head Baker";
				Qdata = 2;
				Qname = "CakeQuest2";
				NameMon = "Head Baker";
				PosQ = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-008, .250778586, 4.74911062e-008, 1, 1.49904711e-008, -0.250778586, 2.64211941e-008, -0.96804446);
				PosM = CFrame.new(-2216.1882324219, 82.884521484375, -12869.293945312);
			elseif e[2] == 2300 or e[2] <= 2324 then
				Mon = "Cocoa Warrior";
				Qdata = 1;
				Qname = "ChocQuest1";
				NameMon = "Cocoa Warrior";
				PosQ = CFrame.new(233.22836303711, 29.876001358032, -12201.233398438);
				PosM = CFrame.new(-21.553283691406, 80.574996948242, -12352.387695313);
			elseif e[2] == 2325 or e[2] <= 2349 then
				Mon = X[2]({ "Chocolate Bar Battle", "r" });
				Qdata = 2;
				Qname = "ChocQuest1";
				NameMon = X[2]({ "Chocolate Bar Battle", "r" });
				PosQ = CFrame.new(233.22836303711, 29.876001358032, -12201.233398438);
				PosM = CFrame.new(582.59057617188, 77.188095092773, -12463.162109375);
			elseif e[2] == 2350 or e[2] <= 2374 then
				Mon = "Sweet Thief";
				Qdata = 1;
				Qname = "ChocQuest2";
				NameMon = "Sweet Thief";
				PosQ = CFrame.new(150.50663757324, 30.693693161011, -12774.502929688);
				PosM = CFrame.new(165.1884765625, 76.058853149414, -12600.836914062);
			elseif e[2] == 2375 or e[2] <= 2399 then
				Mon = "Candy Rebel";
				Qdata = 2;
				Qname = "ChocQuest2";
				NameMon = "Candy Rebel";
				PosQ = CFrame.new(150.50663757324, 30.693693161011, -12774.502929688);
				PosM = CFrame.new(134.86563110352, 77.247680664062, -12876.547851562);
			elseif e[2] == 2400 or e[2] <= 2449 then
				Mon = "Candy Pirate";
				Qdata = 1;
				Qname = "CandyQuest1";
				NameMon = "Candy Pirate";
				PosQ = CFrame.new(-1150.0400390625, 20.378934860229, -14446.334960938);
				PosM = CFrame.new(-1310.5003662109, 26.016523361206, -14562.404296875);
			elseif e[2] == 2450 or e[2] <= 2474 then
				Mon = "Isle Outlaw";
				Qdata = 1;
				Qname = "TikiQuest1";
				NameMon = "Isle Outlaw";
				PosQ = CFrame.new(-16548.8164, 55.6059914, -172.8125, .213092566, 0, -0.977032006, 0, 1, 0, .977032006, 0, .213092566);
				PosM = CFrame.new(-16479.900390625, 226.6117401123, -300.31143188477);
			elseif e[2] == 2475 or e[2] <= 2499 then
				Mon = "Island Boy";
				Qdata = 2;
				Qname = "TikiQuest1";
				NameMon = "Island Boy";
				PosQ = CFrame.new(-16548.8164, 55.6059914, -172.8125, .213092566, 0, -0.977032006, 0, 1, 0, .977032006, 0, .213092566);
				PosM = CFrame.new(-16849.396484375, 192.86505126953, -150.78532409668);
			elseif e[2] == 2500 or e[2] <= 2524 then
				Mon = "Sun-kissed Warrior";
				Qdata = 1;
				Qname = "TikiQuest2";
				NameMon = "kissed Warrior";
				PosM = CFrame.new(-16347, 64, 984);
				PosQ = CFrame.new(-16538, 55, 1049);
			elseif e[2] == 2525 or e[2] <= 2550 then
				Mon = "Isle Champion";
				Qdata = 2;
				Qname = "TikiQuest2";
				NameMon = "Isle Champion";
				PosQ = CFrame.new(-16541.0215, 57.3082275, 1051.46118, .0410757065, 0, -0.999156058, 0, 1, 0, .999156058, 0, .0410757065);
				PosM = CFrame.new(-16602.1015625, 130.38734436035, 1087.2456054688);
			elseif e[2] >= 2551 and e[2] <= 2574 then
				Mon = "Serpent Hunter";
				Qdata = 1;
				Qname = "TikiQuest3";
				NameMon = "Serpent Hunter";
				PosQ = CFrame.new(-16679.4785, 176.7473, 1474.3995);
				PosM = CFrame.new(-16679.4785, 176.7473, 1474.3995);
			elseif e[2] >= 2575 and e[2] <= 2599 then
				Mon = "Skull Slayer";
				Qdata = 2;
				Qname = "TikiQuest3";
				NameMon = "Skull Slayer";
				PosQ = CFrame.new(-16759.5898, 71.2837, 1595.3399);
				PosM = CFrame.new(-16759.5898, 71.2837, 1595.3399);
			elseif e[2] >= 2600 and e[2] <= 2624 then
				Mon = "Reef Bandit";
				Qdata = 1;
				Qname = "SubmergedQuest1";
				NameMon = "Reef Bandit";
				PosQ = CFrame.new(10882.264, -2086.322, 10034.226);
				PosM = CFrame.new(10736.6191, -2087.8439, 9338.4882);
			elseif e[2] >= 2625 and e[2] <= 2649 then
				Mon = "Coral Pirate";
				Qdata = 2;
				Qname = "SubmergedQuest1";
				NameMon = "Coral Pirate";
				PosQ = CFrame.new(10882.264, -2086.322, 10034.226);
				PosM = CFrame.new(10965.1025, -2158.8842, 9177.2597);
			elseif e[2] >= 2650 and e[2] <= 2674 then
				Mon = "Sea Chanter";
				Qdata = 1;
				Qname = "SubmergedQuest2";
				NameMon = "Sea Chanter";
				PosQ = CFrame.new(10882.264, -2086.322, 10034.226);
				PosM = CFrame.new(10621.0342, -2087.844, 10102.0332);
			elseif e[2] >= 2675 and e[2] <= 2699 then
				Mon = "Ocean Prophet";
				Qdata = 2;
				Qname = "SubmergedQuest2";
				NameMon = "Ocean Prophet";
				PosQ = CFrame.new(10882.264, -2086.322, 10034.226);
				PosM = CFrame.new(11056.1445, -2001.6717, 10117.4493);
			elseif e[2] >= 2700 and e[2] <= 2724 then
				Mon = "High Disciple";
				Qdata = 1;
				Qname = "SubmergedQuest3";
				NameMon = "High Disciple";
				PosQ = CFrame.new(9636.52441, -1992.19507, 9609.52832);
				PosM = CFrame.new(9828.087890625, -1940.9089355469, 9693.0634765625);
			elseif e[2] >= 2725 and e[2] <= 2800 then
				Mon = "Grand Devotee";
				Qdata = 2;
				Qname = "SubmergedQuest3";
				NameMon = "Grand Devotee";
				PosQ = CFrame.new(9636.52441, -1992.19507, 9609.52832);
				PosM = CFrame.new(9557.5849609375, -1928.0404052734, 9859.1826171875);
			end;
		end;
	end;
MaterialMon = function()
		local e = {};
		e[2] = game.Players.LocalPlayer;
		e[1] = e[2].Character and e[2].Character:FindFirstChild("HumanoidRootPart");
		if not e[1] then
			return;
		end;
		shouldRequestEntrance = function(X, k)
				local p = {};
				p[4], p[1] = X, k;
				p[2] = (e[1].Position - p[4]).Magnitude;
				if p[2] >= p[1] then
					replicated.Remotes.CommF_:InvokeServer("requestEntrance", p[4]);
				end;
			end;
		if World1 then
			if SelectMaterial == "Angel Wings" then
				local X = {};
				MMon = {
						"Shanda",
						"Royal Squad",
						"Royal Soldier",
						"Wysper",
						"Thunder God",
					};
				MPos = CFrame.new(-4698, 845, -1912);
				SP = "Default";
				X[1] = Vector3.new(-4607.82275, 872.54248, -1667.55688);
				shouldRequestEntrance(X[1], 10000);
			elseif SelectMaterial == X[2]({ "Leather + Scrap Meta", "l" }) then
				MMon = { "Brute", "Pirate" };
				MPos = CFrame.new(-1145, 15, 4350);
				SP = "Default";
			elseif SelectMaterial == "Magma Ore" then
				MMon = { "Military Soldier", "Military Spy", "Magma Admiral" };
				MPos = CFrame.new(-5815, 84, 8820);
				SP = "Default";
			elseif SelectMaterial == "Fish Tail" then
				local X = {};
				MMon = { "Fishman Warrior", "Fishman Commando", "Fishman Lord" };
				MPos = CFrame.new(61123, 19, 1569);
				SP = "Default";
				X[1] = Vector3.new(61163.8515625, 5.342342376709, 1819.7841796875);
				shouldRequestEntrance(X[1], 17000);
			end;
		elseif World2 then
			if SelectMaterial == X[2]({ "Leather + Scrap Meta", "l" }) then
				MMon = { "Marine Captain" };
				MPos = CFrame.new(-2010.5059814453, 73.001159667969, -3326.6208496094);
				SP = "Default";
			elseif SelectMaterial == "Magma Ore" then
				MMon = { "Magma Ninja", "Lava Pirate" };
				MPos = CFrame.new(-5428, 78, -5959);
				SP = "Default";
			elseif SelectMaterial == "Ectoplasm" then
				local X = {};
				MMon = {
						"Ship Deckhand",
						"Ship Engineer",
						"Ship Steward",
						"Ship Officer",
					};
				MPos = CFrame.new(911.35827636719, 125.95812988281, 33159.5390625);
				SP = "Default";
				X[1] = Vector3.new(61163.8515625, 5.342342376709, 1819.7841796875);
				shouldRequestEntrance(X[1], 18000);
			elseif SelectMaterial == "Mystic Droplet" then
				MMon = { "Water Fighter" };
				MPos = CFrame.new(-3385, 239, -10542);
				SP = "Default";
			elseif SelectMaterial == "Radioactive Material" then
				MMon = { "Factory Staff" };
				MPos = CFrame.new(295, 73, -56);
				SP = "Default";
			elseif SelectMaterial == "Vampire Fang" then
				MMon = { "Vampire" };
				MPos = CFrame.new(-6033, 7, -1317);
				SP = "Default";
			end;
		elseif World3 then
			if SelectMaterial == "Scrap Metal" then
				MMon = { "Jungle Pirate", "Forest Pirate" };
				MPos = CFrame.new(-11975.78515625, 331.77340698242, -10620.030273438);
				SP = "Default";
			elseif SelectMaterial == "Fish Tail" then
				MMon = { "Fishman Raider", "Fishman Captain" };
				MPos = CFrame.new(-10993, 332, -8940);
				SP = "Default";
			elseif SelectMaterial == "Conjured Cocoa" then
				MMon = { X[2]({ "Chocolate Bar Battle", "r" }), "Cocoa Warrior" };
				MPos = CFrame.new(620.63446044922, 78.936447143555, -12581.369140625);
				SP = "Default";
			elseif SelectMaterial == "Dragon Scale" then
				MMon = { "Dragon Crew Archer", "Dragon Crew Warrior" };
				MPos = CFrame.new(6594, 383, 139);
				SP = "Default";
			elseif SelectMaterial == "Gunpowder" then
				MMon = { "Pistol Billionaire" };
				MPos = CFrame.new(-84.855690002441, 85.620613098145, 6132.0087890625);
				SP = "Default";
			elseif SelectMaterial == "Mini Tusk" then
				MMon = { "Mythological Pirate" };
				MPos = CFrame.new(-13545, 470, -6917);
				SP = "Default";
			elseif SelectMaterial == "Demonic Wisp" then
				MMon = { "Demonic Soul" };
				MPos = CFrame.new(-9495.6806640625, 453.58624267578, 5977.3486328125);
				SP = "Default";
			end;
		end;
	end;
QuestNeta = function()
		local X = {};
		X[2] = QuestCheck();
		return {
			[1] = Mon,
			[2] = Qdata,
			[3] = Qname,
			[4] = PosM,
			[5] = NameMon,
			[6] = PosQ,
		};
	end;
local H = ((loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-AnhTuansitink/Ui_vip_pro/refs/heads/main/ui.redz.txt")))()):MakeWindow({ Title = "TuanxAov Hub", SubTitle = "by real_AnhTuanAov", SaveFolder = "Redz | redz lib v5.lua" });
local b = Instance.new("ScreenGui");
b.Name = "ControlGUI";
b.Parent = game.CoreGui;
local m = Instance.new("ImageButton");
m.Size = UDim2.new(0, 70, 0, 70);
m.Position = UDim2.new(.15, 0, .15, 0);
m.Image = "rbxassetid://128528465536598";
m.BackgroundTransparency = 1;
m.Parent = b;
local G = Instance.new("UICorner");
G.CornerRadius = UDim.new(.25, 0);
G.Parent = m;
local l = Instance.new("UIStroke");
l.Thickness = 2;
l.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
l.Parent = m;
local X = {
		Color3.fromRGB(255, 0, 0),
		Color3.fromRGB(255, 127, 0),
		Color3.fromRGB(255, 255, 0),
		Color3.fromRGB(0, 255, 0),
		Color3.fromRGB(0, 255, 255),
		Color3.fromRGB(0, 0, 255),
		Color3.fromRGB(139, 0, 255),
	};
task.spawn(function()
	local o = 1;
	while true do
		l.Color = X[o];
		o = o % #X + 1;
		task.wait(.3);
	end;
end);
local v = true;
local f = nil;
local s = nil;
local C = nil;
local U = nil;
local function L(o)
	local h = o.Position - C;
	m.Position = UDim2.new(U.X.Scale, U.X.Offset + h.X, U.Y.Scale, U.Y.Offset + h.Y);
end;
m.InputBegan:Connect(function(o)
	if o.UserInputType == Enum.UserInputType.Touch or o.UserInputType == Enum.UserInputType.MouseButton1 then
		f = true;
		C = o.Position;
		U = m.Position;
		o.Changed:Connect(function()
			if o.UserInputState == Enum.UserInputState.End then
				f = false;
			end;
		end);
	end;
end);
m.InputChanged:Connect(function(o)
	if o.UserInputType == Enum.UserInputType.Touch or o.UserInputType == Enum.UserInputType.MouseMovement then
		s = o;
	end;
end);
(game:GetService("UserInputService")).InputChanged:Connect(function(o)
	if f and o == s then
		L(o);
	end;
end);
m.MouseButton1Click:Connect(function()
	v = not v;
	if v then
		H:Minimize(false);
	else
		H:Minimize(true);
	end;
end);
local K = H:MakeTab({ "Th\195\180ng Tin | Info", "info" });
local W = H:MakeTab({ "Farming", "home" });
local J = H:MakeTab({ "Auto Fishing", "rbxassetid://127664059821666" });
local P = H:MakeTab({ "Quest | Items", "swords" });
local p = H:MakeTab({ "Volcano Dojo", "cake" });
local w = H:MakeTab({ "Sea Event", "waves" });
local B = H:MakeTab({ "Race V4", "crown" });
local g = H:MakeTab({ "Raid Fruits", "cherry" });
local n = H:MakeTab({ "Fruits | Check Stock", "apple" });
local A = H:MakeTab({ "Teleport", "locate" });
local e = H:MakeTab({ "PvP,Player", "user" });
local N = H:MakeTab({ "Shop", "shoppingCart" });
local Y = H:MakeTab({ "Settings", "settings" });
local D = H:MakeTab({"Dungeon VIP", "swords"})
K:AddDiscordInvite({
	Name = "Tham Gia Discord",
	Description = "Link Sever Discord",
	Logo = "rbxassetid://128528465536598",
	Invite = "https://discord.gg/E2N7w35zkt",
});
local O = W:AddSection({ "Select Melee,Sword,Gun,Fruit" });
_G.SelectWeapon = "Melee";
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.SelectWeapon ~= "Melee" then
				if _G.SelectWeapon ~= "Sword" then
					if _G.SelectWeapon == "Gun" then
						for o, h in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if h.ToolTip == "Gun" then
								_G.SelectWeapon = h.Name;
							end;
						end;
					elseif _G.SelectWeapon == "Fruit" or _G.SelectWeapon == "Blox Fruit" then
						for o, h in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if h.ToolTip == "Blox Fruit" then
								_G.SelectWeapon = h.Name;
							end;
						end;
					end;
				else
					for o, h in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if h.ToolTip == "Sword" then
							_G.SelectWeapon = h.Name;
						end;
					end;
				end;
			else
				for o, h in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if h.ToolTip == "Melee" then
						_G.SelectWeapon = h.Name;
					end;
				end;
			end;
		end);
	end;
end);
local d = W:AddDropdown({
		Name = "Ch\225\187\141n C\195\180ng C\225\187\165",
		Description = "Ch\225\187\141n c\195\180ng c\225\187\165 b\225\186\161n mu\225\187\145n s\225\187\173 d\225\187\165ng",
		Options = {
			"Melee",
			"Sword",
			"Gun",
			"Blox Fruit",
		},
		Default = "Melee",
		Flag = "WeaponType",
		Callback = function(o)
			_G.SelectWeapon = o;
		end,
	});
local T = W:AddSection({ "Main Farm" });
W:AddToggle({
	Name = "Auto Farm Level 1-2650",
	Description = "T\225\187\177 \196\145\225\187\153ng farm c\225\186\165p",
	Default = false,
	Callback = function(o)
		_G.AutoFarm = o;
		StopTween(_G.AutoFarm);
	end,
});
spawn(function()
	while task.wait() do
		if _G.AutoFarm then
			pcall(function()
				local o = (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
				CheckQuest();
				if not string.find(o, NameMon) then
					StartBring = false;
					(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
				end;
				if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
					if (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if not string.find(o, "kissed") then
							if (game:GetService("Workspace")).Enemies:FindFirstChild(Mon) then
								for h, y in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
									if y:FindFirstChild("HumanoidRootPart") and (y:FindFirstChild("Humanoid") and (y.Humanoid.Health > 0 and y.Name == Mon)) then
										if not string.find(o, NameMon) then
											StartBring = false;
											(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
										else
											repeat
												task.wait();
												EquipWeapon(_G.SelectWeapon);
												AutoHaki();
												PosMon = y.HumanoidRootPart.CFrame;
												topos(y.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
												y.HumanoidRootPart.CanCollide = false;
												y.Humanoid.WalkSpeed = 0;
												y.Head.CanCollide = false;
												y.HumanoidRootPart.Size = Vector3.new(70, 70, 70);
												StartBring = true;
												MonFarm = y.Name;
												(game:GetService("VirtualUser")):CaptureController();
												(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 672));
											until not _G.AutoFarm or y.Humanoid.Health <= 0 or not y.Parent or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
										end;
									end;
								end;
							else
								TP1(CFrameMon);
								StartBring = false;
								if (game:GetService("ReplicatedStorage")):FindFirstChild(Mon) then
									TP1(((game:GetService("ReplicatedStorage")):FindFirstChild(Mon)).HumanoidRootPart.CFrame * CFrame.new(0, 20, 0));
								end;
							end;
						else
							for h, y in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
								if string.find(y.Name, "kissed Warrior") then
									if y:FindFirstChild("HumanoidRootPart") and (y:FindFirstChild("Humanoid") and y.Humanoid.Health > 0) then
										if string.find(o, NameMon) then
											repeat
												task.wait();
												EquipWeapon(_G.SelectWeapon);
												PosMon = y.HumanoidRootPart.CFrame;
												topos(y.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
												y.HumanoidRootPart.CanCollide = false;
												y.Humanoid.WalkSpeed = 0;
												y.Head.CanCollide = false;
												y.HumanoidRootPart.Size = Vector3.new(70, 70, 70);
												StartBring = true;
												MonFarm = y.Name;
												(game:GetService("VirtualUser")):CaptureController();
												(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 672));
											until not _G.AutoFarm or y.Humanoid.Health <= 0 or not y.Parent or (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest.Visible == false;
										else
											StartBring = false;
											(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
										end;
									end;
								else
									TP1(CFrameMon);
									StartBring = false;
									if (game:GetService("ReplicatedStorage")):FindFirstChild(Mon) then
										TP1(((game:GetService("ReplicatedStorage")):FindFirstChild(Mon)).HumanoidRootPart.CFrame * CFrame.new(0, 20, 0));
									end;
								end;
							end;
						end;
					end;
				else
					StartBring = false;
					if BypassTP then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 1500 then
							TP1(CFrameQuest);
						else
							TP1(CFrameQuest);
						end;
					else
						TP1(CFrameQuest);
					end;
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 20 then
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest);
					end;
				end;
			end);
		end;
	end;
end);
W:AddToggle({
	Title = "Farm Level New 2650 - 2750",
	Description = "C\195\160y C\225\186\165p \225\187\158 \196\144\225\186\163o M\225\187\155i",
	Value = false,
	Callback = function(o)
		_G.AutoFarmLevelNew = o;
		StopTween(_G.AutoFarmLevelNew);
	end,
});
function CheckQuestNew()
	local o = game.Players.LocalPlayer.Data.Level.Value;
	if o >= 2600 and o <= 2624 then
		MonNew = "Reef Bandit";
		LevelQuestNew = 1;
		NameQuestNew = "SubmergedQuest1";
		NameMonNew = "Reef Bandit";
		CFrameQuestNew = CFrame.new(10882.264, -2086.322, 10034.226);
		CFrameMonNew = CFrame.new(10736.6191, -2087.8439, 9338.4882);
	elseif o < 2625 or o > 2649 then
		if o >= 2650 and o <= 2674 then
			MonNew = "Sea Chanter";
			LevelQuestNew = 1;
			NameQuestNew = "SubmergedQuest2";
			NameMonNew = "Sea Chanter";
			CFrameQuestNew = CFrame.new(10882.264, -2086.322, 10034.226);
			CFrameMonNew = CFrame.new(10621.0342, -2087.844, 10102.0332);
		elseif o >= 2675 and o <= 2750 then
			MonNew = "Ocean Prophet";
			LevelQuestNew = 2;
			NameQuestNew = "SubmergedQuest2";
			NameMonNew = "Ocean Prophet";
			CFrameQuestNew = CFrame.new(10882.264, -2086.322, 10034.226);
			CFrameMonNew = CFrame.new(11056.1445, -2001.6717, 10117.4493);
		end;
	else
		MonNew = "Coral Pirate";
		LevelQuestNew = 2;
		NameQuestNew = "SubmergedQuest1";
		NameMonNew = "Coral Pirate";
		CFrameQuestNew = CFrame.new(10882.264, -2086.322, 10034.226);
		CFrameMonNew = CFrame.new(10965.1025, -2158.8842, 9177.2597);
	end;
end;
spawn(function()
	while task.wait() do
		if _G.AutoFarmLevelNew then
			pcall(function()
				local o = (game:GetService("Players")).LocalPlayer.PlayerGui.Main.Quest;
				CheckQuestNew();
				if o.Visible == false then
					StartBring = false;
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuestNew.Position).Magnitude > 20 then
						TP1(CFrameQuestNew);
					else
						(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("StartQuest", NameQuestNew, LevelQuestNew);
					end;
				else
					for h, y in pairs((game:GetService("Workspace")).Enemies:GetChildren()) do
						if y.Name == MonNew and (y:FindFirstChild("HumanoidRootPart") and (y:FindFirstChild("Humanoid") and y.Humanoid.Health > 0)) then
							if not string.find(o.Container.QuestTitle.Title.Text, NameMonNew) then
								StartBring = false;
								(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("AbandonQuest");
							else
								repeat
									task.wait();
									EquipWeapon(_G.SelectWeapon);
									AutoHaki();
									topos(y.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
									y.HumanoidRootPart.CanCollide = false;
									y.Humanoid.WalkSpeed = 0;
									y.Head.CanCollide = false;
									y.HumanoidRootPart.Size = Vector3.new(70, 70, 70);
									StartBring = true;
									MonFarmNew = y.Name;
									(game:GetService("VirtualUser")):CaptureController();
									(game:GetService("VirtualUser")):Button1Down(Vector2.new(1280, 672));
								until not _G.AutoFarmLevelNew or y.Humanoid.Health <= 0 or not y.Parent or o.Visible == false;
							end;
						end;
					end;
					if not (game:GetService("Workspace")).Enemies:FindFirstChild(MonNew) then
						TP1(CFrameMonNew);
						StartBring = false;
					end;
				end;
			end);
		end;
	end;
end);
W:AddToggle({
	Name = "Auto Kill Near | Mob Aura",
	Description = "\196\144\195\161nh Qu\195\161i G\225\186\167n",
	Default = false,
	Callback = function(o)
		_G.AutoNear = o;
		StopTween(_G.AutoNear);
	end,
});
spawn(function()
	while wait() do
		if _G.AutoNear then
			pcall(function()
				for o, h in pairs(game.Workspace.Enemies:GetChildren()) do
					if h:FindFirstChild("Humanoid") and (h:FindFirstChild("HumanoidRootPart") and (h.Humanoid.Health > 0 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - h.HumanoidRootPart.Position).Magnitude <= 5000)) then
						repeat
							wait(_G.Fast_Delay);
							StartBring = true;
							AutoHaki();
							EquipWeapon(_G.SelectWeapon);
							topos(h.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0));
							h.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
							h.HumanoidRootPart.Transparency = 1;
							h.Humanoid.JumpPower = 0;
							h.Humanoid.WalkSpeed = 0;
							h.HumanoidRootPart.CanCollide = false;
							FarmPos = h.HumanoidRootPart.CFrame;
							MonFarm = h.Name;
						until not _G.AutoNear or not h.Parent or h.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(h.Name);
						StartBring = false;
					end;
				end;
			end);
		end;
	end;
end);