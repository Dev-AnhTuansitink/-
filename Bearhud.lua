-- ts file was generated at discord.gg/25ms

print('Break')

function Notify(p1, p2, p3)
    local v4 = game.Players.LocalPlayer:WaitForChild('PlayerGui')
    local v5 = Instance.new('BlurEffect', game.Lighting)

    v5.Enabled = true
    v5.Size = 1000

    local v6 = Instance.new('ScreenGui', v4)
    local v7 = Instance.new('Frame', v6)
    local v8 = Instance.new('UICorner', v7)

    v7.BackgroundColor3 = Color3.new(0, 0, 0)
    v7.BackgroundTransparency = 0.5
    v7.Position = UDim2.new(0.5, -300, 0, 10)
    v7.Size = UDim2.new(0, 300, 0, 70)
    v7.AnchorPoint = Vector2.new(0.5, 0)
    v8.CornerRadius = UDim.new(0, 20)

    local v9 = Instance.new('ImageLabel', v7)

    v9.BackgroundTransparency = 1
    v9.Position = UDim2.new(0.5, -26, 0, -30)
    v9.Size = UDim2.new(0, 52, 0, 52)
    v9.Image = 'rbxassetid://9614132122'
    Instance.new('UICorner', v9).CornerRadius = UDim.new(0, 25)

    local function v19(p10, p11, p12, p13, p14, p15)
        local v16 = Instance.new('TextLabel', p10)

        v16.BackgroundTransparency = 1
        v16.Size = p12
        v16.Position = p11
        v16.AnchorPoint = Vector2.new(0.5, 0)
        v16.Font = p14
        v16.TextSize = p15
        v16.Text = p13

        local v17 = Color3.new(1, 1, 1)

        v16.TextWrapped = true
        v16.TextColor3 = v17

        local v18 = Enum.TextXAlignment.Center

        v16.TextYAlignment = Enum.TextYAlignment.Center
        v16.TextXAlignment = v18

        return v16
    end

    v19(v7, UDim2.new(0.5, 0, 0.1, 10), UDim2.new(0, 280, 0, 30), p1, Enum.Font.ArialBold, 25)
    v19(v7, UDim2.new(0.5, 0, 0.5, 13), UDim2.new(0, 280, 0, 20), p2, Enum.Font.SourceSans, 20)
    wait(0.1)
    v7:TweenPosition(UDim2.new(0.5, 0, 0, 10), 'Out', 'Sine', 0.5)
    wait(p3)
    v7:TweenPosition(UDim2.new(0.5, 0, 0, -150), 'Out', 'Sine', 0.5)
    wait(0.5)
    v5:Destroy()
    v6:Destroy()
end

Notify('Xeter Hub', 'Welcome to Xeter Hub', 3)
Notify('Xeter Hub', 'Everyone Goes to Discord to Communicate', 3)

getgenv().Team = getgenv().Team or 'Pirates'

repeat
    wait()
until game:IsLoaded() and game.Players.LocalPlayer:FindFirstChild('DataLoaded')

if game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('Main (minimal)') then
    repeat
        wait()
        game.ReplicatedStorage:WaitForChild('Remotes').CommF_:InvokeServer('SetTeam', getgenv().Team)
        task.wait(3)
    until not game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('Main (minimal)')
end

repeat
    task.wait()
until game.Players.LocalPlayer.PlayerGui:FindFirstChild('Main')

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local vu20 = task

require(game.ReplicatedStorage.Util.CameraShaker):Stop()

if not LPH_OBFUSCATED then
    function LPH_JIT_MAX(...)
        return ...
    end
    function LPH_NO_VIRTUALIZE(...)
        return ...
    end
    function LPH_NO_UPVALUES(...)
        return ...
    end
end

loadstring(game:HttpGet('https://raw.githubusercontent.com/Levnoskider/Loader/refs/heads/main/why'))()

local v21, v22, v23 = pairs(getconnections(game:GetService('Players').LocalPlayer.Idled))

while true do
    local v24

    v23, v24 = v21(v22, v23)

    if v23 == nil then
        break
    end

    v24:Disable()
end

local v25 = loadstring(game:HttpGet('https://github.com/LuaCrack/Library/releases/download/Ui/LibraryRelzXeter.luau'))()

if game.PlaceId ~= 2753915549 then
    if game.PlaceId ~= 4442272183 then
        if game.PlaceId == 7449423635 then
            World3 = true
        end
    else
        World2 = true
    end
else
    World1 = true
end

Instance.new('Folder', workspace).Name = 'EnemySpawns'

local v26, v27, v28 = pairs(workspace._WorldOrigin.EnemySpawns:GetChildren())

while true do
    local v29, v30 = v26(v27, v28)

    if v29 == nil then
        break
    end

    v28 = v29

    if v30:IsA('Part') then
        local v31 = v30:Clone()
        local v32 = string.gsub(v30.Name, 'Lv. ', '')
        local v33 = string.gsub(v32, '[%[%]]', '')
        local v34 = string.gsub(v33, '%d+', '')

        v31.Name = string.gsub(v34, '%s+', '')
        v31.Parent = workspace.EnemySpawns
        v31.Anchored = true
    end
end

local v35, v36, v37 = pairs(game:GetService('Workspace').Enemies:GetChildren())

while true do
    local v38, v39 = v35(v36, v37)

    if v38 == nil then
        break
    end

    v37 = v38

    if v39:IsA('Model') and v39:FindFirstChild('HumanoidRootPart') then
        print(v39.HumanoidRootPart.Parent)

        local v40 = v39.HumanoidRootPart:Clone()
        local v41 = string.gsub(v39.Name, 'Lv. ', '')
        local v42 = string.gsub(v41, '[%[%]]', '')
        local v43 = string.gsub(v42, '%d+', '')
        local v44 = string.gsub(v43, '%s+', '')

        print(v44)

        v40.Name = v44
        v40.Parent = workspace.EnemySpawns
        v40.Anchored = true
    end
end

local v45, v46, v47 = pairs(game.ReplicatedStorage:GetChildren())

while true do
    local v48, v49 = v45(v46, v47)

    if v48 == nil then
        break
    end

    v47 = v48

    if v49:IsA('Model') and v49:FindFirstChild('HumanoidRootPart') then
        local v50 = v49.HumanoidRootPart:Clone()
        local v51 = string.gsub(v49.Name, 'Lv. ', '')
        local v52 = string.gsub(v51, '[%[%]]', '')
        local v53 = string.gsub(v52, '%d+', '')
        local v54 = string.gsub(v53, '%s+', '')

        print(v54)

        v50.Name = v54
        v50.Parent = workspace.EnemySpawns
        v50.Anchored = true
    end
end

local function vu106()
    local v55 = game:GetService('Players').LocalPlayer.Data.Level.Value

    if 1 <= v55 and v55 <= 9 then
        if tostring(game.Players.LocalPlayer.Team) ~= 'Marines' then
            if tostring(game.Players.LocalPlayer.Team) == 'Pirates' then
                MobName = 'Bandit'
                Mon = 'Bandit'
                QuestName = 'BanditQuest1'
                QuestLevel = 1
                NPCPosition = CFrame.new(1059.99731, 16.9222069, 1549.28162, -0.95466274, 7.29721794e-9, 0.297689587, 1.05190106e-8, 1, 9.22064114e-9, -0.297689587, 1.19340022e-8, -0.95466274)
            end
        else
            MobName = 'Trainee'
            QuestName = 'MarineQuest'
            QuestLevel = 1
            Mon = 'Trainee'
            NPCPosition = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-8, -0.667371571, 4.32403588e-8, 1, -1.07884304e-7, 0.667371571, -1.09201515e-7, -0.744724929)
        end

        return {
            QuestLevel,
            NPCPosition,
            MobName,
            QuestName,
            LevelRequire,
            Mon,
            MobCFrame,
        }
    end
    if 210 <= v55 and v55 <= 249 then
        MobName = 'Dangerous Prisoner'
        QuestName = 'PrisonerQuest'
        QuestLevel = 2
        Mon = 'Dangerous Prisoner'
        NPCPosition = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-9, -0.995993316, 1.60817859e-9, 1, -5.16744869e-9, 0.995993316, -2.06384709e-9, -0.0894274712)

        local v56 = string.gsub(MobName, 'Lv. ', '')
        local v57 = string.gsub(v56, '[%[%]]', '')
        local v58 = string.gsub(v57, '%d+', '')
        local v59 = string.gsub(v58, '%s+', '')
        local v60, v61, v62 = pairs(game.workspace.EnemySpawns:GetChildren())
        local v63 = {}

        while true do
            local v64

            v62, v64 = v60(v61, v62)

            if v62 == nil then
                break
            end
            if v64.Name == v59 then
                table.insert(v63, v64.CFrame)
            end

            MobCFrame = v63
        end

        return {
            QuestLevel,
            NPCPosition,
            MobName,
            QuestName,
            LevelRequire,
            Mon,
            MobCFrame,
        }
    end

    local v65 = require(game:GetService('ReplicatedStorage').GuideModule)
    local v66 = require(game:GetService('ReplicatedStorage').Quests)
    local v67, v68, v69 = pairs(v65.Data.NPCList)

    while true do
        local v70

        v69, v70 = v67(v68, v69)

        if v69 == nil then
            break
        end

        local v71, v72, v73 = pairs(v70.Levels)
        local v74 = v69

        while true do
            local v75

            v73, v75 = v71(v72, v73)

            if v73 == nil then
                break
            end
            if v75 <= v55 then
                if not LevelRequire then
                    LevelRequire = 0
                end
                if LevelRequire < v75 then
                    NPCPosition = v74.CFrame
                    QuestLevel = v73
                    LevelRequire = v75
                end
                if #v70.Levels == 3 and QuestLevel == 3 then
                    NPCPosition = v74.CFrame
                    QuestLevel = 2
                    LevelRequire = v70.Levels[2]
                end
            end
        end
    end

    if 375 <= v55 and (v55 <= 399 and (_G.Level and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    end
    if 400 <= v55 and (v55 <= 449 and (_G.Level and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    end

    local v76, v77, v78 = pairs(v66)

    while true do
        local v79

        v78, v79 = v76(v77, v78)

        if v78 == nil then
            break
        end

        local v80, v81, v82 = pairs(v79)
        local v83 = v78

        while true do
            local v84

            v82, v84 = v80(v81, v82)

            if v82 == nil then
                break
            end
            if v84.LevelReq == LevelRequire and v83 ~= 'CitizenQuest' then
                QuestName = v83

                local v85, v86, v87 = pairs(v84.Task)

                while true do
                    local v88

                    v87, v88 = v85(v86, v87)

                    if v87 == nil then
                        break
                    end

                    MobName = v87
                    Mon = string.split(v87, ' [Lv. ' .. v84.LevelReq .. ']')[1]
                end
            end
        end
    end

    if QuestName ~= 'MarineQuest2' then
        if QuestName ~= 'ImpelQuest' then
            if QuestName ~= 'SkyExp1Quest' then
                if QuestName == 'Area2Quest' and QuestLevel == 2 then
                    QuestName = 'Area2Quest'
                    QuestLevel = 1
                    MobName = 'Swan Pirate'
                    Mon = 'Swan Pirate'
                    LevelRequire = 775
                end
            elseif QuestLevel ~= 1 then
                if QuestLevel == 2 then
                    NPCPosition = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                end
            else
                NPCPosition = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, 0, -0.0871884301, 0, 1, 0, 0.0871884301, 0, 0.996191859)
            end
        else
            QuestName = 'PrisonerQuest'
            QuestLevel = 2
            MobName = 'Dangerous Prisoner'
            Mon = 'Dangerous Prisoner'
            LevelRequire = 210
            NPCPosition = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
        end
    else
        QuestName = 'MarineQuest2'
        QuestLevel = 1
        MobName = 'Chief Petty Officer'
        Mon = 'Chief Petty Officer'
        LevelRequire = 120
    end

    MobName = MobName:sub(1, #MobName)

    if not MobName:find('Lv') then
        local v89, v90, v91 = pairs(game:GetService('Workspace').Enemies:GetChildren())

        while true do
            local v92

            v91, v92 = v89(v90, v91)

            if v91 == nil then
                break
            end

            MonLV = string.match(v92.Name, '%d+')

            if v92.Name:find(MobName) and (#v92.Name > #MobName and tonumber(MonLV) <= v55 + 50) then
                MobName = v92.Name
            end
        end
    end
    if not MobName:find('Lv') then
        local v93, v94, v95 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

        while true do
            local v96

            v95, v96 = v93(v94, v95)

            if v95 == nil then
                break
            end

            MonLV = string.match(v96.Name, '%d+')

            if v96.Name:find(MobName) and (#v96.Name > #MobName and tonumber(MonLV) <= v55 + 50) then
                MobName = v96.Name
                Mon = a
            end
        end
    end

    local v97 = string.gsub(MobName, 'Lv. ', '')
    local v98 = string.gsub(v97, '[%[%]]', '')
    local v99 = string.gsub(v98, '%d+', '')
    local v100 = string.gsub(v99, '%s+', '')
    local v101, v102, v103 = pairs(game.workspace.EnemySpawns:GetChildren())
    local v104 = {}

    while true do
        local v105

        v103, v105 = v101(v102, v103)

        if v103 == nil then
            break
        end
        if v105.Name ~= v100 then
            table.insert(v104, nil)
        else
            table.insert(v104, v105.CFrame)
        end

        MobCFrame = v104
    end

    return {
        QuestLevel,
        NPCPosition,
        MobName,
        QuestName,
        LevelRequire,
        Mon,
        MobCFrame,
        MonQ,
        MobCFrameNuber,
    }
end

function Hop()
    local vu107 = game.PlaceId
    local vu108 = {}
    local vu109 = ''
    local vu110 = os.date('!*t').hour

    function TPReturner()
        local v111

        if vu109 ~= '' then
            v111 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. vu107 .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. vu109))
        else
            v111 = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. vu107 .. '/servers/Public?sortOrder=Asc&limit=100'))
        end
        if v111.nextPageCursor and (v111.nextPageCursor ~= 'null' and v111.nextPageCursor ~= nil) then
            vu109 = v111.nextPageCursor
        end

        local v112, v113, v114 = pairs(v111.data)
        local v115 = 0

        while true do
            local v116

            v114, v116 = v112(v113, v114)

            if v114 == nil then
                break
            end

            local v117 = true
            local vu118 = tostring(v116.id)

            if tonumber(v116.maxPlayers) > tonumber(v116.playing) then
                local v119, v120, v121 = pairs(vu108)

                while true do
                    local v122

                    v121, v122 = v119(v120, v121)

                    if v121 == nil then
                        break
                    end
                    if v115 == 0 then
                        if tonumber(vu110) ~= tonumber(v122) then
                            pcall(function()
                                vu108 = {}

                                table.insert(vu108, vu110)
                            end)
                        end
                    elseif vu118 == tostring(v122) then
                        v117 = false
                    end

                    v115 = v115 + 1
                end

                if v117 == true then
                    table.insert(vu108, vu118)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService('TeleportService'):TeleportToPlaceInstance(vu107, vu118, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport()
        while wait() do
            pcall(function()
                TPReturner()

                if vu109 ~= '' then
                    TPReturner()
                end
            end)
        end
    end

    Teleport()
end
function UpdateDevilChams()
    local v123, v124, v125 = pairs(game.Workspace:GetChildren())

    while true do
        local vu126

        v125, vu126 = v123(v124, v125)

        if v125 == nil then
            break
        end

        pcall(function()
            if DevilFruitESP then
                if vu126:FindFirstChild('Handle') then
                    if vu126.Handle:FindFirstChild('NameEsp' .. Number) then
                        vu126.Handle['NameEsp' .. Number].TextLabel.Text = vu126.Name .. '   \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - vu126.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local v127 = Instance.new('BillboardGui', vu126.Handle)

                        v127.Name = 'NameEsp' .. Number
                        v127.ExtentsOffset = Vector3.new(0, 1, 0)
                        v127.Size = UDim2.new(1, 200, 1, 30)
                        v127.Adornee = vu126.Handle
                        v127.AlwaysOnTop = true

                        local v128 = Instance.new('TextLabel', v127)

                        v128.Font = Enum.Font.GothamSemibold
                        v128.FontSize = 'Size14'
                        v128.TextWrapped = true
                        v128.Size = UDim2.new(1, 0, 1, 0)
                        v128.TextYAlignment = 'Top'
                        v128.BackgroundTransparency = 1
                        v128.TextStrokeTransparency = 0.5
                        v128.TextColor3 = Color3.fromRGB(255, 255, 255)
                        v128.Text = vu126.Name .. ' \n' .. round((game:GetService('Players').LocalPlayer.Character.Head.Position - vu126.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                end
            elseif vu126.Handle:FindFirstChild('NameEsp' .. Number) then
                vu126.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end)
    end
end
function UpdateBerriesESP()
    local v129, v130, v131 = pairs(game:GetService('CollectionService'):GetTagged('BerryBush'))

    while true do
        local vu132

        v131, vu132 = v129(v130, v131)

        if v131 == nil then
            break
        end

        pcall(function()
            local v133 = vu132
            local v134, v135, v136 = pairs(v133:GetAttributes())

            while true do
                local v137

                v136, v137 = v134(v135, v136)

                if v136 == nil then
                    break
                end
                if v137 then
                    if not vu132.Parent:FindFirstChild('BerryESP') then
                        local v138 = Instance.new('BillboardGui', vu132.Parent)

                        v138.Name = 'BerryESP'
                        v138.ExtentsOffset = Vector3.new(0, 2, 0)
                        v138.Size = UDim2.new(1, 200, 1, 30)
                        v138.Adornee = vu132.Parent
                        v138.AlwaysOnTop = true

                        local v139 = Instance.new('TextLabel', v138)

                        v139.Font = Enum.Font.GothamSemibold
                        v139.TextSize = 14
                        v139.TextWrapped = true
                        v139.Size = UDim2.new(1, 0, 1, 0)
                        v139.TextYAlignment = Enum.TextYAlignment.Top
                        v139.BackgroundTransparency = 1
                        v139.TextStrokeTransparency = 0.5
                        v139.TextColor3 = Color3.fromRGB(255, 255, 0)
                        v139.Text = v137
                    end
                    if vu132.Parent:FindFirstChild('BerryESP') and (game.Players.LocalPlayer and game.Players.LocalPlayer.Character) and game.Players.LocalPlayer.Character:FindFirstChild('Head') then
                        vu132.Parent.BerryESP.TextLabel.Text = v137 .. '\n' .. math.floor((vu132.Parent:GetPivot().Position - game.Players.LocalPlayer.Character.Head.Position).Magnitude) .. 'm'
                    end
                elseif vu132.Parent:FindFirstChild('NameEsp') then
                    vu132.Parent:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end
function isnil(p140)
    return p140 == nil
end

local function vu142(p141)
    return math.floor(tonumber(p141) + 0.5)
end

Number = math.random(1, 1000000)

function UpdatePlayerChams()
    local v143, v144, v145 = pairs(game:GetService('Players'):GetChildren())

    while true do
        local vu146

        v145, vu146 = v143(v144, v145)

        if v145 == nil then
            break
        end

        pcall(function()
            if not isnil(vu146.Character) then
                if ESPPlayer then
                    if isnil(vu146.Character.Head) or vu146.Character.Head:FindFirstChild('NameEsp' .. Number) then
                        vu146.Character.Head['NameEsp' .. Number].TextLabel.Text = vu146.Name .. ' | ' .. vu142((game:GetService('Players').LocalPlayer.Character.Head.Position - vu146.Character.Head.Position).Magnitude / 3) .. ' Distance\nHealth: ' .. vu142(vu146.Character.Humanoid.Health * 100 / vu146.Character.Humanoid.MaxHealth) .. '%'
                    else
                        local v147 = Instance.new('BillboardGui', vu146.Character.Head)

                        v147.Name = 'NameEsp' .. Number
                        v147.ExtentsOffset = Vector3.new(0, 1, 0)
                        v147.Size = UDim2.new(1, 200, 1, 30)
                        v147.Adornee = vu146.Character.Head
                        v147.AlwaysOnTop = true

                        local v148 = Instance.new('TextLabel', v147)

                        v148.Font = 'Code'
                        v148.FontSize = 'Size14'
                        v148.TextWrapped = true
                        v148.Text = vu146.Name .. ' \n' .. vu142((game:GetService('Players').LocalPlayer.Character.Head.Position - vu146.Character.Head.Position).Magnitude / 3) .. ' Distance'
                        v148.Size = UDim2.new(1, 0, 1, 0)
                        v148.TextYAlignment = 'Top'
                        v148.BackgroundTransparency = 1
                        v148.TextStrokeTransparency = 0.5

                        if vu146.Team ~= game.Players.LocalPlayer.Team then
                            v148.TextColor3 = Color3.new(0, 134, 139)
                        else
                            v148.TextColor3 = Color3.new(0, 134, 139)
                        end
                    end
                elseif vu146.Character.Head:FindFirstChild('NameEsp' .. Number) then
                    vu146.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
                end
            end
        end)
    end
end
function UpdateDevilChams()
    local v149, v150, v151 = pairs(game.Workspace:GetChildren())

    while true do
        local vu152

        v151, vu152 = v149(v150, v151)

        if v151 == nil then
            break
        end

        pcall(function()
            if DevilFruitESP then
                if vu152:FindFirstChild('Handle') then
                    if vu152.Handle:FindFirstChild('NameEsp' .. Number) then
                        vu152.Handle['NameEsp' .. Number].TextLabel.Text = vu152.Name .. '   \n' .. vu142((game:GetService('Players').LocalPlayer.Character.Head.Position - vu152.Handle.Position).Magnitude / 3) .. ' Distance'
                    else
                        local v153 = Instance.new('BillboardGui', vu152.Handle)

                        v153.Name = 'NameEsp' .. Number
                        v153.ExtentsOffset = Vector3.new(0, 1, 0)
                        v153.Size = UDim2.new(1, 200, 1, 30)
                        v153.Adornee = vu152.Handle
                        v153.AlwaysOnTop = true

                        local v154 = Instance.new('TextLabel', v153)

                        v154.Font = Enum.Font.GothamSemibold
                        v154.FontSize = 'Size14'
                        v154.TextWrapped = true
                        v154.Size = UDim2.new(1, 0, 1, 0)
                        v154.TextYAlignment = 'Top'
                        v154.BackgroundTransparency = 1
                        v154.TextStrokeTransparency = 0.5
                        v154.TextColor3 = Color3.fromRGB(255, 255, 255)
                        v154.Text = vu152.Name .. ' \n' .. vu142((game:GetService('Players').LocalPlayer.Character.Head.Position - vu152.Handle.Position).Magnitude / 3) .. ' Distance'
                    end
                end
            elseif vu152.Handle:FindFirstChild('NameEsp' .. Number) then
                vu152.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
            end
        end)
    end
end
function UpdateIslandMirageESP()
    local v155, v156, v157 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

    while true do
        local vu158

        v157, vu158 = v155(v156, v157)

        if v157 == nil then
            break
        end

        pcall(function()
            if MirageIslandESP then
                if vu158.Name == 'Mirage Island' then
                    if vu158:FindFirstChild('NameEsp') then
                        vu158.NameEsp.TextLabel.Text = vu158.Name .. '   \n' .. vu142((game:GetService('Players').LocalPlayer.Character.Head.Position - vu158.Position).Magnitude / 3) .. ' M'
                    else
                        local v159 = Instance.new('BillboardGui', vu158)

                        v159.Name = 'NameEsp'
                        v159.ExtentsOffset = Vector3.new(0, 1, 0)
                        v159.Size = UDim2.new(1, 200, 1, 30)
                        v159.Adornee = vu158
                        v159.AlwaysOnTop = true

                        local v160 = Instance.new('TextLabel', v159)

                        v160.Font = 'Code'
                        v160.FontSize = 'Size14'
                        v160.TextWrapped = true
                        v160.Size = UDim2.new(1, 0, 1, 0)
                        v160.TextYAlignment = 'Top'
                        v160.BackgroundTransparency = 1
                        v160.TextStrokeTransparency = 0.5
                        v160.TextColor3 = Color3.fromRGB(255, 255, 255)
                    end
                end
            elseif vu158:FindFirstChild('NameEsp') then
                vu158:FindFirstChild('NameEsp'):Destroy()
            end
        end)
    end
end
function UpdateIslandESPKitsune()
    local v161, v162, v163 = pairs(game:GetService('Workspace').Map.KitsuneIsland.ShrineActive:GetChildren())

    while true do
        local vu164

        v163, vu164 = v161(v162, v163)

        if v163 == nil then
            break
        end

        pcall(function()
            if IslandESP then
                if vu164.Name ~= 'NeonShrinePart' then
                    if vu164:FindFirstChild('IslandESP') then
                        vu164.IslandESP.TextLabel.Text = 'Kitsune Island'
                    else
                        local v165 = Instance.new('BillboardGui', vu164)

                        v165.Name = 'IslandESP'
                        v165.ExtentsOffset = Vector3.new(0, 1, 0)
                        v165.Size = UDim2.new(1, 200, 1, 30)
                        v165.Adornee = vu164
                        v165.AlwaysOnTop = true

                        local v166 = Instance.new('TextLabel', v165)

                        v166.Font = 'Code'
                        v166.FontSize = 'Size14'
                        v166.TextWrapped = true
                        v166.Size = UDim2.new(1, 0, 1, 0)
                        v166.TextYAlignment = 'Top'
                        v166.BackgroundTransparency = 1
                        v166.TextStrokeTransparency = 0.5
                        v166.TextColor3 = Color3.fromRGB(80, 245, 245)
                        v166.Text = 'Kitsune Island'
                    end
                end
            elseif vu164:FindFirstChild('IslandESP') then
                vu164:FindFirstChild('IslandESP'):Destroy()
            end
        end)
    end
end
function InfAb()
    if InfAbility then
        if not game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Agility') then
            local v167 = Instance.new('ParticleEmitter')

            v167.Acceleration = Vector3.new(0, 0, 0)
            v167.Archivable = true
            v167.Drag = 20
            v167.EmissionDirection = Enum.NormalId.Top
            v167.Enabled = true
            v167.Lifetime = NumberRange.new(0, 0)
            v167.LightInfluence = 0
            v167.LockedToPart = true
            v167.Name = 'Agility'
            v167.Rate = 500

            local v168 = {
                NumberSequenceKeypoint.new(0, 0),
                NumberSequenceKeypoint.new(1, 4),
            }

            v167.Size = NumberSequence.new(v168)
            v167.RotSpeed = NumberRange.new(9999, 99999)
            v167.Rotation = NumberRange.new(0, 0)
            v167.Speed = NumberRange.new(30, 30)
            v167.SpreadAngle = Vector2.new(0, 0, 0, 0)
            v167.Texture = ''
            v167.VelocityInheritance = 0
            v167.ZOffset = 2
            v167.Transparency = NumberSequence.new(0)
            v167.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0))
            v167.Parent = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
        end
    elseif game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Agility') then
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Agility'):Destroy()
    end
end

local vu169 = game:GetService('Players').LocalPlayer
local vu170 = vu169.Character.Energy.Value

function infinitestam()
    vu169.Character.Energy.Changed:connect(function()
        if InfiniteEnergy then
            vu169.Character.Energy.Value = vu170
        end
    end)
end

spawn(function()
    pcall(function()
        while wait(0.1) do
            if InfiniteEnergy then
                wait(0.1)

                vu170 = vu169.Character.Energy.Value

                infinitestam()
            end
        end
    end)
end)

function NoDodgeCool()
    if nododgecool then
        local v171 = next
        local v172, v173 = getgc()

        while true do
            local v174

            v173, v174 = v171(v172, v173)

            if v173 == nil then
                break
            end
            if game:GetService('Players').LocalPlayer.Character.Dodge and typeof(v174) == 'function' and getfenv(v174).script == game:GetService('Players').LocalPlayer.Character.Dodge then
                local v175 = next
                local v176, v177 = getupvalues(v174)

                while true do
                    local v178

                    v177, v178 = v175(v176, v177)

                    if v177 == nil then
                        break
                    end
                    if tostring(v178) == '0.1' then
                        local v179 = v177

                        repeat
                            wait(0.1)
                            setupvalue(v174, v177, 0)
                        until not nododgecool

                        v177 = v179
                    end
                end
            end
        end
    end
end

local vu180 = 'indq9pdnq0'
local vu181 = 'Fpjq90pdfhipqdm'
local vu182 = nil
local vu183 = nil

RunService = game:GetService('RunService')
speaker = game.Players.LocalPlayer
vehicleflyspeed = 5

function getRoot(p184)
    return p184:FindFirstChild('HumanoidRootPart') or (p184:FindFirstChild('Torso') or p184:FindFirstChild('UpperTorso'))
end

local function vu187(pu185)
    pcall(function()
        FLYING = false

        local v186 = getRoot(pu185.Character)

        v186:FindFirstChild(vu180):Destroy()
        v186:FindFirstChild(vu181):Destroy()

        pu185.Character:FindFirstChildWhichIsA('Humanoid').PlatformStand = false

        vu182:Disconnect()
        vu183:Disconnect()
    end)
end
local function vu204(pu188, pu189)
    vu187(pu188)

    FLYING = true

    local vu190 = getRoot(pu188.Character)
    local vu191 = workspace.CurrentCamera
    local vu192 = Vector3.new()
    local vu193 = Vector3.new(0, 0, 0)
    local vu194 = Vector3.new(9000000000, 9000000000, 9000000000)
    local vu195 = require(pu188.PlayerScripts:WaitForChild('PlayerModule'):WaitForChild('ControlModule'))
    local v196 = Instance.new('BodyVelocity')

    v196.Name = vu180
    v196.Parent = vu190
    v196.MaxForce = vu193
    v196.Velocity = vu193

    local v197 = Instance.new('BodyGyro')

    v197.Name = vu181
    v197.Parent = vu190
    v197.MaxTorque = vu194
    v197.P = 1000
    v197.D = 50
    vu182 = pu188.CharacterAdded:Connect(function()
        local v198 = Instance.new('BodyVelocity')

        v198.Name = vu180
        v198.Parent = vu190
        v198.MaxForce = vu193
        v198.Velocity = vu193

        local v199 = Instance.new('BodyGyro')

        v199.Name = vu181
        v199.Parent = vu190
        v199.MaxTorque = vu194
        v199.P = 1000
        v199.D = 50
    end)
    vu183 = RunService.RenderStepped:Connect(function()
        vu190 = getRoot(pu188.Character)
        vu191 = workspace.CurrentCamera

        if pu188.Character:FindFirstChildWhichIsA('Humanoid') and vu190 and (vu190:FindFirstChild(vu180) and vu190:FindFirstChild(vu181)) then
            local v200 = pu188.Character:FindFirstChildWhichIsA('Humanoid')
            local v201 = vu190:FindFirstChild(vu180)
            local v202 = vu190:FindFirstChild(vu181)

            v201.MaxForce = vu194
            v202.MaxTorque = vu194

            if not pu189 then
                v200.PlatformStand = true
            end

            v202.CFrame = vu191.CoordinateFrame
            v201.Velocity = vu192

            local v203 = vu195:GetMoveVector()

            if v203.X > 0 then
                v201.Velocity = v201.Velocity + vu191.CFrame.RightVector * (v203.X * ((pu189 and vehicleflyspeed or iyflyspeed) * 50))
            end
            if v203.X < 0 then
                v201.Velocity = v201.Velocity + vu191.CFrame.RightVector * (v203.X * ((pu189 and vehicleflyspeed or iyflyspeed) * 50))
            end
            if v203.Z > 0 then
                v201.Velocity = v201.Velocity - vu191.CFrame.LookVector * (v203.Z * ((pu189 and vehicleflyspeed or iyflyspeed) * 50))
            end
            if v203.Z < 0 then
                v201.Velocity = v201.Velocity - vu191.CFrame.LookVector * (v203.Z * ((pu189 and vehicleflyspeed or iyflyspeed) * 50))
            end
            if v201.Velocity.Magnitude > 350 then
                v201.Velocity = v201.Velocity.Unit * 350
            end
        end
    end)
end

function EquipWeapon(p205)
    if not Nill and game.Players.LocalPlayer.Backpack:FindFirstChild(p205) then
        Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(p205)

        wait(0.1)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
    end
end
function GetWeaponInventory(p206)
    local v207, v208, v209 = pairs(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory'))

    while true do
        local v210

        v209, v210 = v207(v208, v209)

        if v209 == nil then
            break
        end
        if type(v210) == 'table' and (v210.Type == 'Sword' and v210.Name == p206) then
            return true
        end
    end

    return false
end
function GetMaterial(p211)
    local v212, v213, v214 = pairs(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory'))

    while true do
        local v215

        v214, v215 = v212(v213, v214)

        if v214 == nil then
            break
        end
        if type(v215) == 'table' and (v215.Type == 'Material' and v215.Name == p211) then
            return v215.Count
        end
    end

    return 0
end

local vu216 = false

function WaitHRP(p217)
    if p217 then
        return p217.Character:WaitForChild('HumanoidRootPart', 9)
    end
end
function CheckNearestTeleporter(p218)
    local v219 = p218.Position
    local v220 = math.huge
    local v221 = nil
    local v222 = game.PlaceId
    local v223 = {}
    local v224

    if v222 == 2753915549 then
        v224 = {
            Sky3 = Vector3.new(-7894, 5547, -380),
            Sky3Exit = Vector3.new(-4607, 874, -1667),
            UnderWater = Vector3.new(61163, 11, 1819),
            UnderwaterExit = Vector3.new(4050, -1, -1814),
        }
    elseif v222 == 4442272183 then
        v224 = {
            ['Swan Mansion'] = Vector3.new(-390, 332, 673),
            ['Swan Room'] = Vector3.new(2285, 15, 905),
            ['Cursed Ship'] = Vector3.new(923, 126, 32852),
            ['Zombie Island'] = Vector3.new(-6509, 83, -133),
        }
    else
        v224 = v222 == 7449423635 and {
            ['Floating Turtle'] = Vector3.new(-12462, 375, -7552),
            ['Hydra Island'] = Vector3.new(5662, 1013, -335),
            Mansion = Vector3.new(-12462, 375, -7552),
            Castle = Vector3.new(-5036, 315, -3179),
            ['Beautiful Pirate'] = Vector3.new(5319, 23, -93),
            ['Beautiful Room'] = Vector3.new(5314.58203, 22.5364361, -125.942276, 1, 2.14762768e-8, -1.99111154e-13, -2.14762768e-8, 1, -3.0510602e-8, 1.98455903e-13, 3.0510602e-8, 1),
            ['Temple of Time'] = Vector3.new(28286, 14897, 103),
        } or v223
    end

    local v225, v226, v227 = pairs(v224)

    while true do
        local v228

        v227, v228 = v225(v226, v227)

        if v227 == nil then
            break
        end

        local v229 = (v228 - v219).Magnitude

        if v229 < v220 then
            v221 = v228
            v220 = v229
        end
    end

    if v220 <= (v219 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
        return v221
    end
end
function requestEntrance(p230)
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer('requestEntrance', p230)

    local v231 = game.Players.LocalPlayer.Character.HumanoidRootPart

    v231.CFrame = v231.CFrame + Vector3.new(0, 50, 0)

    task.wait(0.5)
end
function topos(pu232)
    local vu233 = game.Players.LocalPlayer

    if vu233.Character and vu233.Character.Humanoid.Health > 0 and vu233.Character:FindFirstChild('HumanoidRootPart') then
        if not pu232 then
            return
        end

        local v234 = (pu232.Position - vu233.Character.HumanoidRootPart.Position).Magnitude
        local v235 = CheckNearestTeleporter(pu232)
        local _ = getgenv().TweenSpeed

        if v235 then
            requestEntrance(v235)
            task.wait(0.2)

            v234 = (pu232.Position - vu233.Character.HumanoidRootPart.Position).Magnitude
        end
        if not vu233.Character:FindFirstChild('PartTele') then
            local vu236 = Instance.new('Part', vu233.Character)

            vu236.Size = Vector3.new(10, 1, 10)
            vu236.Name = 'PartTele'
            vu236.Anchored = true
            vu236.Transparency = 1
            vu236.CanCollide = false
            vu236.CFrame = WaitHRP(vu233).CFrame

            local v237 = vu236

            vu236.GetPropertyChangedSignal(v237, 'CFrame'):Connect(function()
                if vu216 then
                    task.wait()

                    if vu233.Character and vu233.Character:FindFirstChild('HumanoidRootPart') then
                        local v238 = vu236.CFrame

                        WaitHRP(vu233).CFrame = CFrame.new(v238.Position.X, pu232.Position.Y, v238.Position.Z)
                    end
                end
            end)
        end

        vu216 = true

        local v239 = getgenv().TweenSpeed

        if v234 <= 300 then
            v239 = v239 * 4
        end

        CFrame.new(pu232.Position.X, pu232.Position.Y, pu232.Position.Z)

        local v240 = game:GetService('TweenService'):Create(vu233.Character.PartTele, TweenInfo.new(v234 / v239, Enum.EasingStyle.Linear), {CFrame = pu232})

        v240:Play()
        v240.Completed:Connect(function(p241)
            if p241 == Enum.PlaybackState.Completed then
                if vu233.Character:FindFirstChild('PartTele') then
                    vu233.Character.PartTele:Destroy()
                end

                vu216 = false
            end
        end)
    end
end

local vu242 = game.Players.LocalPlayer
local _ = vu242.Character.HumanoidRootPart

Players = game.Players
recentlySpawn = 0

function dist(p243, pu244, pu245)
    local vu246 = Vector3.new(p243.X, pu245 and 0 or (p243.Y or 0), p243.Z)
    local v248, v249 = pcall(function()
        if not pu244 then
            while true do
                local v247 = vu242.Character

                if v247 then
                    v247 = vu242.Character:FindFirstChild('HumanoidRootPart')
                end
                if v247 and v247.Position then
                    break
                end

                wait(0.5)
            end

            pu244 = v247.Position
        end

        return (vu246 - Vector3.new(pu244.X, not pu245 and pu244.Y or 0, pu244.Z)).magnitude
    end)

    if v248 then
        return v249
    end

    warn('Dist', v249)

    return nil
end
function InArea(p250, p251)
    local v252 = nil
    local v253 = 0

    if p251 and dist(p250, p251.Position, true) <= p251.Mesh.Scale.X / 2 + 500 then
        return p251
    end

    local v254, v255, v256 = pairs(workspace._WorldOrigin.Locations:GetChildren())

    while true do
        local v257

        v256, v257 = v254(v255, v256)

        if v256 == nil then
            break
        end
        if dist(p250, v257.Position, true) <= v257.Mesh.Scale.X / 2 + 500 and v253 < v257.Mesh.Scale.X then
            v253 = v257.Mesh.Scale.X
            v252 = v257
        end
    end

    return v252
end
function TP2(...)
    local vu259 = (function(p258)
        if typeof(p258) ~= 'Vector3' then
            if typeof(p258) ~= 'CFrame' then
                return nil
            else
                return p258
            end
        else
            return CFrame.new(p258)
        end
    end)(...)

    if vu242.Character:FindFirstChild('HumanoidRootPart') then
        if not tweenPause then
            local vu260 = nil
            local v275, v276 = pcall(function()
                local v261 = CheckNearestTeleporter(vu259)

                if v261 then
                    requestEntrance(v261)
                end
                if not tweenActive or (not lastTweenTarget or dist(vu259, lastTweenTarget) >= 10 and dist(lastTweenTarget) < 10) then
                    tweenid = (tweenid or 0) + 1
                    lastTweenTarget = vu259
                    vu260 = tweenid
                    Util = require(game:GetService('ReplicatedStorage').Util)

                    if Util.FPSTracker.FPS > 60 then
                        setfpscap(200)
                    end

                    task.spawn(pcall, function()
                        lastPos = {
                            tick(),
                            vu259,
                        }

                        local vu262 = dist(vu242.Character.HumanoidRootPart.Position, vu259, true)
                        local vu263 = vu262

                        vu242.Character.Humanoid:SetStateEnabled(13, false)

                        if getgenv().TweenPosY then
                            if vu262 > 60 then
                                vu242.Character.HumanoidRootPart.CFrame = CFrame.new(vu242.Character.HumanoidRootPart.Position.X, vu242.Character.HumanoidRootPart.Position.Y + _G.SelectPosYHight, vu242.Character.HumanoidRootPart.Position.Z)
                            else
                                vu242.Character.HumanoidRootPart.CFrame = CFrame.new(vu259.Position.X, vu259.Position.Y, vu259.Position.Z)
                            end
                        else
                            vu242.Character.HumanoidRootPart.CFrame = CFrame.new(vu242.Character.HumanoidRootPart.CFrame.X, vu259.Y, vu242.Character.HumanoidRootPart.CFrame.Z)
                        end

                        while vu242.Character:FindFirstChild('HumanoidRootPart') and (75 < vu262 and (vu260 == tweenid and vu242.Character.Humanoid.Health > 0)) do
                            local v264 = 58 / math.clamp(Util.FPSTracker.FPS, 0, 60)
                            local v265 = 5.5 * v264
                            local v266 = vu242.Character.HumanoidRootPart.Position
                            local v267 = Vector3.new(vu259.X, 0, vu259.Z) - Vector3.new(v266.X, 0, v266.Z)
                            local v268 = (v267.X < 0 and -1 or 1) * v265
                            local v269 = (v267.Z < 0 and -1 or 1) * v265

                            if math.abs(v267.X) < v268 then
                                v268 = v267.X or v268
                            end
                            if math.abs(v267.Z) < v269 then
                                v269 = v267.Z or v269
                            end

                            task.spawn(function()
                                vu262 = dist(vu242.Character.HumanoidRootPart.Position, vu259, true)

                                if vu262 > vu263 + 10 then
                                    tweenid = -1
                                    tweenPause = false
                                    vu242.Character.HumanoidRootPart.Anchored = true

                                    task.wait()

                                    tweenPause = false
                                    vu242.Character.HumanoidRootPart.Anchored = false
                                end

                                vu263 = vu262
                            end)

                            local v270 = vu242.Character.HumanoidRootPart
                            local v271 = vu242.Character.HumanoidRootPart.CFrame
                            local v272 = Vector3.new
                            local v273

                            if math.abs(v269) >= 5 * v264 or not v268 then
                                v273 = v268 / 1.5
                            else
                                v273 = v268
                            end

                            local v274 = 0

                            if math.abs(v268) >= 5 * v264 or not v269 then
                                v269 = v269 / 1.5
                            end

                            v270.CFrame = v271 + v272(v273, v274, v269)
                            tweenActive = true

                            task.wait()
                        end

                        vu242.Character.Humanoid:SetStateEnabled(13, true)

                        tweenActive = false

                        if vu262 <= 100 and vu260 == tweenid then
                            vu242.Character.HumanoidRootPart.CFrame = vu259
                        end
                    end)
                end
            end)

            if not v275 then
                warn('TP :', v276)
            end

            return vu260
        end
    end
end
function stopTeleport()
    vu216 = false

    local v277 = game.Players.LocalPlayer

    if v277.Character:FindFirstChild('PartTele') then
        v277.Character.PartTele:Destroy()
    end
end

spawn(function()
    while task.wait() do
        if not vu216 then
            stopTeleport()
        end
    end
end)
spawn(function()
    local vu278 = game.Players.LocalPlayer

    while task.wait() do
        pcall(function()
            if vu278.Character:FindFirstChild('PartTele') and (vu278.Character.HumanoidRootPart.Position - vu278.Character.PartTele.Position).Magnitude >= 100 then
                stopTeleport()
            end
        end)
    end
end)

local vu279 = game.Players.LocalPlayer

local function v281(p280)
    p280:WaitForChild('Humanoid').Died:Connect(function()
        stopTeleport()
    end)
end

vu279.CharacterAdded:Connect(v281)

if vu279.Character then
    v281(vu279.Character)
end

function TPB(p282, _)
    local v283 = {}
    local v284 = game:GetService('Workspace').Boats[_G.SelectedBoat]

    if v284 then
        v284 = v284.VehicleSeat
    end
    if v284 then
        if (v284.Position - p282.Position).Magnitude <= 25 then
            p282 = CFrame.new(p282.Position.X, 60, p282.Position.Z)
            v284.CFrame = p282

            if v284:FindFirstChild('Root') then
                v284.Root:Destroy()
                wait()
                TweenBoat(v284.CFrame)
                wait()
            end
        end
        if not v284:FindFirstChild('Root') then
            local v285 = Instance.new('Part', v284)

            v285.Size = Vector3.new(1, 0.5, 1)
            v285.Name = 'Root'
            v285.Anchored = true
            v285.Transparency = 1
            v285.CanCollide = false
            v285.CFrame = v284.CFrame
        end

        local vu286 = v284:FindFirstChild('Root')

        if vu286 then
            local v287 = (v284.Position - p282.Position).Magnitude
            local vu288 = game:GetService('TweenService'):Create(vu286, TweenInfo.new(v287 / getgenv().SpeedBoat, Enum.EasingStyle.Linear), {
                CFrame = CFrame.new(p282.Position.X, 60, p282.Position.Z),
            })
            local v289 = vu288

            vu288.Play(v289)

            function v283.Stop(_)
                if vu288 then
                    vu288:Cancel()
                end
                if vu286 then
                    vu286:Destroy()
                end
            end

            return v283
        end
    end
end

task.spawn(function()
    while task.wait() do
        pcall(function()
            local v290 = game:GetService('Workspace').Boats[_G.SelectedBoat]

            if v290 then
                v290 = v290.VehicleSeat
            end
            if v290 then
                v290.CFrame = CFrame.new(v290.Root.CFrame.Position.X, getgenv().PosYBoat, v290.Root.CFrame.Position.Z)

                if (v290.Root.Position - v290.Position).Magnitude >= 1 then
                    v290.Root.CFrame = v290.CFrame
                end
            end
        end)
    end
end)

function fastpos(p291)
    local v292 = (p291.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

    game:GetService('TweenService'):Create(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(v292 / 1000, Enum.EasingStyle.Linear), {CFrame = p291}):Play()
end

Pos = CFrame.new(PosX, PosY, PosZ)

spawn(function()
    while task.wait() do
        if _G.SpinPos then
            if Type ~= 1 then
                if Type ~= 2 then
                    if Type ~= 3 then
                        if Type == 4 then
                            Pos = CFrame.new(-19, PosY, 0)
                        end
                    else
                        Pos = CFrame.new(0, PosY, 19)
                    end
                else
                    Pos = CFrame.new(19, PosY, 0)
                end
            else
                Pos = CFrame.new(0, PosY, -19)
            end
        else
            Pos = CFrame.new(PosX, PosY, PosZ)
        end
    end
end)
spawn(function()
    while task.wait(0.1) do
        Type = 1

        wait(0.2)

        Type = 2

        wait(0.2)

        Type = 3

        wait(0.2)

        Type = 4

        wait(0.2)
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if (_G.AdvanceDungeon or (_G.DoughKingRaid or (_G.DoughtBoss or (_G.TyrantSkies or (_G.KillBossTyrantSkies or (_G.FarmChest or (_G.Factory or (_G.FarmBossHallow or (_G.FarmSwanGlasses or (_G.LongSword or (_G.BlackSpikeycoat or (_G.ElectricClaw or (_G.FarmGunMastery or (_G.HolyTorch or (_G.LawRaid or (_G.FarmBoss or (_G.TwinHooks or (_G.OpenSwanDoor or (_G.Dragon_Trident or (_G.Saber or (_G.FarmFruitMastery or (_G.FarmGunMastery or (_G.TeleportIsland or (_G.EvoRace or (_G.FarmAllMsBypassType or (_G.Observationv2 or (_G.MusketeerHat or (_G.Ectoplasm or (_G.Rengoku or (_G.AutoDarkbeard or (_G.Rainbow_Haki or (_G.Observation or (_G.DarkDagger or (_G.Safe_Mode or (_G.MasteryFruit or (_G.BudySword or (_G.OderSword or (_G.AllBoss or (_G.Sharkman or (_G.Mastery_Fruit or (_G.Mastery_Gun or (_G.Dungeon or (_G.Cavender or (_G.Pole or (_G.Kill_Ply or (_G.Factory or (_G.SecondSea or (_G.TeleportPly or (_G.Bartilo or (_G.DarkBoss or (_G.GrabChest or (_G.Holy_Torch or (_G.Level or (_G.KillAfterTrials or (_G.Clip or (FarmBoss or (_G.Elitehunter or (_G.CollectBerry or (_G.ThirdSea or (_G.Bone or (_G.Train or (_G.heart or (_G.FarmMaterial or (_G.Guitar or (Auto_Quest_Soul_Guitar or (_G.Dragon_Trident or (_G.tushita or (_G.d or (_G.waden or (_G.Greybeard or (_G.pole or (_G.saw or (_G.FarmNearest or (_G.FarmChest or (_G.Carvender or (_G.TwinHook or (AutoMobAura or (_G.Tweenfruit or (_G.TeleportNPC or (_G.Leather or (_G.Wing or (_G.Umm or (_G.Makori_gay or (Radioactive or (Fish or (Gunpowder or (Dragon_Scale or (Cocoafarm or (Scrap or (MiniHee or (_G.FarmSeabaest or (Yama_Quest or (Get_Cursed or (Tushita_Quest or (_G.FarmMob or (_G.MysticIsland or (_G.FarmDungeon or (_G.RaidPirate or (_G.QuestRace or (_G.TweenMGear or (getgenv().AutoFarm or (_G.PlayerHunter or (_G.Factory or (Grab_Chest or (_G.Seabest or (_G.SeaBest or (_G.KillTial or (_G.Saber or (_G.Position_Spawn or (_G.Farmfast or (_G.Race or (_G.RaidPirate or (Open_Color_Haki or (_G.Terrorshark or (FarmShark or (_G.farmpiranya or (_G.QuestDragon or (_G.DefendVolcano or (_G.KillGolem or (_G.TpPrehistoric or (_G.TpSkullCore or (_G.Fish_Crew_Member or (_G.AppleAutoDriveBoat or (_G.bjirFishBoat or (_G.KillGhostShip or (_G.KillLeviathan or (_G.SegmentLeviathan or (_G.FrozenDimension or _G.FKitsune)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) and not game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip') then
                local v293 = Instance.new('BodyVelocity')

                v293.Name = 'BodyClip'
                v293.Parent = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
                v293.MaxForce = Vector3.new(100000, 100000, 100000)
                v293.Velocity = Vector3.new(0, 0, 0)
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        game:GetService('RunService').Stepped:Connect(function()
            if _G.AdvanceDungeon or (_G.DoughKingRaid or (_G.DoughtBoss or (_G.TyrantSkies or (_G.KillBossTyrantSkies or (_G.Factory or (_G.FarmBossHallow or (_G.FarmSwanGlasses or (_G.LongSword or (_G.BlackSpikeycoat or (_G.ElectricClaw or (_G.FarmGunMastery or (_G.HolyTorch or (_G.LawRaid or (_G.FarmBoss or (_G.TwinHooks or (_G.OpenSwanDoor or (_G.Dragon_Trident or (_G.Saber or (_G.NoClip or (_G.FarmFruitMastery or (_G.FarmGunMastery or (_G.TeleportIsland or (_G.EvoRace or (_G.FarmAllMsBypassType or (_G.Observationv2 or (_G.MusketeerHat or (_G.Ectoplasm or (_G.Rengoku or (_G.AutoDarkbeard or (_G.Rainbow_Haki or (_G.Observation or (_G.DarkDagger or (_G.Safe_Mode or (_G.MasteryFruit or (_G.BudySword or (_G.OderSword or (_G.AllBoss or (_G.Sharkman or (_G.Mastery_Fruit or (_G.Mastery_Gun or (_G.Dungeon or (_G.Cavender or (_G.Pole or (_G.Kill_Ply or (_G.Factory or (_G.SecondSea or (_G.TeleportPly or (_G.Bartilo or (_G.DarkBoss or (_G.GrabChest or (_G.Holy_Torch or (_G.Level or (_G.KillAfterTrials or (_G.Clip or (_G.Elitehunter or (_G.CollectBerry or (_G.ThirdSea or (_G.Bone or (_G.Train or (_G.heart or (_G.FarmMaterial or (_G.Guitar or (Auto_Quest_Soul_Guitar or (_G.Dragon_Trident or (_G.tushita or (_G.waden or (_G.pole or (_G.Greybeard or (_G.saw or (_G.FarmNearest or (_G.Carvender or (_G.TwinHook or (AutoMobAura or (_G.Tweenfruit or (_G.TeleportNPC or (_G.Kai or (_G.Leather or (_G.Wing or (_G.Umm or (_G.Makori_gay or (Radioactive or (Fish or (Gunpowder or (Dragon_Scale or (Cocoafarm or (Scrap or (MiniHee or (_G.FarmSeabaest or (Yama_Quest or (Get_Cursed or (Tushita_Quest or (_G.FarmMob or (_G.MysticIsland or (_G.FarmDungeon or (_G.RaidPirate or (_G.QuestRace or (_G.TweenMGear or (getgenv().AutoFarm or (_G.PlayerHunter or (_G.Factory or (_G.Seabest or (_G.SeaBest or (_G.KillTial or (_G.Saber or (_G.Position_Spawn or (_G.TPB or (_G.Farmfast or (_G.Race or (_G.RaidPirate or (Open_Color_Haki or (_G.Terrorshark or (_G.KillLeviathan or (_G.SegmentLeviathan or (_G.QuestDragon or (_G.DefendVolcano or (_G.KillGolem or (_G.TpPrehistoric or (_G.TpSkullCore or (FarmShark or (_G.farmpiranya or (_G.Fish_Crew_Member or (_G.AppleAutoDriveBoat or (_G.FrozenDimension or _G.FKitsune))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) then
                local v294, v295, v296 = pairs(game:GetService('Players').LocalPlayer.Character:GetDescendants())

                while true do
                    local v297

                    v296, v297 = v294(v295, v296)

                    if v296 == nil then
                        break
                    end
                    if v297:IsA('BasePart') then
                        v297.CanCollide = false
                    end
                end
            end
        end)
    end)
end)

function StopTween(p298)
    if not p298 then
        _G.StopTween = true

        wait()
        topos(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()

        if game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip') then
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('BodyClip'):Destroy()
        end

        _G.StopTween = false
        _G.Clip = false
    end
    if game.Players.LocalPlayer.Character:FindFirstChild('Highlight') then
        game.Players.LocalPlayer.Character:FindFirstChild('Highlight'):Destroy()
    end
end

spawn(function()
    pcall(function()
        while task.wait() do
            local v299, v300, v301 = pairs(game:GetService('Players').LocalPlayer.Backpack:GetChildren())

            while true do
                local v302

                v301, v302 = v299(v300, v301)

                if v301 == nil then
                    break
                end
                if v302:IsA('Tool') and v302:FindFirstChild('RemoteFunctionShoot') then
                    SelectWeaponGun = v302.Name
                end
            end
        end
    end)
end)

local v303 = v25:Window({
    Title = 'Xeter Hub',
    SubTitle = 'V3',
    Size = UDim2.new(0, 480, 0, 340),
    TabWidth = 140,
})
local v304 = v303:T('Tab Status', 'rbxassetid://10734984606')
local v305 = v303:T('Tab General', 'rbxassetid://10723407389')
local v306 = v303:T('Tab Setting Other', 'rbxassetid://10734950309')
local v307 = v303:T('Tab Quest & Item', 'rbxassetid://10734975692')
local v308 = v303:T('Tab Race & Mirage', 'rbxassetid://10747372167')
local v309 = v303:T('Tab Sea Event', 'rbxassetid://10709761530')
local v310 = v303:T('Tab Volcano Event', 'rbxassetid://10709783577')
local v311 = v303:T('Tab Local Player', 'rbxassetid://10747373176')
local v312 = v303:T('Tab Visual', 'rbxassetid://10723346959')
local v313 = v303:T('Tab Raid', 'rbxassetid://10723345749')
local v314 = v303:T('Tab Teleport', 'rbxassetid://10723434557')
local v315 = v303:T('Tab Shop', 'rbxassetid://10734952479')
local v316 = v303:T('Tab Devil Fruit', 'rbxassetid://10709761889')
local v317 = v303:T('Tab Miscellaneous', 'rbxassetid://10709782582')
local v318 = Instance.new('ScreenGui')
local vu319 = Instance.new('TextButton')
local v320 = Instance.new('UICorner')

Instance.new('Frame')

v318.Name = 'Xeter'
v318.Parent = game.Players.LocalPlayer:WaitForChild('PlayerGui')
v318.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
vu319.Name = 'ToggleUIButton'
vu319.Parent = v318
vu319.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
vu319.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
vu319.Size = UDim2.new(0, 53, 0, 53)
vu319.Font = Enum.Font.SourceSansBold
vu319.Text = 'OFF'
vu319.TextColor3 = Color3.fromRGB(255, 255, 255)
vu319.TextSize = 21
vu319.TextWrapped = true
vu319.Visible = true
vu319.Draggable = true
v320.Parent = vu319

local vu321 = true

vu319.MouseButton1Click:Connect(function()
    vu321 = not vu321
    vu319.Text = vu321 and 'OFF' or 'ON'
    game.CoreGui:FindFirstChild('Xeter').Enabled = not game.CoreGui:FindFirstChild('Xeter').Enabled
end)
v304:Seperator('Join Discord')
v304:Button('Discord | Xeter Hub', function()
    setclipboard('https://discord.com/invite/ekGasVyhTy')
end)
v304:Seperator('Status Player')

local vu322 = v304:Label('Executor Time')

function UpdateTime()
    local v323 = math.floor(workspace.DistributedGameTime + 0.5)

    vu322:Set('[Server Time]: Hours: ' .. math.floor(v323 / 3600) % 24 .. ' Min: ' .. math.floor(v323 / 60) % 60 .. ' Sec: ' .. math.floor(v323 / 1) % 60)
end

spawn(function()
    while task.wait() do
        pcall(function()
            UpdateTime()
        end)
    end
end)

local vu324 = v304:Label('Race')
local vu325 = v304:Label('Beli')
local vu326 = v304:Label('Fragments')
local vu327 = v304:Label('Bounty')

spawn(function()
    while task.wait(1) do
        pcall(function()
            vu324:Set('Race: ' .. game:GetService('Players').LocalPlayer.Data.Race.Value)
            vu325:Set('Beli: ' .. game:GetService('Players').LocalPlayer.Data.Beli.Value)
            vu327:Set('Bounty / Honor: ' .. game:GetService('Players').LocalPlayer.leaderstats['Bounty/Honor'].Value)
            vu326:Set('Fragments: ' .. game:GetService('Players').LocalPlayer.Data.Fragments.Value)
        end)
    end
end)

local vu328 = v304:Label('Devil Fruit')

spawn(function()
    while task.wait() do
        pcall(function()
            if game:GetService('Players').LocalPlayer.Character:FindFirstChild(game:GetService('Players').LocalPlayer.Data.DevilFruit.Value) or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild(game:GetService('Players').LocalPlayer.Data.DevilFruit.Value) then
                vu328:Set('Devil Fruit: ' .. game:GetService('Players').LocalPlayer.Data.DevilFruit.Value)
            else
                vu328:Set('Not Have Devil Fruit')
            end
        end)
    end
end)

_G.SelectWeapon = 'Melee'

v305:Dropdown('Select Weapon', {
    'Melee',
    'Sword',
    'Fruit',
    'Gun',
}, _G.SelectWeapon, function(p329)
    _G.SelectWeapon = p329
end)

FireCooldown = 'Xeter Attack'

v305:Dropdown('Fast Attack Delay', {
    'Normal Attack',
    'Fast Attack',
    'Super Attack',
    'Xeter Attack',
}, FireCooldown, function(p330)
    FireCooldown = p330
end)
task.spawn(function()
    while wait() do
        pcall(function()
            if _G.SelectWeapon ~= 'Melee' then
                if _G.SelectWeapon ~= 'Sword' then
                    if _G.SelectWeapon ~= 'Gun' then
                        if _G.SelectWeapon == 'Fruit' then
                            local v331, v332, v333 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                            while true do
                                local v334

                                v333, v334 = v331(v332, v333)

                                if v333 == nil then
                                    break
                                end
                                if v334.ToolTip == 'Blox Fruit' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v334.Name)) then
                                    _G.SelectWeapon = v334.Name
                                end
                            end
                        end
                    else
                        local v335, v336, v337 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v338

                            v337, v338 = v335(v336, v337)

                            if v337 == nil then
                                break
                            end
                            if v338.ToolTip == 'Gun' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v338.Name)) then
                                _G.SelectWeapon = v338.Name
                            end
                        end
                    end
                else
                    local v339, v340, v341 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                    while true do
                        local v342

                        v341, v342 = v339(v340, v341)

                        if v341 == nil then
                            break
                        end
                        if v342.ToolTip == 'Sword' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v342.Name)) then
                            _G.SelectWeapon = v342.Name
                        end
                    end
                end
            else
                local v343, v344, v345 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                while true do
                    local v346

                    v345, v346 = v343(v344, v345)

                    if v345 == nil then
                        break
                    end
                    if v346.ToolTip == 'Melee' and game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v346.Name)) then
                        _G.SelectWeapon = v346.Name
                    end
                end
            end
        end)
    end
end)
v305:Seperator('Farming')
v305:Toggle('Auto Farm Level', false, function(p347)
    _G.Level = p347

    StopTween(_G.Farm)
end)

_G.Auto_CFrame = true
PosLv = CFrame.new(0, 25, 0)

local vu348 = 1

spawn(function()
    while wait() do
        local _ = game.Players.LocalPlayer.Data.Level.Value
        local vu349 = game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest

        pcall(function()
            if not _G.Level then
                return
            end
            if vu349.Visible ~= true then
                topos(vu106()[2])

                if (vu106()[2].Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                    StartMagnetLv = false

                    wait(0.2)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', vu106()[4], vu106()[1])
                    wait(0.2)
                    topos(vu106()[7][1] * PosLv)
                end
            end

            local v350 = vu349.Container.QuestTitle.Title.Text

            if not string.find(v350, vu106()[6]) then
                StartMagnetLv = false

                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                wait(0.5)
                topos(vu106()[2])

                if (vu106()[2].Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                    wait(0.2)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', vu106()[4], vu106()[1])
                    wait(0.2)
                    topos(vu106()[7][1] * PosLv)
                end
            end
            if not game:GetService('Workspace').Enemies:FindFirstChild(vu106()[3]) then
                if _G.Auto_CFrame then
                    topos(vu106()[7][vu348] * PosLv)

                    if (vu106()[7][vu348].Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                        if vu348 == nil or vu348 == '' then
                            vu348 = 1
                        elseif vu348 >= #vu106()[7] then
                            vu348 = 1
                        end

                        vu348 = vu348 + 1

                        wait(0.5)
                    end
                end
            end

            local v351, v352, v353 = pairs(game:GetService('Workspace').Enemies:GetChildren())

            task.wait()

            if _G.Auto_CFrame then
                vu348 = 1
            end

            PosMonLv = v354.HumanoidRootPart.CFrame
            v354.HumanoidRootPart.CanCollide = false
            v354.Humanoid.WalkSpeed = 0
            v354.Head.CanCollide = false
            StartMagnetLv = true

            EquipWeapon(_G.SelectWeapon)

            v354.HumanoidRootPart.Transparency = 1

            TP2(v354.HumanoidRootPart.CFrame * Pos)

            if _G.Level and (v354.Parent and (v354.Humanoid.Health > 0 and (vu349.Visible ~= false and v354:FindFirstChild('HumanoidRootPart')))) then
            end

            local v354

            v353, v354 = v351(v352, v353)

            if v353 == nil then
            end
            if v354.Name ~= vu106()[3] or (not v354:FindFirstChild('Humanoid') or (not v354:FindFirstChild('HumanoidRootPart') or v354.Humanoid.Health <= 0)) then
            else
            end
        end)
    end
end)

if World1 then
    v305:Toggle('Auto Farm Skip (Farm Lv.1-100)', false, function(p355)
        _G.Farmfast = p355
        _G.Stats_Kaitun = p355

        StopTween(_G.Farmfast)
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Farmfast and World1 then
                    local v356 = game.Players.LocalPlayer.Data.Level.Value

                    if v356 >= 1 then
                        _G.Level = false
                        _G.Farmfast = true
                    end
                    if v356 >= 100 then
                        _G.Level = true
                        _G.Farmfast = false
                    end
                    if v356 >= 1 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))

                        local v357, v358, v359 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v360

                            v359, v360 = v357(v358, v359)

                            if v359 == nil then
                                break
                            end
                            if v360.Name == 'Shanda' and (v360:FindFirstChild('Humanoid') and (v360:FindFirstChild('HumanoidRootPart') and v360.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v360.HumanoidRootPart.CanCollide = false
                                    v360.Humanoid.WalkSpeed = 0
                                    StartMagnet = true
                                    _G.PosMon = v360.HumanoidRootPart.CFrame

                                    TP2(v360.HumanoidRootPart.CFrame * Pos)
                                until not _G.Farmfast or (not v360.Parent or v360.Humanoid.Health <= 0)

                                StartMagnet = false

                                topos(CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531))
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Shanda') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Shanda').HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end
            end
        end)
    end)
end

v305:Toggle('Auto Kaitun', false, function(p361)
    _G.Level = p361
    _G.Stats_Kaitun = p361
    _G.Superhuman = p361
    _G.SecondSea = p361
    _G.ThirdSea = p361
    _G.BuyLegendarySword = p361
    _G.StoreFruit = p361
    _G.BuyAllAib = p361
    _G.BuyAllSword = p361

    StopTween(_G.Farm)
end)
spawn(function()
    while wait() do
        if _G.BuyAllSword then
            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Cutlass')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Katana')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Iron Mace')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Duel Katana')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Triple Katana')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Pipe')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Bisento')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Dual-Headed Blade')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Soul Cane')

                if _G.BuyHop then
                    wait(10)
                    Hop()
                end
            end)
        end
        if _G.BuyAllAib then
            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk', 'Buy')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Geppo')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Buso')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Soru')

                if _G.HopBuy then
                    wait(10)
                    Hop()
                end
            end)
        end
    end
end)
v305:Toggle('Auto Farm Nearest', false, function(p362)
    _G.FarmNearest = p362

    StopTween(_G.FarmNearest)
end)
spawn(function()
    while wait() do
        if _G.FarmNearest then
            local v363, v364, v365 = pairs(game:GetService('Workspace').Enemies:GetChildren())

            while true do
                local v366

                v365, v366 = v363(v364, v365)

                if v365 == nil then
                    break
                end
                if v366.Name and (v366:FindFirstChild('Humanoid') and (v366:FindFirstChild('HumanoidRootPart') and ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v366.HumanoidRootPart.Position).Magnitude <= 2000 and v366.Humanoid.Health > 0))) then
                    repeat
                        wait()
                        EquipWeapon(_G.SelectWeapon)
                        TP2(v366.HumanoidRootPart.CFrame * Pos)

                        v366.HumanoidRootPart.CanCollide = false
                        StartMagnet = true
                        _G.PosMon = v366.HumanoidRootPart.CFrame
                    until not _G.FarmNearest or (not v366.Parent or v366.Humanoid.Health <= 0)

                    StartMagnet = false
                end
            end
        end
    end
end)
v305:Seperator('Berry')
v305:Toggle('Collect Berries', false, function(p367)
    _G.CollectBerry = p367

    StopTween(_G.CollectBerry)
end)
v305:Toggle('Collect Berries Hop', false, function(p368)
    _G.CollectBerryHop = p368
end)
spawn(function()
    while wait() do
        if _G.CollectBerry then
            local v369 = game:GetService('Players').LocalPlayer
            local v370 = (v369.Character or v369.CharacterAdded:Wait()):GetPivot().Position
            local v371 = game:GetService('CollectionService'):GetTagged('BerryBush')
            local v372 = math.huge
            local v373 = nil

            for v374 = 1, #v371 do
                local v375 = v371[v374]
                local v376, v377, v378 = pairs(v375:GetAttributes())

                while true do
                    local v379

                    v378, v379 = v376(v377, v378)

                    if v378 == nil then
                        break
                    end

                    local v380 = (v375.Parent:GetPivot().Position - v370).Magnitude

                    if v380 < v372 then
                        v373 = v375
                        v372 = v380
                    end
                end
            end

            if v373 then
                local v381 = v373.Parent:GetPivot().Position
                local v382 = CFrame.new(v381)

                topos(v382)
            elseif _G.CollectBerryHop then
                Hop()
            end
        end
    end
end)
v305:Seperator('Misc Elite')

local vu383 = v305:Label('Total Elite Hunter :')
local vu384 = v305:Label('Status:')

spawn(function()
    while task.wait() do
        vu383:Set('Total Elite Hunter : ' .. game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress'))
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') or (game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') or (game:GetService('ReplicatedStorage'):FindFirstChild('Urban') or (game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban'))))) then
                vu384:Set('Status: Elite Spawn!')
            else
                vu384:Set('Status: Elite Not Spawn')
            end
        end)
    end
end)
v305:Toggle('Auto Elite Hunter', false, function(p385)
    _G.Elitehunter = p385

    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
    StopTween(_G.Elitehunter)
end)
spawn(function()
    while wait() do
        if _G.Elitehunter and World3 then
            pcall(function()
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= true then
                    if _G.EliteHunterHop and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter') == "I don't have anything for you right now. Come back later." then
                        hop()
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter')
                    end
                elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Diablo') or (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Deandre') or string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Urban')) then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban')) then
                        local v386, v387, v388 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v389

                            v388, v389 = v386(v387, v388)

                            if v388 == nil then
                                break
                            end
                            if (v389.Name == 'Diablo' or (v389.Name == 'Deandre' or v389.Name == 'Urban')) and (v389:FindFirstChild('Humanoid') and (v389:FindFirstChild('HumanoidRootPart') and v389.Humanoid.Health > 0)) then
                                repeat
                                    wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v389.HumanoidRootPart.CanCollide = false
                                    v389.Humanoid.WalkSpeed = 0

                                    TP2(v389.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ))
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                until _G.Elitehunter == false or (v389.Humanoid.Health <= 0 or not v389.Parent)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Diablo').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Deandre').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Urban') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Urban').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end
            end)
        end
    end
end)
v305:Toggle('Auto Elite Hunter Hop', false, function(p390)
    _G.EliteHunterHop = p390
end)
v305:Seperator('Chest Farm')
v305:Toggle('Auto Farm Chest', false, function(p391)
    _G.FarmChest = p391

    StopTween(_G.FarmChest)
end)
spawn(function()
    while wait() do
        if _G.FarmChest then
            local v392 = game:GetService('Players').LocalPlayer
            local v393 = (v392.Character or v392.CharacterAdded:Wait()):GetPivot().Position
            local v394 = game:GetService('CollectionService'):GetTagged('_ChestTagged')
            local v395 = math.huge
            local v396 = nil

            for v397 = 1, #v394 do
                local v398 = v394[v397]
                local v399 = (v398:GetPivot().Position - v393).Magnitude

                if not v398:GetAttribute('IsDisabled') then
                    if v399 < v395 then
                        v396 = v398
                        v395 = v399
                    end
                end
            end

            if v396 then
                local v400 = v396:GetPivot().Position
                local v401 = CFrame.new(v400)

                topos(v401)
            end
        end
    end
end)
v305:Toggle('Farm Chest Bypass', false, function(p402)
    _G.ChestBypass = p402
end)
spawn(function()
    while true do
        if not wait() then
            return
        end
        if _G.ChestBypass then
            local v403 = game:GetService('Players').LocalPlayer
            local v404 = game:GetService('CollectionService')

            if not v403.Character then
                v403.CharacterAdded:Wait()
            end

            local v405 = tick()

            while tick() - v405 < 4 do
                local v406 = v403.Character or v403.CharacterAdded:Wait()
                local v407 = v406:GetPivot().Position
                local v408 = v404:GetTagged('_ChestTagged')
                local v409 = math.huge
                local v410 = nil

                for v411 = 1, #v408 do
                    local v412 = v408[v411]
                    local v413 = (v412:GetPivot().Position - v407).Magnitude

                    if not v412:GetAttribute('IsDisabled') then
                        if v413 < v409 then
                            v410 = v412
                            v409 = v413
                        end
                    end
                end

                if not v410 then
                    break
                end

                local v414 = v410:GetPivot().Position

                v406:PivotTo(CFrame.new(v414))
                task.wait(0.2)
            end

            if v403.Character then
                v403.Character:BreakJoints()
                v403.CharacterAdded:Wait()
            end
        end
    end
end)
v305:Toggle('Auto Stop Items', false, function(p415)
    _G.StopItemsChest = p415
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.StopItemsChest and (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Fist of Darkness')) then
                _G.ChestBypass = false

                topos(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
            end
        end)
    end
end)
v305:Seperator('Pirates Raid')
v305:Toggle('Auto Pirates Raid', false, function(p416)
    _G.RaidPirate = p416

    StopTween(_G.RaidPirate)
end)
spawn(function()
    while wait() do
        if _G.RaidPirate then
            pcall(function()
                local v417 = CFrame.new(-5496.17432, 363.768921, -2841.53027)

                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                    topos(v417)
                else
                    local v418, v419, v420 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v421

                        v420, v421 = v418(v419, v420)

                        if v420 == nil then
                            break
                        end
                        if _G.RaidPirate and (v421:FindFirstChild('HumanoidRootPart') and (v421:FindFirstChild('Humanoid') and (v421.Humanoid.Health > 0 and (v421.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000))) then
                            repeat
                                task.wait()
                                EquipWeapon(_G.SelectWeapon)

                                v421.HumanoidRootPart.CanCollide = false

                                TP2(v421.HumanoidRootPart.CFrame * Pos)
                            until v421.Humanoid.Health <= 0 or not (v421.Parent and _G.RaidPirate)
                        end
                    end
                end

                topos(CFrame.new(-5496.17432, 313.768921, -2841.53027))
            end)
        end
    end
end)
v305:Seperator('Misc Bone')

local vu422 = v305:Label('Total Bone:')

spawn(function()
    while task.wait(2) do
        pcall(function()
            vu422:Set('Total Bone: ' .. tostring(GetMaterial('Bones')))
        end)
    end
end)
v305:Toggle('Auto Farm Bone', false, function(p423)
    _G.Bone = p423

    StopTween(_G.Bone)
end)
v305:Toggle('Accept Quest Bone', true, function(p424)
    _G.QuestBone = p424
end)

local vu425 = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)

spawn(function()
    while wait() do
        if _G.Bone and (not _G.QuestBone and World3) then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Reborn Skeleton') or (game:GetService('Workspace').Enemies:FindFirstChild('Living Zombie') or (game:GetService('Workspace').Enemies:FindFirstChild('Demonic Soul') or game:GetService('Workspace').Enemies:FindFirstChild('Posessed Mummy'))) then
                    local v426, v427, v428 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v429

                        v428, v429 = v426(v427, v428)

                        if v428 == nil then
                            break
                        end
                        if (v429.Name == 'Reborn Skeleton' or (v429.Name == 'Living Zombie' or (v429.Name == 'Demonic Soul' or v429.Name == 'Posessed Mummy'))) and (v429:FindFirstChild('Humanoid') and (v429:FindFirstChild('HumanoidRootPart') and v429.Humanoid.Health > 0)) then
                            repeat
                                wait()
                                EquipWeapon(_G.SelectWeapon)

                                v429.HumanoidRootPart.CanCollide = false
                                v429.Humanoid.WalkSpeed = 0
                                v429.Head.CanCollide = false
                                BonesBring = true
                                PosMonBone = v429.HumanoidRootPart.CFrame

                                TP2(v429.HumanoidRootPart.CFrame * Pos)
                            until not _G.Bone or (not v429.Parent or v429.Humanoid.Health <= 0)
                        end
                    end
                else
                    BonesBring = false

                    topos(vu425)
                end
            end)
        end
    end
end)

local vu430 = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)

spawn(function()
    while wait() do
        if _G.Bone and (_G.QuestBone and World3) then
            pcall(function()
                local v431 = game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text

                if not string.find(v431, 'Demonic Soul') then
                    BonesBring = false

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                end
                if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Reborn Skeleton') or (game:GetService('Workspace').Enemies:FindFirstChild('Living Zombie') or (game:GetService('Workspace').Enemies:FindFirstChild('Demonic Soul') or game:GetService('Workspace').Enemies:FindFirstChild('Posessed Mummy'))) then
                            local v432, v433, v434 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v435

                                v434, v435 = v432(v433, v434)

                                if v434 == nil then
                                    break
                                end
                                if v435:FindFirstChild('HumanoidRootPart') and (v435:FindFirstChild('Humanoid') and (v435.Humanoid.Health > 0 and (v435.Name == 'Reborn Skeleton' or (v435.Name == 'Living Zombie' or (v435.Name == 'Demonic Soul' or v435.Name == 'Posessed Mummy'))))) then
                                    if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Demonic Soul') then
                                        repeat
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)

                                            PosMonBone = v435.HumanoidRootPart.CFrame

                                            TP2(v435.HumanoidRootPart.CFrame * Pos)

                                            v435.HumanoidRootPart.CanCollide = false
                                            v435.Humanoid.WalkSpeed = 0
                                            v435.Head.CanCollide = false
                                            BonesBring = true
                                        until not _G.Bone or (v435.Humanoid.Health <= 0 or not v435.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        BonesBring = false

                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                                    end
                                end
                            end
                        else
                            BonesBring = false
                        end
                    end
                else
                    BonesBring = false

                    topos(vu430)

                    if (vu430.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'HauntedQuest2', 1)
                    end
                end
            end)
        end
    end
end)
v305:Toggle('Auto Random Surprise', false, function(p436)
    _G.Random_Bone = p436
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Random_Bone then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Buy', 1, 1)
            end
        end
    end)
end)
v305:Toggle('Auto Pray', false, function(p437)
    _G.Pray = p437

    StopTween(_G.Pray)
end)
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Pray then
                topos(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-9, 1, -8.24392288e-9, -0.18326205, -8.43218029e-9, -0.983064115))
                wait()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 1)
            end
        end
    end)
end)
v305:Toggle('Auto Try Luck', false, function(p438)
    _G.Trylux = p438

    StopTween(_G.Trylux)
end)
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Trylux then
                topos(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.48005533e-10, 0.18326205, -1.78910387e-9, 1, -8.24392288e-9, -0.18326205, -8.43218029e-9, -0.983064115))
                wait()
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2)
            end
        end
    end)
end)
v305:Seperator('Dought Boss')

local vu439 = v305:Label('Killed')

spawn(function()
    while task.wait(2) do
        pcall(function()
            if string.len(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')) ~= 88 then
                if string.len(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')) ~= 87 then
                    if string.len(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')) ~= 86 then
                        vu439:Set('Boss Is Spawning')
                    else
                        vu439:Set('Defeat: ' .. string.sub(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 39, 39))
                    end
                else
                    vu439:Set('Defeat: ' .. string.sub(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 39, 40))
                end
            else
                vu439:Set('Defeat: ' .. string.sub(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 39, 41))
            end
        end)
    end
end)
v305:Toggle('Auto Farm Cake Prince', false, function(p440)
    _G.DoughtBoss = p440

    StopTween(_G.DoughtBoss)
end)
v305:Toggle('Accept Quest Cake Prince', true, function(p441)
    _G.QuestCake = p441
end)
spawn(function()
    while wait() do
        if _G.DoughtBoss and not _G.QuestCake then
            pcall(function()
                local v442 = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375)

                if game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') or game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                    local v443, v444, v445 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v446

                        v445, v446 = v443(v444, v445)

                        if v445 == nil then
                            break
                        end
                        if (v446.Name == 'Cake Prince' or v446.Name == 'Dough King') and (v446:FindFirstChild('Humanoid') and (v446:FindFirstChild('HumanoidRootPart') and v446.Humanoid.Health > 0)) then
                            repeat
                                wait()
                                EquipWeapon(_G.SelectWeapon)

                                v446.HumanoidRootPart.CanCollide = false
                                v446.Humanoid.WalkSpeed = 0

                                TP2(v446.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.DoughtBoss or (not v446.Parent or v446.Humanoid.Health <= 0)
                        end
                    end
                elseif game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince') then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                elseif game:GetService('ReplicatedStorage'):FindFirstChild('Dough King') then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Dough King').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                elseif game:GetService('Workspace').Enemies:FindFirstChild('Cookie Crafter') or (game:GetService('Workspace').Enemies:FindFirstChild('Cake Guard') or (game:GetService('Workspace').Enemies:FindFirstChild('Baking Staff') or game:GetService('Workspace').Enemies:FindFirstChild('Head Baker'))) then
                    local v447, v448, v449 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v450

                        v449, v450 = v447(v448, v449)

                        if v449 == nil then
                            break
                        end
                        if (v450.Name == 'Cookie Crafter' or (v450.Name == 'Cake Guard' or (v450.Name == 'Baking Staff' or v450.Name == 'Head Baker'))) and (v450:FindFirstChild('Humanoid') and (v450:FindFirstChild('HumanoidRootPart') and v450.Humanoid.Health > 0)) then
                            repeat
                                task.wait()
                                EquipWeapon(_G.SelectWeapon)

                                v450.HumanoidRootPart.CanCollide = false
                                v450.Humanoid.WalkSpeed = 0
                                v450.Head.CanCollide = false
                                CakeBring = true
                                PosMonDoughtOpenDoor = v450.HumanoidRootPart.CFrame

                                TP2(v450.HumanoidRootPart.CFrame * Pos)
                            until not _G.DoughtBoss or (not v450.Parent or v450.Humanoid.Health <= 0) or (game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince') or (game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') or KillMob == 0))
                        end
                    end
                else
                    CakeBring = false

                    topos(v442)
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if _G.DoughtBoss and (_G.QuestCake and World3) then
            pcall(function()
                local v451 = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-8, 0.288177818, 6.9301186999999995e-8, 1, 7.5193121099999995e-8, -0.288177818, -5.2032135e-8, 0.957576931)

                if game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') or game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                    local v452, v453, v454 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v455

                        v454, v455 = v452(v453, v454)

                        if v454 == nil then
                            break
                        end
                        if (v455.Name == 'Cake Prince' or v455.Name == 'Dough King') and (v455:FindFirstChild('Humanoid') and (v455:FindFirstChild('HumanoidRootPart') and v455.Humanoid.Health > 0)) then
                            repeat
                                wait()
                                EquipWeapon(_G.SelectWeapon)

                                v455.HumanoidRootPart.CanCollide = false
                                v455.Humanoid.WalkSpeed = 0

                                TP2(v455.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.DoughtBoss or (not v455.Parent or v455.Humanoid.Health <= 0)
                        end
                    end
                elseif game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince') then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                elseif game:GetService('ReplicatedStorage'):FindFirstChild('Dough King') then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Dough King').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                else
                    local v456 = game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text

                    if not string.find(v456, 'Cookie Crafter') then
                        CakeBring = false

                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                    end
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                        if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if game:GetService('Workspace').Enemies:FindFirstChild('Cookie Crafter') or (game:GetService('Workspace').Enemies:FindFirstChild('Cake Guard') or (game:GetService('Workspace').Enemies:FindFirstChild('Baking Staff') or game:GetService('Workspace').Enemies:FindFirstChild('Head Baker'))) then
                                local v457, v458, v459 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local v460

                                    v459, v460 = v457(v458, v459)

                                    if v459 == nil then
                                        break
                                    end
                                    if v460:FindFirstChild('HumanoidRootPart') and (v460:FindFirstChild('Humanoid') and (v460.Humanoid.Health > 0 and (v460.Name == 'Cookie Crafter' or (v460.Name == 'Cake Guard' or (v460.Name == 'Baking Staff' or v460.Name == 'Head Baker'))))) then
                                        if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Cookie Crafter') then
                                            repeat
                                                wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                TP2(v460.HumanoidRootPart.CFrame * Pos)

                                                v460.HumanoidRootPart.CanCollide = false
                                                v460.Humanoid.WalkSpeed = 0
                                                v460.Head.CanCollide = false
                                                CakeBring = true
                                                PosMonDoughtOpenDoor = v460.HumanoidRootPart.CFrame
                                            until not (_G.DoughtBoss and v460.Parent) or (game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false or v460.Humanoid.Health <= 0 or (game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince') or (game:GetService('Workspace').Enemies:FindFirstChild('Cake Prince') or KillMob == 0)))
                                        else
                                            CakeBring = false

                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')
                                        end
                                    end
                                end
                            else
                                CakeBring = false
                            end
                        end
                    else
                        CakeBring = false

                        topos(v451)

                        if (v451.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'CakeQuest1', 1)
                        end
                    end
                end
            end)
        end
    end
end)
v305:Toggle('Auto Spawn Cake Prince', false, function(_)
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner', value)
end)
v305:Toggle('Auto Dough King Raid', false, function(p461)
    _G.DoughKingRaid = p461

    StopTween(_G.DoughKingRaid)
end)
v305:Toggle('Auto Dough King Hop', false, function(p462)
    _G.doughkingHop = p462
end)
spawn(function()
    while wait() do
        if _G.DoughKingRaid then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                    if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SweetChaliceNpc'), 'Where') then
                        game.StarterGui:SetCore('SendNotification', {
                            Title = 'Notification',
                            Text = 'Not Have Enough Material',
                            Icon = 'http://www.roblox.com/asset/?id=',
                            Duration = 2.5,
                        })
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SweetChaliceNpc')
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Sweet Chalice') or game.Players.LocalPlayer.Character:FindFirstChild('Sweet Chalice') then
                    if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner'), 'Do you want to open the portal now?') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CakePrinceSpawner')
                    elseif game.Workspace.Enemies:FindFirstChild('Baking Staff') or (game.Workspace.Enemies:FindFirstChild('Head Baker') or (game.Workspace.Enemies:FindFirstChild('Cake Guard') or game.Workspace.Enemies:FindFirstChild('Cookie Crafter'))) then
                        local v463, v464, v465 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v466

                            v465, v466 = v463(v464, v465)

                            if v465 == nil then
                                break
                            end
                            if (v466.Name == 'Baking Staff' or (v466.Name == 'Head Baker' or (v466.Name == 'Cake Guard' or v466.Name == 'Cookie Crafter'))) and v466.Humanoid.Health > 0 then
                                repeat
                                    wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    CakeBring = true
                                    PosMonDoughtOpenDoor = v466.HumanoidRootPart.CFrame

                                    TP2(v466.HumanoidRootPart.CFrame * Pos)
                                until _G.DoughKingRaid == false or (game:GetService('ReplicatedStorage'):FindFirstChild('Cake Prince') or (not v466.Parent or v466.Humanoid.Health <= 0))
                            end
                        end
                    else
                        CakeBring = false

                        topos(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
                    end
                elseif game.ReplicatedStorage:FindFirstChild('Dough King') or game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Dough King') then
                        local v467, v468, v469 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v470

                            v469, v470 = v467(v468, v469)

                            if v469 == nil then
                                break
                            end
                            if v470.Name == 'Dough King' then
                                repeat
                                    wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v470.HumanoidRootPart.CanCollide = false

                                    TP2(v470.HumanoidRootPart.CFrame * Pos)
                                until _G.DoughKingRaid == false or (not v470.Parent or v470.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875))
                    end
                elseif game.Players.LocalPlayer.Backpack:FindFirstChild('Red Key') or game.Players.LocalPlayer.Character:FindFirstChild('Red Key') then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'CakeScientist',
                        'Check',
                    }))
                elseif game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= true then
                    if _G.doughkingHop and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter') == "I don't have anything for you right now. Come back later." then
                        hop()
                    else
                        wait(0.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter')
                    end
                elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Diablo') or (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Deandre') or string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Urban')) then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Diablo') or (game:GetService('Workspace').Enemies:FindFirstChild('Deandre') or game:GetService('Workspace').Enemies:FindFirstChild('Urban')) then
                        local v471, v472, v473 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v474

                            v473, v474 = v471(v472, v473)

                            if v473 == nil then
                                break
                            end
                            if (v474.Name == 'Diablo' or (v474.Name == 'Deandre' or v474.Name == 'Urban')) and (v474:FindFirstChild('Humanoid') and (v474:FindFirstChild('HumanoidRootPart') and v474.Humanoid.Health > 0)) then
                                repeat
                                    wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v474.HumanoidRootPart.CanCollide = false
                                    v474.Humanoid.WalkSpeed = 0

                                    TP2(v474.HumanoidRootPart.CFrame * CFrame.new(PosX, PosY, PosZ))
                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                until _G.DoughKingRaid == false or (v474.Humanoid.Health <= 0 or not v474.Parent) or (game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice"))
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Diablo') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Diablo').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Deandre') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Deandre').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Urban') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Urban').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end
            end)
        end
    end
end)
v305:Seperator('Tyrant Of The Skies')

local vu475 = v305:Label('Status Eyes')

task.spawn(function()
    while task.wait() do
        pcall(function()
            local v476 = workspace.Map.TikiOutpost.IslandModel
            local v477 = v476.IslandChunks.E
            local v478 = {
                v476:FindFirstChild('Eye1'),
                v476:FindFirstChild('Eye2'),
                v477:FindFirstChild('Eye3'),
                v477:FindFirstChild('Eye4'),
            }
            local v479, v480, v481 = ipairs(v478)
            local v482 = 0

            while true do
                local v483

                v481, v483 = v479(v480, v481)

                if v481 == nil then
                    break
                end
                if v483 and v483.Transparency == 0 then
                    v482 = v482 + 1
                end
            end

            vu475:Set('Eyes: ' .. v482 .. '/4')
        end)
    end
end)
v305:Toggle('Teleport To Tyrant Skies', false, function(p484)
    _G.TpSkies = p484

    task.spawn(function()
        while _G.TpSkies do
            task.wait()
            topos(CFrame.new(-16198, 156, 1390))
        end
    end)
end)
v305:Toggle('Auto Farm Tyrant Of The Skies', false, function(p485)
    _G.TyrantSkies = p485

    StopTween(_G.TyrantSkies)
end)

local vu486 = {
    CFrame.new(-16547, 56, -172),
    CFrame.new(-16540, 56, 1051),
    CFrame.new(-16665, 105, 1576),
}

spawn(function()
    while wait() do
        if _G.TyrantSkies and World3 then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Isle Outlaw') or (game:GetService('Workspace').Enemies:FindFirstChild('Island Boy') or (game:GetService('Workspace').Enemies:FindFirstChild('Sun-kissed Warrior') or (game:GetService('Workspace').Enemies:FindFirstChild('Isle Champion') or (game:GetService('Workspace').Enemies:FindFirstChild('Serpent Hunter') or game:GetService('Workspace').Enemies:FindFirstChild('Skull Slayer'))))) then
                    local v487, v488, v489 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v490

                        v489, v490 = v487(v488, v489)

                        if v489 == nil then
                            break
                        end
                        if (v490.Name == 'Isle Outlaw' or (v490.Name == 'Island Boy' or (v490.Name == 'Sun-kissed Warrior' or (v490.Name == 'Isle Champion' or (v490.Name == 'Serpent Hunter' or v490.Name == 'Skull Slayer'))))) and (v490:FindFirstChild('Humanoid') and (v490:FindFirstChild('HumanoidRootPart') and v490.Humanoid.Health > 0)) then
                            repeat
                                wait()
                                EquipWeapon(_G.SelectWeapon)

                                v490.HumanoidRootPart.CanCollide = false
                                v490.Humanoid.WalkSpeed = 0
                                v490.Head.CanCollide = false
                                StartMagnet = true
                                _G.PosMon = v490.HumanoidRootPart.CFrame

                                TP2(v490.HumanoidRootPart.CFrame * Pos)
                            until not _G.TyrantSkies or (not v490.Parent or v490.Humanoid.Health <= 0)
                        end
                    end
                else
                    StartMagnet = false

                    local v491 = vu486[math.random(1, #vu486)]

                    topos(v491)
                    wait(3)

                    local v492, v493, v494 = pairs(game:GetService('ReplicatedStorage'):GetChildren())

                    while true do
                        local v495

                        v494, v495 = v492(v493, v494)

                        if v494 == nil then
                            break
                        end
                        if (v495.Name == 'Isle Outlaw' or (v495.Name == 'Island Boy' or (v495.Name == 'Sun-kissed Warrior' or (v495.Name == 'Isle Champion' or (v495.Name == 'Serpent Hunter' or v495.Name == 'Skull Slayer'))))) and v495:FindFirstChild('HumanoidRootPart') then
                            TP2(v495.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0))

                            break
                        end
                    end
                end
            end)
        end
    end
end)
v305:Toggle('Auto Tyrant Of The Skies Boss', false, function(p496)
    _G.KillBossTyrantSkies = p496

    StopTween(_G.KillBossTyrantSkies)
end)
spawn(function()
    while wait() do
        if _G.KillBossTyrantSkies and World3 then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Tyrant of the Skies') then
                    local v497, v498, v499 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v500

                        v499, v500 = v497(v498, v499)

                        if v499 == nil then
                            break
                        end
                        if v500.Name == 'Tyrant of the Skies' and (v500:FindFirstChild('Humanoid') and (v500:FindFirstChild('HumanoidRootPart') and v500.Humanoid.Health > 0)) then
                            repeat
                                task.wait()
                                EquipWeapon(_G.SelectWeapon)

                                v500.HumanoidRootPart.CanCollide = false
                                v500.Humanoid.WalkSpeed = 0

                                TP2(v500.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.KillBossTyrantSkies or (not v500.Parent or v500.Humanoid.Health <= 0)
                        end
                    end
                elseif game:GetService('ReplicatedStorage'):FindFirstChild('Tyrant of the Skies') then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Tyrant of the Skies').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                end
            end)
        end
    end
end)
v305:Seperator('Misc Mastery')
v305:Toggle('Auto Mastery Fruit (Delete Function)', false, function(p501)
    _G.FarmFruitMastery = p501

    StopTween(_G.FarmFruitMastery)

    if _G.FarmFruitMastery == false then
        UseSkill = false
    end
end)
v305:Toggle('Auto Mastery Gun (Delete Function)', false, function(p502)
    _G.FarmGunMastery = p502

    StopTween(_G.FarmGunMastery)
end)
v305:Seperator('Observation')
v305:Toggle('Auto Farm Observation', false, function(p503)
    _G.Observation = p503

    StopTween(_G.Observation)
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Observation then
                while true do
                    task.wait()

                    if not game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
                        game:GetService('VirtualUser'):CaptureController()
                        game:GetService('VirtualUser'):SetKeyDown('0x65')
                        wait(2)
                        game:GetService('VirtualUser'):SetKeyUp('0x65')
                    end
                    if game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') or not _G.Observation then
                    end
                end
            else
                return
            end
        end)
    end
end)
v305:Toggle('Auto Farm Observation Hop', false, function(p504)
    _G.Observation_Hop = p504
end)
spawn(function()
    pcall(function()
        while true do
            repeat
                if not wait() then
                    return
                end
            until _G.Observation

            if game:GetService('Players').LocalPlayer.VisionRadius.Value < 3000 then
                break
            end

            wait(2)
        end

        if not World2 then
        end
        if game:GetService('Workspace').Enemies:FindFirstChild('Lava Pirate [Lv. 1200]') then
            if game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
                task.wait()

                game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Enemies:FindFirstChild('Lava Pirate').HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)

                if _G.Observation ~= false and game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
                end
            else
                task.wait()

                game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Enemies:FindFirstChild('Lava Pirate').HumanoidRootPart.CFrame * CFrame.new(0, 50, 0) + wait(1)

                if not game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') and _G.Observation_Hop == true then
                    game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
                end
                if _G.Observation ~= false and not game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
                end
            end
        else
            topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
        end
        if not World1 then
        end
        if not game:GetService('Workspace').Enemies:FindFirstChild('Galley Captain') then
        end
        if not game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
        end

        repeat
            task.wait()

            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Enemies:FindFirstChild('Galley Captain').HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
        until _G.Observation == false or not game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel')

        task.wait()

        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Enemies:FindFirstChild('Galley Captain').HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)

        wait(1)

        if not game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') and _G.Observation_Hop == true then
            game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
        end
        if _G.Observation == false or game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
        else
        end
        if not World3 then
        end
        if not game:GetService('Workspace').Enemies:FindFirstChild('Giant Islander') then
        end
        if not game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
        end

        task.wait()

        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Enemies:FindFirstChild('Giant Islander').HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)

        if _G.Observation ~= false and game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
        end

        topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
        task.wait()

        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Enemies:FindFirstChild('Giant Islander').HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)

        wait(1)

        if not game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') and _G.Observation_Hop == true then
            game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
        end
        if _G.Observation == false or game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui:FindFirstChild('ImageLabel') then
        else
        end

        topos(CFrame.new(5533.29785, 88.1079102, 4852.3916))
    end)
end)
v305:Seperator('Boss')

local vu505 = v305:Label('Status')

spawn(function()
    while task.wait() do
        pcall(function()
            if game:GetService('ReplicatedStorage'):FindFirstChild(_G.SelectBoss) or game:GetService('Workspace').Enemies:FindFirstChild(_G.SelectBoss) then
                vu505:Set('Status : Spawn!')
            else
                vu505:Set('Status : Boss Not Spawn')
            end
        end)
    end
end)

if World1 then
    v305:Dropdown('Select Boss', {
        'The Saw',
        'The Gorilla King',
        'Bobby',
        'Yeti',
        'Mob Leader',
        'Vice Admiral',
        'Warden',
        'Chief Warden',
        'Swan',
        'Magma Admiral',
        'Fishman Lord',
        'Wysper',
        'Thunder God',
        'Cyborg',
        'Saber Expert',
    }, false, function(p506)
        _G.SelectBoss = p506
    end)
end
if World2 then
    v305:Dropdown('Select Boss', {
        'Diamond',
        'Jeremy',
        'Fajita',
        'Don Swan',
        'Smoke Admiral',
        'Cursed Captain',
        'Darkbeard',
        'Order',
        'Awakened Ice Admiral',
        'Tide Keeper',
    }, false, function(p507)
        _G.SelectBoss = p507
    end)
end
if World3 then
    v305:Dropdown('Select Boss', {
        'Stone',
        'Island Empress',
        'Kilo Admiral',
        'Captain Elephant',
        'Beautiful Pirate',
        'rip_indra True Form',
        'Longma',
        'Soul Reaper',
        'Cake Queen',
    }, false, function(p508)
        _G.SelectBoss = p508
    end)
end

v305:Toggle('Auto Farm Boss', false, function(p509)
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('AbandonQuest')

    _G.FarmBoss = p509

    StopTween(_G.FarmBoss)
end)
spawn(function()
    while wait() do
        if _G.FarmBoss and not BypassTP then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild(_G.SelectBoss) then
                    local v510, v511, v512 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v513

                        v512, v513 = v510(v511, v512)

                        if v512 == nil then
                            break
                        end
                        if v513.Name == _G.SelectBoss and (v513:FindFirstChild('Humanoid') and (v513:FindFirstChild('HumanoidRootPart') and v513.Humanoid.Health > 0)) then
                            repeat
                                task.wait()
                                EquipWeapon(_G.SelectWeapon)

                                v513.HumanoidRootPart.CanCollide = false
                                v513.Humanoid.WalkSpeed = 0

                                TP2(v513.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.FarmBoss or (not v513.Parent or v513.Humanoid.Health <= 0)
                        end
                    end
                elseif game:GetService('ReplicatedStorage'):FindFirstChild(_G.SelectBoss) then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                end
            end)
        end
    end
end)
v305:Toggle('Auto Farm All Boss', false, function(p514)
    _G.AllBoss = p514

    StopTween(_G.AllBoss)
end)
v305:Toggle('Auto Farm All Boss Hop', false, function(p515)
    _G.AllBossHop = p515
end)
spawn(function()
    while wait() do
        if _G.AllBoss then
            pcall(function()
                local v516, v517, v518 = pairs(game.ReplicatedStorage:GetChildren())

                while true do
                    local v519

                    v518, v519 = v516(v517, v518)

                    if v518 == nil then
                        break
                    end
                    if v519.Name == 'rip_indra' or (v519.Name == 'Ice Admiral' or (v519.Name == 'Saber Expert' or (v519.Name == 'The Saw' or (v519.Name == 'Greybeard' or (v519.Name == 'Mob Leader' or (v519.Name == 'The Gorilla King' or (v519.Name == 'Bobby' or (v519.Name == 'Yeti' or (v519.Name == 'Vice Admiral' or (v519.Name == 'Warden' or (v519.Name == 'Chief Warden' or (v519.Name == 'Swan' or (v519.Name == 'Magma Admiral' or (v519.Name == 'Fishman Lord' or (v519.Name == 'Wysper' or (v519.Name == 'Thunder God' or (v519.Name == 'Cyborg' or (v519.Name == 'Don Swan' or (v519.Name == 'Diamond' or (v519.Name == 'Jeremy' or (v519.Name == 'Fajita' or (v519.Name == 'Smoke Admiral' or (v519.Name == 'Awakened Ice Admiral' or (v519.Name == 'Tide Keeper' or (v519.Name == 'Order' or (v519.Name == 'Darkbeard' or (v519.Name == 'Stone' or (v519.Name == 'Island Empress' or (v519.Name == 'Kilo Admiral' or (v519.Name == 'Captain Elephant' or (v519.Name == 'Beautiful Pirate' or (v519.Name == 'Cake Queen' or (v519.Name == 'rip_indra True Form' or (v519.Name == 'Longma' or (v519.Name == 'Soul Reaper' or (v519.Name == 'Cake Prince' or v519.Name == 'Dough King')))))))))))))))))))))))))))))))))))) then
                        if (v519.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000 then
                            repeat
                                task.wait()
                                EquipWeapon(_G.SelectWeapon)

                                v519.Humanoid.WalkSpeed = 0
                                v519.HumanoidRootPart.CanCollide = false
                                v519.Head.CanCollide = false

                                TP2(v519.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                            until v519.Humanoid.Health <= 0 or (_G.AllBoss == false or not v519.Parent)
                        end
                    elseif _G.AllBossHop then
                        Hop()
                    end
                end
            end)
        end
    end
end)
v306:Seperator('Speed Tween')

getgenv().TweenSpeed = 350

v306:Slider('Tween Speed', 50, 350, 350, function(p520)
    getgenv().TweenSpeed = p520
end)
v306:Toggle('Tween PosY Hight', true, function(p521)
    getgenv().TweenPosY = p521
end)

_G.SelectPosYHight = 200

v306:Slider('Select PosY Hight', 1, 2000, 200, function(p522)
    _G.SelectPosYHight = p522
end)
v306:Toggle('Spin Pos', true, function(p523)
    _G.SpinPos = p523
end)

PosX = 0

v306:Slider('Select PosX', 1, 100, 0, function(p524)
    PosX = p524
end)

PosY = 20

v306:Slider('Select PosY', 1, 100, 20, function(p525)
    PosY = p525
end)

PosZ = 15

v306:Slider('Select PosZ', 1, 100, 15, function(p526)
    PosZ = p526
end)
v306:Button('Stop All Tween', function()
    topos(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)

    _G.Clip = false
end)
v306:Seperator('Setting Farming')
v306:Toggle('Auto Click', false, function(p527)
    _G.AutoClick = p527
end)
spawn(function()
    game:GetService('RunService').RenderStepped:Connect(function()
        if _G.AutoClick then
            pcall(function()
                game:GetService('VirtualInputManager'):SendMouseButtonEvent(0, 0, 0, true, game, 0)
                task.wait()
                game:GetService('VirtualInputManager'):SendMouseButtonEvent(0, 0, 0, false, game, 0)
            end)
        end
    end)
end)
v306:Toggle('Auto Shoot Gun', false, function(p528)
    _G.AutoShootGun = p528
end)

function GetClosestEnemyPart()
    local v529 = game:GetService('Players').LocalPlayer.Character

    if v529 then
        local v530 = v529:FindFirstChild('HumanoidRootPart')

        if v530 then
            local v531, v532, v533 = ipairs(workspace.Enemies:GetChildren())
            local v534 = 100
            local v535 = nil

            while true do
                local v536

                v533, v536 = v531(v532, v533)

                if v533 == nil then
                    break
                end
                if v536:IsA('Model') then
                    local v537 = v536:FindFirstChild('Head') or v536:FindFirstChild('HumanoidRootPart')

                    if v537 and v537:IsA('BasePart') then
                        local v538 = (v537.Position - v530.Position).Magnitude

                        if v538 < v534 then
                            v535 = v537
                            v534 = v538
                        end
                    end
                end
            end

            return v535
        end
    end
end

task.spawn(function()
    while task.wait(0.1) do
        if _G.AutoShootGun and GetClosestEnemyPart() then
            game:GetService('ReplicatedStorage'):WaitForChild('Modules'):WaitForChild('Net'):FindFirstChild('RE/ShootGunEvent'):FireServer(GetClosestEnemyPart().Position, {
                GetClosestEnemyPart(),
            })
            game:GetService('VirtualInputManager'):SendMouseButtonEvent(0, 0, 0, true, game, 0)
            game:GetService('VirtualInputManager'):SendMouseButtonEvent(0, 0, 0, false, game, 0)
        end
    end
end)
v306:Toggle('Bring Mob', true, function(p539)
    _G.BringMonster = p539
end)
spawn(function()
    while task.wait(0.1) do
        if _G.BringMonster then
            pcall(function()
                vu106()

                local v540, v541, v542 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v543

                    v542, v543 = v540(v541, v542)

                    if v542 == nil then
                        break
                    end
                    if v543:FindFirstChild('Humanoid') and (v543:FindFirstChild('HumanoidRootPart') and v543.Humanoid.Health > 0) then
                        local v544 = false

                        if _G.Level and (StartMagnetLv and (v543.Name == Mon and not v544)) then
                            v544 = (v543.HumanoidRootPart.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode
                        end
                        if v544 then
                            v543.HumanoidRootPart.CFrame = PosMonLv
                            v543.HumanoidRootPart.CanCollide = false
                            v543.Head.CanCollide = false
                            v543.Humanoid.JumpPower = 0
                            v543.Humanoid.WalkSpeed = 0

                            v543.Humanoid:ChangeState(14)

                            if v543.Humanoid:FindFirstChild('Animator') then
                                v543.Humanoid.Animator:Destroy()
                            end

                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                        end
                    end
                end
            end)
        end
    end
end)

local vu545 = {
    Cake = {
        ['Cookie Crafter'] = CFrame.new(-2333.28052, 37.8239059, -12093.2861),
        ['Cake Guard'] = CFrame.new(-1575.56433, 37.8238907, -12416.2529),
        ['Baking Staff'] = CFrame.new(-1872.35742, 37.8239517, -12899.4248),
        ['Head Baker'] = CFrame.new(-2223.1416, 53.5283203, -12854.752),
    },
    Bone = {
        ['Reborn Skeleton'] = CFrame.new(-8769.58984, 142.13063, 6055.27637),
        ['Living Zombie'] = CFrame.new(-10156.4531, 138.652481, 5964.5752),
        ['Demonic Soul'] = CFrame.new(-9525.17188, 172.13063, 6152.30566),
        ['Posessed Mummy'] = CFrame.new(-9570.88281, 5.81831884, 6187.86279),
    },
}

function BringEnemies(p546, _)
    local v547, v548, v549 = pairs(game.Workspace.Enemies:GetChildren())

    while true do
        local v550

        v549, v550 = v547(v548, v549)

        if v549 == nil then
            break
        end
        if vu545[p546][v550.Name] then
            local v551 = vu545[p546][v550.Name]

            if v551 then
                v550.HumanoidRootPart.CFrame = v551
            end

            v550.Head.CanCollide = false
            v550.Humanoid.Sit = false

            v550.Humanoid:ChangeState(14)

            v550.HumanoidRootPart.CanCollide = false
            v550.Humanoid.JumpPower = 0
            v550.Humanoid.WalkSpeed = 0

            local v552 = v550.Humanoid:FindFirstChild('Animator')

            if v552 then
                v552:Destroy()
            end

            sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
        end
    end
end

spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if _G.BringMonster then
                if CakeBring then
                    BringEnemies('Cake')
                end
                if BonesBring then
                    BringEnemies('Bone')
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait(0.1) do
        if StartMagnet and _G.BringMonster then
            pcall(function()
                local v553, v554, v555 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local v556

                    v555, v556 = v553(v554, v555)

                    if v555 == nil then
                        break
                    end
                    if v556:FindFirstChild('Humanoid') and (v556:FindFirstChild('HumanoidRootPart') and (v556.HumanoidRootPart.Position - _G.PosMon.Position).Magnitude <= _G.BringMode) then
                        v556.HumanoidRootPart.CFrame = _G.PosMon
                        v556.HumanoidRootPart.CanCollide = false
                        v556.Humanoid.JumpPower = 0
                        v556.Humanoid.WalkSpeed = 0

                        v556.Humanoid:ChangeState(14)

                        if v556.Humanoid:FindFirstChild('Animator') then
                            v556.Humanoid.Animator:Destroy()
                        end

                        sethiddenproperty(game.Players.LocalPlayer, 'MaximumSimulationRadius', math.huge)
                        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                    end
                end
            end)
        end
    end
end)
v306:Dropdown('Bring Mob Mode', {
    '100',
    '200',
    '300',
    '350',
    '400',
    '500',
}, '200', function(p557)
    _G.BringMode = tonumber(p557)
end)
v306:Toggle('Auto Haki', true, function(p558)
    _G.Haki = p558
end)
spawn(function()
    while task.wait(0.1) do
        if _G.Haki and not game.Players.LocalPlayer.Character:FindFirstChild('HasBuso') then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'Buso',
            }))
        end
    end
end)
v306:Toggle('Auto Ken', false, function(p559)
    _G.Ken = p559
end)
spawn(function()
    while wait() do
        if _G.Ken == true then
            pcall(function()
                game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('Ken', true)
            end)
        end
    end
end)
v306:Toggle('Disabled Notifications', false, function(p560)
    _G.Remove_trct = p560
end)
spawn(function()
    while wait() do
        if _G.Remove_trct then
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
        else
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
        end
    end
end)
v306:Toggle('Disabled Damage Counter', false, function(p561)
    _G.DisabledDame = p561
end)
spawn(function()
    while wait() do
        if _G.DisabledDame then
            game:GetService('ReplicatedStorage').Assets.GUI.DamageCounter.Enabled = false
        else
            game:GetService('ReplicatedStorage').Assets.GUI.DamageCounter.Enabled = true
        end
    end
end)

local vu562 = Instance.new('BlurEffect')

vu562.Size = 100
vu562.Enabled = false
vu562.Parent = game.Lighting

v306:Toggle('Fix Lag Screen', false, function(p563)
    vu562.Enabled = p563
end)
v306:Toggle('White Screen', false, function(p564)
    _G.WhiteScreen = p564

    game:GetService('RunService'):Set3dRenderingEnabled(not _G.WhiteScreen)
end)
spawn(function()
    while wait() do
        if _G.WhiteScreen then
            local v565, v566, v567 = pairs(game.Workspace._WorldOrigin:GetChildren())

            while true do
                local v568

                v567, v568 = v565(v566, v567)

                if v567 == nil then
                    break
                end
                if v568.Name == 'CurvedRing' or (v568.Name == 'SlashHit' or (v568.Name == 'DamageCounter' or (v568.Name == 'SwordSlash' or (v568.Name == 'SlashTail' or v568.Name == 'Sounds')))) then
                    v568:Destroy()
                end
            end
        end
    end
end)
v306:Toggle('Invisible Monsters', false, function(p569)
    _G.hadesinvis = p569
end)
spawn(function()
    while wait() do
        if _G.hadesinvis then
            pcall(function()
                local v570, v571, v572 = pairs(game:GetService('Workspace').Enemies:GetDescendants())

                while true do
                    local v573

                    v572, v573 = v570(v571, v572)

                    if v572 == nil then
                        break
                    end
                    if v573.ClassName == 'MeshPart' then
                        v573.Transparency = 1
                    end
                end

                local v574, v575, v576 = pairs(game:GetService('Workspace').Enemies:GetDescendants())

                while true do
                    local v577

                    v576, v577 = v574(v575, v576)

                    if v576 == nil then
                        break
                    end
                    if v577.Name == 'Head' then
                        v577.Transparency = 1
                    end
                end

                local v578, v579, v580 = pairs(game:GetService('Workspace').Enemies:GetDescendants())

                while true do
                    local v581

                    v580, v581 = v578(v579, v580)

                    if v580 == nil then
                        break
                    end
                    if v581.ClassName == 'Accessory' then
                        v581.Handle.Transparency = 1
                    end
                end

                local v582, v583, v584 = pairs(game:GetService('Workspace').Enemies:GetDescendants())

                while true do
                    local v585

                    v584, v585 = v582(v583, v584)

                    if v584 == nil then
                        break
                    end
                    if v585.ClassName == 'Decal' then
                        v585.Transparency = 1
                    end
                end
            end)
        end
    end
end)
v306:Toggle('Fps Boost', false, function(p586)
    if p586 then
        cleanlag()
    end
end)

function cleanlag()
    spawn(function()
        local v587, v588, v589 = pairs(workspace:GetDescendants())

        while true do
            local v590

            v589, v590 = v587(v588, v589)

            if v589 == nil then
                break
            end
            if v590.ClassName == 'Part' or (v590.ClassName == 'SpawnLocation' or (v590.ClassName == 'WedgePart' or v590.ClassName == 'Terrain')) then
                v590.Material = 'Plastic'
            end
        end

        local v591, v592, v593 = pairs(game:GetDescendants())

        while true do
            local v594

            v593, v594 = v591(v592, v593)

            if v593 == nil then
                break
            end
            if v594:IsA('Texture') then
                v594.Texture = ''
            elseif v594:IsA('BasePart') then
                v594.Material = 'Plastic'
            end
        end

        local v595, v596, v597 = pairs(Players.LocalPlayer.PlayerScripts:GetDescendants())

        while true do
            local v598

            v597, v598 = v595(v596, v597)

            if v597 == nil then
                break
            end
            if table.find({
                'RecordMode',
                'Fireflies',
                'Wind',
                'WindShake',
                'WindLines',
                'WaterBlur',
                'WaterEffect',
                'wave',
                'WaterColorCorrection',
                'WaterCFrame',
                'MirageFog',
                'MobileButtonTransparency',
                'WeatherStuff',
                'AnimateEntrance',
                'Particle',
                'AccessoryInvisible',
            }, v598.Name) then
                v598:Destroy()
            end
        end
    end)
end

v306:Seperator('Setting Farm Mastery')

Kill_At = 20

v306:Slider('Select % Health Mob', 10, 100, 20, function(p599)
    Kill_At = p599
end)
v306:Toggle('Skill Z', true, function(p600)
    _G.SkillZ = p600
end)
v306:Toggle('Skill X', true, function(p601)
    _G.SkillX = p601
end)
v306:Toggle('Skill C', true, function(p602)
    _G.SkillC = p602
end)
v306:Toggle('Skill V', true, function(p603)
    _G.SkillV = p603
end)

if World1 or World2 then
    v307:Seperator('World')
end
if World1 then
    v307:Toggle('Auto Second Sea', false, function(p604)
        _G.SecondSea = p604

        StopTween(_G.SecondSea)
    end)
    spawn(function()
        while wait() do
            if _G.SecondSea then
                pcall(function()
                    if game:GetService('Players').LocalPlayer.Data.Level.Value >= 700 and World1 then
                        if game:GetService('Workspace').Map.Ice.Door.CanCollide ~= false or game:GetService('Workspace').Map.Ice.Door.Transparency ~= 1 then
                            if game:GetService('Workspace').Map.Ice.Door.CanCollide == false and game:GetService('Workspace').Map.Ice.Door.Transparency == 1 then
                                if game:GetService('Workspace').Enemies:FindFirstChild('Ice Admiral') then
                                    local v605, v606, v607 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                    while true do
                                        local v608

                                        v607, v608 = v605(v606, v607)

                                        if v607 == nil then
                                            break
                                        end
                                        if v608.Name == 'Ice Admiral' then
                                            if not v608.Humanoid.Health > 0 then
                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
                                            elseif v608:FindFirstChild('Humanoid') and (v608:FindFirstChild('HumanoidRootPart') and v608.Humanoid.Health > 0) then
                                                OldCFrameSecond = v608.HumanoidRootPart.CFrame

                                                repeat
                                                    task.wait()
                                                    EquipWeapon(_G.SelectWeapon)

                                                    v608.HumanoidRootPart.CanCollide = false
                                                    v608.Humanoid.WalkSpeed = 0
                                                    v608.Head.CanCollide = false
                                                    v608.HumanoidRootPart.CFrame = OldCFrameSecond

                                                    TP2(v608.HumanoidRootPart.CFrame * Pos)
                                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                                until not _G.SecondSea or (not v608.Parent or v608.Humanoid.Health <= 0)
                                            end
                                        end
                                    end
                                elseif game:GetService('ReplicatedStorage'):FindFirstChild('Ice Admiral') then
                                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Ice Admiral').HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                                end
                            end
                        else
                            local v609 = CFrame.new(4849.29883, 5.65138149, 719.611877)

                            repeat
                                topos(v609)
                                wait()
                            until (v609.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.SecondSea == false

                            wait(1.1)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('DressrosaQuestProgress', 'Detective')
                            wait(0.5)
                            EquipWeapon('Key')

                            repeat
                                topos(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                                wait()
                            until (Vector3.new(1347.7124, 37.3751602, -1325.6488) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.SecondSea == false

                            wait(0.5)
                        end
                    end
                end)
            end
        end
    end)
end
if World2 then
    v307:Toggle('Auto Third Sea', false, function(p610)
        _G.ThirdSea = p610

        StopTween(_G.ThirdSea)
    end)
    spawn(function()
        while wait() do
            if _G.ThirdSea then
                pcall(function()
                    if game:GetService('Players').LocalPlayer.Data.Level.Value >= 1500 and World2 then
                        _G.Level = false

                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ZQuestProgress', 'General') == 0 then
                            topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))

                            if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(1.5)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ZQuestProgress', 'Begin')
                            end

                            wait(1.8)

                            if game:GetService('Workspace').Enemies:FindFirstChild('rip_indra') then
                                local v611, v612, v613 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local v614

                                    v613, v614 = v611(v612, v613)

                                    if v613 == nil then
                                        break
                                    end
                                    if v614.Name == 'rip_indra' then
                                        OldCFrameThird = v614.HumanoidRootPart.CFrame

                                        repeat
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            TP2(v614.HumanoidRootPart.CFrame * Pos)

                                            v614.HumanoidRootPart.CFrame = OldCFrameThird
                                            v614.HumanoidRootPart.CanCollide = false
                                            v614.Humanoid.WalkSpeed = 0

                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
                                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                        until _G.ThirdSea == false or (v614.Humanoid.Health <= 0 or not v614.Parent)
                                    end
                                end
                            elseif not game:GetService('Workspace').Enemies:FindFirstChild('rip_indra') and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                            end
                        end
                    end
                end)
            end
        end
    end)
    v307:Toggle('Auto Farm Factory', false, function(p615)
        _G.Factory = p615

        StopTween(_G.Factory)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Factory then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Core') then
                        local v616, v617, v618 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v619

                            v618, v619 = v616(v617, v618)

                            if v618 == nil then
                                break
                            end
                            if v619.Name == 'Core' and v619.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    topos(CFrame.new(448.46756, 199.356781, -441.389252))
                                until v619.Humanoid.Health <= 0 or _G.Factory == false
                            end
                        end
                    else
                        topos(CFrame.new(448.46756, 199.356781, -441.389252))
                    end
                end
            end)
        end
    end)
end

v307:Seperator('Fighting Style')
v307:Toggle('Auto Superhuman', false, function(p620)
    _G.Superhuman = p620
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Superhuman then
                if game.Players.LocalPlayer.Backpack:FindFirstChild('Combat') or game.Players.LocalPlayer.Character:FindFirstChild('Combat') and game:GetService('Players').LocalPlayer.Data.Beli.Value >= 150000 then
                    UnEquipWeapon('Combat')
                    wait(0.1)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBlackLeg')
                end
                if game.Players.LocalPlayer.Character:FindFirstChild('Superhuman') or game.Players.LocalPlayer.Backpack:FindFirstChild('Superhuman') then
                    _G.SelectWeapon = 'Superhuman'
                end
                if game.Players.LocalPlayer.Backpack:FindFirstChild('Black Leg') or (game.Players.LocalPlayer.Character:FindFirstChild('Black Leg') or (game.Players.LocalPlayer.Backpack:FindFirstChild('Electro') or (game.Players.LocalPlayer.Character:FindFirstChild('Electro') or (game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate') or (game.Players.LocalPlayer.Character:FindFirstChild('Fishman Karate') or (game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Claw') or game.Players.LocalPlayer.Character:FindFirstChild('Dragon Claw'))))))) then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Black Leg') and game.Players.LocalPlayer.Backpack:FindFirstChild('Black Leg').Level.Value <= 299 then
                        _G.SelectWeapon = 'Black Leg'
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Electro') and game.Players.LocalPlayer.Backpack:FindFirstChild('Electro').Level.Value <= 299 then
                        _G.SelectWeapon = 'Electro'
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate') and game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate').Level.Value <= 299 then
                        _G.SelectWeapon = 'Fishman Karate'
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Claw') and game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Claw').Level.Value <= 299 then
                        _G.SelectWeapon = 'Dragon Claw'
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Black Leg') and (game.Players.LocalPlayer.Backpack:FindFirstChild('Black Leg').Level.Value >= 300 and game:GetService('Players').LocalPlayer.Data.Beli.Value >= 300000) then
                        UnEquipWeapon('Black Leg')
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectro')
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild('Black Leg') and (game.Players.LocalPlayer.Character:FindFirstChild('Black Leg').Level.Value >= 300 and game:GetService('Players').LocalPlayer.Data.Beli.Value >= 300000) then
                        UnEquipWeapon('Black Leg')
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectro')
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Electro') and (game.Players.LocalPlayer.Backpack:FindFirstChild('Electro').Level.Value >= 300 and game:GetService('Players').LocalPlayer.Data.Beli.Value >= 750000) then
                        UnEquipWeapon('Electro')
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyFishmanKarate')
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild('Electro') and (game.Players.LocalPlayer.Character:FindFirstChild('Electro').Level.Value >= 300 and game:GetService('Players').LocalPlayer.Data.Beli.Value >= 750000) then
                        UnEquipWeapon('Electro')
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyFishmanKarate')
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate') and (game.Players.LocalPlayer.Backpack:FindFirstChild('Fishman Karate').Level.Value >= 300 and game:GetService('Players').Localplayer.Data.Fragments.Value >= 1500) then
                        UnEquipWeapon('Fishman Karate')
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '1')
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild('Fishman Karate') and (game.Players.LocalPlayer.Character:FindFirstChild('Fishman Karate').Level.Value >= 300 and game:GetService('Players').Localplayer.Data.Fragments.Value >= 1500) then
                        UnEquipWeapon('Fishman Karate')
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '1')
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Claw') and (game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Claw').Level.Value >= 300 and game:GetService('Players').LocalPlayer.Data.Beli.Value >= 3000000) then
                        UnEquipWeapon('Dragon Claw')
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild('Dragon Claw') and (game.Players.LocalPlayer.Character:FindFirstChild('Dragon Claw').Level.Value >= 300 and game:GetService('Players').LocalPlayer.Data.Beli.Value >= 3000000) then
                        UnEquipWeapon('Dragon Claw')
                        wait(0.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
                    end
                end
            end
        end
    end)
end)
v307:Toggle('Auto DeathStep', false, function(p621)
    _G.DeathStep = p621
end)
spawn(function()
    while wait() do
        wait()

        if _G.DeathStep then
            if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Black Leg') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Black Leg') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Death Step') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Death Step'))) then
                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Black Leg') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Black Leg').Level.Value >= 450 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')

                    _G.SelectWeapon = 'Death Step'
                end
                if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Black Leg') and game:GetService('Players').LocalPlayer.Character:FindFirstChild('Black Leg').Level.Value >= 450 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')

                    _G.SelectWeapon = 'Death Step'
                end
                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Black Leg') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Black Leg').Level.Value <= 449 then
                    _G.SelectWeapon = 'Black Leg'
                end
            else
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBlackLeg')
            end
        end
    end
end)
v307:Toggle('Auto Sharkman Karate', false, function(p622)
    _G.Sharkman = p622
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Sharkman then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyFishmanKarate')

                if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate'), 'keys') then
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Water Key') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Water Key') then
                        topos(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
                    elseif not game:GetService('Players').LocalPlayer.Character:FindFirstChild('Fishman Karate') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Fishman Karate').Level.Value < 400 then
                        Ms = 'Tide Keeper'

                        if game:GetService('Workspace').Enemies:FindFirstChild(Ms) then
                            local v623, v624, v625 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v626

                                v625, v626 = v623(v624, v625)

                                if v625 == nil then
                                    break
                                end
                                if v626.Name == Ms then
                                    OldCFrameShark = v626.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)

                                        v626.Head.CanCollide = false
                                        v626.Humanoid.WalkSpeed = 0
                                        v626.HumanoidRootPart.CanCollide = false
                                        v626.HumanoidRootPart.CFrame = OldCFrameShark

                                        TP2(v626.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                    until not v626.Parent or (v626.Humanoid.Health <= 0 or _G.Sharkman == false) or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Water Key') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Water Key'))
                                end
                            end
                        else
                            topos(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857325999999999e-8, 0.885206044, 4.0332897e-9, 1, 1.35347511e-8, -0.885206044, -2.72606271e-9, 0.465199202))
                            wait(3)
                        end
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
                end
            end
        end
    end)
end)
v307:Toggle('Auto Electric Claw', false, function(p627)
    _G.ElectricClaw = p627

    StopTween(_G.ElectricClaw)
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.ElectricClaw then
                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electro') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Electro') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electric Claw') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Electric Claw'))) then
                    if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electro') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electro').Level.Value >= 400 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')

                        _G.SelectWeapon = 'Electric Claw'
                    end
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Electro') and game:GetService('Players').LocalPlayer.Character:FindFirstChild('Electro').Level.Value >= 400 then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')

                        _G.SelectWeapon = 'Electric Claw'
                    end
                    if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electro') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electro').Level.Value <= 399 then
                        _G.SelectWeapon = 'Electro'
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectro')
                end
            end
            if _G.ElectricClaw and (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electro') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Electro')) and (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electro') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Electro') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Electro').Level.Value >= 400 or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Electro').Level.Value >= 400) then
                if _G.Level ~= false then
                    if _G.Level == true then
                        _G.Level = false

                        wait(1)

                        repeat
                            task.wait()
                            topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                        until not _G.ElectricClaw or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10

                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw', 'Start')
                        wait(2)

                        repeat
                            task.wait()
                            topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                        until not _G.ElectricClaw or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10

                        wait(1)

                        repeat
                            task.wait()
                            topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                        until not _G.ElectricClaw or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10

                        wait(1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')

                        _G.SelectWeapon = 'Electric Claw'

                        wait(0.1)

                        _G.Level = true
                    end
                else
                    repeat
                        task.wait()
                        topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                    until not _G.ElectricClaw or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw', 'Start')
                    wait(2)

                    repeat
                        task.wait()
                        topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
                    until not _G.ElectricClaw or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10

                    wait(1)

                    repeat
                        task.wait()
                        topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
                    until not _G.ElectricClaw or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10

                    wait(1)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')
                end
            end
        end
    end)
end)
v307:Toggle('Auto Dragon Talon', false, function(p628)
    _G.DragonTalon = p628
end)
spawn(function()
    while wait() do
        if _G.DragonTalon then
            if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Claw') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dragon Claw') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Talon') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dragon Talon'))) then
                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Claw') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Claw').Level.Value >= 400 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')

                    _G.SelectWeapon = 'Dragon Talon'
                end
                if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dragon Claw') and game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dragon Claw').Level.Value >= 400 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')

                    _G.SelectWeapon = 'Dragon Talon'
                end
                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Claw') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Claw').Level.Value <= 399 then
                    _G.SelectWeapon = 'Dragon Claw'
                end
            else
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
            end
        end
    end
end)
v307:Toggle('Auto GodHuman', false, function(p629)
    _G.God_Human = p629
end)
spawn(function()
    while task.wait() do
        if _G.God_Human then
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChild('Superhuman') or (game.Players.LocalPlayer.Backpack:FindFirstChild('Superhuman') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Black Leg') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Black Leg') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Death Step') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Death Step') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Fishman Karate') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Fishman Karate') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Sharkman Karate') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Sharkman Karate') or (game.Players.LocalPlayer.Backpack:FindFirstChild('Electro') or (game.Players.LocalPlayer.Character:FindFirstChild('Electro') or (game.Players.LocalPlayer.Backpack:FindFirstChild('Electric Claw') or (game.Players.LocalPlayer.Character:FindFirstChild('Electric Claw') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Claw') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dragon Claw') or (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dragon Talon') or (game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dragon Talon') or (game.Players.LocalPlayer.Character:FindFirstChild('Godhuman') or game.Players.LocalPlayer.Backpack:FindFirstChild('Godhuman'))))))))))))))))))) then
                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman', true) == 1 and (game.Players.LocalPlayer.Backpack:FindFirstChild('Superhuman') and game.Players.LocalPlayer.Backpack:FindFirstChild('Superhuman').Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild('Superhuman') and game.Players.LocalPlayer.Character:FindFirstChild('Superhuman').Level.Value >= 400) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')
                    end
                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep', true) == 1 and (game.Players.LocalPlayer.Backpack:FindFirstChild('Death Step') and game.Players.LocalPlayer.Backpack:FindFirstChild('Death Step').Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild('Death Step') and game.Players.LocalPlayer.Character:FindFirstChild('Death Step').Level.Value >= 400) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
                    end
                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate', true) == 1 and (game.Players.LocalPlayer.Backpack:FindFirstChild('Sharkman Karate') and game.Players.LocalPlayer.Backpack:FindFirstChild('Sharkman Karate').Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild('Sharkman Karate') and game.Players.LocalPlayer.Character:FindFirstChild('Sharkman Karate').Level.Value >= 400) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')
                    end
                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw', true) == 1 and (game.Players.LocalPlayer.Backpack:FindFirstChild('Electric Claw') and game.Players.LocalPlayer.Backpack:FindFirstChild('Electric Claw').Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild('Electric Claw') and game.Players.LocalPlayer.Character:FindFirstChild('Electric Claw').Level.Value >= 400) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')
                    end
                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon', true) == 1 and (game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Talon') and game.Players.LocalPlayer.Backpack:FindFirstChild('Dragon Talon').Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild('Dragon Talon') and game.Players.LocalPlayer.Character:FindFirstChild('Dragon Talon').Level.Value >= 400) and not string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyGodhuman', true), 'Bring') then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyGodhuman')
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
                end
            end)
        end
    end
end)
v307:Seperator('Materials')

if World2 then
    v307:Toggle('Auto Farm Radioactive Material', false, function(p630)
        Radioactive = p630

        StopTween(Radioactive)
    end)

    local vu631 = CFrame.new(-507.7895202636719, 72.99479675292969, -126.45632934570313)

    spawn(function()
        while wait() do
            if Radioactive and World2 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Factory Staff') then
                        local v632, v633, v634 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v635

                            v634, v635 = v632(v633, v634)

                            if v634 == nil then
                                break
                            end
                            if v635.Name == 'Factory Staff' and (v635:FindFirstChild('Humanoid') and (v635:FindFirstChild('HumanoidRootPart') and v635.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v635.HumanoidRootPart.CanCollide = false
                                    v635.Humanoid.WalkSpeed = 0
                                    v635.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v635.HumanoidRootPart.CFrame

                                    TP2(v635.HumanoidRootPart.CFrame * Pos)
                                until not Radioactive or (not v635.Parent or v635.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu631)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Factory Staff') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Factory Staff').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
    v307:Toggle('Auto Farm Ectoplasm', false, function(p636)
        _G.Ectoplasm = p636

        StopTween(_G.Ectoplasm)
    end)
    spawn(function()
        while wait() do
            if _G.Ectoplasm and World2 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Ship Deckhand') or (game:GetService('Workspace').Enemies:FindFirstChild('Ship Engineer') or (game:GetService('Workspace').Enemies:FindFirstChild('Ship Steward') or game:GetService('Workspace').Enemies:FindFirstChild('Ship Officer'))) then
                        local v637, v638, v639 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v640

                            v639, v640 = v637(v638, v639)

                            if v639 == nil then
                                break
                            end

                            local _ = v640.Name == 'Ship Officer' or v640.Name == 'Ship Steward'

                            if v640:FindFirstChild('Humanoid') and (v640:FindFirstChild('HumanoidRootPart') and v640.Humanoid.Health > 0) then
                                repeat
                                    wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v640.HumanoidRootPart.CanCollide = false
                                    v640.Humanoid.WalkSpeed = 0

                                    TP2(v640.HumanoidRootPart.CFrame * Pos)

                                    StartMagnet = true
                                    _G.PosMon = v640.HumanoidRootPart.CFrame
                                until not _G.Ectoplasm or (not v640.Parent or v640.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        StartMagnet = false

                        topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                    end
                end)
            end
        end
    end)
    v307:Toggle('Auto Farm Mystic Droplet', false, function(p641)
        _G.Makori_gay = p641

        StopTween(_G.Makori_gay)
    end)

    local vu642 = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)

    spawn(function()
        while wait() do
            if _G.Makori_gay and World2 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Water Fighter') then
                        local v643, v644, v645 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v646

                            v645, v646 = v643(v644, v645)

                            if v645 == nil then
                                break
                            end
                            if v646.Name == 'Water Fighter' and (v646:FindFirstChild('Humanoid') and (v646:FindFirstChild('HumanoidRootPart') and v646.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v646.HumanoidRootPart.CanCollide = false
                                    v646.Humanoid.WalkSpeed = 0
                                    v646.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v646.HumanoidRootPart.CFrame

                                    TP2(v646.HumanoidRootPart.CFrame * Pos)
                                until not _G.Makori_gay or (not v646.Parent or v646.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu642)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Water Fighter') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Water Fighter').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
end
if World1 or World2 then
    v307:Toggle('Auto Farm Magma Ore', false, function(p647)
        _G.Umm = p647

        StopTween(_G.Umm)
    end)

    local vu648 = CFrame.new(-5850.2802734375, 77.28675079345703, 8848.6748046875)

    spawn(function()
        while wait() do
            if _G.Umm and World1 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Military Spy') then
                        local v649, v650, v651 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v652

                            v651, v652 = v649(v650, v651)

                            if v651 == nil then
                                break
                            end
                            if v652.Name == 'Military Spy' and (v652:FindFirstChild('Humanoid') and (v652:FindFirstChild('HumanoidRootPart') and v652.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v652.HumanoidRootPart.CanCollide = false
                                    v652.Humanoid.WalkSpeed = 0
                                    v652.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v652.HumanoidRootPart.CFrame

                                    TP2(v652.HumanoidRootPart.CFrame * Pos)
                                until not _G.Umm or (not v652.Parent or v652.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu648)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Military Spy') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Military Spy').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)

    local vu653 = CFrame.new(-5234.60595703125, 51.953372955322266, -4732.27880859375)

    spawn(function()
        while wait() do
            if _G.Umm and World2 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Lava Pirate') then
                        local v654, v655, v656 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v657

                            v656, v657 = v654(v655, v656)

                            if v656 == nil then
                                break
                            end
                            if v657.Name == 'Lava Pirate' and (v657:FindFirstChild('Humanoid') and (v657:FindFirstChild('HumanoidRootPart') and v657.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v657.HumanoidRootPart.CanCollide = false
                                    v657.Humanoid.WalkSpeed = 0
                                    v657.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v657.HumanoidRootPart.CFrame

                                    TP2(v657.HumanoidRootPart.CFrame * Pos)
                                until not _G.Umm or (not v657.Parent or v657.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu653)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Lava Pirate') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Lava Pirate').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
end
if World1 then
    v307:Toggle('Auto Farm Angel Wings', false, function(p658)
        _G.Wing = p658

        StopTween(_G.Wing)
    end)

    local vu659 = CFrame.new(-7827.15625, 5606.912109375, -1705.5833740234375)

    spawn(function()
        while wait() do
            if _G.Wing and World1 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Royal Soldier') then
                        local v660, v661, v662 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v663

                            v662, v663 = v660(v661, v662)

                            if v662 == nil then
                                break
                            end
                            if v663.Name == 'Royal Soldier' and (v663:FindFirstChild('Humanoid') and (v663:FindFirstChild('HumanoidRootPart') and v663.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v663.HumanoidRootPart.CanCollide = false
                                    v663.Humanoid.WalkSpeed = 0
                                    v663.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v663.HumanoidRootPart.CFrame

                                    TP2(v663.HumanoidRootPart.CFrame * Pos)
                                until not _G.Wing or (not v663.Parent or v663.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu659)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Royal Soldier') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Royal Soldier').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
end
if World1 or (World2 or World3) then
    v307:Toggle('Auto Farm Leather', false, function(p664)
        _G.Leather = p664

        StopTween(_G.Leather)
    end)

    local vu665 = CFrame.new(-1211.8792724609375, 4.787090301513672, 3916.83056640625)

    spawn(function()
        while wait() do
            if _G.Leather and World1 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Pirate') then
                        local v666, v667, v668 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v669

                            v668, v669 = v666(v667, v668)

                            if v668 == nil then
                                break
                            end
                            if v669.Name == 'Pirate' and (v669:FindFirstChild('Humanoid') and (v669:FindFirstChild('HumanoidRootPart') and v669.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v669.HumanoidRootPart.CanCollide = false
                                    v669.Humanoid.WalkSpeed = 0
                                    v669.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v669.HumanoidRootPart.CFrame

                                    TP2(v669.HumanoidRootPart.CFrame * Pos)
                                until not _G.Leather or (not v669.Parent or v669.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu665)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Pirate') then
                            topos(game:GetService('ReplicatedStorage').Pirate.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)

    local vu670 = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)

    spawn(function()
        while wait() do
            if _G.Leather and World2 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Marine Captain') then
                        local v671, v672, v673 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v674

                            v673, v674 = v671(v672, v673)

                            if v673 == nil then
                                break
                            end
                            if v674.Name == 'Marine Captain' and (v674:FindFirstChild('Humanoid') and (v674:FindFirstChild('HumanoidRootPart') and v674.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v674.HumanoidRootPart.CanCollide = false
                                    v674.Humanoid.WalkSpeed = 0
                                    v674.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v674.HumanoidRootPart.CFrame

                                    TP2(v674.HumanoidRootPart.CFrame * Pos)
                                until not _G.Leather or (not v674.Parent or v674.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu670)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Marine Captain') then
                            topos(game:GetService('ReplicatedStorage').MarineCaptain.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)

    local vu675 = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)

    spawn(function()
        while wait() do
            if _G.Leather and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Jungle Pirate') then
                        local v676, v677, v678 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v679

                            v678, v679 = v676(v677, v678)

                            if v678 == nil then
                                break
                            end
                            if v679.Name == 'Jungle Pirate' and (v679:FindFirstChild('Humanoid') and (v679:FindFirstChild('HumanoidRootPart') and v679.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v679.HumanoidRootPart.CanCollide = false
                                    v679.Humanoid.WalkSpeed = 0
                                    v679.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v679.HumanoidRootPart.CFrame

                                    TP2(v679.HumanoidRootPart.CFrame * Pos)
                                until not _G.Leather or (not v679.Parent or v679.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu675)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Jungle Pirate') then
                            topos(game:GetService('ReplicatedStorage').JunglePirate.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
end
if World1 or (world2 or World3) then
    v307:Toggle('Auto Farm Scrap Metal', false, function(p680)
        Scrap = p680

        StopTween(Scrap)
    end)

    local vu681 = CFrame.new(-1132.4202880859375, 14.844913482666016, 4293.30517578125)

    spawn(function()
        while wait() do
            if Scrap and World1 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Brute') then
                        local v682, v683, v684 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v685

                            v684, v685 = v682(v683, v684)

                            if v684 == nil then
                                break
                            end
                            if v685.Name == 'Brute' and (v685:FindFirstChild('Humanoid') and (v685:FindFirstChild('HumanoidRootPart') and v685.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v685.HumanoidRootPart.CanCollide = false
                                    v685.Humanoid.WalkSpeed = 0
                                    v685.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v685.HumanoidRootPart.CFrame

                                    TP2(v685.HumanoidRootPart.CFrame * Pos)
                                until not Scrap or (not v685.Parent or v685.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu681)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Brute') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Brute').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)

    local vu686 = CFrame.new(-972.307373046875, 73.04473876953125, 1419.2901611328125)

    spawn(function()
        while wait() do
            if Scrap and World2 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Mercenary') then
                        local v687, v688, v689 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v690

                            v689, v690 = v687(v688, v689)

                            if v689 == nil then
                                break
                            end
                            if v690.Name == 'Mercenary' and (v690:FindFirstChild('Humanoid') and (v690:FindFirstChild('HumanoidRootPart') and v690.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v690.HumanoidRootPart.CanCollide = false
                                    v690.Humanoid.WalkSpeed = 0
                                    v690.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v690.HumanoidRootPart.CFrame

                                    TP2(v690.HumanoidRootPart.CFrame * Pos)
                                until not Scrap or (not v690.Parent or v690.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu686)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Mercenary') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Mercenary').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)

    local vu691 = CFrame.new(-289.6311950683594, 43.8282470703125, 5583.66357421875)

    spawn(function()
        while wait() do
            if Scrap and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Pirate Millionaire') then
                        local v692, v693, v694 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v695

                            v694, v695 = v692(v693, v694)

                            if v694 == nil then
                                break
                            end
                            if v695.Name == 'Pirate Millionaire' and (v695:FindFirstChild('Humanoid') and (v695:FindFirstChild('HumanoidRootPart') and v695.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v695.HumanoidRootPart.CanCollide = false
                                    v695.Humanoid.WalkSpeed = 0
                                    v695.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v695.HumanoidRootPart.CFrame

                                    TP2(v695.HumanoidRootPart.CFrame * Pos)
                                until not Scrap or (not v695.Parent or v695.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu691)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Pirate Millionaire') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Pirate Millionaire').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
end
if World3 then
    v307:Toggle('Auto Farm Conjured Cocoa', false, function(p696)
        Cocoafarm = p696

        StopTween(Cocoafarm)
    end)

    local vu697 = CFrame.new(744.7930908203125, 24.76934242248535, -12637.7255859375)

    spawn(function()
        while wait() do
            if Cocoafarm and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Chocolate Bar Battler') then
                        local v698, v699, v700 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v701

                            v700, v701 = v698(v699, v700)

                            if v700 == nil then
                                break
                            end
                            if v701.Name == 'Chocolate Bar Battler' and (v701:FindFirstChild('Humanoid') and (v701:FindFirstChild('HumanoidRootPart') and v701.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v701.HumanoidRootPart.CanCollide = false
                                    v701.Humanoid.WalkSpeed = 0
                                    v701.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v701.HumanoidRootPart.CFrame

                                    TP2(v701.HumanoidRootPart.CFrame * Pos)
                                until not Cocoafarm or (not v701.Parent or v701.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu697)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Chocolate Bar Battler') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Chocolate Bar Battler').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
    v307:Toggle('Auto Farm Dragon Scale', false, function(p702)
        Dragon_Scale = p702

        StopTween(Dragon_Scale)
    end)

    local vu703 = CFrame.new(6752, 565, 315)

    spawn(function()
        while wait() do
            if Dragon_Scale and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Dragon Crew Archer') then
                        local v704, v705, v706 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v707

                            v706, v707 = v704(v705, v706)

                            if v706 == nil then
                                break
                            end
                            if v707.Name == 'Dragon Crew Archer' and (v707:FindFirstChild('Humanoid') and (v707:FindFirstChild('HumanoidRootPart') and v707.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v707.HumanoidRootPart.CanCollide = false
                                    v707.Humanoid.WalkSpeed = 0
                                    v707.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v707.HumanoidRootPart.CFrame

                                    TP2(v707.HumanoidRootPart.CFrame * Pos)
                                until not Dragon_Scale or (not v707.Parent or v707.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu703)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Dragon Crew Archer') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Dragon Crew Archer').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
    v307:Toggle('Auto Farm Gunpowder', false, function(p708)
        Gunpowder = p708

        StopTween(Gunpowder)
    end)

    local vu709 = CFrame.new(-379.6134338378906, 73.84449768066406, 5928.5263671875)

    spawn(function()
        while wait() do
            if Gunpowder and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Pistol Billionaire') then
                        local v710, v711, v712 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v713

                            v712, v713 = v710(v711, v712)

                            if v712 == nil then
                                break
                            end
                            if v713.Name == 'Pistol Billionaire' and (v713:FindFirstChild('Humanoid') and (v713:FindFirstChild('HumanoidRootPart') and v713.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v713.HumanoidRootPart.CanCollide = false
                                    v713.Humanoid.WalkSpeed = 0
                                    v713.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v713.HumanoidRootPart.CFrame

                                    TP2(v713.HumanoidRootPart.CFrame * Pos)
                                until not Gunpowder or (not v713.Parent or v713.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu709)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Pistol Billionaire') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Pistol Billionaire').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
    v307:Toggle('Auto Farm Fish Tail World 3', false, function(p714)
        Fish = p714

        StopTween(Fish)
    end)

    local vu715 = CFrame.new(-10961.0126953125, 331.7977600097656, -8914.29296875)

    spawn(function()
        while wait() do
            if Fish and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Fishman Captain') then
                        local v716, v717, v718 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v719

                            v718, v719 = v716(v717, v718)

                            if v718 == nil then
                                break
                            end
                            if v719.Name == 'Fishman Captain' and (v719:FindFirstChild('Humanoid') and (v719:FindFirstChild('HumanoidRootPart') and v719.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v719.HumanoidRootPart.CanCollide = false
                                    v719.Humanoid.WalkSpeed = 0
                                    v719.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v719.HumanoidRootPart.CFrame

                                    TP2(v719.HumanoidRootPart.CFrame * Pos)
                                until not Fish or (not v719.Parent or v719.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu715)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Fishman Captain') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Fishman Captain').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
    v307:Toggle('Auto Farm Mini Tusk', false, function(p720)
        MiniHee = p720

        StopTween(MiniHee)
    end)

    local vu721 = CFrame.new(-13516.0458984375, 469.8182373046875, -6899.16064453125)

    spawn(function()
        while wait() do
            if MiniHee and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Mythological Pirate') then
                        local v722, v723, v724 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v725

                            v724, v725 = v722(v723, v724)

                            if v724 == nil then
                                break
                            end
                            if v725.Name == 'Mythological Pirate' and (v725:FindFirstChild('Humanoid') and (v725:FindFirstChild('HumanoidRootPart') and v725.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v725.HumanoidRootPart.CanCollide = false
                                    v725.Humanoid.WalkSpeed = 0
                                    v725.Head.CanCollide = false
                                    StartMagnet = true
                                    _G.PosMon = v725.HumanoidRootPart.CFrame

                                    TP2(v725.HumanoidRootPart.CFrame * Pos)
                                until not MiniHee or (not v725.Parent or v725.Humanoid.Health <= 0)

                                StartMagnet = false
                            end
                        end
                    else
                        topos(vu721)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Mythological Pirate') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Mythological Pirate').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
end
if World1 then
    v307:Label('Sea 1')
    v307:Seperator('Greybeard')
    v307:Toggle('Auto Greybeard', false, function(p726)
        _G.Greybeard = p726

        StopTween(_G.Greybeard)
    end)
    v307:Toggle('Auto Greybeard Hop', false, function(p727)
        _G.Greybeardhop = p727
    end)

    local vu728 = CFrame.new(-5023.38330078125, 28.65203285217285, 4332.3818359375)

    spawn(function()
        while wait() do
            if _G.Greybeard and World1 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Greybeard') then
                        local v729, v730, v731 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v732

                            v731, v732 = v729(v730, v731)

                            if v731 == nil then
                                break
                            end
                            if v732.Name == 'Greybeard' and (v732:FindFirstChild('Humanoid') and (v732:FindFirstChild('HumanoidRootPart') and v732.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v732.HumanoidRootPart.CanCollide = false
                                    v732.Humanoid.WalkSpeed = 0

                                    TP2(v732.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.Greybeard or (not v732.Parent or v732.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(vu728)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Greybeard') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Greybeard').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif _G.Greybeardhop then
                            Hop()
                        end
                    end
                end)
            end
        end
    end)
    v307:Seperator('Saber')
    v307:Toggle('Auto Saber', false, function(p733)
        _G.Saber = p733

        StopTween(_G.Saber)
    end)
    v307:Toggle('Auto Saber Hop', false, function(p734)
        _G.SaberHop = p734
    end)
    spawn(function()
        while task.wait() do
            if _G.Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 then
                pcall(function()
                    if game:GetService('Workspace').Map.Jungle.Final.Part.Transparency ~= 0 then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Saber Expert') or game:GetService('ReplicatedStorage'):FindFirstChild('Saber Expert') then
                            local v735, v736, v737 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v738

                                v737, v738 = v735(v736, v737)

                                if v737 == nil then
                                    break
                                end
                                if v738:FindFirstChild('Humanoid') and (v738:FindFirstChild('HumanoidRootPart') and (v738.Humanoid.Health > 0 and v738.Name == 'Saber Expert')) then
                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP2(v738.HumanoidRootPart.CFrame * Pos)

                                        v738.HumanoidRootPart.Transparency = 1
                                        v738.Humanoid.JumpPower = 0
                                        v738.Humanoid.WalkSpeed = 0
                                        v738.HumanoidRootPart.CanCollide = false
                                        FarmPos = v738.HumanoidRootPart.CFrame
                                        MonFarm = v738.Name
                                    until v738.Humanoid.Health <= 0 or not _G.Saber

                                    if v738.Humanoid.Health <= 0 then
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'PlaceRelic')
                                    end
                                end
                            end
                        end
                    elseif game:GetService('Workspace').Map.Jungle.QuestPlates.Door.Transparency ~= 0 then
                        if game:GetService('Workspace').Map.Desert.Burn.Part.Transparency ~= 0 then
                            if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'SickMan') == 0 then
                                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') ~= nil then
                                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') ~= 0 then
                                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon') == 1 then
                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon')
                                            wait(0.5)
                                            EquipWeapon('Relic')
                                            wait(0.5)
                                            topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-9, 0.481375456, 2.53851997e-8, 1, -5.79995607e-8, -0.481375456, 6.30572643e-8, 0.876514494))
                                        end
                                    elseif game:GetService('Workspace').Enemies:FindFirstChild('Mob Leader') or game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader') then
                                        topos(CFrame.new(-2967.59521, 4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559))

                                        local v739, v740, v741 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                        while true do
                                            local v742

                                            v741, v742 = v739(v740, v741)

                                            if v741 == nil then
                                                break
                                            end
                                            if v742.Name == 'Mob Leader' then
                                                if game:GetService('Workspace').Enemies:FindFirstChild('Mob Leader') and (v742:FindFirstChild('Humanoid') and (v742:FindFirstChild('HumanoidRootPart') and v742.Humanoid.Health > 0)) then
                                                    repeat
                                                        task.wait()
                                                        EquipWeapon(_G.SelectWeapon)

                                                        v742.HumanoidRootPart.CanCollide = false
                                                        v742.Humanoid.WalkSpeed = 0

                                                        TP2(v742.HumanoidRootPart.CFrame * Pos)
                                                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                                    until v742.Humanoid.Health <= 0 or not _G.Saber
                                                end
                                                if game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader') then
                                                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Mob Leader').HumanoidRootPart.CFrame * Farm_Mode)
                                                end
                                            end
                                        end
                                    end
                                else
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon')
                                end
                            else
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'GetCup')
                                wait(0.5)
                                EquipWeapon('Cup')
                                wait(0.5)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'FillCup', game:GetService('Players').LocalPlayer.Character.Cup)
                                wait(0)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ProQuestProgress', 'SickMan')
                            end
                        elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Torch') or game.Players.LocalPlayer.Character:FindFirstChild('Torch') then
                            EquipWeapon('Torch')
                            topos(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-9, 0.761243105, -5.70652914e-10, 1, 1.20584542e-9, -0.761243105, 3.4754488199999996e-10, -0.648466587))
                        else
                            topos(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.0000342372805, -0.258850515, 0.965917408))
                        end
                    elseif (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-9, -0.928667724, 3.97099491e-8, 1, 1.91679348e-8, 0.928667724, -4.39869794e-8, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 100 then
                        topos(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-9, -0.928667724, 3.97099491e-8, 1, 1.91679348e-8, 0.928667724, -4.39869794e-8, 0.37091279))
                    else
                        topos(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame)
                        wait(1)

                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate1.Button.CFrame

                        wait(1)

                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate2.Button.CFrame

                        wait(1)

                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate3.Button.CFrame

                        wait(1)

                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate4.Button.CFrame

                        wait(1)

                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.Jungle.QuestPlates.Plate5.Button.CFrame

                        wait(1)
                    end
                end)
            end
        end
    end)
    v307:Seperator('Pole')
    v307:Toggle('Auto Pole v1', false, function(p743)
        _G.pole = p743

        StopTween(_G.pole)
    end)
    v307:Toggle('Auto Pole v1 Hop', false, function(p744)
        _G.polehop = p744
    end)

    local vu745 = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625)

    spawn(function()
        while wait() do
            if _G.pole and World1 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Thunder God') then
                        local v746, v747, v748 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v749

                            v748, v749 = v746(v747, v748)

                            if v748 == nil then
                                break
                            end
                            if v749.Name == 'Thunder God' and (v749:FindFirstChild('Humanoid') and (v749:FindFirstChild('HumanoidRootPart') and v749.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v749.HumanoidRootPart.CanCollide = false
                                    v749.Humanoid.WalkSpeed = 0

                                    TP2(v749.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.pole or (not v749.Parent or v749.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(vu745)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Thunder God') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Thunder God').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif _G.polehop then
                            Hop()
                        end
                    end
                end)
            end
        end
    end)
end
if World2 then
    v307:Label('Sea 2')
    v307:Seperator('Legendary Sword')
    v307:Toggle('Auto Legendary Sword', false, function(p750)
        _G.BuyLegendarySword = p750
    end)
    spawn(function()
        while wait() do
            if _G.BuyLegendarySword then
                pcall(function()
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LegendarySwordDealer',
                        '1',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LegendarySwordDealer',
                        '2',
                    }))
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                        'LegendarySwordDealer',
                        '3',
                    }))

                    if _G.BuyLegendarySword_Hop and (_G.BuyLegendarySword and World2) then
                        wait(10)
                        Hop()
                    end
                end)
            end
        end
    end)
    v307:Toggle('Auto Legendary Sword Hop', false, function(p751)
        _G.BuyLegendarySword_Hop = p751
    end)
    v307:Seperator('Enchancement Colour')
    v307:Toggle('Auto Enchancement Colour', false, function(p752)
        _G.BuyEnchancementColour = p752
    end)
    v307:Toggle('Auto Enchancement Hop', false, function(p753)
        _G.BuyEnchancementColour_Hop = p753
    end)
    spawn(function()
        while wait() do
            if _G.BuyEnchancementColour then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                    'ColorsDealer',
                    '2',
                }))

                if _G.BuyEnchancementColour_Hop and (_G.BuyEnchancementColour and not World1) then
                    wait(10)
                    Hop()
                end
            end
        end
    end)
    v307:Seperator('Bartlio')
    v307:Toggle('Auto Bartlio', false, function(p754)
        _G.Bartilo = p754
    end)
    spawn(function()
        pcall(function()
            while true do
                if not wait(0.1) then
                    return
                end
                if _G.Bartilo then
                    if game:GetService('Players').LocalPlayer.Data.Level.Value < 800 or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress', 'Bartilo') ~= 0 then
                        if game:GetService('Players').LocalPlayer.Data.Level.Value < 800 or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress', 'Bartilo') ~= 1 then
                            if game:GetService('Players').LocalPlayer.Data.Level.Value >= 800 and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress', 'Bartilo') == 2 then
                                repeat
                                    topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
                                    wait()
                                until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807))
                                    wait()
                                until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685))
                                    wait()
                                until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541))
                                    wait()
                                until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1869.54224, 15.987854, 1681.00659))
                                    wait()
                                until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368))
                                    wait()
                                until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1819.26343, 14.795166, 1717.90625))
                                    wait()
                                until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10

                                wait(1)

                                repeat
                                    topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541))
                                    wait()
                                until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
                            end
                        elseif game:GetService('Workspace').Enemies:FindFirstChild('Jeremy') then
                            Ms = 'Jeremy'

                            local v755, v756, v757 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v758

                                v757, v758 = v755(v756, v757)

                                if v757 == nil then
                                    break
                                end
                                if v758.Name == Ms then
                                    OldCFrameBartlio = v758.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait()
                                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                        EquipWeapon(_G.SelectWeapon)

                                        v758.HumanoidRootPart.Transparency = 1
                                        v758.HumanoidRootPart.CanCollide = false
                                        v758.HumanoidRootPart.CFrame = OldCFrameBartlio

                                        TP2(v758.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                    until not v758.Parent or (v758.Humanoid.Health <= 0 or _G.Bartilo == false)
                                end
                            end
                        elseif game:GetService('ReplicatedStorage'):FindFirstChild('Jeremy [Lv. 850] [Boss]') then
                            repeat
                                topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                                wait()
                            until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10

                            wait(1.1)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BartiloQuestProgress', 'Bartilo')
                            wait(1)

                            repeat
                                topos(CFrame.new(2099.88159, 448.931, 648.997375))
                                wait()
                            until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10

                            wait(2)
                        else
                            topos(CFrame.new(2099.88159, 448.931, 648.997375))
                            wait()

                            if _G.Bartilo and (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude > 10 then
                            end
                        end
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Swan Pirates') and (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, '50') and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Swan Pirate') then
                            Ms = 'Swan Pirate'

                            local v759, v760, v761 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local vu762

                                v761, vu762 = v759(v760, v761)

                                if v761 == nil then
                                    break
                                end
                                if vu762.Name == Ms then
                                    pcall(function()
                                        repeat
                                            task.wait()
                                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                            EquipWeapon(_G.SelectWeapon)

                                            vu762.HumanoidRootPart.Transparency = 1
                                            vu762.HumanoidRootPart.CanCollide = false

                                            TP2(vu762.HumanoidRootPart.CFrame * Pos)

                                            _G.PosMon = vu762.HumanoidRootPart.CFrame
                                            StartMagnet = true
                                        until not vu762.Parent or (vu762.Humanoid.Health <= 0 or _G.Bartilo == false) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false

                                        StartMagnet = false
                                    end)
                                end
                            end
                        else
                            topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-8, -0.230443969, 2.67024713e-8, 1, 8.47491108e-8, 0.230443969, 7.63147128e-8, -0.973085582))
                            wait()

                            if _G.Bartilo and (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-8, -0.230443969, 2.67024713e-8, 1, 8.47491108e-8, 0.230443969, 7.63147128e-8, -0.973085582)).Magnitude > 10 then
                            end
                        end
                    else
                        repeat
                            topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
                            wait()
                        until not _G.Bartilo or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10

                        wait(1.1)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'BartiloQuest', 1)
                    end
                end
            end
        end)
    end)
    v307:Seperator('Swan Glasses')
    v307:Toggle('Auto Swan Glasses', false, function(p763)
        _G.FarmSwanGlasses = p763

        StopTween(_G.FarmSwanGlasses)
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.FarmSwanGlasses then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Don Swan') then
                        local v764, v765, v766 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local vu767

                            v766, vu767 = v764(v765, v766)

                            if v766 == nil then
                                break
                            end
                            if vu767.Name == 'Don Swan' and (vu767.Humanoid.Health > 0 and (vu767:IsA('Model') and (vu767:FindFirstChild('Humanoid') and vu767:FindFirstChild('HumanoidRootPart')))) then
                                repeat
                                    task.wait()
                                    pcall(function()
                                        EquipWeapon(_G.SelectWeapon)

                                        vu767.HumanoidRootPart.CanCollide = false

                                        TP2(vu767.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                    end)
                                until _G.FarmSwanGlasses == false or vu767.Humanoid.Health <= 0
                            end
                        end
                    else
                        task.wait()
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))

                        if (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 4 and _G.FarmSwanGlasses ~= false then
                            break
                        end
                    end
                end
            end
        end)
    end)
    v307:Toggle('Auto Swan Glasses Hop', false, function(p768)
        _G.FarmSwanGlasses_Hop = p768
    end)
    v307:Toggle('Auto Evo Race (V2)', false, function(p769)
        _G.EvoRace = p769

        StopTween(_G.EvoRace)
    end)
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.EvoRace and not game:GetService('Players').LocalPlayer.Data.Race:FindFirstChild('Evolved') then
                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1') ~= 0 then
                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1') ~= 1 then
                            if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '1') == 2 then
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '3')
                            end
                        else
                            pcall(function()
                                if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 1') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flower 1') then
                                    if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 2') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flower 2') then
                                        if not (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 3') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flower 3')) then
                                            if game:GetService('Workspace').Enemies:FindFirstChild('Zombie') then
                                                local v770, v771, v772 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                                while true do
                                                    local v773

                                                    v772, v773 = v770(v771, v772)

                                                    if v772 == nil then
                                                        break
                                                    end
                                                    if v773.Name == 'Zombie' then
                                                        repeat
                                                            task.wait()
                                                            EquipWeapon(_G.SelectWeapon)
                                                            TP2(v773.HumanoidRootPart.CFrame * Pos)

                                                            v773.HumanoidRootPart.CanCollide = false
                                                            _G.PosMon = v773.HumanoidRootPart.CFrame
                                                            StartMagnet = true
                                                        until game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flower 3') or (not v773.Parent or (v773.Humanoid.Health <= 0 or _G.EvoRace == false))

                                                        StartMagnet = false
                                                    end
                                                end
                                            else
                                                StartMagnet = false

                                                topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
                                            end
                                        end
                                    else
                                        topos(game:GetService('Workspace').Flower2.CFrame)
                                    end
                                else
                                    topos(game:GetService('Workspace').Flower1.CFrame)
                                end
                            end)
                        end
                    else
                        topos(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-8, -0.68292886, 3.5996322399999996e-8, 1, 5.50667032e-8, 0.68292886, 1.56424669e-8, -0.730484903))

                        if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                            wait(1.3)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Alchemist', '2')
                        end
                    end
                end
            end
        end)
    end)
    v307:Seperator('Dark Fragment')
    v307:Toggle('Auto Darkbeard Boss (Summon And Kill)', false, function(p774)
        _G.AutoDarkbeard = p774

        StopTween(_G.AutoDarkbeard)
    end)
    spawn(function()
        while wait() do
            if _G.AutoDarkbeard then
                local _ = game.Player.LocalPlayer

                if game.Players.LocalPlayer.Backpack:FindFirstChild('Fist of Darkness') or game.Players.LocalPlayer.Character:FindFirstChild('Fist of Darkness') then
                    EquipWeapon('Fist of Darkness')
                    topos(CFrame.new(3777.58618, 14.8764334, -3498.81909, 0.13158533, 1.16175372e-8, -0.991304874, -9.53944035e-10, 1, 1.15928129e-8, 0.991304874, -5.79794768e-10, 0.13158533))

                    local v775, v776, v777 = pairs(game.Workspace.Enemies:GetChildren())

                    while true do
                        local v778

                        v777, v778 = v775(v776, v777)

                        if v777 == nil then
                            break
                        end
                        if v778.Name == 'Darkbeard' then
                            repeat
                                wait(0.1)
                                EquipWeapon(_G.SelectWeapon)

                                v778.HumanoidRootPart.CanCollide = false
                                v778.Humanoid.WalkSpeed = 0

                                TP2(v778.HumanoidRootPart.CFrame * Pos)
                            until not v778.Name == 'Darkbeard' and not v778.Parent
                        end
                    end
                end
            end
        end
    end)
    v307:Seperator('Rengoku')
    v307:Toggle('Auto Rengoku', false, function(p779)
        _G.Rengoku = p779

        StopTween(_G.Rengoku)
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Rengoku then
                    if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hidden Key') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Hidden Key') then
                        EquipWeapon('Hidden Key')
                        topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                    elseif game:GetService('Workspace').Enemies:FindFirstChild('Snow Lurker') or game:GetService('Workspace').Enemies:FindFirstChild('Arctic Warrior') then
                        local v780, v781, v782 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v783

                            v782, v783 = v780(v781, v782)

                            if v782 == nil then
                                break
                            end
                            if (v783.Name == 'Snow Lurker' or v783.Name == 'Arctic Warrior') and v783.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v783.HumanoidRootPart.CanCollide = false
                                    _G.PosMon = v783.HumanoidRootPart.CFrame

                                    TP2(v783.HumanoidRootPart.CFrame * Pos)

                                    StartMagnet = true
                                until game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hidden Key') or (_G.Rengoku == false or (not v783.Parent or v783.Humanoid.Health <= 0))

                                StartMagnet = false
                            end
                        end
                    else
                        StartMagnet = false

                        topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                    end
                end
            end
        end)
    end)
    v307:Seperator('Trident')
    v307:Toggle('Auto Dragon Trident', false, function(p784)
        _G.Dragon_Trident = p784

        StopTween(_G.Dragon_Trident)
    end)
    v307:Toggle('Auto Dragon Trident Hop', false, function(p785)
        _G.Dragon_Trident_Hop = p785
    end)

    local vu786 = CFrame.new(-3914.830322265625, 123.29389190673828, -11516.8642578125)

    spawn(function()
        while wait() do
            if _G.Dragon_Trident and World2 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Tide Keeper') then
                        local v787, v788, v789 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v790

                            v789, v790 = v787(v788, v789)

                            if v789 == nil then
                                break
                            end
                            if v790.Name == 'Tide Keeper' and (v790:FindFirstChild('Humanoid') and (v790:FindFirstChild('HumanoidRootPart') and v790.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v790.HumanoidRootPart.CanCollide = false
                                    v790.Humanoid.WalkSpeed = 0

                                    TP2(v790.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.Dragon_Trident or (not v790.Parent or v790.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(vu786)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Tide Keeper') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Tide Keeper').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif _G.Dragon_Trident_Hop then
                            Hop()
                        end
                    end
                end)
            end
        end
    end)
end
if World3 then
    v307:Label('Sea 3')
    v307:Seperator('Rip Indra')
    v307:Toggle('Auto Rip_Indra True', false, function(p791)
        _G.DarkDagger = p791

        StopTween(_G.DarkDagger)
    end)

    local vu792 = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.DarkDagger then
                    if game:GetService('Workspace').Enemies:FindFirstChild('rip_indra True Form') or game:GetService('Workspace').Enemies:FindFirstChild('rip_indra') then
                        local v793, v794, v795 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local vu796

                            v795, vu796 = v793(v794, v795)

                            if v795 == nil then
                                break
                            end
                            if vu796.Name == ('rip_indra True Form' or vu796.Name == 'rip_indra') and (vu796.Humanoid.Health > 0 and (vu796:IsA('Model') and (vu796:FindFirstChild('Humanoid') and vu796:FindFirstChild('HumanoidRootPart')))) then
                                repeat
                                    task.wait()
                                    pcall(function()
                                        EquipWeapon(_G.SelectWeapon)

                                        vu796.HumanoidRootPart.CanCollide = false

                                        TP2(vu796.HumanoidRootPart.CFrame * Pos)
                                    end)
                                until _G.DarkDagger == false or vu796.Humanoid.Health <= 0
                            end
                        end
                    else
                        topos(vu792)
                    end
                end
            end
        end)
    end)
    v307:Toggle('Auto Rip_Indra True Hop', false, function(p797)
        _G.DarkDagger_Hop = p797
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.DarkDagger_Hop and (_G.DarkDagger and World3) and not (game:GetService('ReplicatedStorage'):FindFirstChild('rip_indra True Form [Lv. 5000] [Raid Boss]') or game:GetService('Workspace').Enemies:FindFirstChild('rip_indra True Form [Lv. 5000] [Raid Boss]')) then
                    Hop()
                end
            end
        end)
    end)
    v307:Toggle('Auto Press Haki Button', false, function(p798)
        Open_Color_Haki = p798

        StopTween(Open_Color_Haki)
    end)
    spawn(function()
        while wait(0.3) do
            pcall(function()
                if Open_Color_Haki then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('activateColor', 'Winter Sky')
                    wait(0.5)

                    repeat
                        topos(CFrame.new(-5420.16602, 1084.9657, -2666.8208))
                        wait()
                    until _G.StopTween == true or (Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10)

                    wait(0.5)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('activateColor', 'Pure Red')
                    wait(0.5)

                    repeat
                        topos(CFrame.new(-5414.41357, 309.865753, -2212.45776))
                        wait()
                    until _G.StopTween == true or (Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10)

                    wait(0.5)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('activateColor', 'Snow White')
                    wait(0.5)

                    repeat
                        topos(CFrame.new(-4971.47559, 331.565765, -3720.02954))
                        wait()
                    until _G.StopTween == true or (Open_Color_Haki == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10)

                    wait(0.5)
                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 600))
                    wait(3)
                    game:GetService('VirtualUser'):Button1Down(Vector2.new(1280, 600))
                end
            end)
        end
    end)

    function EquipAllWeapon()
        pcall(function()
            local v799, v800, v801 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

            while true do
                local v802

                v801, v802 = v799(v800, v801)

                if v801 == nil then
                    break
                end
                if v802:IsA('Tool') and (v802.Name ~= 'Summon Sea Beast' and (v802.Name ~= 'Water Body' and v802.Name ~= 'Awakening')) then
                    local v803 = game.Players.LocalPlayer.Backpack:FindFirstChild(v802.Name)

                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v803)
                    wait(1)
                end
            end
        end)
    end

    v307:Seperator('Yama')
    v307:Toggle('Auto Yama', false, function(p804)
        _G.Yama = p804

        StopTween(_G.Yama)
    end)
    spawn(function()
        while wait() do
            if _G.Yama and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('EliteHunter', 'Progress') >= 30 then
                wait(0.1)
                fireclickdetector(game:GetService('Workspace').Map.Waterfall.SealedKatana.Handle.ClickDetector)

                if not game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Yama') and _G.Yama then
                    break
                end
            end
        end
    end)
    v307:Seperator('Advance Dungeon')
    v307:Toggle('Auto Phoenix Raid', false, function(p805)
        _G.AdvanceDungeon = p805

        StopTween(_G.AdvanceDungeon)
    end)
    spawn(function()
        while wait() do
            if _G.AdvanceDungeon then
                pcall(function()
                    if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Bird: Phoenix') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Bird: Phoenix') then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                                topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))

                                if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                    wait(1.5)
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SickScientist', 'Check')
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SickScientist', 'Heal')
                                end
                            end
                        elseif game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) and game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
                            topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))

                            if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(1.5)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SickScientist', 'Check')
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SickScientist', 'Heal')
                            end
                        end
                    end
                end)
            end
        end
    end)
    v307:Seperator('Musketeer')
    v307:Toggle('Auto Musketeer Hat', false, function(p806)
        _G.MusketeerHat = p806

        StopTween(_G.MusketeerHat)
    end)
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.MusketeerHat then
                    if game:GetService('Players').LocalPlayer.Data.Level.Value < 1800 or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress').KilledBandits ~= false then
                        if game:GetService('Players').LocalPlayer.Data.Level.Value < 1800 or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress').KilledBoss ~= false then
                            if game:GetService('Players').LocalPlayer.Data.Level.Value >= 1800 and game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen') == 2 then
                                topos(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
                            end
                        elseif game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible and (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Captain Elephant') and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                            if game:GetService('Workspace').Enemies:FindFirstChild('Captain Elephant') then
                                local v807, v808, v809 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local vu810

                                    v809, vu810 = v807(v808, v809)

                                    if v809 == nil then
                                        break
                                    end
                                    if vu810.Name == 'Captain Elephant' then
                                        OldCFrameElephant = vu810.HumanoidRootPart.CFrame

                                        repeat
                                            task.wait()
                                            pcall(function()
                                                EquipWeapon(_G.SelectWeapon)

                                                vu810.HumanoidRootPart.CanCollide = false

                                                TP2(vu810.HumanoidRootPart.CFrame * Pos)

                                                vu810.HumanoidRootPart.CanCollide = false
                                                vu810.HumanoidRootPart.CFrame = OldCFrameElephant

                                                sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                            end)
                                        until _G.MusketeerHat == false or (vu810.Humanoid.Health <= 0 or not vu810.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            else
                                topos(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
                            end
                        else
                            topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))

                            if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                                wait(1.5)
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen')
                            end
                        end
                    elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Forest Pirate') and (string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, '50') and game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                        if game:GetService('Workspace').Enemies:FindFirstChild('Forest Pirate') then
                            local v811, v812, v813 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local vu814

                                v813, vu814 = v811(v812, v813)

                                if v813 == nil then
                                    break
                                end
                                if vu814.Name == 'Forest Pirate' then
                                    repeat
                                        task.wait()
                                        pcall(function()
                                            EquipWeapon(_G.SelectWeapon)
                                            TP2(vu814.HumanoidRootPart.CFrame * Pos)

                                            vu814.HumanoidRootPart.CanCollide = false
                                            _G.PosMon = vu814.HumanoidRootPart.CFrame
                                            StartMagnet = true
                                        end)
                                    until _G.MusketeerHat == false or (not vu814.Parent or vu814.Humanoid.Health <= 0) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false

                                    StartMagnet = false
                                end
                            end
                        else
                            StartMagnet = false

                            topos(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
                        end
                    else
                        topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))

                        if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StartQuest', 'CitizenQuest', 1)
                        end
                    end
                end
            end
        end)
    end)
    v307:Seperator('Twin Hook')
    v307:Toggle('Auto Twin Hook', false, function(p815)
        _G.TwinHook = p815

        StopTween(_G.TwinHook)
    end)
    v307:Toggle('Auto Twin Hook Hop', false, function(p816)
        _G.TwinHook_Hop = p816
    end)

    local vu817 = CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625)

    spawn(function()
        while wait() do
            if _G.TwinHook and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Captain Elephant') then
                        local v818, v819, v820 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v821

                            v820, v821 = v818(v819, v820)

                            if v820 == nil then
                                break
                            end
                            if v821.Name == 'Captain Elephant' and (v821:FindFirstChild('Humanoid') and (v821:FindFirstChild('HumanoidRootPart') and v821.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v821.HumanoidRootPart.CanCollide = false
                                    v821.Humanoid.WalkSpeed = 0

                                    TP2(v821.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.TwinHook or (not v821.Parent or v821.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(vu817)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Captain Elephant') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Captain Elephant').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif _G.TwinHook_Hop then
                            Hop()
                        end
                    end
                end)
            end
        end
    end)
    v307:Seperator('Haki')
    v307:Toggle('Auto Rainbow Haki', false, function(p822)
        _G.Rainbow_Haki = p822

        StopTween(_G.Rainbow_Haki)
    end)
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.Rainbow_Haki then
                    if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= false then
                        if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= true or not string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Stone') then
                            if game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible ~= true or not string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Island Empress') then
                                if string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Kilo Admiral') then
                                    if game:GetService('Workspace').Enemies:FindFirstChild('Kilo Admiral') then
                                        local v823, v824, v825 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                        while true do
                                            local v826

                                            v825, v826 = v823(v824, v825)

                                            if v825 == nil then
                                                break
                                            end
                                            if v826.Name == 'Kilo Admiral' then
                                                OldCFrameRainbow = v826.HumanoidRootPart.CFrame

                                                repeat
                                                    task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    TP2(v826.HumanoidRootPart.CFrame * Pos)

                                                    v826.HumanoidRootPart.CanCollide = false
                                                    v826.HumanoidRootPart.CFrame = OldCFrameRainbow

                                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                                until _G.Rainbow_Haki == false or (v826.Humanoid.Health <= 0 or not v826.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            end
                                        end
                                    else
                                        topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, 0, -0.143904909, 0, 1.00000012, 0, 0.143904924, 0, -0.989591479))
                                    end
                                elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Captain Elephant') then
                                    if game:GetService('Workspace').Enemies:FindFirstChild('Captain Elephant') then
                                        local v827, v828, v829 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                        while true do
                                            local v830

                                            v829, v830 = v827(v828, v829)

                                            if v829 == nil then
                                                break
                                            end
                                            if v830.Name == 'Captain Elephant' then
                                                OldCFrameRainbow = v830.HumanoidRootPart.CFrame

                                                repeat
                                                    task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    TP2(v830.HumanoidRootPart.CFrame * Pos)

                                                    v830.HumanoidRootPart.CanCollide = false
                                                    v830.HumanoidRootPart.CFrame = OldCFrameRainbow

                                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                                until _G.Rainbow_Haki == false or (v830.Humanoid.Health <= 0 or not v830.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            end
                                        end
                                    else
                                        topos(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-8, 0.69961375, -1.02065748e-7, 1, -9.943830649999999e-9, -0.69961375, -6.430152410000001e-8, 0.714521289))
                                    end
                                elseif string.find(game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, 'Beautiful Pirate') then
                                    if game:GetService('Workspace').Enemies:FindFirstChild('Beautiful Pirate') then
                                        local v831, v832, v833 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                        while true do
                                            local v834

                                            v833, v834 = v831(v832, v833)

                                            if v833 == nil then
                                                break
                                            end
                                            if v834.Name == 'Beautiful Pirate' then
                                                OldCFrameRainbow = v834.HumanoidRootPart.CFrame

                                                repeat
                                                    task.wait()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    TP2(v834.HumanoidRootPart.CFrame * Pos)

                                                    v834.HumanoidRootPart.CanCollide = false
                                                    v834.HumanoidRootPart.CFrame = OldCFrameRainbow

                                                    sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                                until _G.Rainbow_Haki == false or (v834.Humanoid.Health <= 0 or not v834.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                            end
                                        end
                                    else
                                        topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                                    end
                                else
                                    topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))

                                    if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                        wait(1.5)
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('HornedMan', 'Bet')
                                    end
                                end
                            elseif game:GetService('Workspace').Enemies:FindFirstChild('Island Empress') then
                                local v835, v836, v837 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local v838

                                    v837, v838 = v835(v836, v837)

                                    if v837 == nil then
                                        break
                                    end
                                    if v838.Name == 'Island Empress' then
                                        OldCFrameRainbow = v838.HumanoidRootPart.CFrame

                                        repeat
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            TP2(v838.HumanoidRootPart.CFrame * Pos)

                                            v838.HumanoidRootPart.CanCollide = false
                                            v838.HumanoidRootPart.CFrame = OldCFrameRainbow

                                            sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                        until _G.Rainbow_Haki == false or (v838.Humanoid.Health <= 0 or not v838.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    end
                                end
                            else
                                topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, 0, -0.994878292, 0, 1, 0, 0.994878292, 0, -0.101080291))
                            end
                        elseif game:GetService('Workspace').Enemies:FindFirstChild('Stone') then
                            local v839, v840, v841 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v842

                                v841, v842 = v839(v840, v841)

                                if v841 == nil then
                                    break
                                end
                                if v842.Name == 'Stone' then
                                    OldCFrameRainbow = v842.HumanoidRootPart.CFrame

                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP2(v842.HumanoidRootPart.CFrame * Pos)

                                        v842.HumanoidRootPart.CanCollide = false
                                        v842.HumanoidRootPart.CFrame = OldCFrameRainbow

                                        sethiddenproperty(game:GetService('Players').LocalPlayer, 'SimulationRadius', math.huge)
                                    until _G.Rainbow_Haki == false or (v842.Humanoid.Health <= 0 or not v842.Parent) or game:GetService('Players').LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        else
                            topos(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 0.0000203251839, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
                        end
                    else
                        topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))

                        if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                            wait(1.5)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('HornedMan', 'Bet')
                        end
                    end
                end
            end
        end)
    end)
    v307:Toggle('Auto Observation Haki v2', false, function(p843)
        _G.Observationv2 = p843

        StopTween(_G.Observationv2)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Observationv2 then
                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen') ~= 3 then
                        _G.MusketeerHat = true
                    else
                        _G.MusketeerHat = false

                        if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Banana') and (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Apple') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Pineapple')) then
                            repeat
                                topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                                wait()
                            until not _G.Observationv2 or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10

                            wait(0.5)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CitizenQuestProgress', 'Citizen')
                        elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Fruit Bowl') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Fruit Bowl') then
                            repeat
                                topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
                                wait()
                            until not _G.Observationv2 or (game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10

                            wait(0.5)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk2', 'Start')
                            wait(1)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk2', 'Buy')
                        else
                            local v844, v845, v846 = pairs(game:GetService('Workspace'):GetDescendants())

                            while true do
                                local v847

                                v846, v847 = v844(v845, v846)

                                if v846 == nil then
                                    break
                                end
                                if v847.Name == 'Apple' or (v847.Name == 'Banana' or v847.Name == 'Pineapple') then
                                    v847.Handle.CFrame = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)

                                    wait()
                                    firetouchinterest(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v847.Handle, 0)
                                    wait()
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    v307:Seperator('Carvander')
    v307:Toggle('Auto Cavander', false, function(p848)
        _G.Carvender = p848

        StopTween(_G.Carvender)
    end)
    v307:Toggle('Auto Carvander Hop', false, function(p849)
        _G.Carvenderhop = p849
    end)

    local vu850 = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875)

    spawn(function()
        while wait() do
            if _G.Carvender and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Beautiful Pirate') then
                        local v851, v852, v853 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v854

                            v853, v854 = v851(v852, v853)

                            if v853 == nil then
                                break
                            end
                            if v854.Name == 'Beautiful Pirate' and (v854:FindFirstChild('Humanoid') and (v854:FindFirstChild('HumanoidRootPart') and v854.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v854.HumanoidRootPart.CanCollide = false
                                    v854.Humanoid.WalkSpeed = 0

                                    TP2(v854.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.Carvender or (not v854.Parent or v854.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(vu850)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Beautiful Pirate') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Beautiful Pirate').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif _G.Cavanderhop then
                            Hop()
                        end
                    end
                end)
            end
        end
    end)
    v307:Seperator('Tushita')
    v307:Toggle('Auto Tushita', false, function(p855)
        _G.tushita = p855

        StopTween(_G.tushita)
    end)
    v307:Toggle('Auto Tushita Hop', false, function(p856)
        _G.tushitahop = p856
    end)

    local vu857 = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)

    spawn(function()
        while wait() do
            if _G.tushita and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Longma') then
                        local v858, v859, v860 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v861

                            v860, v861 = v858(v859, v860)

                            if v860 == nil then
                                break
                            end
                            if v861.Name == 'Longma' and (v861:FindFirstChild('Humanoid') and (v861:FindFirstChild('HumanoidRootPart') and v861.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v861.HumanoidRootPart.CanCollide = false
                                    v861.Humanoid.WalkSpeed = 0

                                    TP2(v861.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.tushita or (not v861.Parent or v861.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(vu857)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Longma') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Longma').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif _G.tushitahop then
                            Hop()
                        end
                    end
                end)
            end
        end
    end)
    v307:Toggle('Auto Holy Torch', false, function(p862)
        _G.HolyTorch = p862

        StopTween(_G.HolyTorch)
    end)
    spawn(function()
        while wait(0.5) do
            pcall(function()
                if _G.HolyTorch then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild('Holy Torch') or game.Players.LocalPlayer.Character:FindFirstChild('Holy Torch') then
                        repeat
                            wait(0.2)
                            EquipWeapon('Holy Torch')
                            topos(CFrame.new(5713, 47, 254))
                        until (Vector3.new(-10752.4434, 415.261749, -9367.43848) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5

                        wait(2)

                        repeat
                            wait(0.2)
                            EquipWeapon('Holy Torch')
                            topos(CFrame.new(-11671.6289, 333.78125, -9474.31934, 0.300932229, 0, -0.953645527, 0, 1, 0, 0.953645527, 0, 0.300932229))
                        until (Vector3.new(-11671.6289, 333.78125, -9474.31934) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5

                        wait(2)

                        repeat
                            wait(0.2)
                            EquipWeapon('Holy Torch')
                            topos(CFrame.new(-12133.1406, 521.507446, -10654.292, 0.80428642, 0, -0.594241858, 0, 1, 0, 0.594241858, 0, 0.80428642))
                        until (Vector3.new(-12133.1406, 521.507446, -10654.292) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5

                        wait(2)

                        repeat
                            wait(0.2)
                            EquipWeapon('Holy Torch')
                            topos(CFrame.new(-13336.127, 484.521179, -6985.31689, 0.853732228, 0, -0.520712316, 0, 1, 0, 0.520712316, 0, 0.853732228))
                        until (Vector3.new(-13336.127, 484.521179, -6985.31689) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5

                        wait(2)
                        EquipWeapon('Holy Torch')

                        repeat
                            wait(0.2)
                            topos(CFrame.new(-13487.623, 336.436188, -7924.53857, -0.982848108, 0, 0.184417039, 0, 1, 0, -0.184417039, 0, -0.982848108))
                        until (Vector3.new(-13487.623, 336.436188, -7924.53857) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5

                        wait(2)
                        Com()
                        wait(20)
                    elseif not (game.Players.LocalPlayer.Backpack:FindFirstChild('Holy Torch') or game.Players.LocalPlayer.Character:FindFirstChild('Holy Torch')) then
                        if (Vector3.new(5153.18799, 172.82933, 909.815918) - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 5000 then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5314.58203125, 25.419387817382813, -125.94227600097656))
                        end

                        topos(CFrame.new(5153.18799, 172.82933, 909.815918))
                        wait(3)
                    end
                end
            end)
        end
    end)
    v307:Seperator('Hallow Scythe')
    v307:Toggle('Auto Hallow Scythe', false, function(p863)
        _G.FarmBossHallow = p863

        StopTween(_G.FarmBossHallow)
    end)
    v307:Toggle('Auto Hallow Scythe Hop', false, function(p864)
        _G.FarmBossHallowHop = p864
    end)
    spawn(function()
        while wait() do
            if _G.FarmBossHallow then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Soul Reaper') then
                        local v865, v866, v867 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v868

                            v867, v868 = v865(v866, v867)

                            if v867 == nil then
                                break
                            end
                            if string.find(v868.Name, 'Soul Reaper') then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    TP2(v868.HumanoidRootPart.CFrame * Pos)

                                    v868.HumanoidRootPart.Transparency = 1

                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until v868.Humanoid.Health <= 0 or _G.FarmBossHallow == false
                            end
                        end
                    elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hallow Essence') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Hallow Essence') then
                        repeat
                            topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                            wait()
                        until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8

                        EquipWeapon('Hallow Essence')
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    elseif _G.FarmBossHallowHop then
                        Hop()
                    end
                end)
            end
        end
    end)
end
if World2 or World3 then
    v307:Seperator('Soul Guitar')
    v307:Toggle('Auto Soul Guitar ( Test )', false, function(p869)
        _G.Guitar = p869

        StopTween(_G.Guitar)
    end)
    task.spawn(function()
        repeat
            task.wait()
        until _G.Guitar

        while task.wait() do
            pcall(function()
                if _G.Guitar and World3 then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2, true)

                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check') ~= nil then
                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Swamp ~= false then
                            if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Gravestones ~= false then
                                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Ghost ~= false then
                                    if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Trophies ~= false then
                                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Pipes == false then
                                            topos(CFrame.new(-9628.02734375, 6.13064432144165, 6157.47802734375))

                                            repeat
                                                task.wait()
                                            until not _G.Guitar or GetDistance(CFrame.new(-9628.02734375, 6.13064432144165, 6157.47802734375)) <= 10

                                            for v872 = 10, 10 do
                                                if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v872)].BrickColor ~= 'Storm blue' then
                                                    local v871 = v872

                                                    while true do
                                                        task.wait()
                                                        fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v872)].ClickDetector)

                                                        local v872

                                                        if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v872)].BrickColor == 'Storm blue' then
                                                            v872 = v871

                                                            break
                                                        end
                                                        if not _G.Guitar then
                                                            v872 = v871

                                                            break
                                                        end
                                                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Pipes == true then
                                                            v872 = v871

                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                            for v875 = 8, 8 do
                                                if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v875)].BrickColor ~= game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].Pipes['Part' .. tostring(v875)]['Part' .. tostring(v875)].BrickColor then
                                                    local v874 = v875

                                                    while true do
                                                        task.wait()
                                                        fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v875)].ClickDetector)

                                                        local v875

                                                        if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v875)].BrickColor == game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].Pipes['Part' .. tostring(v875)]['Part' .. tostring(v875)].BrickColor then
                                                            v875 = v874

                                                            break
                                                        end
                                                        if not _G.Guitar then
                                                            v875 = v874

                                                            break
                                                        end
                                                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Pipes == true then
                                                            v875 = v874

                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                            for v878 = 6, 6 do
                                                if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v878)].BrickColor ~= game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].Pipes['Part' .. tostring(v878)]['Part' .. tostring(v878)].BrickColor then
                                                    local v877 = v878

                                                    while true do
                                                        task.wait()
                                                        fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v878)].ClickDetector)

                                                        local v878

                                                        if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v878)].BrickColor == game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].Pipes['Part' .. tostring(v878)]['Part' .. tostring(v878)].BrickColor then
                                                            v878 = v877

                                                            break
                                                        end
                                                        if not _G.Guitar then
                                                            v878 = v877

                                                            break
                                                        end
                                                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Pipes == true then
                                                            v878 = v877

                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                            for v881 = 3, 4 do
                                                if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v881)].BrickColor ~= game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].Pipes['Part' .. tostring(v881)]['Part' .. tostring(v881)].BrickColor then
                                                    local v880 = v881

                                                    while true do
                                                        task.wait(5)
                                                        fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v881)].ClickDetector)

                                                        local v881

                                                        if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model['Part' .. tostring(v881)].BrickColor == game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].Pipes['Part' .. tostring(v881)]['Part' .. tostring(v881)].BrickColor then
                                                            v881 = v880

                                                            break
                                                        end
                                                        if not _G.Guitar then
                                                            v881 = v880

                                                            break
                                                        end
                                                        if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Pipes == true then
                                                            v881 = v880

                                                            break
                                                        end
                                                    end
                                                end
                                            end

                                            if game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part1.BrickColor ~= game:GetService('Workspace').Map['Haunted Castle'].IslandModel['gamma_Cube.275'].BrickColor then
                                                repeat
                                                    task.wait()
                                                    fireclickdetector(game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part1.ClickDetector)
                                                until game:GetService('Workspace').Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model.Part1.BrickColor == game:GetService('Workspace').Map['Haunted Castle'].IslandModel['gamma_Cube.275'].BrickColor or not _G.Guitar or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Pipes == true
                                            end
                                        end
                                    else
                                        repeat
                                            wait()
                                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment2:FindFirstChild('ClickDetector'))
                                        until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment2.Line.Position.Y == -1000 or not _G.Guitar
                                        repeat
                                            wait()
                                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment5:FindFirstChild('ClickDetector'))
                                        until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment5.Line.Position.Y == -1000 or not _G.Guitar
                                        repeat
                                            wait()
                                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment6:FindFirstChild('ClickDetector'))
                                        until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment6.Line.Position.Y == -1000 or not _G.Guitar
                                        repeat
                                            wait()
                                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment8:FindFirstChild('ClickDetector'))
                                        until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment8.Line.Position.Y == -1000 or not _G.Guitar
                                        repeat
                                            wait()
                                            fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment9:FindFirstChild('ClickDetector'))
                                        until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment9.Line.Position.Y == -1000 or not _G.Guitar

                                        if getTrophies(1)[1] then
                                            repeat
                                                wait()
                                                fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment1:FindFirstChild('ClickDetector'))
                                            until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment1.Line.Rotation.Z == getTrophies(1)[2] or (game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment1.Line.Rotation.Z == getTrophies(1)[3] or not _G.Guitar or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Trophies == true)
                                        end
                                        if getTrophies(2)[1] then
                                            repeat
                                                wait()
                                                fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment3:FindFirstChild('ClickDetector'))
                                            until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment3.Line.Rotation.Z == getTrophies(2)[2] or (game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment3.Line.Rotation.Z == getTrophies(1)[3] or not _G.Guitar or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Trophies == true)
                                        end
                                        if getTrophies(3)[1] then
                                            repeat
                                                wait()
                                                fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment4:FindFirstChild('ClickDetector'))
                                            until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment4.Line.Rotation.Z == getTrophies(3)[2] or (game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment4.Line.Rotation.Z == getTrophies(1)[3] or not _G.Guitar or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Trophies == true)
                                        end
                                        if getTrophies(4)[1] then
                                            repeat
                                                wait()
                                                fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment7:FindFirstChild('ClickDetector'))
                                            until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment7.Line.Rotation.Z == getTrophies(4)[2] or (game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment7.Line.Rotation.Z == getTrophies(1)[3] or not _G.Guitar or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Trophies == true)
                                        end
                                        if getTrophies(5)[1] then
                                            repeat
                                                wait()
                                                fireclickdetector(game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment10:FindFirstChild('ClickDetector'))
                                            until game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment10.Line.Rotation.Z == getTrophies(5)[2] or (game:GetService('Workspace').Map['Haunted Castle'].Tablet.Segment10.Line.Rotation.Z == getTrophies(1)[3] or not _G.Guitar or game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Check').Trophies == true)
                                        end
                                    end
                                else
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Ghost')
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GuitarPuzzleProgress', 'Ghost', true)
                                end
                            else
                                GetFirePlacard('7', 'Left')
                                GetFirePlacard('6', 'Left')
                                GetFirePlacard('5', 'Left')
                                GetFirePlacard('4', 'Right')
                                GetFirePlacard('3', 'Left')
                                GetFirePlacard('2', 'Right')
                                GetFirePlacard('1', 'Right')
                            end
                        elseif game:GetService('Workspace').Enemies:FindFirstChild('Living Zombie') then
                            local v882, v883, v884 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                            while true do
                                local v885

                                v884, v885 = v882(v883, v884)

                                if v884 == nil then
                                    break
                                end
                                if v885.Name == 'Living Zombie' and (v885:FindFirstChild('HumanoidRootPart') and (v885:FindFirstChild('Humanoid') and v885:FindFirstChild('Humanoid').Health > 0)) then
                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)

                                        v885.HumanoidRootPart.CanCollide = false
                                        v885.Head.CanCollide = false

                                        TP2(v885.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                                        _G.PosMon = v885.HumanoidRootPart.CFrame
                                        StartMagnet = true
                                    until not _G.Guitar or (v885.Humanoid.Health <= 0 or not v885.Parent) or game:GetService('Workspace').Map['Haunted Castle'].SwampWater.Color ~= Color3.fromRGB(117, 0, 0)
                                end
                            end
                        else
                            StartMagnet = false

                            topos(CFrame.new(-10170.7275390625, 138.6524658203125, 5934.26513671875))
                        end
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2, true)
                    end
                end
            end)
        end
    end)
    v307:Toggle('Auto Soul Guitar Full', false, function(p886)
        Auto_Quest_Soul_Guitar = p886

        StopTween(Auto_Quest_Soul_Guitar)
    end)
    LPH_NO_VIRTUALIZE(function()
        vu20.spawn(function()
            while wait() do
                if setscriptable then
                    setscriptable(game.Players.LocalPlayer, 'SimulationRadius', true)
                end
                if sethiddenproperty then
                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                end
            end
        end)
    end)()
    spawn(function()
        game:GetService('RunService').RenderStepped:Connect(function()
            pcall(function()
                if StartMagnet then
                    local v887, v888, v889 = pairs(game.Workspace.Enemies:GetChildren())

                    while true do
                        local v890

                        v889, v890 = v887(v888, v889)

                        if v889 == nil then
                            break
                        end
                        if not string.find(v890.Name, 'Boss') and ((v890.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 and InMyNetWork(v890.HumanoidRootPart)) then
                            v890.HumanoidRootPart.CFrame = PosMon
                            v890.Humanoid.JumpPower = 0
                            v890.Humanoid.WalkSpeed = 0
                            v890.HumanoidRootPart.CanCollide = false
                            v890.Head.CanCollide = false

                            v890.Humanoid:ChangeState(14)
                            v890.Humanoid:ChangeState(11)
                        end
                    end
                end
            end)
        end)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if GetWeaponInventory('Soul Guitar') == false and Auto_Quest_Soul_Guitar then
                    if GetMaterial('Bones') < 500 or (GetMaterial('Ectoplasm') < 250 or GetMaterial('Dark Fragment') < 1) then
                        if GetMaterial('Ectoplasm') > 250 then
                            if GetMaterial('Bones') <= 500 then
                                if World3 then
                                    if game:GetService('Workspace').Enemies:FindFirstChild('Reborn Skeleton') or (game:GetService('Workspace').Enemies:FindFirstChild('Living Zombie') or (game:GetService('Workspace').Enemies:FindFirstChild('Demonic Soul') or game:GetService('Workspace').Enemies:FindFirstChild('Posessed Mummy'))) then
                                        local v891, v892, v893 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                        while true do
                                            local v894

                                            v893, v894 = v891(v892, v893)

                                            if v893 == nil then
                                                break
                                            end
                                            if (v894.Name == 'Reborn Skeleton' or (v894.Name == 'Living Zombie' or (v894.Name == 'Demonic Soul' or v894.Name == 'Posessed Mummy'))) and (v894:FindFirstChild('Humanoid') and (v894:FindFirstChild('HumanoidRootPart') and v894.Humanoid.Health > 0)) then
                                                repeat
                                                    wait()

                                                    BonesBring = true

                                                    EquipWeapon(_G.SelectWeapon)

                                                    PosMonBone = v894.HumanoidRootPart.CFrame
                                                    v894.HumanoidRootPart.Transparency = 1
                                                    v894.Humanoid.JumpPower = 0
                                                    v894.Humanoid.WalkSpeed = 0
                                                    v894.HumanoidRootPart.CanCollide = false

                                                    TP2(v894.HumanoidRootPart.CFrame * Pos)
                                                until not Auto_Quest_Soul_Guitar or (v894.Humanoid.Health <= 0 or (not v894.Parent or v894.Humanoid.Health <= 0))

                                                BonesBring = false
                                            end
                                        end
                                    else
                                        topos(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
                                    end
                                else
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
                                end
                            end
                        elseif World2 then
                            if game:GetService('Workspace').Enemies:FindFirstChild('Ship Deckhand') or (game:GetService('Workspace').Enemies:FindFirstChild('Ship Engineer') or (game:GetService('Workspace').Enemies:FindFirstChild('Ship Steward') or (game:GetService('Workspace').Enemies:FindFirstChild('Ship Officer') or game:GetService('Workspace').Enemies:FindFirstChild('Arctic Warrior')))) then
                                local v895, v896, v897 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                                while true do
                                    local v898

                                    v897, v898 = v895(v896, v897)

                                    if v897 == nil then
                                        break
                                    end
                                    if (v898.Name == 'Ship Deckhand' or (v898.Name == 'Ship Engineer' or (v898.Name == 'Ship Steward' or (v898.Name == 'Ship Officer' or v898.Name == 'Arctic Warrior')))) and (v898:FindFirstChild('Humanoid') and (v898:FindFirstChild('HumanoidRootPart') and v898.Humanoid.Health > 0)) then
                                        repeat
                                            wait()

                                            StartMagnet = true

                                            EquipWeapon(_G.SelectWeapon)

                                            _G.PosMon = v898.HumanoidRootPart.CFrame
                                            v898.HumanoidRootPart.Transparency = 1
                                            v898.Humanoid.JumpPower = 0
                                            v898.Humanoid.WalkSpeed = 0
                                            v898.HumanoidRootPart.CanCollide = false

                                            TP2(v898.HumanoidRootPart.CFrame * Pos)
                                        until not Auto_Quest_Soul_Guitar or (not v898.Parent or v898.Humanoid.Health <= 0)

                                        StartMagnet = false
                                    end
                                end
                            else
                                StartMagnet = false

                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                            end
                        else
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
                        end
                    elseif (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
                        topos(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
                    elseif game:GetService('Workspace').Map['Haunted Castle'].Candle1.Transparency ~= 0 then
                        if string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2), 'Error') then
                            print('Go to Grave')
                            topos(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
                        elseif string.find(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2), 'Nothing') then
                            print('Wait Next Night')
                        else
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('gravestoneEvent', 2, true)
                        end
                    else
                        local v899 = game.ReplicatedStorage:WaitForChild('Remotes'):WaitForChild('CommF_')
                        local v900 = v899:InvokeServer('GuitarPuzzleProgress', 'Check')

                        if not v900 then
                            if game.ReplicatedStorage.Remotes.CommF_:InvokeServer('gravestoneEvent', 2) ~= true then
                                if Auto_Quest_Soul_Guitar_Hop then
                                    ServerFunc:NormalTeleport()
                                end
                            else
                                v899:InvokeServer('gravestoneEvent', 2, true)
                            end
                        end
                        if v900 then
                            local v901 = v900.Swamp
                            local v902 = v900.Gravestones
                            local v903 = v900.Ghost
                            local v904 = v900.Trophies
                            local v905 = v900.Pipes
                            local _ = v900.CraftedOnce

                            if v901 and (v902 and (v903 and (v904 and v905))) then
                                Auto_Quest_Soul_Guitar = false
                            end
                            if not v901 then
                                repeat
                                    wait()
                                    topos(CFrame.new(-10141.462890625, 138.6524658203125, 5935.06298828125) * CFrame.new(0, 30, 0))
                                until game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(-10141.462890625, 138.6524658203125, 5935.06298828125)) <= 100

                                local v906, v907, v908 = pairs(game.Workspace.Enemies:GetChildren())

                                while true do
                                    local v909

                                    v908, v909 = v906(v907, v908)

                                    if v908 == nil then
                                        break
                                    end
                                    if v909.Name == 'Living Zombie' and (v909:FindFirstChild('Humanoid') and v909:FindFirstChild('HumanoidRootPart')) and game.Players.LocalPlayer:DistanceFromCharacter(v909.HumanoidRootPart.Position) <= 2000 then
                                        repeat
                                            wait()
                                            EquipWeapon(_G.SelectWeapon)

                                            v909.HumanoidRootPart.Transparency = 1
                                            PosMonBone = v909.HumanoidRootPart.CFrame
                                            BonesBring = true
                                            v909.Humanoid.JumpPower = 0
                                            v909.Humanoid.WalkSpeed = 0
                                            v909.HumanoidRootPart.CanCollide = false

                                            TP2(v909.HumanoidRootPart.CFrame * CFrame.new(0, 30, 15))
                                        until not v909.Parent or (v909.Humanoid.Health <= 0 or not (v909:FindFirstChild('HumanoidRootPart') and (v909:FindFirstChild('Humanoid') and Auto_Quest_Soul_Guitar)))

                                        BonesBring = false
                                    end
                                end
                            end

                            wait(1)

                            if v901 and not v902 then
                                v899:InvokeServer('GuitarPuzzleProgress', 'Gravestones')
                            end

                            wait(1)

                            if v901 and (v902 and not v903) then
                                v899:InvokeServer('GuitarPuzzleProgress', 'Ghost')
                            end

                            wait(1)

                            if v901 and (v902 and (v903 and not v904)) then
                                v899:InvokeServer('GuitarPuzzleProgress', 'Trophies')
                            end

                            wait(1)

                            if v901 and (v902 and (v903 and (v904 and not v905))) then
                                v899:InvokeServer('GuitarPuzzleProgress', 'Pipes')
                            end
                        end
                    end
                end
            end)
        end
    end)
end
if World3 then
    v307:Seperator('Buddy Sword')
    v307:Toggle('Auto Buddy Sword', false, function(p910)
        _G.BudySword = p910

        StopTween(_G.BudySword)
    end)
    v307:Toggle('Auto Buddy Sword Hop', false, function(p911)
        _G.BudySwordHop = p911
    end)

    local vu912 = CFrame.new(-731.2034301757813, 381.5658874511719, -11198.4951171875)

    spawn(function()
        while wait() do
            if _G.BudySword and World3 then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Cake Queen') then
                        local v913, v914, v915 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v916

                            v915, v916 = v913(v914, v915)

                            if v915 == nil then
                                break
                            end
                            if v916.Name == 'Cake Queen' and (v916:FindFirstChild('Humanoid') and (v916:FindFirstChild('HumanoidRootPart') and v916.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v916.HumanoidRootPart.CanCollide = false
                                    v916.Humanoid.WalkSpeed = 0

                                    TP2(v916.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.BudySword or (not v916.Parent or v916.Humanoid.Health <= 0)
                            end
                        end
                    else
                        topos(vu912)

                        if game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen') then
                            topos(game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        elseif _G.BudySwordHop then
                            Hop()
                        end
                    end
                end)
            end
        end
    end)
    v307:Seperator('Dual Curse Katana')
    v307:Toggle('Auto Finish Tushita Quest', false, function(p917)
        Tushita_Quest = p917

        StopTween(Tushita_Quest)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if not Tushita_Quest then
                    return
                end
                if tostring(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'OpenDoor')) ~= 'opened' then
                    wait(0.7)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'OpenDoor')
                    wait(0.3)
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'OpenDoor', true)
                    warn('\u{fffd}\u{fffd}\u{e33}\u{e25}\u{e31}\u{e07}\u{e40}\u{e1b}\u{e34}\u{e14}\u{e40}\u{e1b}\u{e34}\u{e14}\u{e1b}\u{e23}\u{e30}\u{e15}\u{e39}...')
                end
                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Finished == nil then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Good')
                end
                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Finished ~= false then
                end
                if tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) == -3 then
                    repeat
                        wait()
                        topos(CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875))
                    until (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Tushita_Quest or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) == 1

                    if (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        wait(0.7)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'BoatQuest', workspace.NPCs:FindFirstChild('Luxury Boat Dealer'), 'Check')
                        wait(0.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'BoatQuest', workspace.NPCs:FindFirstChild('Luxury Boat Dealer'))
                    end

                    wait(1)

                    repeat
                        wait()
                        topos(CFrame.new(3914, 8, -2582))
                    until (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Tushita_Quest or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) == 1

                    if (CFrame.new(3914, 8, -2582).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        wait(0.7)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'BoatQuest', workspace.NPCs:FindFirstChild('Luxury Boat Dealer'), 'Check')
                        wait(0.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'BoatQuest', workspace.NPCs:FindFirstChild('Luxury Boat Dealer'))
                    end

                    wait(1)

                    repeat
                        wait()
                        topos(CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625))
                    until (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not Tushita_Quest or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) == 1

                    if (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        wait(0.7)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'BoatQuest', workspace.NPCs:FindFirstChild('Luxury Boat Dealer'), 'Check')
                        wait(0.5)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'BoatQuest', workspace.NPCs:FindFirstChild('Luxury Boat Dealer'))
                    end

                    vu20.wait(1)
                end
                if tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) == -4 then
                    if game:GetService('Workspace').Enemies:FindFirstChildOfClass('Model') then
                        local v918, v919, v920 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v921

                            v920, v921 = v918(v919, v920)

                            if v920 == nil then
                                break
                            end
                            if (v921:FindFirstChild('HumanoidRootPart').Position - CFrame.new(-5463.74560546875, 313.7947082519531, -2844.50390625).Position).Magnitude > 1000 then
                                topos(CFrame.new(-5084.20849609375, 314.5412902832031, -2975.078125))
                            elseif v921:FindFirstChild('HumanoidRootPart') and (v921:FindFirstChild('Humanoid') and v921:FindFirstChild('Humanoid').Health > 0) then
                                repeat
                                    vu20.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v921.HumanoidRootPart.CanCollide = false
                                    v921.Head.CanCollide = false

                                    TP2(v921.HumanoidRootPart.CFrame * Pos)

                                    PosTHQuest = v921.HumanoidRootPart.CFrame
                                    MagnetTHQuest = true
                                    NameTH = v921.Name
                                until not Tushita_Quest or (v921.Humanoid.Health <= 0 or not v921.Parent) or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) == 2
                            end
                        end
                    else
                        topos(CFrame.new(-5084.20849609375, 314.5412902832031, -2975.078125))
                    end
                end
                if tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) ~= -5 then
                end
                if game:GetService('Workspace').Enemies:FindFirstChild('Cake Queen') then
                    local v922, v923, v924 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v925

                        v924, v925 = v922(v923, v924)

                        if v924 == nil then
                            break
                        end
                        if v925.Name == 'Cake Queen' and (v925:FindFirstChild('Humanoid') and (v925:FindFirstChild('HumanoidRootPart') and v925.Humanoid.Health > 0)) then
                            repeat
                                vu20.wait()
                                EquipWeapon(_G.SelectWeapon)

                                v925.HumanoidRootPart.CanCollide = false
                                v925.Head.CanCollide = false

                                TP2(v925.HumanoidRootPart.CFrame * Pos)
                            until not Tushita_Quest or (not v925.Parent or v925.Humanoid.Health <= 0) or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) == 3
                        end
                    end
                end
                if game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen') and game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen').Humanoid.Health > 0 then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Cake Queen').HumanoidRootPart.CFrame * CFrame.new(5, 10, 7))
                end
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService('Workspace').Map.HeavenlyDimension.Spawn.Position).Magnitude > 1000 then
                end

                local v926, v927, v928 = pairs(game:GetService('Workspace').Map.HeavenlyDimension.Exit:GetChildren())

                while true do
                    local v929

                    v928, v929 = v926(v927, v928)

                    if v928 == nil then
                        break
                    end

                    Ex = v928
                end

                if Ex == 2 then
                    repeat
                        vu20.wait()

                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.HeavenlyDimension.Exit.CFrame
                    until not Tushita_Quest or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Good) == 3
                end

                vu20.wait()
                topos(CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625))

                local v930, v931, v932 = pairs(game:GetService('Workspace').Map.HeavenlyDimension:GetDescendants())

                while true do
                    local v933

                    v932, v933 = v930(v931, v932)

                    if v932 == nil then
                        break
                    end
                    if v933:IsA('ProximityPrompt') then
                        fireproximityprompt(v933)
                    end
                end

                if (CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 5 then
                end

                wait(2)

                _G.DoneT1 = true

                if Tushita_Quest and not _G.DoneT1 then
                    vu20.wait()
                end

                vu20.wait()
                topos(CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875))

                local v934, v935, v936 = pairs(game:GetService('Workspace').Map.HeavenlyDimension:GetDescendants())

                while true do
                    local v937

                    v936, v937 = v934(v935, v936)

                    if v936 == nil then
                        break
                    end
                    if v937:IsA('ProximityPrompt') then
                        fireproximityprompt(v937)
                    end
                end

                if (CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 5 then
                end

                wait(2)

                _G.DoneT2 = true

                if not _G.DoneT2 and Tushita_Quest ~= false then
                    vu20.wait()
                end

                vu20.wait()
                topos(CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375))

                local v938, v939, v940 = pairs(game:GetService('Workspace').Map.HeavenlyDimension:GetDescendants())

                while true do
                    local v941

                    v940, v941 = v938(v939, v940)

                    if v940 == nil then
                        break
                    end
                    if v941:IsA('ProximityPrompt') then
                        fireproximityprompt(v941)
                    end
                end

                if (CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 5 then
                end

                wait(2)

                _G.DoneT3 = true

                if _G.DoneT3 or Tushita_Quest == false then
                    local v942, v943, v944 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v945

                        v944, v945 = v942(v943, v944)

                        if v944 == nil then
                            break
                        end
                        if (v945:FindFirstChild('HumanoidRootPart').Position - CFrame.new(-22695.7012, 5270.93652, 3814.42847, 0.11794927, 3.3218583399999995e-8, 0.99301964, -8.73070718e-8, 1, -2.30819008e-8, -0.99301964, -8.397513799999999e-8, 0.11794927).Position).Magnitude > 300 then
                            MagnetTHQuest = false
                        elseif v945:FindFirstChild('HumanoidRootPart') and (v945:FindFirstChild('Humanoid') and v945:FindFirstChild('Humanoid').Health > 0) then
                            vu20.wait()
                            EquipWeapon(_G.SelectWeapon)

                            v945.HumanoidRootPart.CanCollide = false
                            v945.Head.CanCollide = false

                            TP2(v945.HumanoidRootPart.CFrame * Pos)

                            PosTHQuest = v945.HumanoidRootPart.CFrame
                            MagnetTHQuest = true
                            NameTH = v945.Name

                            if Tushita_Quest and (v945.Humanoid.Health > 0 and v945.Parent) then
                            end
                        end
                    end
                end

                wait()
            end)
        end
    end)
    v307:Toggle('Auto Finish Yama Quest', false, function(p946)
        Yama_Quest = p946

        StopTween(Yama_Quest)
    end)

    PosMsList = {
        ['Pirate Millionaire'] = CFrame.new(-426, 176, 5558),
        ['Pistol Billionaire'] = CFrame.new(-83, 127, 6097),
        ['Dragon Crew Warrior'] = CFrame.new(6320, 52, -1282),
        ['Dragon Crew Archer'] = CFrame.new(6625, 378, 244),
        ['Female Islander'] = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),
        ['Giant Islander'] = CFrame.new(4902, 670, 39),
        ['Marine Commodore'] = CFrame.new(2401, 123, -7589),
        ['Marine Rear Admiral'] = CFrame.new(3588, 229, -7085),
        ['Fishman Raider'] = CFrame.new(-10941, 332, -8760),
        ['Fishman Captain'] = CFrame.new(-11035, 332, -9087),
        ['Forest Pirate'] = CFrame.new(-13446, 413, -7760),
        ['Mythological Pirate'] = CFrame.new(-13510, 584, -6987),
        ['Jungle Pirate'] = CFrame.new(-11778, 426, -10592),
        ['Musketeer Pirate'] = CFrame.new(-13282, 496, -9565),
        ['Reborn Skeleton'] = CFrame.new(-8764, 142, 5963),
        ['Living Zombie'] = CFrame.new(-10227, 421, 6161),
        ['Demonic Soul'] = CFrame.new(-9579, 6, 6194),
        ['Posessed Mummy'] = CFrame.new(-9579, 6, 6194),
        ['Peanut Scout'] = CFrame.new(-1993, 187, -10103),
        ['Peanut President'] = CFrame.new(-2215, 159, -10474),
        ['Ice Cream Chef'] = CFrame.new(-877, 118, -11032),
        ['Ice Cream Commander'] = CFrame.new(-877, 118, -11032),
        ['Cookie Crafter'] = CFrame.new(-2021, 38, -12028),
        ['Cake Guard'] = CFrame.new(-2024, 38, -12026),
        ['Baking Staff'] = CFrame.new(-1932, 38, -12848),
        ['Head Baker'] = CFrame.new(-1932, 38, -12848),
        ['Cocoa Warrior'] = CFrame.new(95, 73, -12309),
        ['Chocolate Bar Battler'] = CFrame.new(647, 42, -12401),
        ['Sweet Thief'] = CFrame.new(116, 36, -12478),
        ['Candy Rebel'] = CFrame.new(47, 61, -12889),
        Ghost = CFrame.new(5251, 5, 1111),
    }

    spawn(function()
        while wait() do
            pcall(function()
                if not Yama_Quest then
                    return
                end
                if tostring(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'OpenDoor')) ~= 'opened' then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'OpenDoor')
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'OpenDoor', true)
                end
                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Finished == nil then
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Evil')
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Evil')
                end
                if game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Finished ~= false then
                end
                if tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == -3 then
                    vu20.wait()

                    if game:GetService('Workspace').Enemies:FindFirstChild('Forest Pirate') then
                        local v947, v948, v949 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local vu950

                            v949, vu950 = v947(v948, v949)

                            if v949 == nil then
                                break
                            end
                            if vu950.Name == 'Forest Pirate' then
                                PosMon = vu950.HumanoidRootPart.CFrame

                                spawn(function()
                                    BringMobs(PosMon, vu950.Name)
                                end)
                                topos(game:GetService('Workspace').Enemies:FindFirstChild('Forest Pirate').HumanoidRootPart.CFrame)
                            end
                        end
                    else
                        topos(CFrame.new(-13223.521484375, 428.1938171386719, -7766.06787109375))
                    end
                    if tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) ~= 1 and Yama_Quest then
                    end
                end
                if tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == -4 then
                end
                if tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) ~= -5 or (not game:GetService('Workspace').Map:FindFirstChild('HellDimension') or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService('Workspace').Map.HellDimension.Spawn.Position).Magnitude > 1000) then
                end

                local v951, v952, v953 = pairs(game:GetService('Workspace').Map.HellDimension.Exit:GetChildren())

                while true do
                    local v954

                    v953, v954 = v951(v952, v953)

                    if v953 == nil then
                        break
                    end
                    if tonumber(v953) == 2 then
                        repeat
                            vu20.wait()

                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace').Map.HellDimension.Exit.CFrame
                        until not Yama_Quest or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == 3
                    end
                end

                if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                    wait()
                    EquipWeapon(_G.SelectWeapon)
                end
                if tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == 3 then
                    local v955, v956, v957 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local vu958

                        v957, vu958 = v955(v956, v957)

                        if v957 == nil then
                            break
                        end
                        if (vu958:FindFirstChild('HumanoidRootPart').Position - game:GetService('Workspace').Map.HellDimension.Spawn.Position).Magnitude > 300 then
                            MagnetYamaQuest = false
                        elseif vu958:FindFirstChild('HumanoidRootPart') and (vu958:FindFirstChild('Humanoid') and vu958:FindFirstChild('Humanoid').Health > 0) then
                            repeat
                                vu20.wait()
                                EquipWeapon(_G.SelectWeapon)

                                vu958.HumanoidRootPart.CanCollide = false
                                vu958.Head.CanCollide = false

                                TP2(vu958.HumanoidRootPart.CFrame * Pos)

                                PosMon = vu958.HumanoidRootPart.CFrame

                                spawn(function()
                                    BringMobs(PosMon, vu958.Name)
                                end)
                            until not Yama_Quest or (vu958.Humanoid.Health <= 0 or not vu958.Parent) or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == 3
                        end
                    end
                end

                local v959, v960, v961 = pairs(game:GetService('Players').LocalPlayer.QuestHaze:GetChildren())

                if string.find(v962, v964.Name) and v964.Value > 0 then
                end

                local v962, v963 = v965(v966, v962)

                if v962 ~= nil then
                end

                local v964

                v961, v964 = v959(v960, v961)

                if v961 == nil then
                end

                local v965, v966

                v965, v966, v962 = pairs(PosMsList)

                if game:GetService('Workspace').Enemies:FindFirstChild(v962) then
                end

                local v967 = v962

                if true then
                    wait()

                    if game:GetService('Workspace').Enemies:FindFirstChild(v962) then
                        local v968, v969, v970 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local vu971

                            v970, vu971 = v968(v969, v970)

                            if v970 == nil then
                                break
                            end
                            if vu971:FindFirstChild('HumanoidRootPart') and (vu971:FindFirstChild('Humanoid') and (vu971:FindFirstChild('Humanoid').Health > 0 and vu971:FindFirstChild('HazeESP'))) then
                                repeat
                                    vu20.wait()

                                    StartMagnet = true

                                    EquipWeapon(_G.SelectWeapon)

                                    vu971.HumanoidRootPart.CanCollide = false
                                    vu971.Head.CanCollide = false

                                    TP2(vu971.HumanoidRootPart.CFrame * Pos)

                                    PosMon = vu971.HumanoidRootPart.CFrame

                                    spawn(function()
                                        BringMobs(PosMon, vu971.Name)
                                    end)

                                    local v972 = vu971
                                until not (vu971.FindFirstChild(v972, 'HazeESP') and Yama_Quest) or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == 2
                            end
                        end
                    else
                        topos(v963)
                    end
                end
                if Yama_Quest then
                end

                v962 = v967

                local v973, v974, v975 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                while true do
                    local vu976

                    v975, vu976 = v973(v974, v975)

                    if v975 == nil then
                        break
                    end
                    if vu976:FindFirstChild('HumanoidRootPart') and (vu976:FindFirstChild('Humanoid') and (vu976:FindFirstChild('Humanoid').Health > 0 and vu976:FindFirstChild('HazeESP'))) then
                        repeat
                            vu20.wait()

                            StartMagnet = true

                            EquipWeapon(_G.SelectWeapon)

                            vu976.HumanoidRootPart.CanCollide = false
                            vu976.Head.CanCollide = false

                            TP2(vu976.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))

                            PosMon = vu976.HumanoidRootPart.CFrame

                            spawn(function()
                                BringMobs(PosMon, vu976.Name)
                            end)
                        until not Yama_Quest or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == 2
                    end
                end

                vu20.wait()
                topos(game:GetService('Workspace').Map.HellDimension.Torch1.Particles.CFrame)

                local v977, v978, v979 = pairs(game:GetService('Workspace').Map.HellDimension:GetDescendants())

                while true do
                    local v980

                    v979, v980 = v977(v978, v979)

                    if v979 == nil then
                        break
                    end
                    if v980:IsA('ProximityPrompt') then
                        fireproximityprompt(v980)
                    end
                end

                if (game:GetService('Workspace').Map.HellDimension.Torch1.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 5 then
                end

                wait(2)

                _G.T1Yama = true

                if Yama_Quest and not _G.T1Yama and tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) ~= 3 then
                    vu20.wait()
                end

                vu20.wait()
                topos(game:GetService('Workspace').Map.HellDimension.Torch2.Particles.CFrame)

                local v981, v982, v983 = pairs(game:GetService('Workspace').Map.HellDimension:GetDescendants())

                while true do
                    local v984

                    v983, v984 = v981(v982, v983)

                    if v983 == nil then
                        break
                    end
                    if v984:IsA('ProximityPrompt') then
                        fireproximityprompt(v984)
                    end
                end

                if (game:GetService('Workspace').Map.HellDimension.Torch2.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 5 then
                end

                wait(2)

                _G.T2Yama = true

                if not _G.T2Yama and Yama_Quest ~= false and tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) ~= 3 then
                    vu20.wait()
                end

                vu20.wait()
                topos(game:GetService('Workspace').Map.HellDimension.Torch3.Particles.CFrame)

                local v985, v986, v987 = pairs(game:GetService('Workspace').Map.HellDimension:GetDescendants())

                while true do
                    local v988

                    v987, v988 = v985(v986, v987)

                    if v987 == nil then
                        break
                    end
                    if v988:IsA('ProximityPrompt') then
                        fireproximityprompt(v988)
                    end
                end

                if (game:GetService('Workspace').Map.HellDimension.Torch3.Particles.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 5 then
                end

                wait(2)

                _G.T3Yama = true

                if _G.T3Yama or Yama_Quest == false or tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == 3 then
                end

                wait()
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if Yama_Quest and (tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == -5 and (not game:GetService('Workspace').Map:FindFirstChild('HellDimension') or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService('Workspace').Map.HellDimension.Spawn.Position).Magnitude > 1000)) then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Soul Reaper') then
                        local v989, v990, v991 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v992

                            v991, v992 = v989(v990, v991)

                            if v991 == nil then
                                break
                            end
                            if string.find(v992.Name, 'Soul Reaper') then
                                repeat
                                    vu20.wait()
                                    TP2(v992.HumanoidRootPart.CFrame)
                                until v992.Humanoid.Health <= 0 or not (Yama_Quest and v992.Parent) or (tonumber(game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress').Evil) == 3 or game:GetService('Workspace').Map:FindFirstChild('HellDimension') and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game:GetService('Workspace').Map.HellDimension.Spawn.Position).Magnitude <= 1000)
                            end
                        end
                    elseif game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Hallow Essence') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Hallow Essence') then
                        repeat
                            topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
                            vu20.wait()
                        until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8

                        EquipWeapon('Hallow Essence')
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper') and game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper').Humanoid.Health > 0 then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper').HumanoidRootPart.CFrame)
                    elseif game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Check') >= 50 or (game:GetService('Workspace').Enemies:FindFirstChild('Soul Reaper') or (game:GetService('ReplicatedStorage'):FindFirstChild('Soul Reaper') or game:GetService('Workspace').Map:FindFirstChild('HellDimension'))) then
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Bones', 'Buy', 1, 1)
                    elseif game:GetService('Workspace').Enemies:FindFirstChild('Reborn Skeleton') or (game:GetService('Workspace').Enemies:FindFirstChild('Living Zombie') or (game:GetService('Workspace').Enemies:FindFirstChild('Domenic Soul') or game:GetService('Workspace').Enemies:FindFirstChild('Posessed Mummy'))) then
                        local v993, v994, v995 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v996

                            v995, v996 = v993(v994, v995)

                            if v995 == nil then
                                break
                            end
                            if (v996.Name == 'Reborn Skeleton' or (v996.Name == 'Living Zombie' or (v996.Name == 'Demonic Soul' or v996.Name == 'Posessed Mummy'))) and (v996:FindFirstChild('HumanoidRootPart') and (v996:FindFirstChild('Humanoid') and v996:FindFirstChild('Humanoid').Health > 0)) then
                                repeat
                                    vu20.wait()

                                    BonesBring = true

                                    EquipWeapon(_G.SelectWeapon)

                                    v996.HumanoidRootPart.CanCollide = false
                                    v996.Head.CanCollide = false

                                    TP2(v996.HumanoidRootPart.CFrame * Pos)

                                    PosMonBone = v996.HumanoidRootPart.CFrame
                                until not Yama_Quest or (v996.Humanoid.Health <= 0 or not v996.Parent)
                            end
                        end
                    else
                        MagnetWaitY = false

                        topos(CFrame.new(-9515.2255859375, 164.0062255859375, 5785.38330078125))
                    end
                end
            end)
        end
    end)
    v307:Toggle('Auto Get Cursed Dual Katana', false, function(p997)
        Get_Cursed = p997

        StopTween(Get_Cursed)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if not Get_Cursed then
                    return
                end

                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Good')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'Progress', 'Evil')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Boss')

                if not game:GetService('Workspace').Enemies:FindFirstChild('Cursed Skeleton Boss') then
                    topos(CFrame.new(-12318.193359375, 601.9518432617188, -6538.662109375))
                    vu20.wait(0.5)
                    topos(game:GetService('Workspace').Map.Turtle.Cursed.BossDoor.CFrame)
                end

                local v998, v999, v1000 = pairs(game:GetService('Workspace').Enemies:GetChildren())
                local v1001

                v1000, v1001 = v998(v999, v1000)

                if v1000 == nil then
                end
                if v1001.Name ~= 'Cursed Skeleton Boss' or (not v1001:FindFirstChild('Humanoid') or (not v1001:FindFirstChild('HumanoidRootPart') or v1001.Humanoid.Health <= 0)) then
                end
                if true then
                    vu20.wait()

                    if game.Players.LocalPlayer.Character:FindFirstChild('Yama') or game.Players.LocalPlayer.Backpack:FindFirstChild('Yama') then
                        EquipWeapon('Yama')
                    elseif game.Players.LocalPlayer.Character:FindFirstChild('Tushita') or game.Players.LocalPlayer.Backpack:FindFirstChild('Tushita') then
                        EquipWeapon('Tushita')
                    else
                        warn('Yama or Tushita Only!!!')
                        wait(5)
                    end
                end

                v1001.HumanoidRootPart.CanCollide = false
                v1001.Humanoid.WalkSpeed = 0

                TP2(v1001.HumanoidRootPart.CFrame * Pos)
                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)

                if Get_Cursed and (v1001.Parent and v1001.Humanoid.Health > 0) then
                else
                end
            end)
        end
    end)
end

task.spawn(function()
    while true do
        wait()

        if setscriptable then
            setscriptable(game.Players.LocalPlayer, 'SimulationRadius', true)
        end
        if sethiddenproperty then
            sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
        end
    end
end)

function InMyNetWork(p1002)
    if isnetworkowner then
        return isnetworkowner(p1002)
    else
        return (p1002.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode
    end
end

if World1 or World2 then
    v308:Seperator('Go To The Third Sea')
end
if World3 then
    v308:Seperator('Mirage')

    local vu1003 = v308:Label('Check Mirage')

    task.spawn(function()
        while task.wait() do
            pcall(function()
                if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
                    vu1003:Set('Check Mirage : Spawn!')
                else
                    vu1003:Set('Check Mirage : Not Spawn')
                end
            end)
        end
    end)
    v308:Toggle('Teleport Mirage Island', false, function(p1004)
        _G.MysticIsland = p1004

        StopTween(_G.MysticIsland)
    end)
    spawn(function()
        pcall(function()
            while wait() do
                local v1005 = _G.MysticIsland and game:GetService('Workspace').Map:FindFirstChild('MysticIsland')

                if v1005 then
                    local v1006 = v1005.WorldPivot.Position

                    topos(CFrame.new(v1006.X, 500, v1006.Z))
                end
            end
        end)
    end)
    v308:Toggle('Teleport Advanced Fruit Dealer', false, function(p1007)
        _G.Miragenpc = p1007

        StopTween(_G.Miragenpc)
    end)
    spawn(function()
        while wait() do
            if _G.Miragenpc then
                local v1008 = game.ReplicatedStorage.NPCs:FindFirstChild('Advanced Fruit Dealer')

                if v1008 and v1008:IsA('Model') then
                    local v1009 = v1008.PrimaryPart

                    if v1009 then
                        v1009 = v1008.PrimaryPart.Position
                    end
                    if v1009 then
                        topos(CFrame.new(v1009))
                    end
                end
            end
        end
    end)
    v308:Toggle('Auto Lock Moon', false, function(p1010)
        _G.LockCamToMoon = p1010
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.LockCamToMoon then
                    wait(0.1)

                    local v1011 = game.Lighting:GetMoonDirection()
                    local v1012 = game.Workspace.CurrentCamera.CFrame.p + v1011 * 100

                    game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, v1012)
                end
            end)
        end
    end)
    v308:Toggle('Tween Gear', false, function(p1013)
        _G.TweenMGear = p1013

        StopTween(_G.TweenMGear)
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.TweenMGear and game:GetService('Workspace').Map:FindFirstChild('MysticIsland') then
                    local v1014, v1015, v1016 = pairs(game:GetService('Workspace').Map.MysticIsland:GetChildren())

                    while true do
                        local v1017

                        v1016, v1017 = v1014(v1015, v1016)

                        if v1016 == nil then
                            break
                        end
                        if v1017:IsA('MeshPart') and v1017.Material == Enum.Material.Neon then
                            topos(v1017.CFrame)
                        end
                    end
                end
            end
        end)
    end)
    v308:Seperator('Race V4')
    v308:Button('Teleport To Top Of GreatTree', function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'RaceV4Progress',
            'Teleport',
        }))
        wait(0.1)

        Game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)

        topos(CFrame.new(28609.5801, 14896.5098, 105.869637, -0.00754010677, 3.26780936e-9, -0.999971569, 6.88313628e-9, 1, 3.2160012399999998e-9, 0.999971569, -6.85869184e-9, -0.00754010677))
        wait(2)

        local v1018 = game.Players.LocalPlayer
        local v1019 = CFrame.new(28609.5801, 14896.5098, 105.869637).Position

        if v1018.Character and (v1018.Character:FindFirstChild('HumanoidRootPart') and (v1018.Character.HumanoidRootPart.Position - v1019).Magnitude < 3) then
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
                'RaceV4Progress',
                'TeleportBack',
            }))
        end
    end)
    v308:Button('Teleport To Timple Of Time', function()
        Game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286, 14897, 103)
    end)
    v308:Button('Teleport To Lever Pull', function()
        TP2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end)
    v308:Button('Teleport To Acient One (Must Be in Temple Of Time!)', function()
        TP2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
    end)
    v308:Toggle('Auto Buy Gear', false, function(p1020)
        _G.BuyGear = p1020
    end)
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.BuyGear then
                    game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_'):InvokeServer(unpack({
                        'UpgradeRace',
                        'Buy',
                    }))
                end
            end
        end)
    end)
    v308:Toggle('Disabled Inf Stairs', false, function(p1021)
        game.Players.LocalPlayer.Character.InfiniteStairs.Disabled = p1021
    end)
    v308:Button('Teleport Trial Door', function()
        local v1022 = Game:GetService('Players').LocalPlayer
        local v1023 = v1022.Character.HumanoidRootPart

        v1023.CFrame = CFrame.new(28286, 14897, 103)

        wait(0.1)

        v1023.CFrame = CFrame.new(28286, 14897, 103)

        wait(0.1)

        v1023.CFrame = CFrame.new(28286, 14897, 103)

        wait(0.1)

        v1023.CFrame = CFrame.new(28286, 14897, 103)

        if v1022.Data.Race.Value ~= 'Fishman' then
            if v1022.Data.Race.Value ~= 'Human' then
                if v1022.Data.Race.Value ~= 'Cyborg' then
                    if v1022.Data.Race.Value ~= 'Skypiea' then
                        if v1022.Data.Race.Value ~= 'Ghoul' then
                            if v1022.Data.Race.Value == 'Mink' then
                                v1023.CFrame = CFrame.new(28286, 14897, 103)

                                wait(0.6)
                                topos(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
                            end
                        else
                            v1023.CFrame = CFrame.new(28286, 14897, 103)

                            wait(0.6)
                            topos(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
                        end
                    else
                        v1023.CFrame = CFrame.new(28286, 14897, 103)

                        wait(0.6)
                        topos(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
                    end
                else
                    v1023.CFrame = CFrame.new(28286, 14897, 103)

                    wait(0.6)
                    topos(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
                end
            else
                v1023.CFrame = CFrame.new(28286, 14897, 103)

                wait(0.6)
                topos(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
            end
        else
            v1023.CFrame = CFrame.new(28286, 14897, 103)

            wait(0.6)
            topos(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
        end
    end)
    v308:Button('Teleport To Clock', function()
        TP2(CFrame.new(29551.9941, 15069.002, -85.5179291))
    end)
    v308:Toggle('Auto Trial', false, function(p1024)
        _G.QuestRace = p1024

        StopTween(_G.QuestRace)
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.QuestRace then
                    local v1025 = game:GetService('Players').LocalPlayer.Data.Race.Value

                    if v1025 == 'Human' then
                        local v1026, v1027, v1028 = pairs(game.Workspace.Enemies:GetDescendants())

                        while true do
                            local vu1029

                            v1028, vu1029 = v1026(v1027, v1028)

                            if v1028 == nil then
                                break
                            end
                            if vu1029:FindFirstChild('Humanoid') and (vu1029:FindFirstChild('HumanoidRootPart') and vu1029.Humanoid.Health > 0) then
                                pcall(function()
                                    repeat
                                        wait(0.1)

                                        vu1029.Humanoid.Health = 0
                                        vu1029.HumanoidRootPart.CanCollide = false

                                        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                    until not _G.QuestRace or (not vu1029.Parent or vu1029.Humanoid.Health <= 0)
                                end)
                            end
                        end
                    elseif v1025 == 'Skypiea' then
                        local v1030 = next
                        local v1031, v1032 = workspace:GetDescendants()

                        while true do
                            local v1033

                            v1032, v1033 = v1030(v1031, v1032)

                            if v1032 == nil then
                                break
                            end
                            if v1033.Name == 'FinishPart' then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1033.CFrame
                            end
                        end
                    elseif v1025 == 'Fishman' then
                        local v1034, v1035, v1036 = pairs(game:GetService('Workspace').SeaBeasts.SeaBeast1:GetDescendants())

                        while true do
                            local v1037

                            v1036, v1037 = v1034(v1035, v1036)

                            if v1036 == nil then
                                break
                            end
                            if v1037.Name == 'HumanoidRootPart' then
                                topos(v1037.CFrame * CFrame.new(PosX, PosY, PosZ))

                                local v1038, v1039, v1040 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                while true do
                                    local v1041

                                    v1040, v1041 = v1038(v1039, v1040)

                                    if v1040 == nil then
                                        break
                                    end
                                    if v1041:IsA('Tool') and v1041.ToolTip == 'Melee' then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1041)
                                    end
                                end

                                local v1042, v1043, v1044 = ipairs({122, 120, 99})

                                while true do
                                    local v1045

                                    v1044, v1045 = v1042(v1043, v1044)

                                    if v1044 == nil then
                                        break
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, v1045, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, v1045, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                end

                                local v1046, v1047, v1048 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                while true do
                                    local v1049

                                    v1048, v1049 = v1046(v1047, v1048)

                                    if v1048 == nil then
                                        break
                                    end
                                    if v1049:IsA('Tool') and v1049.ToolTip == 'Blox Fruit' then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1049)
                                    end
                                end

                                local v1050, v1051, v1052 = ipairs({122, 120, 99})

                                while true do
                                    local v1053

                                    v1052, v1053 = v1050(v1051, v1052)

                                    if v1052 == nil then
                                        break
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, v1053, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, v1053, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                end

                                wait(0.5)

                                local v1054, v1055, v1056 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                while true do
                                    local v1057

                                    v1056, v1057 = v1054(v1055, v1056)

                                    if v1056 == nil then
                                        break
                                    end
                                    if v1057:IsA('Tool') and v1057.ToolTip == 'Sword' then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1057)
                                    end
                                end

                                local v1058, v1059, v1060 = ipairs({122, 120, 99})

                                while true do
                                    local v1061

                                    v1060, v1061 = v1058(v1059, v1060)

                                    if v1060 == nil then
                                        break
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, v1061, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, v1061, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                end

                                wait(0.5)

                                local v1062, v1063, v1064 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                                while true do
                                    local v1065

                                    v1064, v1065 = v1062(v1063, v1064)

                                    if v1064 == nil then
                                        break
                                    end
                                    if v1065:IsA('Tool') and v1065.ToolTip == 'Gun' then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1065)
                                    end
                                end

                                local v1066, v1067, v1068 = ipairs({122, 120, 99})

                                while true do
                                    local v1069

                                    v1068, v1069 = v1066(v1067, v1068)

                                    if v1068 == nil then
                                        break
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, v1069, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, v1069, false, game.Players.LocalPlayer.Character.HumanoidRootPart)
                                    wait(0.2)
                                end
                            end
                        end
                    elseif v1025 == 'Cyborg' then
                        topos(CFrame.new(28654, 14898.7832, -30))
                    elseif v1025 == 'Ghoul' then
                        local v1070, v1071, v1072 = pairs(game.Workspace.Enemies:GetDescendants())

                        while true do
                            local vu1073

                            v1072, vu1073 = v1070(v1071, v1072)

                            if v1072 == nil then
                                break
                            end
                            if vu1073:FindFirstChild('Humanoid') and (vu1073:FindFirstChild('HumanoidRootPart') and vu1073.Humanoid.Health > 0) then
                                pcall(function()
                                    repeat
                                        wait(0.1)

                                        vu1073.Humanoid.Health = 0
                                        vu1073.HumanoidRootPart.CanCollide = false

                                        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                    until not _G.QuestRace or (not vu1073.Parent or vu1073.Humanoid.Health <= 0)
                                end)
                            end
                        end
                    elseif v1025 == 'Mink' then
                        local v1074, v1075, v1076 = pairs(game:GetService('Workspace'):GetDescendants())

                        while true do
                            local v1077

                            v1076, v1077 = v1074(v1075, v1076)

                            if v1076 == nil then
                                break
                            end
                            if v1077.Name == 'StartPoint' then
                                topos(v1077.CFrame * CFrame.new(0, 10, 0))
                            end
                        end
                    end
                end
            end
        end)
    end)
    v308:Toggle('Auto Farm & active V4', false, function(p1078)
        _G.Bone = p1078
        _G.Train = p1078
        _G.BuyGear = p1078
        _G.ActiveV4 = p1078

        StopTween(_G.Bone)
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Train and game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
                    _G.Bone = false

                    topos(CFrame.new(-9507.03125, 713.654968, 6186.39453))
                end
            end
        end)
    end)
    v308:Button('Buy Ancient One Quest', function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('UpgradeRace', 'Buy')
    end)
    v308:Seperator('Kill Player Trial')
    v308:Toggle('Kill Player After Trial', false, function(p1079)
        _G.KillAfterTrials = p1079
        _G.AimNearest = p1079
        _G.NoSt = p1079
        _G.Ken = p1079

        StopTween(_G.KillAfterTrials)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if not _G.KillAfterTrials then
                    return
                end

                local v1080, v1081, v1082 = pairs(game.Workspace.Characters:GetChildren())
                local v1083

                v1082, v1083 = v1080(v1081, v1082)

                if v1082 == nil then
                end
                if v1083.Name == game.Players.LocalPlayer.Name or (not v1083:FindFirstChild('Humanoid') or (not v1083:FindFirstChild('HumanoidRootPart') or (v1083.Humanoid.Health <= 0 or (not v1083.Parent or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1083.HumanoidRootPart.Position).Magnitude > 230)))) then
                end

                task.wait()
                EquipWeapon(_G.SelectWeapon)
                TP2(v1083.HumanoidRootPart.CFrame * CFrame.new(1, 1, 2))

                local v1084, v1085, v1086 = ipairs({
                    'Z',
                    'X',
                    'C',
                    'V',
                    'F',
                })

                while true do
                    local v1087

                    v1086, v1087 = v1084(v1085, v1086)

                    if v1086 == nil then
                        break
                    end
                    if _G['SkillTrial' .. v1087] then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, v1087, false, game)
                        wait(0.1)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, v1087, false, game)
                    end
                end

                v1083.HumanoidRootPart.CanCollide = false
                v1083.Head.CanCollide = false
                v1083.Humanoid.WalkSpeed = 0

                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)

                if _G.KillAfterTrials and (v1083.Humanoid.Health > 0 and (v1083.Parent and (v1083:FindFirstChild('HumanoidRootPart') and v1083:FindFirstChild('Humanoid')))) then
                else
                end
            end)
        end
    end)
    v308:Seperator('Setting Kill Player Trial')
    v308:Toggle('Use Skill Z Kill Player', false, function(p1088)
        _G.SkillTrialZ = p1088
    end)
    v308:Toggle('Use Skill X Kill Player', false, function(p1089)
        _G.SkillTrialX = p1089
    end)
    v308:Toggle('Use Skill C Kill Player', false, function(p1090)
        _G.SkillTrialC = p1090
    end)
    v308:Toggle('Use Skill V Kill Player', false, function(p1091)
        _G.SkillTrialV = p1091
    end)
    v308:Toggle('Use Skill F Kill Player', false, function(p1092)
        _G.SkillTrialF = p1092
    end)
end
if World1 or World2 then
    v309:Seperator('Go To The Third Sea')
end
if World3 then
    v309:Seperator('Sea Event')
    v309:Button('Remove Fog', function()
        game:GetService('Lighting').LightingLayers:Destroy()
        game:GetService('Lighting').Sky:Destroy()
    end)
    v309:Dropdown('Select Boat', {
        'Guardian',
        'PirateGrandBrigade',
        'MarineGrandBrigade',
        'PirateBrigade',
        'MarineBrigade',
        'PirateSloop',
        'MarineSloop',
        'BeastHunter',
    }, 'PirateGrandBrigade', function(p1093)
        _G.SelectedBoat = p1093
    end)

    _G.SelectedZone = 'Zone 5'

    v309:Dropdown('Select Zone', {
        'Zone 1',
        'Zone 2',
        'Zone 3',
        'Zone 4',
        'Zone 5',
        'Zone 6',
        'Tiki Outpost',
        'Hydra Island',
    }, _G.SelectedZone, function(p1094)
        _G.SelectedZone = p1094
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.SelectedZone ~= 'Zone 1' then
                    if _G.SelectedZone ~= 'Zone 2' then
                        if _G.SelectedZone ~= 'Zone 3' then
                            if _G.SelectedZone ~= 'Zone 4' then
                                if _G.SelectedZone ~= 'Zone 5' then
                                    if _G.SelectedZone ~= 'Zone 6' then
                                        if _G.SelectedZone ~= 'Tiki Outpost' then
                                            if _G.SelectedZone == 'Hydra Island' then
                                                CFrameSelectedZone = CFrame.new(5185, 0, 1670)
                                            end
                                        else
                                            CFrameSelectedZone = CFrame.new(-16195, 0, 441)
                                        end
                                    else
                                        CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 2.02319411e-10, -0.99428153, -0.0651681125, -0.0846010372)
                                    end
                                else
                                    CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023, -0.188895494, -0.00704088295, 0.981971979, -0.0372481011, 0.999306023, -1.39882339e-9, -0.981290519, -0.0365765914, -0.189026669)
                                end
                            else
                                CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012, 0.0935864747, -0.00122954219, 0.995610416, 0.0624034069, 0.998040259, -0.00463332096, -0.993653536, 0.062563099, 0.0934797972)
                            end
                        else
                            CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774, 0.37637493, 0.0150483791, 0.926345229, -0.0399504974, 0.999201655, 2.70896673e-11, -0.925605655, -0.0370079502, 0.376675636)
                        end
                    else
                        CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032, 0.307457417, 0.019647358, 0.951358974, -0.0637726262, 0.997964442, -4.15334017e-10, -0.949422479, -0.0606706589, 0.308084518)
                    end
                else
                    CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143, 0.120013528, 0.00690158736, 0.99274826, -0.0574118942, 0.998350561, -2.3650920099999997e-10, -0.991110802, -0.0569955558, 0.120211802)
                end
            end
        end)
    end)

    getgenv().SpeedBoat = '300'

    v309:Dropdown('Speed Tween Boat', {
        '180',
        '200',
        '250',
        '300',
        '325',
        '350',
    }, getgenv().SpeedBoat, function(p1095)
        getgenv().SpeedBoat = p1095
    end)

    getgenv().PosYBoat = 40

    v309:Slider('PosY Boat', 40, 250, 40, function(p1096)
        getgenv().PosYBoat = p1096
    end)
    v309:Toggle('Start Sea Event', false, function(p1097)
        _G.SailBoat = p1097
    end)

    function CheckBoat()
        local v1098, v1099, v1100 = pairs(game:GetService('Workspace').Boats:GetChildren())

        while true do
            local v1101

            v1100, v1101 = v1098(v1099, v1100)

            if v1100 == nil then
                break
            end
            if v1101.Name == _G.SelectedBoat then
                local v1102, v1103, v1104 = pairs(v1101:GetChildren())

                while true do
                    local v1105

                    v1104, v1105 = v1102(v1103, v1104)

                    if v1104 == nil then
                        break
                    end
                    if v1105.Name == 'MyBoatEsp' then
                        return v1101
                    end
                end
            end
        end

        return false
    end
    function CheckEnemiesBoat()
        return (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') or (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') or game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade'))) and true or false
    end
    function CheckShark()
        local v1106, v1107, v1108 = pairs(game:GetService('Workspace').Enemies:GetChildren())

        while true do
            local v1109

            v1108, v1109 = v1106(v1107, v1108)

            if v1108 == nil then
                break
            end
            if v1109.Name == 'Shark' and (v1109:FindFirstChild('Humanoid') and (v1109:FindFirstChild('HumanoidRootPart') and v1109.Humanoid.Health > 0)) and (game:GetService('Workspace').Enemies:FindFirstChild('Shark') and (v1109.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200) then
                return true
            end
        end

        return false
    end
    function CheckPiranha()
        local v1110, v1111, v1112 = pairs(game:GetService('Workspace').Enemies:GetChildren())

        while true do
            local v1113

            v1112, v1113 = v1110(v1111, v1112)

            if v1112 == nil then
                break
            end
            if v1113.Name == 'Piranha' and (v1113:FindFirstChild('Humanoid') and (v1113:FindFirstChild('HumanoidRootPart') and v1113.Humanoid.Health > 0)) and (game:GetService('Workspace').Enemies:FindFirstChild('Piranha') and (v1113.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200) then
                return true
            end
        end

        return false
    end
    function AddEsp(p1114, p1115)
        local v1116 = Instance.new('BillboardGui')
        local v1117 = Instance.new('TextLabel')

        v1116.Parent = p1115
        v1116.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        v1116.Active = true
        v1116.Name = p1114
        v1116.AlwaysOnTop = true
        v1116.LightInfluence = 1
        v1116.Size = UDim2.new(0, 200, 0, 50)
        v1116.StudsOffset = Vector3.new(0, 2.5, 0)
        v1117.Parent = v1116
        v1117.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        v1117.BackgroundTransparency = 1
        v1117.Size = UDim2.new(1, 0, 1, 0)
        v1117.Font = Enum.Font.GothamBold
        v1117.TextColor3 = Color3.fromRGB(255, 255, 255)
        v1117.TextSize = 15
        v1117.Text = 'Your Ship'
    end

    spawn(function()
        while wait() do
            pcall(function()
                if _G.SailBoat then
                    if CheckBoat() then
                        local v1118, v1119, v1120 = pairs(game:GetService('Workspace').Boats:GetChildren())

                        while true do
                            local v1121

                            v1120, v1121 = v1118(v1119, v1120)

                            if v1120 == nil then
                                break
                            end
                            if v1121.Name == _G.SelectedBoat and v1121:FindFirstChild('MyBoatEsp') then
                                if game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit then
                                    repeat
                                        wait()

                                        stopboat = TPB(CFrameSelectedZone, v1121.VehicleSeat)
                                    until CheckShark() and FarmShark or (game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') and _G.Terrorshark or CheckPiranha() and _G.farmpiranya or (game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') and _G.Fish_Crew_Member or (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') and _G.bjirFishBoat or (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') and _G.RelzPirateBrigade or (game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade') and _G.KillGhostShip or CheckSeaBeast() and _G.SeaBest or not (game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit and _G.SailBoat))))))

                                    if stopboat then
                                        stopboat:Stop()
                                    end

                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 32, false, game)
                                    wait(0.1)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 32, false, game)
                                elseif CheckShark() and FarmShark or (game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') and _G.Terrorshark or CheckPiranha() and _G.farmpiranya or (game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') and _G.Fish_Crew_Member or (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') and _G.bjirFishBoat or (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') and _G.RelzPirateBrigade or (game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade') and _G.KillGhostShip or CheckSeaBeast() and _G.SeaBest))))) then
                                    if stoppos then
                                        stoppos:Stop()
                                    end
                                else
                                    stoppos = topos(v1121.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                                end
                            end
                        end
                    else
                        local v1122 = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781)

                        if (v1122.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                            stoppos = topos(v1122)
                        else
                            topos(CFrame.new(-16224, 9, 439))
                        end
                        if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            if stoppos then
                                stoppos:Stop()
                            end

                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBoat', _G.SelectedBoat)

                            local v1123, v1124, v1125 = pairs(game:GetService('Workspace').Boats:GetChildren())

                            while true do
                                local v1126

                                v1125, v1126 = v1123(v1124, v1125)

                                if v1125 == nil then
                                    break
                                end
                                if v1126.Name == _G.SelectedBoat and (v1126.VehicleSeat.CFrame.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                    AddEsp('MyBoatEsp', v1126)
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        pcall(function()
            while wait() do
                if _G.SailBoat and (CheckShark() and FarmShark or (game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') and _G.Terrorshark or CheckPiranha() and _G.farmpiranya or (game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') and _G.Fish_Crew_Member or (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') and _G.bjirFishBoat or (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') and _G.RelzPirateBrigade or (game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade') and _G.KillGhostShip or CheckSeaBeast() and _G.SeaBest)))))) and game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 32, false, game)
                    wait(0.1)
                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 32, false, game)
                end
            end
        end)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if not _G.SailBoat then
                    return
                end
                if game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') and _G.Fish_Crew_Member then
                    local v1127, v1128, v1129 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v1130

                        v1129, v1130 = v1127(v1128, v1129)

                        if v1129 == nil then
                            break
                        end
                        if game:GetService('Workspace').Enemies:FindFirstChild('Fish Crew Member') and (v1130.Name == 'Fish Crew Member' and (v1130:FindFirstChild('Humanoid') and (v1130:FindFirstChild('HumanoidRootPart') and v1130.Humanoid.Health > 0))) then
                            repeat
                                task.wait()
                                EquipWeapon(_G.SelectWeapon)
                                TP2(v1130.HumanoidRootPart.CFrame * Pos)

                                _G.SeaSkill = false
                            until not _G.Fish_Crew_Member or (not v1130.Parent or v1130.Humanoid.Health <= 0)

                            StartMagnet = false
                        end
                    end
                end
                if not (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') and _G.bjirFishBoat) then
                end

                local v1131, v1132, v1133 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                if not (game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade') and _G.KillGhostShip) then
                end

                local v1134, v1135, v1136 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                if true then
                    task.wait()

                    local v1137 = v1139.Engine.CFrame

                    if (v1137.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 50 then
                        _G.SeaSkill = false
                    else
                        _G.SeaSkill = true
                    end
                end

                TP2(v1137)

                Skillaimbot = true
                AimSkill = v1139.Engine.CFrame * CFrame.new(0, -15, 0)
                AimBotSkillPosition = AimSkill.Position

                if v1139.Parent and v1139.Health.Value >= 0 and (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') and (v1139:FindFirstChild('Engine') and _G.RelzPirateBrigade)) then
                end

                Skillaimbot = false
                _G.SeaSkill = false

                local v1138, v1139 = v1140(v1141, v1138)

                if v1138 == nil then
                end
                if game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') then
                else
                end
                if not (game:GetService('Workspace').Enemies:FindFirstChild('PirateBrigade') and _G.RelzPirateBrigade) then
                end

                local v1140, v1141

                v1140, v1141, v1138 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                if not (CheckSeaBeast() and _G.SeaBest) then
                    if game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') and _G.Terrorshark then
                        local v1142, v1143, v1144 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v1145

                            v1144, v1145 = v1142(v1143, v1144)

                            if v1144 == nil then
                                break
                            end
                            if game:GetService('Workspace').Enemies:FindFirstChild('Terrorshark') and (v1145.Name == 'Terrorshark' and (v1145:FindFirstChild('Humanoid') and (v1145:FindFirstChild('HumanoidRootPart') and v1145.Humanoid.Health > 0))) then
                                repeat
                                    task.wait(0.15)
                                    EquipWeapon(_G.SelectWeapon)

                                    _G.SeaSkill = false

                                    TP2(v1145.HumanoidRootPart.CFrame * CFrame.new(0, 60, 0))
                                until not _G.Terrorshark or (not v1145.Parent or v1145.Humanoid.Health <= 0)
                            end
                        end
                    elseif CheckPiranha() and _G.farmpiranya then
                        local v1146, v1147, v1148 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v1149

                            v1148, v1149 = v1146(v1147, v1148)

                            if v1148 == nil then
                                break
                            end
                            if game:GetService('Workspace').Enemies:FindFirstChild('Piranha') and (v1149.Name == 'Piranha' and (v1149:FindFirstChild('Humanoid') and (v1149:FindFirstChild('HumanoidRootPart') and v1149.Humanoid.Health > 0))) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    TP2(v1149.HumanoidRootPart.CFrame * Pos)

                                    _G.SeaSkill = false
                                until not _G.farmpiranya or (not v1149.Parent or v1149.Humanoid.Health <= 0)
                            end
                        end
                    elseif CheckShark() and FarmShark then
                        local v1150, v1151, v1152 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v1153

                            v1152, v1153 = v1150(v1151, v1152)

                            if v1152 == nil then
                                break
                            end
                            if game:GetService('Workspace').Enemies:FindFirstChild('Shark') and (v1153.Name == 'Shark' and (v1153:FindFirstChild('Humanoid') and (v1153:FindFirstChild('HumanoidRootPart') and v1153.Humanoid.Health > 0))) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    TP2(v1153.HumanoidRootPart.CFrame * Pos)

                                    _G.SeaSkill = false
                                until not FarmShark or (not v1153.Parent or v1153.Humanoid.Health <= 0)
                            end
                        end
                    else
                        Skillaimbot = false
                        _G.SeaSkill = false
                    end
                end
                if not game:GetService('Workspace'):FindFirstChild('SeaBeasts') then
                end

                local v1154, v1155, v1156 = pairs(game:GetService('Workspace').SeaBeasts:GetChildren())
                local v1157

                v1133, v1157 = v1131(v1132, v1133)

                if v1133 == nil then
                end
                if game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') then
                else
                end
                if true then
                    task.wait()

                    local v1158 = v1157.Engine.CFrame

                    if (v1158.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 50 then
                        _G.SeaSkill = false
                    else
                        _G.SeaSkill = true
                    end
                end

                TP2(v1158)

                Skillaimbot = true
                AimSkill = v1157.Engine.CFrame * CFrame.new(0, -15, 0)
                AimBotSkillPosition = AimSkill.Position

                if v1157.Parent and v1157.Health >= 0 and (game:GetService('Workspace').Enemies:FindFirstChild('FishBoat') and (v1157:FindFirstChild('Engine') and _G.bjirFishBoat)) then
                else
                end

                Skillaimbot = false
                _G.SeaSkill = false

                if true then
                    task.wait()

                    local v1159 = v1160.Engine.CFrame

                    if (v1159.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 50 then
                        _G.SeaSkill = false
                    else
                        _G.SeaSkill = true
                    end
                end

                TP2(v1159)

                Skillaimbot = true
                AimSkill = v1160.Engine.CFrame * CFrame.new(0, -15, 0)
                AimBotSkillPosition = AimSkill.Position

                if v1160.Parent and v1160.Health.Value >= 0 and (game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade') and (v1160:FindFirstChild('Engine') and _G.KillGhostShip)) then
                end

                Skillaimbot = false
                _G.SeaSkill = false

                local v1160

                v1136, v1160 = v1134(v1135, v1136)

                if v1136 == nil then
                end
                if game:GetService('Workspace').Enemies:FindFirstChild('PirateGrandBrigade') then
                else
                end

                Skillaimbot = false
                _G.SeaSkill = false

                while true do
                    local v1161

                    v1156, v1161 = v1154(v1155, v1156)

                    if v1156 == nil then
                    end
                    if CheckSeaBeast() then
                        break
                    end

                    Skillaimbot = false
                    _G.SeaSkill = false
                end

                if true then
                    wait()

                    CFrameSeaBeast = v1161.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0)

                    if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude > 200 then
                        _G.SeaSkill = false
                    else
                        _G.SeaSkill = true
                    end
                end

                Skillaimbot = true
                AimBotSkillPosition = v1161.HumanoidRootPart.CFrame.Position

                TP2(CFrameSeaBeast * Pos)

                if _G.SeaBest and (CheckSeaBeast() ~= false and (v1161:FindFirstChild('Humanoid') and (v1161:FindFirstChild('HumanoidRootPart') and (v1161.Humanoid.Health >= 0 and v1161.Parent)))) then
                else
                end
            end)
        end
    end)
    v309:Toggle('Auto Kill Shark', false, function(p1162)
        FarmShark = p1162

        StopTween(FarmShark)
    end)
    v309:Toggle('Auto Kill Piranha', false, function(p1163)
        _G.farmpiranya = p1163

        StopTween(_G.farmpiranya)
    end)
    v309:Toggle('Auto Fish Crew', false, function(p1164)
        _G.Fish_Crew_Member = p1164

        StopTween(_G.Fish_Crew_Member)
    end)

    function UpDownPos(p1165)
        fastpos(p1165 * CFrame.new(0, 40, 0))
        wait(2)
        fastpos(p1165 * CFrame.new(0, 300, 0))
        wait(3)
    end

    v309:Toggle('Auto Kill Ghost Ship', false, function(p1166)
        _G.bjirFishBoat = p1166

        StopTween(_G.bjirFishBoat)

        if not _G.bjirFishBoat then
            _G.SeaSkill = false
            Skillaimbot = false

            StopTween(_G.bjirFishBoat)
        end
    end)
    v309:Toggle('Auto Kill Pirate Grand Brigade', false, function(p1167)
        _G.KillGhostShip = p1167

        StopTween(_G.KillGhostShip)
    end)
    v309:Toggle('Auto Kill Terror Shark', false, function(p1168)
        _G.Terrorshark = p1168

        StopTween(_G.Terrorshark)
    end)
    v309:Toggle('Auto Kill Sea Beast', false, function(p1169)
        _G.SeaBest = p1169

        StopTween(_G.SeaBest)

        if not _G.SeaBest then
            _G.SeaSkill = false
            Skillaimbot = false
        end
    end)

    function CheckSeaBeast()
        if game:GetService('Workspace'):FindFirstChild('SeaBeasts') then
            local v1170, v1171, v1172 = pairs(game:GetService('Workspace').SeaBeasts:GetChildren())

            while true do
                local v1173

                v1172, v1173 = v1170(v1171, v1172)

                if v1172 == nil then
                    break
                end
                if v1173:FindFirstChild('Humanoid') or (v1173:FindFirstChild('HumanoidRootPart') or v1173.Humanoid.Health < 0) then
                    return true
                end
            end
        end

        return false
    end

    v309:Seperator('Setting Sea Event')

    BrightValue = '100'

    v309:Dropdown('Select Brightness', {
        '100',
        '150',
        '200',
        '250',
        '300',
        '325',
        '350',
    }, BrightValue, function(p1174)
        BrightValue = p1174
    end)
    v309:Button('Set Brightness', function()
        game:GetService('Lighting').Brightness = BrightValue
    end)
    v309:Toggle('Enable Speed Boat', false, function(p1175)
        _G.IncreaseBoatSpeed = p1175
    end)
    spawn(function()
        while wait() do
            pcall(function()
                local v1176, v1177, v1178 = pairs(game.Workspace.Boats:GetDescendants())
                local v1179 = {}

                while true do
                    local v1180

                    v1178, v1180 = v1176(v1177, v1178)

                    if v1178 == nil then
                        break
                    end
                    if v1180:IsA('VehicleSeat') then
                        table.insert(v1179, v1180)
                    end
                end

                if _G.IncreaseBoatSpeed then
                    local v1181, v1182, v1183 = pairs(v1179)

                    while true do
                        local v1184

                        v1183, v1184 = v1181(v1182, v1183)

                        if v1183 == nil then
                            break
                        end

                        v1184.MaxSpeed = 350
                    end
                else
                    local v1185, v1186, v1187 = pairs(v1179)

                    while true do
                        local v1188

                        v1187, v1188 = v1185(v1186, v1187)

                        if v1187 == nil then
                            break
                        end

                        v1188.MaxSpeed = 150
                    end
                end
            end)
        end
    end)
    v309:Toggle('Enable Fly Boat', false, function(p1189)
        if p1189 then
            _G.NoClipRock = true

            vu204(speaker, true)
        else
            _G.NoClipRock = false

            vu187(speaker)
        end
    end)
    v309:Toggle('NoClip Rock', false, function(p1190)
        _G.NoClipRock = p1190
    end)
    spawn(function()
        while wait() do
            pcall(function()
                local v1191, v1192, v1193 = pairs(game:GetService('Workspace').Boats:GetChildren())

                while true do
                    local v1194

                    v1193, v1194 = v1191(v1192, v1193)

                    if v1193 == nil then
                        break
                    end

                    local v1195, v1196, v1197 = pairs(game:GetService('Workspace').Boats[v1194.Name]:GetDescendants())

                    while true do
                        local v1198

                        v1197, v1198 = v1195(v1196, v1197)

                        if v1197 == nil then
                            break
                        end
                        if v1198:IsA('BasePart') then
                            if _G.NoClipRock or _G.SailBoat then
                                v1198.CanCollide = false
                            else
                                v1198.CanCollide = true
                            end
                        end
                    end
                end
            end)
        end
    end)
    v309:Toggle('Press W Auto', false, function(p1199)
        _G.r71PressW = p1199
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.r71PressW and game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit == true then
                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 'W', false, game)
                end
            end)
        end
    end)

    DoneSkillGun = false
    DoneSkillSword = false
    DoneSkillFruit = false
    DoneSkillMelee = false

    spawn(function()
        while wait() do
            pcall(function()
                if _G.SeaSkill then
                    if _G.UseSeaFruitSkill and DoneSkillFruit == false then
                        local v1200, v1201, v1202 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v1203

                            v1202, v1203 = v1200(v1201, v1202)

                            if v1202 == nil then
                                break
                            end
                            if v1203:IsA('Tool') and v1203.ToolTip == 'Blox Fruit' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1203)
                            end
                        end

                        if _G.SkillFruitZ then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                            wait(_G.SeaHoldSKillZ)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                        end
                        if _G.SkillFruitX then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                            wait(_G.SeaHoldSKillX)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                        end
                        if _G.SkillFruitC then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'C', false, game)
                            wait(_G.SeaHoldSKillC)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'C', false, game)
                        end
                        if _G.SkillFruitV then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'V', false, game)
                            wait(_G.SeaHoldSKillV)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'V', false, game)
                        end
                        if _G.SkillFruitF then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'F', false, game)
                            wait(_G.SeaHoldSKillF)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'F', false, game)
                        end

                        DoneSkillFruit = true
                    end
                    if _G.UseSeaMeleeSkill and DoneSkillMelee == false then
                        local v1204, v1205, v1206 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v1207

                            v1206, v1207 = v1204(v1205, v1206)

                            if v1206 == nil then
                                break
                            end
                            if v1207:IsA('Tool') and v1207.ToolTip == 'Melee' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1207)
                            end
                        end

                        if _G.SkillMeleeZ then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                            wait(0)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                        end
                        if _G.SkillMeleeX then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                            wait(0)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                        end
                        if _G.SkillMeleeC then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'C', false, game)
                            wait(0)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'C', false, game)
                        end
                        if _G.SkillMeleeV then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'V', false, game)
                            wait(0)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'V', false, game)
                        end

                        DoneSkillMelee = true
                    end
                    if _G.UseSeaSwordSkill and DoneSkillSword == false then
                        local v1208, v1209, v1210 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v1211

                            v1210, v1211 = v1208(v1209, v1210)

                            if v1210 == nil then
                                break
                            end
                            if v1211:IsA('Tool') and v1211.ToolTip == 'Sword' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1211)
                            end
                        end

                        if _G.SkillSwordZ then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                            wait(0)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                        end
                        if _G.SkillSwordX then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                            wait(0)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                        end

                        DoneSkillSword = true
                    end
                    if _G.UseSeaGunSkill and DoneSkillGun == false then
                        local v1212, v1213, v1214 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

                        while true do
                            local v1215

                            v1214, v1215 = v1212(v1213, v1214)

                            if v1214 == nil then
                                break
                            end
                            if v1215:IsA('Tool') and v1215.ToolTip == 'Gun' then
                                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1215)
                            end
                        end

                        if _G.SkillGunZ then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                            wait(0.1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                        end
                        if _G.SkillGunX then
                            game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                            wait(0.1)
                            game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                        end

                        DoneSkillGun = true
                    end

                    DoneSkillGun = false
                    DoneSkillSword = false
                    DoneSkillFruit = false
                    DoneSkillMelee = false
                end
            end)
        end
    end)
    v309:Seperator('Kitsune Event')
    v309:Toggle('Teleporter Kitsune', false, function(p1216)
        _G.FKitsune = p1216

        StopTween(_G.FKitsune)
    end)
    spawn(function()
        while wait() do
            local v1217 = _G.FKitsune and game:GetService('Workspace').Map:FindFirstChild('KitsuneIsland')

            if v1217 then
                topos(v1217.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0, 0, 10))
            end
        end
    end)
    v309:Toggle('Auto Collect Azure Ember', false, function(p1218)
        _G.CltAze = p1218
    end)
    spawn(function()
        while wait() do
            if _G.CltAze then
                pcall(function()
                    if game:GetService('Workspace'):FindFirstChild('AttachedAzureEmber') then
                        fastpos(game:GetService('Workspace'):WaitForChild('EmberTemplate'):FindFirstChild('Part').CFrame)
                    end
                end)
            end
        end
    end)

    _G.SetToTradeAureEmber = 20

    v309:Slider('Set Azure Ember', 5, 25, 20, function(p1219)
        _G.SetToTradeAureEmber = p1219
    end)
    v309:Toggle('Auto Trade Azure Ember', false, function(p1220)
        _G.TradeAureEmber = p1220
    end)

    function GetCountMaterials(p1221)
        local v1222 = game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('getInventory')
        local v1223, v1224, v1225 = pairs(v1222)

        while true do
            local v1226

            v1225, v1226 = v1223(v1224, v1225)

            if v1225 == nil then
                break
            end
            if v1226.Name == p1221 then
                return v1226.Count
            end
        end
    end

    spawn(function()
        while wait() do
            if _G.TradeAureEmber then
                pcall(function()
                    if GetCountMaterials('Azure Ember') >= _G.SetToTradeAureEmber then
                        game:GetService('ReplicatedStorage').Modules.Net:FindFirstChild('RF/KitsuneStatuePray'):InvokeServer()
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KitsuneStatuePray')
                    end
                end)
            end
        end
    end)
    v309:Seperator('Leviathan')
    v309:Toggle('Teleport To Spy', false, function(p1227)
        _G.TpSpy = p1227

        task.spawn(function()
            while _G.TpSpy do
                task.wait()
                topos(CFrame.new(-16471, 528, 539))
            end
        end)
    end)
    v309:Button('Buy Chip Leviathan', function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('InfoLeviathan', '2')
    end)
    v309:Button('Shoot Heart Leviathan', function()
        local v1228 = {
            'FireHarpoon',
            0.4219459368535087,
            0.30521099719905354,
            workspace.Boats:FindFirstChild('Beast Hunter').Harpoon,
            1728199048.263916,
        }

        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1228))
    end)
    v309:Toggle('Auto Find Leviathan (Need 5 People)', false, function(p1229)
        _G.FindLeviathan = p1229

        StopTween(_G.FindLeviathan)
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.FindLeviathan then
                    local v1230 = game.Players.LocalPlayer.Character

                    if v1230 and (v1230:FindFirstChild('Humanoid') and v1230.Humanoid.Sit) then
                        local v1231 = v1230.Humanoid.SeatPart

                        if v1231 and v1231:IsDescendantOf(game.Workspace.Boats) then
                            local v1232 = v1231.Parent

                            repeat
                                wait()

                                stopboat = topos(CFrame.new(-9999999, getgenv().PosYBoat, 0), v1232.VehicleSeat)
                            until game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Frozen Island') or not (v1230:FindFirstChild('Humanoid').Sit and _G.FindLeviathan)

                            if stopboat then
                                stopboat:Stop()
                            end
                            if game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Frozen Island') then
                                _G.FindLeviathan = false

                                Notify('Xeter Hub', 'Frozen Island Spawn', 3)
                                game:GetService('VirtualInputManager'):SendKeyEvent(true, 32, false, game)
                                wait(0.1)
                                game:GetService('VirtualInputManager'):SendKeyEvent(false, 32, false, game)
                            end
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            if _G.FindLeviathan then
                pcall(function()
                    local v1233, v1234, v1235 = pairs(game:GetService('Workspace').Boats:GetChildren())

                    while true do
                        local v1236

                        v1235, v1236 = v1233(v1234, v1235)

                        if v1235 == nil then
                            break
                        end

                        local v1237, v1238, v1239 = pairs(game:GetService('Workspace').Boats[v1236.Name]:GetDescendants())

                        while true do
                            local v1240

                            v1239, v1240 = v1237(v1238, v1239)

                            if v1239 == nil then
                                break
                            end
                            if v1240:IsA('BasePart') then
                                if _G.NoClipRock or _G.FindLeviathan then
                                    v1240.CanCollide = false
                                else
                                    v1240.CanCollide = true
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    v309:Toggle('Tween Frozen Dimension', false, function(p1241)
        _G.FrozenDimension = p1241

        StopTween(_G.FrozenDimension)
    end)
    spawn(function()
        while wait() do
            if _G.FrozenDimension then
                pcall(function()
                    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
                        topos(workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension').CFrame * CFrame.new(0, 250, 0))
                    end
                end)
            end
        end
    end)
    v309:Toggle('Auto Kill / Attack Leviathan', false, function(p1242)
        _G.KillLeviathan = p1242

        StopTween(_G.KillLeviathan)
    end)
    spawn(function()
        while wait() do
            if _G.KillLeviathan then
                pcall(function()
                    local v1243, v1244, v1245 = pairs(game:GetService('Workspace').SeaBeasts:GetChildren())

                    while true do
                        local v1246

                        v1245, v1246 = v1243(v1244, v1245)

                        if v1245 == nil then
                            break
                        end
                        if v1246.Name == 'Leviathan' and v1246:FindFirstChild('HumanoidRootPart') then
                            repeat
                                wait()
                                TP2(v1246.HumanoidRootPart.CFrame * CFrame.new(0, 500, 0))
                                pcall(function()
                                    _G.SeaSkill = true
                                end)

                                _G.SeaSkill = true
                                AimBotSkillPosition = v1246.HumanoidRootPart
                                Skillaimbot = true
                            until not (v1246:FindFirstChild('HumanoidRootPart') and _G.KillLeviathan)

                            _G.SeaSkill = false
                            Skillaimbot = false
                        end
                    end
                end)
            end
        end
    end)
    v309:Toggle('Attack Segment Leviathan', false, function(p1247)
        _G.SegmentLeviathan = p1247

        StopTween(_G.SegmentLeviathan)
    end)
    spawn(function()
        while wait() do
            if _G.SegmentLeviathan then
                pcall(function()
                    local v1248, v1249, v1250 = pairs(workspace.SeaBeasts:GetChildren())

                    while true do
                        local v1251

                        v1250, v1251 = v1248(v1249, v1250)

                        if v1250 == nil then
                            return
                        end
                        if not v1251 or (v1251.Name ~= 'Leviathan Segment' or (not v1251:FindFirstChild('Health') or v1251.Health.Value <= 0)) then
                        end

                        wait()

                        if v1251:FindFirstChild('HumanoidRootPart') then
                            topos(v1251.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0))
                            pcall(function()
                                _G.SeaSkill = true
                            end)

                            AimBotSkillPosition = v1251.HumanoidRootPart
                            Skillaimbot = true
                        end
                        if v1251:FindFirstChild('HumanoidRootPart') and (_G.SegmentLeviathan and v1251.Health.Value > 0) then
                        end

                        _G.SeaSkill = false
                        Skillaimbot = false
                    end
                end)
            end
        end
    end)
    v309:Seperator('Settings Skills Only Sea Event')
    v309:Toggle('Enable Melee Skill', false, function(p1252)
        _G.UseSeaMeleeSkill = p1252
    end)
    v309:Toggle('Enable Fruit Skill', false, function(p1253)
        _G.UseSeaFruitSkill = p1253
    end)
    v309:Toggle('Enable Sword Skill', false, function(p1254)
        _G.UseSeaSwordSkill = p1254
    end)
    v309:Toggle('Enable Gun Skill', false, function(p1255)
        _G.UseSeaGunSkill = p1255
    end)
    v309:Seperator('Settings Melee Skill')
    v309:Toggle('Use Skill Z Melee', false, function(p1256)
        _G.SkillMeleeZ = p1256
    end)
    v309:Toggle('Use Skill X Melee', false, function(p1257)
        _G.SkillMeleeX = p1257
    end)
    v309:Toggle('Use Skill C Melee', false, function(p1258)
        _G.SkillMeleeC = p1258
    end)
    v309:Seperator('Settings Fruit Skill')
    v309:Toggle('Use Skill Z Fruit', false, function(p1259)
        _G.SkillFruitZ = p1259
    end)
    v309:Toggle('Use Skill X Fruit', false, function(p1260)
        _G.SkillFruitX = p1260
    end)
    v309:Toggle('Use Skill C Fruit', false, function(p1261)
        _G.SkillFruitC = p1261
    end)
    v309:Toggle('Use Skill V Fruit', false, function(p1262)
        _G.SkillFruitV = p1262
    end)
    v309:Toggle('Use Skill F Fruit', false, function(p1263)
        _G.SkillFruitF = p1263
    end)
    v309:Seperator('Settings Sword and Gun')
    v309:Toggle('Use Skill Z | Sword And Gun', false, function(p1264)
        _G.SkillGunZ = p1264
        _G.SkillSwordZ = p1264
    end)
    v309:Toggle('Use Skill X | Sword And Gun', false, function(p1265)
        _G.SkillGunX = p1265
        _G.SkillSwordX = p1265
    end)

    function EquipAllWeapon()
        pcall(function()
            local v1266, v1267, v1268 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

            while true do
                local v1269

                v1268, v1269 = v1266(v1267, v1268)

                if v1268 == nil then
                    break
                end
                if v1269:IsA('Tool') and (v1269.Name ~= 'Summon Sea Beast' and (v1269.Name ~= 'Water Body' and v1269.Name ~= 'Awakening')) then
                    local v1270 = game.Players.LocalPlayer.Backpack:FindFirstChild(v1269.Name)

                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1270)
                    wait(1)
                end
            end
        end)
    end

    local v1271 = getrawmetatable(game)
    local vu1272 = v1271.__namecall

    setreadonly(v1271, false)

    v1271.__namecall = newcclosure(function(...)
        local v1273 = getnamecallmethod()
        local v1274 = {...}

        if tostring(v1273) ~= 'FireServer' or (tostring(v1274[1]) ~= 'RemoteEvent' or (tostring(v1274[2]) == 'true' or (tostring(v1274[2]) == 'false' or not Skillaimbot))) then
            return vu1272(...)
        end

        v1274[2] = AimBotSkillPosition

        return vu1272(unpack(v1274))
    end)

    spawn(function()
        while wait() do
            pcall(function()
                if UseSkill then
                    local v1275, v1276, v1277 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v1278

                        v1277, v1278 = v1275(v1276, v1277)

                        if v1277 == nil then
                            break
                        end
                        if v1278.Name == MonFarm and (v1278:FindFirstChild('Humanoid') and (v1278:FindFirstChild('HumanoidRootPart') and v1278.Humanoid.Health <= v1278.Humanoid.MaxHealth * _G.Kill_At / 100)) then
                            if _G.SkillZ then
                                game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                                wait(_G.HoldSKillZ)
                                game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                            end
                            if _G.SkillX then
                                game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                                wait(_G.HoldSKillX)
                                game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                            end
                            if _G.SkillC then
                                game:service('VirtualInputManager'):SendKeyEvent(true, 'C', false, game)
                                wait(_G.HoldSKillC)
                                game:service('VirtualInputManager'):SendKeyEvent(false, 'C', false, game)
                            end
                            if _G.SkillV then
                                game:service('VirtualInputManager'):SendKeyEvent(true, 'V', false, game)
                                wait(_G.HoldSKillV)
                                game:service('VirtualInputManager'):SendKeyEvent(false, 'V', false, game)
                            end
                            if _G.SkillF then
                                game:service('VirtualInputManager'):SendKeyEvent(true, 'F', false, game)
                                wait(_G.HoldSKillF)
                                game:service('VirtualInputManager'):SendKeyEvent(false, 'F', false, game)
                            end
                        end
                    end
                end
            end)
        end
    end)
    spawn(function()
        while wait() do
            pcall(function()
                if UseGunSkill then
                    local v1279, v1280, v1281 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v1282

                        v1281, v1282 = v1279(v1280, v1281)

                        if v1281 == nil then
                            break
                        end
                        if v1282.Name == MonFarm and (v1282:FindFirstChild('Humanoid') and (v1282:FindFirstChild('HumanoidRootPart') and v1282.Humanoid.Health <= v1282.Humanoid.MaxHealth * _G.Kill_At / 100)) then
                            if _G.SkillZ then
                                game:service('VirtualInputManager'):SendKeyEvent(true, 'Z', false, game)
                                wait(0.5)
                                game:service('VirtualInputManager'):SendKeyEvent(false, 'Z', false, game)
                            end
                            if _G.SkillX then
                                game:service('VirtualInputManager'):SendKeyEvent(true, 'X', false, game)
                                wait(0.5)
                                game:service('VirtualInputManager'):SendKeyEvent(false, 'X', false, game)
                            end
                        end
                    end
                end
            end)
        end
    end)
end

v310:Seperator('Quest')
v310:Button('Teleport To Dojo Trainer', function()
    TP2(CFrame.new(5866, 1208, 870))
end)
v310:Button('Teleport To Dragon Hunter', function()
    TP2(CFrame.new(5863, 1209, 809))
end)
v310:Button('Teleport To Dragon Wizard', function()
    TP2(CFrame.new(5773, 1209, 806))
end)
v310:Toggle('Auto Quest Dragon Hunter', false, function(p1283)
    _G.QuestDragon = p1283

    StopTween(_G.QuestDragon)
end)

function getBlazeEmberQuest()
    local v1284 = game:GetService('ReplicatedStorage').Modules.Net['RF/DragonHunter']:InvokeServer({
        Context = 'Check',
    })

    if v1284 then
        local v1285, v1286, v1287 = pairs(v1284)

        while true do
            local v1288

            v1287, v1288 = v1285(v1286, v1287)

            if v1287 == nil then
                break
            end
            if v1287 == 'Text' then
                return v1288
            end
        end
    end
end
function getRequestQuest()
    return game:GetService('ReplicatedStorage').Modules.Net['RF/DragonHunter']:InvokeServer({
        Context = 'RequestQuest',
    })
end
function getIsOnQuest()
    local v1289 = game:GetService('ReplicatedStorage').Modules.Net['RF/DragonHunter']:InvokeServer({
        Context = 'Check',
    })

    if v1289 then
        local v1290, v1291, v1292 = pairs(v1289)

        while true do
            local v1293

            v1292, v1293 = v1290(v1291, v1292)

            if v1292 == nil then
                break
            end
            if v1292 == 'Text' and (string.find(v1293, 'Venomous Assailant') or (string.find(v1293, 'Hydra Enforcer') or string.find(v1293, 'Destroy 10 trees'))) then
                return true
            end
        end
    end

    return false
end

spawn(function()
    while wait(0.2) do
        if _G.QuestDragon then
            pcall(function()
                if not (_G.OnBlzeQuest or getIsOnQuest()) then
                    local v1294 = CFrame.new(5864.86377, 1209.55066, 812.775024, 0.879059196, 0, 0.476712614, 0, 1, 0, -0.476712614, 0, 0.879059196)

                    topos(v1294)
                    game:GetService('ReplicatedStorage').Modules.Net['RF/DragonHunter']:InvokeServer({
                        Context = 'RequestQuest',
                    })
                end

                SaveBlazeEmberQuest()

                _G.OnBlzeQuest = true
            end)
        end
    end
end)

function SaveBlazeEmberQuest()
    local v1295 = getBlazeEmberQuest()

    if string.find(v1295, 'Venomous Assailant') then
        _G.BlazeEmberQuest = 'Venomous Assailant'
    elseif string.find(v1295, 'Hydra Enforcer') then
        _G.BlazeEmberQuest = 'Hydra Enforcer'
    elseif string.find(v1295, 'Destroy 10 trees') then
        _G.BlazeEmberQuest = 'Destroy 10 trees'
    end
end

_G.OnBlzeQuest = false

spawn(function()
    while wait(0.2) do
        if isQuestCompleated() then
            _G.OnBlzeQuest = false
        end
    end
end)
spawn(function()
    while wait(0.2) do
        if _G.QuestDragon then
            pcall(function()
                if _G.BlazeEmberQuest ~= 'Venomous Assailant' or not _G.OnBlzeQuest then
                    if _G.BlazeEmberQuest ~= 'Hydra Enforcer' or not _G.OnBlzeQuest then
                        if _G.BlazeEmberQuest == 'Destroy 10 trees' and _G.OnBlzeQuest then
                            autoDestroyHydraTrees()
                        end
                    else
                        autoKillHydraEnforcer()
                    end
                else
                    autoKillVenemousAssailant()
                end
            end)
        end
    end
end)

function isQuestCompleated()
    local v1296, v1297, v1298 = pairs(game:GetService('Players').LocalPlayer.PlayerGui.Notifications:GetChildren())

    while true do
        local v1299

        v1298, v1299 = v1296(v1297, v1298)

        if v1298 == nil then
            break
        end

        local v1300, v1301, v1302 = pairs(v1299:GetChildren())

        while true do
            local v1303

            v1302, v1303 = v1300(v1301, v1302)

            if v1302 == nil then
                break
            end
            if string.find(v1303.Text, 'Task completed!') or string.find(v1303.Text, 'Head back to the Dojo') then
                return true
            end
        end
    end

    return false
end
function CollectBlazeEmber()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Workspace'):WaitForChild('EmberTemplate'):FindFirstChild('Part').CFrame
end
function autoKillVenemousAssailant()
    if game:GetService('Workspace').Enemies:FindFirstChild('Venomous Assailant') then
        local v1304, v1305, v1306 = pairs(game:GetService('Workspace').Enemies:GetChildren())

        while true do
            local v1307

            v1306, v1307 = v1304(v1305, v1306)

            if v1306 == nil then
                break
            end
            if v1307.Name == 'Venomous Assailant' and (v1307:FindFirstChild('Humanoid') and (v1307:FindFirstChild('HumanoidRootPart') and v1307.Humanoid.Health > 0)) then
                repeat
                    game:GetService('RunService').Heartbeat:wait()
                    EquipWeapon(_G.SelectWeapon)

                    v1307.HumanoidRootPart.CanCollide = false
                    StartMagnet = true
                    _G.PosMon = v1307.HumanoidRootPart.CFrame

                    TP2(v1307.HumanoidRootPart.CFrame * Pos)
                until not v1307.Parent or (v1307.Humanoid.Health <= 0 or not (_G.QuestDragon and _G.OnBlzeQuest))
            end
        end
    else
        topos(CFrame.new(4789.29639, 1078.59082, 962.764099, -0.381989956, 0, 0.924166501, 0, 1, 0, -0.924166501, 0, -0.381989956))
    end
end
function autoKillHydraEnforcer()
    if game:GetService('Workspace').Enemies:FindFirstChild('Hydra Enforcer') then
        local v1308, v1309, v1310 = pairs(game:GetService('Workspace').Enemies:GetChildren())

        while true do
            local v1311

            v1310, v1311 = v1308(v1309, v1310)

            if v1310 == nil then
                break
            end
            if v1311.Name == 'Hydra Enforcer' and (v1311:FindFirstChild('Humanoid') and (v1311:FindFirstChild('HumanoidRootPart') and v1311.Humanoid.Health > 0)) then
                repeat
                    game:GetService('RunService').Heartbeat:wait()
                    EquipWeapon(_G.SelectWeapon)

                    v1311.HumanoidRootPart.CanCollide = false
                    StartMagnet = true
                    _G.PosMon = v1311.HumanoidRootPart.CFrame

                    TP2(v1311.HumanoidRootPart.CFrame * Pos)
                until not v1311.Parent or (v1311.Humanoid.Health <= 0 or not (_G.QuestDragon and _G.OnBlzeQuest))
            end
        end
    else
        topos(CFrame.new(4789.29639, 1078.59082, 962.764099, -0.381989956, 0, 0.924166501, 0, 1, 0, -0.924166501, 0, -0.381989956))
    end
end
function autoDestroyHydraTrees()
    local v1312 = CFrame.new(5260.28223, 1004.24329, 347.062622, 0.923247099, 0, 0.384206682, 0, 1, 0, -0.384206682, 0, 0.923247099)
    local v1313 = CFrame.new(5237.94775, 1004.24329, 429.596344, 0.371416599, 0, 0.92846632, 0, 1, 0, -0.92846632, 0, 0.371416599)
    local v1314 = CFrame.new(5320.87793, 1004.24329, 439.152954, 0.136340275, 0, -0.990662038, 0, 1, 0, 0.990662038, 0, 0.136340275)
    local v1315 = CFrame.new(5346.70752, 1004.24329, 359.389008, 0.296962529, 0, -0.954889119, 0, 1, 0, 0.954889119, 0, 0.296962529)
    local v1316 = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame

    if (v1316.Position - v1312.Position).Magnitude > 3 then
        topos(v1312)
    else
        useAllSkill()
    end
    if (v1316.Position - v1313.Position).Magnitude > 3 then
        topos(v1313)
    else
        useAllSkill()
    end
    if (v1316.Position - v1314.Position).Magnitude > 3 then
        topos(v1314)
    else
        useAllSkill()
    end
    if (v1316.Position - v1315.Position).Magnitude > 3 then
        topos(v1315)
    else
        useAllSkill()
    end
end

DoneSkillGun = false
DoneSkillSword = false
DoneSkillFruit = false
DoneSkillMelee = false

function useAllSkill()
    local v1317 = game:service('VirtualInputManager')

    if not DoneSkillFruit then
        local v1318, v1319, v1320 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

        while true do
            local v1321

            v1320, v1321 = v1318(v1319, v1320)

            if v1320 == nil then
                break
            end
            if v1321:IsA('Tool') and v1321.ToolTip == 'Blox Fruit' then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1321)
            end
        end

        local v1322, v1323, v1324 = pairs({
            'Z',
            'X',
            'C',
            'V',
            'F',
        })

        while true do
            local v1325

            v1324, v1325 = v1322(v1323, v1324)

            if v1324 == nil then
                break
            end

            v1317:SendKeyEvent(true, v1325, false, game)
            wait(0)
            v1317:SendKeyEvent(false, v1325, false, game)
        end

        DoneSkillFruit = true
    end
    if not DoneSkillMelee then
        local v1326, v1327, v1328 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

        while true do
            local v1329

            v1328, v1329 = v1326(v1327, v1328)

            if v1328 == nil then
                break
            end
            if v1329:IsA('Tool') and v1329.ToolTip == 'Melee' then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1329)
            end
        end

        local v1330, v1331, v1332 = pairs({
            'Z',
            'X',
            'C',
            'V',
        })

        while true do
            local v1333

            v1332, v1333 = v1330(v1331, v1332)

            if v1332 == nil then
                break
            end

            v1317:SendKeyEvent(true, v1333, false, game)
            wait(0)
            v1317:SendKeyEvent(false, v1333, false, game)
        end

        DoneSkillMelee = true
    end
    if not DoneSkillSword then
        local v1334, v1335, v1336 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

        while true do
            local v1337

            v1336, v1337 = v1334(v1335, v1336)

            if v1336 == nil then
                break
            end
            if v1337:IsA('Tool') and v1337.ToolTip == 'Sword' then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1337)
            end
        end

        local v1338, v1339, v1340 = pairs({
            'Z',
            'X',
        })

        while true do
            local v1341

            v1340, v1341 = v1338(v1339, v1340)

            if v1340 == nil then
                break
            end

            v1317:SendKeyEvent(true, v1341, false, game)
            wait(0)
            v1317:SendKeyEvent(false, v1341, false, game)
        end

        DoneSkillSword = true
    end
    if not DoneSkillGun then
        local v1342, v1343, v1344 = pairs(game.Players.LocalPlayer.Backpack:GetChildren())

        while true do
            local v1345

            v1344, v1345 = v1342(v1343, v1344)

            if v1344 == nil then
                break
            end
            if v1345:IsA('Tool') and v1345.ToolTip == 'Gun' then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v1345)
            end
        end

        local v1346, v1347, v1348 = pairs({
            'Z',
            'X',
        })

        while true do
            local v1349

            v1348, v1349 = v1346(v1347, v1348)

            if v1348 == nil then
                break
            end

            v1317:SendKeyEvent(true, v1349, false, game)
            wait(0.1)
            v1317:SendKeyEvent(false, v1349, false, game)
        end

        DoneSkillGun = true
    end

    DoneSkillGun = false
    DoneSkillSword = false
    DoneSkillFruit = false
    DoneSkillMelee = false
end

spawn(function()
    while wait(0.2) do
        if _G.QuestDragon then
            pcall(function()
                if game:GetService('Workspace').EmberTemplate:FindFirstChild('Part') then
                    CollectBlazeEmber()
                end
            end)
        end
    end
end)
v310:Seperator('Craft Item')
v310:Button('Craft Volcanic Magnet', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
        'CraftItem',
        'Craft',
        'Volcanic Magnet',
    }))
end)
v310:Button('Craft Dino Hood', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
        'CraftItem',
        'Craft',
        'DinoHood',
    }))
end)
v310:Button('Craft T-Rex Skull', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
        'CraftItem',
        'Craft',
        'TRexSkull',
    }))
end)
v310:Seperator('Prehistoric Island')

local vu1350 = v310:Label('Prehistoric Island')

task.spawn(function()
    while task.wait() do
        pcall(function()
            if game.Workspace._WorldOrigin.Locations:FindFirstChild('Prehistoric Island') then
                vu1350:Set('Prehistoric Island : Spawn!')
            else
                vu1350:Set('Prehistoric Island : Not Spawn')
            end
        end)
    end
end)
v310:Button('Remove Lava In Prehistoric Island', function()
    local v1351, v1352, v1353 = pairs(game.Workspace:GetDescendants())

    while true do
        local v1354

        v1353, v1354 = v1351(v1352, v1353)

        if v1353 == nil then
            break
        end
        if v1354.Name == 'Lava' then
            v1354:Destroy()
        end
    end

    local v1355, v1356, v1357 = pairs(game.ReplicatedStorage:GetDescendants())

    while true do
        local v1358

        v1357, v1358 = v1355(v1356, v1357)

        if v1357 == nil then
            break
        end
        if v1358.Name == 'Lava' then
            v1358:Destroy()
        end
    end
end)
v310:Toggle('Find Prehistoric Island', false, function(p1359)
    _G.FindPrehistoric = p1359

    StopTween(_G.FindPrehistoric)
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.FindPrehistoric then
                if CheckBoat() then
                    local v1360, v1361, v1362 = pairs(game:GetService('Workspace').Boats:GetChildren())

                    while true do
                        local v1363

                        v1362, v1363 = v1360(v1361, v1362)

                        if v1362 == nil then
                            break
                        end
                        if v1363.Name == _G.SelectedBoat and v1363:FindFirstChild('MyBoatEsp') then
                            if game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit then
                                repeat
                                    wait()

                                    stopboat = TPB(CFrame.new(-9999999, 1, 0), v1363.VehicleSeat)
                                until game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Prehistoric Island') or not (game.Players.LocalPlayer.Character:WaitForChild('Humanoid').Sit and _G.FindPrehistoric)

                                if stopboat then
                                    stopboat:Stop()
                                end
                                if game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Prehistoric Island') then
                                    _G.FindPrehistoric = false

                                    Notify('Xeter Hub', 'Prehistoric Island Spawn', 3)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(true, 32, false, game)
                                    wait(0.1)
                                    game:GetService('VirtualInputManager'):SendKeyEvent(false, 32, false, game)
                                end
                            else
                                stoppos = TP2(v1363.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                            end
                        end
                    end
                else
                    local v1364 = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781)

                    if (v1364.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                        stoppos = topos(v1364)
                    else
                        topos(CFrame.new(-16224, 9, 439))
                    end
                    if (v1364.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        if stoppos then
                            stoppos:Stop()
                        end

                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBoat', _G.SelectedBoat)

                        local v1365, v1366, v1367 = pairs(game:GetService('Workspace').Boats:GetChildren())

                        while true do
                            local v1368

                            v1367, v1368 = v1365(v1366, v1367)

                            if v1367 == nil then
                                break
                            end
                            if v1368.Name == _G.SelectedBoat and (v1368.VehicleSeat.CFrame.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                AddEsp('MyBoatEsp', v1368)
                            end
                        end
                    end
                end
            end
        end)
    end
end)
v310:Toggle('Teleport Prehistoric Island', false, function(p1369)
    _G.TpPrehistoric = p1369

    StopTween(_G.TpPrehistoric)
end)
spawn(function()
    pcall(function()
        while wait() do
            local v1370 = _G.TpPrehistoric and game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

            if v1370 then
                local v1371 = v1370.WorldPivot.Position

                topos(CFrame.new(v1371.X, 500, v1371.Z))
            end
        end
    end)
end)
v310:Toggle('Teleport Skull Core', false, function(p1372)
    _G.TpSkullCore = p1372

    StopTween(_G.TpSkullCore)
end)
spawn(function()
    local v1373 = nil

    while not v1373 do
        v1373 = game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

        wait()
    end
    while wait() do
        local v1374 = _G.TpSkullCore and game:GetService('Workspace').Map:FindFirstChild('PrehistoricIsland')

        if v1374 then
            local v1375 = v1374:FindFirstChild('Core')

            if v1375 then
                v1375 = v1374.Core:FindFirstChild('PrehistoricRelic')
            end
            if v1375 then
                v1375 = v1375:FindFirstChild('Skull')
            end
            if v1375 then
                topos(CFrame.new(v1375.Position))

                _G.TpSkullCore = false
            end
        end
    end
end)
v310:Toggle('Auto Kill Golem', false, function(p1376)
    _G.Kill_Aura = p1376
    _G.KillGolem = p1376

    StopTween(_G.KillGolem)
end)
spawn(function()
    while wait() do
        if _G.KillGolem and World3 then
            pcall(function()
                if game:GetService('Workspace').Enemies:FindFirstChild('Lava Golem') then
                    local v1377, v1378, v1379 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                    while true do
                        local v1380

                        v1379, v1380 = v1377(v1378, v1379)

                        if v1379 == nil then
                            break
                        end
                        if v1380.Name == 'Lava Golem' and (v1380:FindFirstChild('Humanoid') and (v1380:FindFirstChild('HumanoidRootPart') and v1380.Humanoid.Health > 0)) then
                            repeat
                                task.wait()

                                v1380.HumanoidRootPart.CanCollide = false
                                v1380.Humanoid.WalkSpeed = 0

                                TP2(v1380.HumanoidRootPart.CFrame * Pos)
                                sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                            until not _G.KillGolem or (not v1380.Parent or v1380.Humanoid.Health <= 0)
                        end
                    end
                elseif game:GetService('ReplicatedStorage'):FindFirstChild('Lava Golem') then
                    topos(game:GetService('ReplicatedStorage'):FindFirstChild('Lava Golem').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                end
            end)
        end
    end
end)
v310:Toggle('Auto Fix Volcano', false, function(p1381)
    _G.DefendVolcano = p1381

    StopTween(_G.DefendVolcano)
end)

local function vu1383(p1382)
    game:GetService('VirtualInputManager'):SendKeyEvent(true, p1382, false, game)
    game:GetService('VirtualInputManager'):SendKeyEvent(false, p1382, false, game)
end
local function vu1399()
    local v1384 = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild('InteriorLava')

    if v1384 and v1384:IsA('Model') then
        v1384:Destroy()
    end

    local v1385 = game.Workspace.Map:FindFirstChild('PrehistoricIsland')

    if v1385 then
        local v1386, v1387, v1388 = pairs(v1385:GetDescendants())

        while true do
            local v1389

            v1388, v1389 = v1386(v1387, v1388)

            if v1388 == nil then
                break
            end
            if v1389:IsA('Part') and v1389.Name:lower():find('lava') then
                v1389:Destroy()
            end
        end
    end

    local v1390 = game.Workspace.Map:FindFirstChild('PrehistoricIsland')

    if v1390 then
        local v1391, v1392, v1393 = pairs(v1390:GetDescendants())

        while true do
            local v1394

            v1393, v1394 = v1391(v1392, v1393)

            if v1393 == nil then
                break
            end
            if v1394:IsA('Model') then
                local v1395, v1396, v1397 = pairs(v1394:GetDescendants())

                while true do
                    local v1398

                    v1397, v1398 = v1395(v1396, v1397)

                    if v1397 == nil then
                        break
                    end
                    if v1398:IsA('MeshPart') and v1398.Name:lower():find('lava') then
                        v1398:Destroy()
                    end
                end
            end
        end
    end
end
local function vu1407()
    local v1400 = game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks
    local v1401, v1402, v1403 = pairs(v1400:GetChildren())

    while true do
        local v1404

        v1403, v1404 = v1401(v1402, v1403)

        if v1403 == nil then
            break
        end
        if v1404:IsA('Model') then
            local v1405 = v1404:FindFirstChild('volcanorock')

            if v1405 and v1405:IsA('MeshPart') then
                local v1406 = v1405.Color

                if v1406 == Color3.fromRGB(185, 53, 56) or v1406 == Color3.fromRGB(185, 53, 57) then
                    return v1405
                end
            end
        end
    end

    return nil
end
local function vu1419(p1408)
    local v1409 = game.Players.LocalPlayer
    local v1410 = v1409.Backpack
    local v1411, v1412, v1413 = pairs(v1410:GetChildren())

    while true do
        local v1414

        v1413, v1414 = v1411(v1412, v1413)

        if v1413 == nil then
            break
        end
        if v1414:IsA('Tool') and v1414.ToolTip == p1408 then
            v1414.Parent = v1409.Character

            local v1415, v1416, v1417 = ipairs({
                'Z',
                'X',
                'C',
                'V',
                'F',
            })

            while true do
                local vu1418

                v1417, vu1418 = v1415(v1416, v1417)

                if v1417 == nil then
                    break
                end

                wait()
                pcall(function()
                    vu1383(vu1418)
                end)
            end

            v1414.Parent = v1410

            break
        end
    end
end

spawn(function()
    while wait() do
        if _G.DefendVolcano then
            pcall(vu1399)

            local v1420 = vu1407()

            if v1420 then
                local v1421 = CFrame.new(v1420.Position)

                topos(v1421)

                local v1422 = v1420.Color

                if v1422 == Color3.fromRGB(185, 53, 56) or v1422 == Color3.fromRGB(185, 53, 57) then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1420.Position).Magnitude <= 1 then
                        if _G.UseMelee then
                            vu1419('Melee')
                        end
                        if _G.UseFruit then
                            vu1419('Blox Fruit')
                        end
                        if _G.UseSword then
                            vu1419('Sword')
                        end
                        if _G.UseGun then
                            vu1419('Gun')
                        end
                    end

                    _G.TpSkullCore = false
                else
                    vu1407()
                end
            else
                _G.TpSkullCore = true
            end
        end
    end
end)
v310:Toggle('Collect Bone', false, function(p1423)
    _G.CollectBone = p1423
end)
spawn(function()
    while wait() do
        if _G.CollectBone then
            local v1424, v1425, v1426 = pairs(workspace:GetDescendants())

            while true do
                local v1427

                v1426, v1427 = v1424(v1425, v1426)

                if v1426 == nil then
                    break
                end
                if v1427:IsA('BasePart') and v1427.Name == 'DinoBone' then
                    topos(CFrame.new(v1427.Position))
                end
            end
        end
    end
end)
v310:Toggle('Collect Egg', false, function(p1428)
    _G.CollectEgg = p1428
end)
spawn(function()
    while wait() do
        if _G.CollectEgg then
            local v1429 = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren()

            if #v1429 > 0 then
                local v1430 = v1429[math.random(1, #v1429)]

                if v1430:IsA('Model') and v1430.PrimaryPart then
                    topos(v1430.PrimaryPart.CFrame)

                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1430.PrimaryPart.Position).Magnitude <= 1 then
                        game:GetService('VirtualInputManager'):SendKeyEvent(true, 'E', false, game)
                        wait(1.5)
                        game:GetService('VirtualInputManager'):SendKeyEvent(false, 'E', false, game)
                    end
                end
            end
        end
    end
end)
v310:Seperator('Settings Use Weapons')
v310:Toggle('Auto Use Melee', true, function(p1431)
    _G.UseMelee = p1431
end)
v310:Toggle('Auto Use Fruit', false, function(p1432)
    _G.UseFruit = p1432
end)
v310:Toggle('Auto Use Sword', false, function(p1433)
    _G.UseSword = p1433
end)
v310:Toggle('Auto Use Gun', false, function(p1434)
    _G.UseGun = p1434
end)
v311:Seperator('Player')

local vu1435 = v311:Label('Player')

spawn(function()
    while task.wait() do
        pcall(function()
            local v1436, v1437, v1438 = pairs(game:GetService('Players'):GetPlayers())

            while true do
                local v1439

                v1438, v1439 = v1436(v1437, v1438)

                if v1438 == nil then
                    break
                end
                if v1438 == 12 then
                    vu1435:Set('Players:' .. ' ' .. v1438 .. ' / 12 (Max)')
                elseif v1438 == 1 then
                    vu1435:Set('Player:' .. ' ' .. v1438 .. ' / 12')
                else
                    vu1435:Set('Players:' .. ' ' .. v1438 .. ' / 12')
                end
            end
        end)
    end
end)

local v1440, v1441, v1442 = pairs(game:GetService('Players'):GetPlayers())
local vu1443 = vu170
local vu1444 = vu187
local vu1445 = {}

while true do
    local v1446

    v1442, v1446 = v1440(v1441, v1442)

    if v1442 == nil then
        break
    end

    table.insert(vu1445, v1446.Name)
end

v311:Dropdown('Select Player', vu1445, _G.SelectPly, function(p1447)
    _G.SelectPly = p1447
end)
v311:Button('Refresh Player', function()
    vu1445 = {}

    SelectedPly:Clear()

    local v1448, v1449, v1450 = pairs(game:GetService('Players'):GetChildren())

    while true do
        local v1451

        v1450, v1451 = v1448(v1449, v1450)

        if v1450 == nil then
            break
        end

        SelectedPly:Add(v1451.Name)
    end
end)
v311:Toggle('Spectate Player', false, function(p1452)
    SpectatePlys = p1452

    local v1453 = game:GetService('Players').LocalPlayer.Character

    if v1453 then
        v1453 = game:GetService('Players').LocalPlayer.Character:FindFirstChild('Humanoid')
    end

    local v1454 = _G.SelectPly

    if v1454 then
        v1454 = game:GetService('Players'):FindFirstChild(_G.SelectPly)
    end

    local v1455 = v1454 and v1454.Character

    if v1455 then
        v1455 = v1454.Character:FindFirstChild('Humanoid')
    end
    if v1455 then
        repeat
            wait(0.1)

            game:GetService('Workspace').Camera.CameraSubject = v1455
        until SpectatePlys == false

        if v1453 then
            game:GetService('Workspace').Camera.CameraSubject = v1453
        end
    end
end)
v311:Toggle('Teleport', false, function(p1456)
    _G.TeleportPly = p1456

    pcall(function()
        if _G.TeleportPly then
            repeat
                topos(game:GetService('Players')[_G.SelectPly].Character.HumanoidRootPart.CFrame)
                wait()
            until _G.TeleportPly == false
        end

        StopTween(_G.TeleportPly)
    end)
end)
v311:Seperator('PvP')
v311:Toggle('Aimbot Nearest', false, function(p1457)
    _G.AimNearest = p1457
end)

local vu1458 = game:GetService('Players')
local vu1459 = vu1458.LocalPlayer
local v1460 = game:GetService('RunService')

local function vu1470()
    local v1461 = math.huge
    local v1462 = vu1458
    local v1463, v1464, v1465 = pairs(v1462:GetPlayers())
    local v1466 = nil

    while true do
        local v1467

        v1465, v1467 = v1463(v1464, v1465)

        if v1465 == nil then
            break
        end
        if v1467 ~= vu1459 and v1467.Character and (v1467.Character:FindFirstChild('HumanoidRootPart') and (v1467.Team ~= vu1459.Team and v1467.Team.Name ~= 'Marines')) then
            local v1468 = v1467.Character.HumanoidRootPart.Position
            local v1469 = (vu1459.Character.HumanoidRootPart.Position - v1468).Magnitude

            if v1469 < v1461 then
                v1466 = v1467
                v1461 = v1469
            end
        end
    end

    return v1466
end

v1460.RenderStepped:Connect(function()
    local v1471 = _G.AimNearest and vu1470()

    if v1471 then
        _G.Aim_Players = v1471
    end
end)

local v1472 = getrawmetatable(game)
local vu1473 = v1472.__namecall

setreadonly(v1472, false)

v1472.__namecall = newcclosure(function(...)
    local v1474 = getnamecallmethod()
    local v1475 = {...}

    if tostring(v1474) ~= 'FireServer' or (tostring(v1475[1]) ~= 'RemoteEvent' or (tostring(v1475[2]) == 'true' or (tostring(v1475[2]) == 'false' or not (_G.AimNearest and _G.Aim_Players)))) then
        return vu1473(...)
    end

    v1475[2] = _G.Aim_Players.Character.HumanoidRootPart.Position

    return vu1473(unpack(v1475))
end)

setreadonly(v1472, true)
v311:Toggle('No Stun When Using Skill', false, function(p1476)
    _G.NoSt = p1476
end)
spawn(function()
    while wait() do
        if _G.NoSt then
            local v1477 = next
            local v1478, v1479 = vu279.Character:GetDescendants()

            while true do
                local v1480

                v1479, v1480 = v1477(v1478, v1479)

                if v1479 == nil then
                    break
                end
                if table.find({
                    'BodyGyro',
                    'BodyPosition',
                }, v1480.ClassName) then
                    v1480:Destroy()
                end
            end
        end
    end
end)
v311:Toggle('Enabled PvP', false, function(p1481)
    _G.EnabledPvP = p1481
end)
task.spawn(function()
    while task.wait(1) do
        if _G.EnabledPvP then
            game:GetService('ReplicatedStorage'):WaitForChild('Remotes'):WaitForChild('CommF_'):InvokeServer('EnablePvp')
        end
    end
end)
v311:Button('Set Position Spawn', function()
    _G.Pos_Spawn = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

    Com()
end)
v311:Button('Respawn', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Pirates')
    wait()
end)
v311:Seperator('Other Players')
v311:Toggle('Auto Active V3', false, function(p1482)
    _G.ActiveV3 = p1482
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.ActiveV3 then
                game:GetService('ReplicatedStorage').Remotes.CommE:FireServer('ActivateAbility')
            end
        end
    end)
end)
v311:Toggle('Auto Active V4', false, function(p1483)
    _G.ActiveV4 = p1483
end)
spawn(function()
    while task.wait() do
        if _G.ActiveV4 then
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChild('RaceEnergy') and game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 and (game.Players.LocalPlayer.Character:FindFirstChild('RaceTransformed') and not game.Players.LocalPlayer.Character.RaceTransformed.Value) then
                    game:GetService('Players').LocalPlayer.Backpack.Awakening.RemoteFunction:InvokeServer(unpack({true}))
                end
            end)
        end
    end
end)
v311:Toggle('Enable Fly', false, function(p1484)
    if p1484 then
        _G.NoClip = true

        vu204(speaker, true)
    else
        _G.NoClip = false

        vu1444(speaker)
    end
end)
v311:Toggle('Walk on Water', true, function(p1485)
    _G.WalkWater = p1485
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.WalkWater then
                game:GetService('Workspace').Map['WaterBase-Plane'].Size = Vector3.new(1000, 112, 1000)
            else
                game:GetService('Workspace').Map['WaterBase-Plane'].Size = Vector3.new(1000, 80, 1000)
            end
        end)
    end
end)

_G.SelectSp = '200'

v311:Dropdown('Select Walk Speed', {
    '50',
    '100',
    '200',
    '250',
    '300',
    '350',
}, _G.SelectSp, function(p1486)
    _G.SelectSp = p1486
end)
v311:Toggle('Walk Speed', false, function(p1487)
    _G.WalkSp = p1487
end)
game:GetService('RunService').RenderStepped:Connect(function()
    if vu279.Character and (vu279.Character:FindFirstChild('Humanoid') and _G.WalkSp) then
        vu279.Character.Humanoid.WalkSpeed = tonumber(_G.SelectSp)
    end
end)

_G.SelectJp = '200'

v311:Dropdown('Select High Jump', {
    '50',
    '100',
    '200',
    '250',
    '300',
    '350',
    '400',
}, _G.SelectJp, function(p1488)
    _G.SelectJp = p1488
end)
v311:Toggle('High Jump', false, function(p1489)
    _G.JumpSp = p1489
end)
game:GetService('RunService').RenderStepped:Connect(function()
    if vu279.Character and (vu279.Character:FindFirstChild('Humanoid') and _G.JumpSp) then
        vu279.Character.Humanoid.JumpPower = tonumber(_G.SelectJp)
    end
end)
v311:Toggle('NoClip', false, function(p1490)
    _G.NoClip = p1490
end)
spawn(function()
    while wait() do
        if sethiddenproperty then
            sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', 100)
        end
        if setscriptable then
            setscriptable(game.Players.LocalPlayer, 'SimulationRadius', true)

            local v1491 = game.Players.LocalPlayer
            local v1492 = math.huge * math.huge
            local _ = math.huge * math.huge * 0 / 0 * 0 / 0 * 0 / 0 * 0 / 0 * 0 / 0

            v1491.SimulationRadius = v1492
        end
    end
end)
v311:Seperator('Stats')

local vu1493 = v311:Label('Stat Points')
local vu1494 = v311:Label('Melee')
local vu1495 = v311:Label('Defense')
local vu1496 = v311:Label('Sword')
local vu1497 = v311:Label('Gun')
local vu1498 = v311:Label('Fruit')

spawn(function()
    while task.wait() do
        pcall(function()
            vu1493:Set('Stat Points: ' .. tostring(game:GetService('Players').LocalPlayer.Data.Points.Value))
            vu1494:Set('Melee: ' .. game.Players.localPlayer.Data.Stats.Melee.Level.Value)
            vu1495:Set('Defense: ' .. game.Players.localPlayer.Data.Stats.Defense.Level.Value)
            vu1496:Set('Sword: ' .. game.Players.localPlayer.Data.Stats.Sword.Level.Value)
            vu1497:Set('Gun: ' .. game.Players.localPlayer.Data.Stats.Gun.Level.Value)
            vu1498:SetDescSet('Fruit: ' .. game.Players.localPlayer.Data.Stats['Demon Fruit'].Level.Value)
        end)
    end
end)

_G.Point = 1

v311:Slider('Select Stats Kaitun', 1, 100, 1, function(p1499)
    _G.Point = p1499
end)
v311:Toggle('Auto Stats Kaitun', false, function(p1500)
    _G.Stats_Kaitun = p1500
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Stats_Kaitun then
                if World1 then
                    local v1501 = {
                        'AddPoint',
                        'Melee',
                        _G.Point,
                    }

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1501))
                elseif World2 then
                    local v1502 = {
                        'AddPoint',
                        'Melee',
                        _G.Point,
                    }

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1502))

                    local v1503 = {
                        'AddPoint',
                        'Defense',
                        _G.Point,
                    }

                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1503))
                end
            end
        end)
    end
end)
v311:Toggle('Melee', false, function(p1504)
    melee = p1504
end)
v311:Toggle('Defense', false, function(p1505)
    defense = p1505
end)
v311:Toggle('Sword', false, function(p1506)
    sword = p1506
end)
v311:Toggle('Gun', false, function(p1507)
    gun = p1507
end)
v311:Toggle('Devil Fruit', false, function(p1508)
    demonfruit = p1508
end)
spawn(function()
    while wait() do
        if melee then
            local v1509 = {
                'AddPoint',
                'Melee',
                _G.Point,
            }

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1509))
        end
        if defense then
            local v1510 = {
                'AddPoint',
                'Defense',
                _G.Point,
            }

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1510))
        end
        if sword then
            local v1511 = {
                'AddPoint',
                'Sword',
                _G.Point,
            }

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1511))
        end
        if gun then
            local v1512 = {
                'AddPoint',
                'Gun',
                _G.Point,
            }

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1512))
        end
        if demonfruit then
            local v1513 = {
                'AddPoint',
                'Demon Fruit',
                _G.Point,
            }

            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack(v1513))
        end
    end
end)
v312:Seperator('ESP MENU')
v312:Toggle('ESP Player', false, function(p1514)
    ESPPlayer = p1514

    UpdatePlayerChams()
end)
v312:Toggle('ESP Fruit', false, function(p1515)
    DevilFruitESP = p1515

    while DevilFruitESP do
        wait()
        UpdateDevilChams()
    end
end)
v312:Toggle('ESP Berries', false, function(p1516)
    BerriesESP = p1516

    while BerriesESP do
        wait()
        UpdateBerriesESP()
    end
end)
v312:Toggle('ESP Island', false, function(p1517)
    IslandESP = p1517
end)
v312:Toggle('Esp Mystic Island', false, function(p1518)
    MirageIslandESP = p1518

    while MirageIslandESP do
        wait()
        UpdateIslandMirageESP()
    end
end)
v312:Toggle('ESP Island Kitsune', false, function(p1519)
    IslandESP = p1519

    while IslandESP do
        wait()
        UpdateIslandESPKitsune()
    end
end)
spawn(function()
    while wait() do
        if BerriesESP then
            UpdateBerriesESP()
        end
        if DevilFruitESP then
            UpdateDevilChams()
        end
        if ESPPlayer then
            UpdatePlayerChams()
        end
    end
end)
spawn(function()
    while wait() do
        if IslandESP then
            pcall(function()
                local v1520, v1521, v1522 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

                while true do
                    local v1523

                    v1522, v1523 = v1520(v1521, v1522)

                    if v1522 == nil then
                        break
                    end
                    if not v1523:FindFirstChild('IslandEsp') then
                        local v1524 = Instance.new('BillboardGui')
                        local v1525 = Instance.new('TextLabel')

                        v1524.Parent = v1523
                        v1524.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        v1524.Active = true
                        v1524.Name = 'IslandEsp'
                        v1524.AlwaysOnTop = true
                        v1524.LightInfluence = 1
                        v1524.Size = UDim2.new(0, 200, 0, 50)
                        v1524.StudsOffset = Vector3.new(0, 2.5, 0)
                        v1525.Parent = v1524
                        v1525.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        v1525.BackgroundTransparency = 1
                        v1525.Size = UDim2.new(0, 200, 0, 50)
                        v1525.Font = Enum.Font.GothamBold
                        v1525.TextColor3 = Color3.fromRGB(255, 255, 255)
                        v1525.FontSize = 'Size14'
                        v1525.TextStrokeTransparency = 0.5
                    end

                    local v1526 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v1523.Position).Magnitude / 10)

                    v1523.IslandEsp.TextLabel.Text = v1523.Name .. '\n' .. '[' .. v1526 .. ']'
                end
            end)
        else
            local v1527, v1528, v1529 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

            while true do
                local v1530

                v1529, v1530 = v1527(v1528, v1529)

                if v1529 == nil then
                    break
                end
                if v1530:FindFirstChild('IslandEsp') then
                    v1530.IslandEsp:Destroy()
                end
            end
        end
    end
end)
v312:Seperator('Troll')
v312:Button('Rain Fruit', function()
    local v1531, v1532, v1533 = pairs(game:GetObjects('rbxassetid://14759368201')[1]:GetChildren())

    while true do
        local vu1534

        v1533, vu1534 = v1531(v1532, v1533)

        if v1533 == nil then
            break
        end

        vu1534.Parent = game.Workspace.Map

        vu1534:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))

        if vu1534.Fruit:FindFirstChild('AnimationController') then
            vu1534.Fruit:FindFirstChild('AnimationController'):LoadAnimation(vu1534.Fruit:FindFirstChild('Idle')):Play()
        end

        vu1534.Handle.Touched:Connect(function(p1535)
            if p1535.Parent == game.Players.LocalPlayer.Character then
                vu1534.Parent = game.Players.LocalPlayer.Backpack

                game.Players.LocalPlayer.Character.Humanoid:EquipTool(vu1534)
            end
        end)
    end
end)
v312:Button('Instant Level/Beli/EXP', function()
    local v1536 = game:GetService('Players').LocalPlayer
    local v1537 = require(game:GetService('ReplicatedStorage').Notification)
    local v1538 = v1536:WaitForChild('Data')
    local v1539 = require(game.ReplicatedStorage:WaitForChild('EXPFunction'))
    local v1540 = require(game:GetService('ReplicatedStorage').Effect.Container.LevelUp)
    local v1541 = require(game:GetService('ReplicatedStorage').Util.Sound)
    local v1542 = game:GetService('ReplicatedStorage').Util.Sound.Storage.Other:FindFirstChild('LevelUp_Proxy') or game:GetService('ReplicatedStorage').Util.Sound.Storage.Other:FindFirstChild('LevelUp')

    function v129(p1543)
        repeat
            local v1544

            p1543, v1544 = string.gsub(p1543, '^(-?%d+)(%d%d%d)', '%1,%2')
        until v1544 == 0

        return p1543
    end

    v1537.new('<Color=Yellow>QUEST COMPLETED!<Color=/>'):Display()
    v1537.new('Earned <Color=Yellow>9,999,999,999,999 Exp.<Color=/> (+ None)'):Display()
    v1537.new('Earned <Color=Green>$9,999,999,999,999<Color=/>'):Display()

    v1536.Data.Exp.Value = 999999999999
    v1536.Data.Beli.Value = v1536.Data.Beli.Value + 999999999999

    local v1545 = 0

    while v1536.Data.Exp.Value - v1539(v1538.Level.Value) > 0 do
        v1536.Data.Exp.Value = v1536.Data.Exp.Value - v1539(v1538.Level.Value)
        v1536.Data.Level.Value = v1536.Data.Level.Value + 1
        v1536.Data.Points.Value = v1536.Data.Points.Value + 3

        v1540({v1536})
        v1541:Play(v1542.Value)
        v1537.new('<Color=Green>LEVEL UP!<Color=/> (' .. v1536.Data.Level.Value .. ')'):Display()

        v1545 = v1545 + 1

        if v1545 >= 5 then
            tick()
            wait(2)

            v1545 = 0
        end
    end
end)
v312:Textbox('Fake Level', true, function(p1546)
    game:GetService('Players').LocalPlayer.Data.Level.Value = p1546
end)
v312:Textbox('Fake Exp', true, function(p1547)
    game:GetService('Players').LocalPlayer.Data.Exp.Value = p1547
end)
v312:Textbox('Fake Money', true, function(p1548)
    game:GetService('Players').LocalPlayer.Data.Beli.Value = p1548
end)
v312:Textbox('Fake Fragment', true, function(p1549)
    game:GetService('Players').LocalPlayer.Data.Fragments.Value = p1549
end)
v312:Textbox('Fake Points', true, function(p1550)
    game:GetService('Players').LocalPlayer.Data.Points.Value = p1550
end)
v312:Textbox('Fake Bounty', true, function(p1551)
    game:GetService('Players').LocalPlayer.leaderstats['Bounty/Honor'].Value = p1551
end)
v312:Seperator('Highlight')
v312:Toggle('Show Chat disabled', false, function(p1552)
    _G.chat = p1552

    local v1553 = game:GetService('StarterGui')

    if _G.chat then
        v1553:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
    else
        v1553:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    end
end)
v312:Toggle('Show leaderboard disabled', false, function(p1554)
    _G.leaderboard = p1554

    local v1555 = game:GetService('StarterGui')

    if _G.leaderboard then
        v1555:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
    else
        v1555:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
    end
end)
v312:Button('Max Zoom', function()
    while wait() do
        game.Players.LocalPlayer.CameraMaxZoomDistance = 9223372036854718
    end
end)
v312:Seperator('Graphic')
v312:Button('Remove Fog (Sea 3)', function()
    game:GetService('Lighting').LightingLayers:Destroy()
    game:GetService('Lighting').Sky:Destroy()
end)
v312:Toggle('Remove Fog', false, function(p1556)
    RemoveFog = p1556

    if RemoveFog then
        while RemoveFog do
            wait()

            game.Lighting.FogEnd = 9000000000

            if not RemoveFog then
                game.Lighting.FogEnd = 2500
            end
        end
    end
end)
v312:Button('Remove Lava', function()
    local v1557, v1558, v1559 = pairs(game.Workspace:GetDescendants())

    while true do
        local v1560

        v1559, v1560 = v1557(v1558, v1559)

        if v1559 == nil then
            break
        end
        if v1560.Name == 'Lava' then
            v1560:Destroy()
        end
    end

    local v1561, v1562, v1563 = pairs(game.ReplicatedStorage:GetDescendants())

    while true do
        local v1564

        v1563, v1564 = v1561(v1562, v1563)

        if v1563 == nil then
            break
        end
        if v1564.Name == 'Lava' then
            v1564:Destroy()
        end
    end
end)
v312:Button('Unlock FPS', function()
    setfpscap(9999999)
end)
v312:Seperator('Abilities')
v312:Toggle('Dodge No Cooldown', false, function(p1565)
    nododgecool = p1565

    NoDodgeCool()
end)
v312:Toggle('Infinite Energy', false, function(p1566)
    InfiniteEnergy = p1566
    vu1443 = vu1459.Character.Energy.Value
end)
v312:Toggle('Infinite Ability', false, function(p1567)
    InfAbility = p1567

    if value == false then
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Agility'):Destroy()
    end
end)
spawn(function()
    while wait() do
        if InfAbility then
            InfAb()
        end
    end
end)
v312:Toggle('Infinite Obversation Range', false, function(p1568)
    getgenv().InfiniteObRange = p1568

    local v1569 = game:GetService('Players').LocalPlayer.VisionRadius.Value

    while getgenv().InfiniteObRange do
        wait()

        local v1570 = game:GetService('Players').LocalPlayer
        local v1571 = v1570.Character
        local v1572 = v1570.VisionRadius

        if v1570 then
            if v1571.Humanoid.Health <= 0 then
                wait(5)
            end

            v1572.Value = math.huge
        elseif getgenv().InfiniteObRange == false and v1570 then
            v1572.Value = v1569
        end
    end
end)
v312:Toggle('Infinite Geppo', false, function(p1573)
    getgenv().InfGeppo = p1573
end)
spawn(function()
    while wait() do
        pcall(function()
            if getgenv().InfGeppo then
                local v1574 = next
                local v1575, v1576 = getgc()

                while true do
                    local v1577

                    v1576, v1577 = v1574(v1575, v1576)

                    if v1576 == nil then
                        break
                    end
                    if game:GetService('Players').LocalPlayer.Character.Geppo and typeof(v1577) == 'function' and getfenv(v1577).script == game:GetService('Players').LocalPlayer.Character.Geppo then
                        local v1578 = next
                        local v1579, v1580 = getupvalues(v1577)

                        while true do
                            local v1581

                            v1580, v1581 = v1578(v1579, v1580)

                            if v1580 == nil then
                                break
                            end
                            if tostring(v1580) == '9' then
                                local v1582 = v1580

                                repeat
                                    wait(0.1)
                                    setupvalue(v1577, v1580, 0)
                                until not getgenv().InfGeppo or game:GetService('Players').LocalPlayer.Character.Humanoid.Health <= 0

                                v1580 = v1582
                            end
                        end
                    end
                end
            end
        end)
    end
end)
v313:Seperator('Raid')

_G.SelectChip = selectraids or ''
Raidslist = {}
RaidsModule = require(game.ReplicatedStorage.Raids)

local v1583, v1584, v1585 = pairs(RaidsModule.raids)

while true do
    local v1586

    v1585, v1586 = v1583(v1584, v1585)

    if v1585 == nil then
        break
    end

    table.insert(Raidslist, v1586)
end

local v1587, v1588, v1589 = pairs(RaidsModule.advancedRaids)

while true do
    local v1590

    v1589, v1590 = v1587(v1588, v1589)

    if v1589 == nil then
        break
    end

    table.insert(Raidslist, v1590)
end

v313:Dropdown('Select Chips', Raidslist, false, function(p1591)
    _G.SelectChip = p1591
end)
v313:Toggle('Auto Select Dungeon', false, function(p1592)
    _G.SelectDungeon = p1592
end)
spawn(function()
    while wait() do
        if _G.SelectDungeon then
            pcall(function()
                if game:GetService('Players').LocalPlayer.Character:FindFirstChild('Flame-Flame') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Flame-Flame') then
                    _G.SelectChip = 'Flame'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Ice-Ice') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Ice-Ice') then
                    _G.SelectChip = 'Ice'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Quake-Quake') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Quake-Quake') then
                    _G.SelectChip = 'Quake'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Light-Light') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Light-Light') then
                    _G.SelectChip = 'Light'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dark-Dark') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dark-Dark') then
                    _G.SelectChip = 'Dark'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('String-String') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('String-String') then
                    _G.SelectChip = 'String'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Rumble-Rumble') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Rumble-Rumble') then
                    _G.SelectChip = 'Rumble'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Magma-Magma') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Magma-Magma') then
                    _G.SelectChip = 'Magma'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Human-Human: Buddha Fruit') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Human-Human: Buddha Fruit') then
                    _G.SelectChip = 'Human: Buddha'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Sand-Sand') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Sand-Sand') then
                    _G.SelectChip = 'Sand'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Bird-Bird: Phoenix') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Bird-Bird: Phoenix') then
                    _G.SelectChip = 'Bird: Phoenix'
                elseif game:GetService('Players').LocalPlayer.Character:FindFirstChild('Dough') or game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Dough') then
                    _G.SelectChip = 'Dough'
                else
                    _G.SelectChip = 'Flame'
                end
            end)
        end
    end
end)
v313:Toggle('Auto Buy Chip', false, function(p1593)
    _G.BuyChip = p1593
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.BuyChip and not (game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Special Microchip') and game:GetService('Players').LocalPlayer.Character:FindFirstChild('Special Microchip')) and not game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island 1') then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('RaidsNpc', 'Select', _G.SelectChip)
            end
        end
    end)
end)
v313:Button('Buy Chip Select', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('RaidsNpc', 'Select', _G.SelectChip)
end)
v313:Toggle('Auto Start Go To Dungeon', false, function(p1594)
    _G.StartRaid = p1594
end)
spawn(function()
    while wait(0.1) do
        pcall(function()
            if _G.StartRaid and game:GetService('Players').LocalPlayer.PlayerGui.Main.Timer.Visible == false and (not game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island 1') and game:GetService('Players').LocalPlayer.Backpack:FindFirstChild('Special Microchip') or game:GetService('Players').LocalPlayer.Character:FindFirstChild('Special Microchip')) then
                if World2 then
                    fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                elseif World3 then
                    fireclickdetector(game:GetService('Workspace').Map['Boat Castle'].RaidSummon2.Button.Main.ClickDetector)
                end
            end
        end)
    end
end)
v313:Button('Start Go To Dungeon', function()
    if World2 then
        fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
    elseif World3 then
        fireclickdetector(game:GetService('Workspace').Map['Boat Castle'].RaidSummon2.Button.Main.ClickDetector)
    end
end)
v313:Toggle('Auto Next Island And Kill Mob', false, function(p1595)
    _G.Dungeon = p1595

    StopTween(_G.Dungeon)
end)

function IsIslandRaid(p1596)
    if game:GetService('Workspace')._WorldOrigin.Locations:FindFirstChild('Island ' .. p1596) then
        min = 4500

        local v1597, v1598, v1599 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

        while true do
            local v1600

            v1599, v1600 = v1597(v1598, v1599)

            if v1599 == nil then
                break
            end
            if v1600.Name == 'Island ' .. p1596 and (v1600.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min then
                min = (v1600.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            end
        end

        local v1601, v1602, v1603 = pairs(game:GetService('Workspace')._WorldOrigin.Locations:GetChildren())

        while true do
            local v1604

            v1603, v1604 = v1601(v1602, v1603)

            if v1603 == nil then
                break
            end
            if v1604.Name == 'Island ' .. p1596 and (v1604.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min then
                return v1604
            end
        end
    end
end
function getNextIsland()
    TableIslandsRaid = {
        5,
        4,
        3,
        2,
        1,
    }

    local v1605, v1606, v1607 = pairs(TableIslandsRaid)

    while true do
        local v1608

        v1607, v1608 = v1605(v1606, v1607)

        if v1607 == nil then
            break
        end
        if IsIslandRaid(v1608) and (IsIslandRaid(v1608).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
            return IsIslandRaid(v1608)
        end
    end
end
function attackNearbyEnemies()
    local v1609, v1610, v1611 = pairs(game:GetService('Workspace').Enemies:GetChildren())
    local v1612 = {}

    while true do
        local v1613

        v1611, v1613 = v1609(v1610, v1611)

        if v1611 == nil then
            break
        end
        if v1613:FindFirstChild('HumanoidRootPart') and (v1613:FindFirstChild('Humanoid') and (v1613.Humanoid.Health > 0 and (v1613.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000)) then
            table.insert(v1612, v1613)
        end
    end

    local v1614, v1615, v1616 = pairs(v1612)

    if false then
        return
    end

    local v1617

    v1616, v1617 = v1614(v1615, v1616)

    if v1616 == nil then
        break
    end

    while true do
        if v1617:FindFirstChild('Humanoid') and v1617.Humanoid.Health > 0 then
            EquipWeapon(_G.SelectWeapon)
            topos(v1617.HumanoidRootPart.CFrame * Pos)
            wait(0.1)
        end
        if not v1617:FindFirstChild('Humanoid') or v1617.Humanoid.Health <= 0 then
        end
    end
end

spawn(function()
    while wait() do
        if _G.Dungeon then
            attackNearbyEnemies()

            if getNextIsland() then
                spawn(topos(getNextIsland().CFrame * CFrame.new(0, 60, 0)), 1)
            end
        end
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.Kill_Aura then
                local vu1618 = game:GetService('Players').LocalPlayer
                local v1619 = game:GetService('Workspace').Enemies:GetChildren()
                local v1620 = vu1618.Character and vu1618.Character:FindFirstChild('HumanoidRootPart')

                if v1620 then
                    v1620 = vu1618.Character.HumanoidRootPart.Position
                end
                if v1620 then
                    local v1621, v1622, v1623 = pairs(v1619)

                    while true do
                        local vu1624

                        v1623, vu1624 = v1621(v1622, v1623)

                        if v1623 == nil then
                            break
                        end
                        if vu1624:FindFirstChild('Humanoid') and (vu1624:FindFirstChild('HumanoidRootPart') and (vu1624.Humanoid.Health > 0 and (vu1624.HumanoidRootPart.Position - v1620).Magnitude <= 1000)) then
                            pcall(function()
                                repeat
                                    wait()
                                    sethiddenproperty(vu1618, 'SimulationRadius', math.huge)

                                    vu1624.Humanoid.Health = 0
                                    vu1624.HumanoidRootPart.CanCollide = false
                                until not _G.Kill_Aura or (not vu1624.Parent or vu1624.Humanoid.Health <= 0)
                            end)
                        end
                    end
                end
            end
        end
    end)
end)
v313:Toggle('Auto Awakener', false, function(p1625)
    _G.Awakener = p1625
end)
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Awakener then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Awakener', 'Check')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Awakener', 'Awaken')
            end
        end
    end)
end)

if World2 then
    v313:Button('Teleport to Lab', function()
        topos(CFrame.new(-6438.73535, 250.645355, -4501.50684))
    end)
elseif World3 then
    v313:Button('Teleport to Lab', function()
        topos(CFrame.new(-11571.440429688, 49.172668457031, -7574.7368164062))
    end)
end
if World2 then
    v313:Seperator('Misc KoKo Sword')
    v313:Toggle('Auto Law', false, function(p1626)
        _G.OderSword = p1626

        StopTween(_G.OderSword)
    end)
    v313:Toggle('Auto Law Hop', false, function(p1627)
        _G.OderSwordHop = p1627
    end)
    spawn(function()
        while wait() do
            if _G.OderSword then
                pcall(function()
                    if game:GetService('Workspace').Enemies:FindFirstChild('Order') then
                        local v1628, v1629, v1630 = pairs(game:GetService('Workspace').Enemies:GetChildren())

                        while true do
                            local v1631

                            v1630, v1631 = v1628(v1629, v1630)

                            if v1630 == nil then
                                break
                            end
                            if v1631.Name == 'Order' and (v1631:FindFirstChild('Humanoid') and (v1631:FindFirstChild('HumanoidRootPart') and v1631.Humanoid.Health > 0)) then
                                repeat
                                    task.wait()
                                    EquipWeapon(_G.SelectWeapon)

                                    v1631.HumanoidRootPart.CanCollide = false
                                    v1631.Humanoid.WalkSpeed = 0

                                    TP2(v1631.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
                                until not _G.OderSword or (not v1631.Parent or v1631.Humanoid.Health <= 0)
                            end
                        end
                    elseif game:GetService('ReplicatedStorage'):FindFirstChild('Order [Lv. 1250] [Raid Boss]') then
                        topos(game:GetService('ReplicatedStorage'):FindFirstChild('Order [Lv. 1250] [Raid Boss]').HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    elseif _G.OderSwordHop then
                        Hop()
                    end
                end)
            end
        end
    end)
    v313:Button('Buy Microchip Law Boss', function()
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
            'BlackbeardReward',
            'Microchip',
            '2',
        }))
    end)
    v313:Button('Start Go To Raid Law Boss', function()
        if World2 then
            fireclickdetector(game:GetService('Workspace').Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
        end
    end)
end

v314:Seperator('World')
v314:Button('Teleport To Old World', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelMain')
end)
v314:Button('Teleport To Second Sea', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelDressrosa')
end)
v314:Button('Teleport To Third Sea', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('TravelZou')
end)
v314:Seperator('Island')

if World1 then
    v314:Dropdown('Select Island', {
        'WindMill',
        'Marine',
        'Middle Town',
        'Jungle',
        'Pirate Village',
        'Desert',
        'Snow Island',
        'MarineFord',
        'Colosseum',
        'Sky Island 1',
        'Sky Island 2',
        'Sky Island 3',
        'Prison',
        'Magma Village',
        'Under Water Island',
        'Fountain City',
    }, false, function(p1632)
        _G.SelectIsland = p1632
    end)
end
if World2 then
    v314:Dropdown('Select Island', {
        'The Cafe',
        'Frist Spot',
        'Dark Area',
        'Flamingo Mansion',
        'Flamingo Room',
        'Green Zone',
        'Zombie Island',
        'Two Snow Mountain',
        'Punk Hazard',
        'Cursed Ship',
        'Ice Castle',
        'Forgotten Island',
        'Ussop Island',
    }, false, function(p1633)
        _G.SelectIsland = p1633
    end)
end
if World3 then
    v314:Dropdown('Select Island', {
        'Mansion',
        'Port Town',
        'Great Tree',
        'Castle On The Sea',
        'Hydra Island',
        'Floating Turtle',
        'Haunted Castle',
        'Ice Cream Island',
        'Peanut Island',
        'Cake Island',
        'Candy Cane Island',
        'Tiki Outpost',
    }, false, function(p1634)
        _G.SelectIsland = p1634
    end)
end

v314:Toggle('Teleport', false, function(p1635)
    _G.TeleportIsland = p1635

    if _G.TeleportIsland ~= true then
        StopTween(_G.TeleportIsland)

        return
    else
        while true do
            if true then
                wait()

                if _G.SelectIsland ~= 'Middle Town' then
                    if _G.SelectIsland ~= 'MarineFord' then
                        if _G.SelectIsland ~= 'Marine' then
                            if _G.SelectIsland ~= 'WindMill' then
                                if _G.SelectIsland ~= 'Desert' then
                                    if _G.SelectIsland ~= 'Snow Island' then
                                        if _G.SelectIsland ~= 'Pirate Village' then
                                            if _G.SelectIsland ~= 'Jungle' then
                                                if _G.SelectIsland ~= 'Prison' then
                                                    if _G.SelectIsland ~= 'Under Water Island' then
                                                        if _G.SelectIsland ~= 'Colosseum' then
                                                            if _G.SelectIsland ~= 'Magma Village' then
                                                                if _G.SelectIsland ~= 'Sky Island 1' then
                                                                    if _G.SelectIsland ~= 'Sky Island 2' then
                                                                        if _G.SelectIsland ~= 'Sky Island 3' then
                                                                            if _G.SelectIsland ~= 'Fountain City' then
                                                                                if _G.SelectIsland ~= 'The Cafe' then
                                                                                    if _G.SelectIsland ~= 'Frist Spot' then
                                                                                        if _G.SelectIsland ~= 'Dark Area' then
                                                                                            if _G.SelectIsland ~= 'Flamingo Mansion' then
                                                                                                if _G.SelectIsland ~= 'Flamingo Room' then
                                                                                                    if _G.SelectIsland ~= 'Green Zone' then
                                                                                                        if _G.SelectIsland ~= 'Zombie Island' then
                                                                                                            if _G.SelectIsland ~= 'Two Snow Mountain' then
                                                                                                                if _G.SelectIsland ~= 'Punk Hazard' then
                                                                                                                    if _G.SelectIsland ~= 'Cursed Ship' then
                                                                                                                        if _G.SelectIsland ~= 'Ice Castle' then
                                                                                                                            if _G.SelectIsland ~= 'Forgotten Island' then
                                                                                                                                if _G.SelectIsland ~= 'Ussop Island' then
                                                                                                                                    if _G.SelectIsland ~= 'Mansion' then
                                                                                                                                        if _G.SelectIsland ~= 'Port Town' then
                                                                                                                                            if _G.SelectIsland ~= 'Castle On The Sea' then
                                                                                                                                                if _G.SelectIsland ~= 'Hydra Island' then
                                                                                                                                                    if _G.SelectIsland ~= 'Great Tree' then
                                                                                                                                                        if _G.SelectIsland ~= 'Floating Turtle' then
                                                                                                                                                            if _G.SelectIsland ~= 'Haunted Castle' then
                                                                                                                                                                if _G.SelectIsland ~= 'Ice Cream Island' then
                                                                                                                                                                    if _G.SelectIsland ~= 'Peanut Island' then
                                                                                                                                                                        if _G.SelectIsland ~= 'Cake Island' then
                                                                                                                                                                            if _G.SelectIsland ~= 'Candy Cane Island' then
                                                                                                                                                                                if _G.SelectIsland == 'Tiki Outpost' then
                                                                                                                                                                                    topos(CFrame.new(-16224, 9, 439))
                                                                                                                                                                                end
                                                                                                                                                                            else
                                                                                                                                                                                topos(CFrame.new(-1038, 10, -14076))
                                                                                                                                                                            end
                                                                                                                                                                        else
                                                                                                                                                                            topos(CFrame.new(-1897, 14, -11576))
                                                                                                                                                                        end
                                                                                                                                                                    else
                                                                                                                                                                        topos(CFrame.new(-2062, 50, -10232))
                                                                                                                                                                    end
                                                                                                                                                                else
                                                                                                                                                                    topos(CFrame.new(-902, 79, -10988))
                                                                                                                                                                end
                                                                                                                                                            else
                                                                                                                                                                topos(CFrame.new(-9517, 142, 5528))
                                                                                                                                                            end
                                                                                                                                                        else
                                                                                                                                                            topos(CFrame.new(-12528, 332, -8658))
                                                                                                                                                        end
                                                                                                                                                    else
                                                                                                                                                        topos(CFrame.new(2681, 1682, -7190))
                                                                                                                                                    end
                                                                                                                                                else
                                                                                                                                                    topos(CFrame.new(5290, 1005, 392))
                                                                                                                                                end
                                                                                                                                            else
                                                                                                                                                topos(CFrame.new(-5073, 315, -3153))
                                                                                                                                            end
                                                                                                                                        else
                                                                                                                                            topos(CFrame.new(-339, 21, 5555))
                                                                                                                                        end
                                                                                                                                    else
                                                                                                                                        topos(CFrame.new(-12471, 374, -7551))
                                                                                                                                    end
                                                                                                                                else
                                                                                                                                    topos(CFrame.new(4816, 8, 2863))
                                                                                                                                end
                                                                                                                            else
                                                                                                                                topos(CFrame.new(-3050, 240, -10178))
                                                                                                                            end
                                                                                                                        else
                                                                                                                            topos(CFrame.new(5505, 40, -6178))
                                                                                                                        end
                                                                                                                    else
                                                                                                                        topos(CFrame.new(919, 125, 32869))
                                                                                                                    end
                                                                                                                else
                                                                                                                    topos(CFrame.new(-5897, 18, -5096))
                                                                                                                end
                                                                                                            else
                                                                                                                topos(CFrame.new(752, 408, -5277))
                                                                                                            end
                                                                                                        else
                                                                                                            topos(CFrame.new(-5552, 194, -776))
                                                                                                        end
                                                                                                    else
                                                                                                        topos(CFrame.new(-2258, 73, -2696))
                                                                                                    end
                                                                                                else
                                                                                                    topos(CFrame.new(2285, 15, 905))
                                                                                                end
                                                                                            else
                                                                                                topos(CFrame.new(-317, 331, 597))
                                                                                            end
                                                                                        else
                                                                                            topos(CFrame.new(3494, 13, -3259))
                                                                                        end
                                                                                    else
                                                                                        topos(CFrame.new(-11, 29, 2771))
                                                                                    end
                                                                                else
                                                                                    topos(CFrame.new(-382, 73, 290))
                                                                                end
                                                                            else
                                                                                topos(CFrame.new(5128, 60, 4106))
                                                                            end
                                                                        else
                                                                            topos(CFrame.new(-7895, 5547, -380))
                                                                        end
                                                                    else
                                                                        topos(CFrame.new(-4652, 873, -1754))
                                                                    end
                                                                else
                                                                    topos(CFrame.new(-4814, 718, -2551))
                                                                end
                                                            else
                                                                topos(CFrame.new(-5290, 9, 8349))
                                                            end
                                                        else
                                                            topos(CFrame.new(-1535, 7, -3014))
                                                        end
                                                    else
                                                        topos(CFrame.new(61164, 5, 1820))
                                                    end
                                                else
                                                    topos(CFrame.new(4870, 6, 736))
                                                end
                                            else
                                                topos(CFrame.new(-1614, 37, 146))
                                            end
                                        else
                                            topos(CFrame.new(-1173, 45, 3837))
                                        end
                                    else
                                        topos(CFrame.new(1298, 87, -1344))
                                    end
                                else
                                    topos(CFrame.new(945, 21, 4375))
                                end
                            else
                                topos(CFrame.new(889, 17, 1434))
                            end
                        else
                            topos(CFrame.new(-2728, 25, 2056))
                        end
                    else
                        topos(CFrame.new(-4810, 21, 4359))
                    end
                else
                    topos(CFrame.new(-688, 15, 1585))
                end
            end
            if not _G.TeleportIsland then
            end
        end
    end
end)
v314:Seperator('Teleport Fast')

if World1 then
    v314:Dropdown('Select Island', {
        'Sky Island 1',
        'Sky Island 2',
        'Under Water Island',
        'Under Water Island Entrace',
    }, false, function(p1636)
        _G.SelectFast = p1636
    end)
end
if World2 then
    v314:Dropdown('Select Island', {
        'Flamingo Mansion',
        'Flamingo Room',
        'Cursed Ship',
        'Zombie Island',
    }, false, function(p1637)
        _G.SelectFast = p1637
    end)
end
if World3 then
    v314:Dropdown('Select Island', {
        'Mansion',
        'Hydra Island',
        'Castle on the Sea',
        'Floating Turtle',
        'Beautiful Pirate',
    }, false, function(p1638)
        _G.SelectFast = p1638
    end)
end

v314:Toggle('Teleport Fast', false, function(p1639)
    _G.TeleFast = p1639

    if _G.TeleFast ~= true then
        return
    else
        while true do
            if true then
                wait()

                if _G.SelectFast ~= 'Sky Island 1' then
                    if _G.SelectFast ~= 'Sky Island 2' then
                        if _G.SelectFast ~= 'Under Water Island' then
                            if _G.SelectFast ~= 'Under Water Island Entrace' then
                                if _G.SelectFast ~= 'Flamingo Mansion' then
                                    if _G.SelectFast ~= 'Flamingo Room' then
                                        if _G.SelectFast ~= 'Cursed Ship' then
                                            if _G.SelectFast ~= 'Zombie Island' then
                                                if _G.SelectFast ~= 'Mansion' then
                                                    if _G.SelectFast ~= 'Hydra Island' then
                                                        if _G.SelectFast ~= 'Castle on the Sea' then
                                                            if _G.SelectFast ~= 'Floating Turtle' then
                                                                if _G.SelectFast == 'Beautiful Pirate' then
                                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5319, 23, -93))
                                                                end
                                                            else
                                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-12001, 332, -8861))
                                                            end
                                                        else
                                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-5092, 315, -3130))
                                                        end
                                                    else
                                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(5662, 1013, -335))
                                                    end
                                                else
                                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-12471, 374, -7551))
                                                end
                                            else
                                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-6509, 83, -133))
                                            end
                                        else
                                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(923, 125, 32853))
                                        end
                                    else
                                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(2283, 15, 867))
                                    end
                                else
                                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-317, 331, 597))
                                end
                            else
                                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(3865, 5, -1926))
                            end
                        else
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(61164, 5, 1820))
                        end
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-7895, 5547, -380))
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('requestEntrance', Vector3.new(-4652, 873, -1754))
                end
            end
            if not _G.TeleFast then
            end
        end
    end
end)
v315:Seperator('Abilities')
v315:Button('Buy Geppo', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Geppo')
end)
v315:Button('Buy Buso Haki', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Buso')
end)
v315:Button('Buy Soru', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Soru')
end)
v315:Button('Buy Observation Haki', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('KenTalk', 'Buy')
end)
v315:Toggle('Auto Buy Abilities', false, function(p1640)
    Abilities = p1640

    while Abilities do
        wait(0.1)
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Geppo')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Buso')
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyHaki', 'Soru')
    end
end)
v315:Seperator('Fighting Style')
v315:Button('Buy Black Leg', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyBlackLeg')
end)
v315:Button('Buy Electro', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectro')
end)
v315:Button('Buy Fishman Karate', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyFishmanKarate')
end)
v315:Button('Buy Dragon Claw', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '1')
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '2')
end)
v315:Button('Buy Superhuman', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySuperhuman')
end)
v315:Button('Buy Death Step', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDeathStep')
end)
v315:Button('Buy Sharkman Karate', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate', true)
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySharkmanKarate')
end)
v315:Button('Buy Electric Claw', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyElectricClaw')
end)
v315:Button('Buy Dragon Talon', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyDragonTalon')
end)
v315:Button('Buy God Human', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyGodhuman')
end)
v315:Button('Buy Sanguine Art', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySanguineArt', true)
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuySanguineArt')
end)
v315:Seperator('Sword')
v315:Button('Cutlass', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Cutlass')
end)
v315:Button('Katana', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Katana')
end)
v315:Button('Iron Mace', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Iron Mace')
end)
v315:Button('Dual Katana', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Duel Katana')
end)
v315:Button('Triple Katana', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Triple Katana')
end)
v315:Button('Pipe', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Pipe')
end)
v315:Button('Dual-Headed Blade', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Dual-Headed Blade')
end)
v315:Button('Bisento', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Bisento')
end)
v315:Button('Soul Cane', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Soul Cane')
end)
v315:Button('Pole v.2', function()
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer('ThunderGodTalk')
end)
v315:Seperator('Gun')
v315:Button('Slingshot', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Slingshot')
end)
v315:Button('Musket', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Musket')
end)
v315:Button('Flintlock', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Flintlock')
end)
v315:Button('Refined Slingshot', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Refined Flintlock')
end)
v315:Button('Refined Flintlock', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Refined Flintlock')
end)
v315:Button('Cannon', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Cannon')
end)
v315:Button('Kabucha', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Slingshot', '1')
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Slingshot', '2')
end)
v315:Button('Bizarre Rifle', function()
    local v1641 = game:GetService('ReplicatedStorage').Remotes.CommF_

    v1641:InvokeServer('Ectoplasm', 'Buy', 1)
    v1641:InvokeServer('Ectoplasm', 'Buy', 1)
end)
v315:Seperator('Accessories')
v315:Button('Black Cape', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Black Cape')
end)
v315:Button('Swordsman Hat', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Swordsman Hat')
end)
v315:Button('Tomoe Ring', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BuyItem', 'Tomoe Ring')
end)
v315:Seperator('Player')
v315:Button('Reset Stats', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', '1')
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Refund', '2')
end)
v315:Button('Random Race', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Reroll', '1')
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('BlackbeardReward', 'Reroll', '2')
end)
v315:Button('Buy Ghoul', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Ectoplasm', 'BuyCheck', 4)
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Ectoplasm', 'Change', 4)
end)
v315:Button('Buy Cyborg', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('CyborgTrainer', 'Buy')
end)
v316:Seperator('Sniper')

local v1642 = game.ReplicatedStorage:FindFirstChild('Remotes').CommF_:InvokeServer('GetFruits')

Table_DevilFruitSniper = {}
ShopDevilSell = {}

local v1643 = next
local v1644 = nil

while true do
    local v1645

    v1644, v1645 = v1643(v1642, v1644)

    if v1644 == nil then
        break
    end

    table.insert(Table_DevilFruitSniper, v1645.Name)

    if v1645.OnSale then
        table.insert(ShopDevilSell, v1645.Name)
    end
end

v316:Dropdown('Select Fruits Sniper', Table_DevilFruitSniper, false, function(p1646)
    _G.SelectFruit = p1646
end)
v316:Toggle('Auto Buy Fruit Sniper', false, function(p1647)
    _G.BuyFruitSniper = p1647
end)
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.BuyFruitSniper then
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('GetFruits')
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('PurchaseRawFruit', '_G.SelectFruit', false)
            end
        end
    end)
end)
v316:Seperator('Others')
v316:Button('Random Fruit', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('Cousin', 'Buy')
end)
v316:Seperator('Mirage Fruit Stock')

local v1648 = game:GetService('ReplicatedStorage').Remotes.CommF_
local v1649 = v1648:InvokeServer('GetFruits', true)
local v1650 = v1648:InvokeServer('GetFruits')
local v1651, v1652, v1653 = pairs(v1649)

local function v1657(p1654)
    local v1655 = tostring(p1654)

    repeat
        local v1656

        v1655, v1656 = v1655:gsub('^(-?%d+)(%d%d%d)', '%1,%2')
        k = v1656
    until k == 0

    return v1655
end

local v1658 = {}
local v1659 = {}

while true do
    local v1660

    v1653, v1660 = v1651(v1652, v1653)

    if v1653 == nil then
        break
    end
    if v1660.OnSale == true then
        local v1661 = v1657(v1660.Price)
        local v1662 = v1660.Name .. ' - $' .. v1661

        table.insert(v1658, v1662)
        v316:Label(tostring(v1662))
    end
end

v316:Seperator('Normal Fruit Stock')

local v1663, v1664, v1665 = pairs(v1650)

while true do
    local v1666

    v1665, v1666 = v1663(v1664, v1665)

    if v1665 == nil then
        break
    end
    if v1666.OnSale == true then
        local v1667 = v1657(v1666.Price)
        local v1668 = v1666.Name .. ' - $' .. v1667

        table.insert(v1659, v1668)
        v316:Label(tostring(v1668))
    end
end

v316:Toggle('Auto Store Fruit', false, function(p1669)
    _G.StoreFruit = p1669
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.StoreFruit then
                local v1670, v1671, v1672 = pairs(game:GetService('Players').LocalPlayer.Backpack:GetChildren())

                while true do
                    local v1673

                    v1672, v1673 = v1670(v1671, v1672)

                    if v1672 == nil then
                        break
                    end
                    if string.find(v1673.Name, 'Fruit') then
                        local v1674 = v1673.Name
                        local v1675 = string.gsub(v1673.Name, ' Fruit', '')

                        if game:GetService('Players').LocalPlayer.Backpack:FindFirstChild(v1674) then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('StoreFruit', v1675 .. '-' .. v1675, game:GetService('Players').LocalPlayer.Backpack:FindFirstChild(v1674))
                        end
                    end
                end
            end
        end)
    end
end)
v316:Toggle('Bring to Fruit', false, function(p1676)
    _G.Grabfruit = p1676
end)
v316:Toggle('Tween to Fruit', false, function(p1677)
    _G.Tweenfruit = p1677

    StopTween(_G.Tweenfruit)
end)
spawn(function()
    while wait(0.1) do
        local v1678, v1679, v1680 = ipairs(game.Workspace:GetChildren())

        while true do
            local v1681

            v1680, v1681 = v1678(v1679, v1680)

            if v1680 == nil then
                break
            end
            if v1681:IsA('Tool') and v1681:FindFirstChild('Handle') then
                if _G.Grabfruit then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1681.Handle.CFrame
                elseif _G.Tweenfruit then
                    topos(v1681.Handle.CFrame)
                end
            end
        end
    end
end)
v317:Seperator('Server')
v317:Button('Rejoin Server', function()
    game:GetService('TeleportService'):Teleport(game.PlaceId, game:GetService('Players').LocalPlayer)
end)
v317:Button('Server Hop', function()
    Hop()
end)
v317:Button('Hop To Lower Player', function()
    Hop()
end)
v317:Button('Copy Job Id', function()
    setclipboard(tostring(game.JobId))
end)
v317:Textbox('Input Job Id', true, function(p1682)
    _G.Job = p1682
end)
v317:Button('Join Sever', function()
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer)
end)
v317:Seperator('Misc')
v317:Button('Title Name', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer(unpack({
        'getTitles',
    }))

    game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
end)
v317:Button('Color Haki', function()
    game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
end)
v317:Seperator('Teams')
v317:Button('Join Pirates Team', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Pirates')
end)
v317:Button('Join Marines Team', function()
    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('SetTeam', 'Marines')
end)
v317:Seperator('Codes')

local vu1683 = {
    'NOMOREHACK',
    'BANEXPLOIT',
    'WildDares',
    'BossBuild',
    'GetPranked',
    'EARN_FRUITS',
    'FIGHT4FRUIT',
    'NOEXPLOITER',
    'NOOB2ADMIN',
    'CODESLIDE',
    'ADMINHACKED',
    'ADMINDARES',
    'fruitconcepts',
    'krazydares',
    'TRIPLEABUSE',
    'SEATROLLING',
    '24NOADMIN',
    'REWARDFUN',
    'Chandler',
    'NEWTROLL',
    'KITT_RESET',
    'Sub2CaptainMaui',
    'kittgaming',
    'Sub2Fer999',
    'Enyu_is_Pro',
    'Magicbus',
    'JCWK',
    'Starcodeheo',
    'Bluxxy',
    'fudd10_v2',
    'SUB2GAMERROBOT_EXP1',
    'Sub2NoobMaster123',
    'Sub2UncleKizaru',
    'Sub2Daigrock',
    'Axiore',
    'TantaiGaming',
    'StrawHatMaine',
    'Sub2OfficialNoobie',
    'Fudd10',
    'Bignews',
    'TheGreatAce',
    'SECRET_ADMIN',
    'SUB2GAMERROBOT_RESET1',
    'SUB2OFFICIALNOOBIE',
    'AXIORE',
    'BIGNEWS',
    'BLUXXY',
    'CHANDLER',
    'ENYU_IS_PRO',
    'FUDD10',
    'FUDD10_V2',
    'KITTGAMING',
    'MAGICBUS',
    'STARCODEHEO',
    'STRAWHATMAINE',
    'SUB2CAPTAINMAUI',
    'SUB2DAIGROCK',
    'SUB2FER999',
    'SUB2NOOBMASTER123',
    'SUB2UNCLEKIZARU',
    'TANTAIGAMING',
    'THEGREATACE',
}

v317:Button('Redeem All Codes', function()
    function RedeemCode(p1684)
        game:GetService('ReplicatedStorage').Remotes.Redeem:InvokeServer(p1684)
    end

    local v1685, v1686, v1687 = pairs(vu1683)

    while true do
        local v1688

        v1687, v1688 = v1685(v1686, v1687)

        if v1687 == nil then
            break
        end

        RedeemCode(v1688)
    end
end)
v317:Seperator('State')
v317:Dropdown('Select Haki State', {
    'State 0',
    'State 1',
    'State 2',
    'State 3',
    'State 4',
    'State 5',
}, false, function(p1689)
    _G.SelectStateHaki = p1689
end)
v317:Button('Change Buso Haki State', function()
    if _G.SelectStateHaki ~= 'State 0' then
        if _G.SelectStateHaki ~= 'State 1' then
            if _G.SelectStateHaki ~= 'State 2' then
                if _G.SelectStateHaki ~= 'State 3' then
                    if _G.SelectStateHaki ~= 'State 4' then
                        if _G.SelectStateHaki == 'State 5' then
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ChangeBusoStage', 5)
                        end
                    else
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ChangeBusoStage', 4)
                    end
                else
                    game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ChangeBusoStage', 3)
                end
            else
                game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ChangeBusoStage', 2)
            end
        else
            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ChangeBusoStage', 1)
        end
    else
        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer('ChangeBusoStage', 0)
    end
end)
Notify('Xeter Hub', 'Loading Done!', 3)
