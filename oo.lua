---- LINE: 3000+
---- LAST EDITED

print("Apex OT executed! expect 2s to load fully.")
print("Detecting the game...")
print("Game Detected! [ BROOKHAVEN RP ]")
print("Detecting your executor...")
print("...")
print("...")
print("...")
print("Executor has been detected! Go to Info Tab to see what executor are you using.")
print("Join: discord.gg/wDMPK3QAmY")
print("Found some bugs? Just reset your character or report it to our community server.")

-- Services / Service nganiiii~
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local lp = Players.LocalPlayer


-- Function that creates the loading screen and returns a promise
local function createLoadingScreen()
    local promise = {}
    promise.completed = false
    promise.connection = nil
    
    -- Remove GUI antiga se existir
    pcall(function()
        if CoreGui:FindFirstChild("LoadingScreen") then
            CoreGui.LoadingScreen:Destroy()
        end
    end)

    -- Cria a UI de carregamento
    local gui = Instance.new("ScreenGui")
    gui.Name = "LoadingScreen"
    gui.IgnoreGuiInset = true
    gui.ResetOnSpawn = false
    gui.Parent = CoreGui
    pcall(function() syn.protect_gui(gui) end)

    local frame = Instance.new("Frame")
    frame.BackgroundColor3 = Color3.new(0, 0, 0)
    frame.BackgroundTransparency = 0.3
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.Parent = gui

    local image = Instance.new("ImageLabel")
    image.Size = UDim2.new(0, 300, 0, 300)
    image.Position = UDim2.new(0.5, -150, 0.35, -150)
    image.BackgroundTransparency = 1
    image.Image = "rbxassetid://93787935669608"
    image.Parent = frame

    local nameText = Instance.new("TextLabel")
    nameText.Size = UDim2.new(1, 0, 0, 40)
    nameText.Position = UDim2.new(0, 0, 0.65, 0)
    nameText.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameText.TextStrokeTransparency = 0.3
    nameText.BackgroundTransparency = 1
    nameText.Font = Enum.Font.FredokaOne
    nameText.TextScaled = true
    nameText.Text = "التحقق من الاعب: "..lp.Name.." | الانتظار..."
    nameText.Parent = frame

    local barBG = Instance.new("Frame")
    barBG.Size = UDim2.new(0.6, 0, 0.03, 0)
    barBG.Position = UDim2.new(0.2, 0, 0.8, 0)
    barBG.BackgroundColor3 = Color3.new(1, 1, 1)
    barBG.BorderSizePixel = 0
    barBG.Parent = frame

    local bar = Instance.new("Frame")
    bar.Size = UDim2.new(0, 0, 1, 0)
    bar.BackgroundColor3 = Color3.new(0.7, 0.2, 0.6)
    bar.BorderSizePixel = 0
    bar.Parent = barBG

    -- Animação da barra de carregamento
    local tween = TweenService:Create(
        bar,
        TweenInfo.new(4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {Size = UDim2.new(1, 0, 1, 0)}
    )
    tween:Play()

    -- Função para limpar a UI
    local function cleanup()
        if gui then
            gui:Destroy()
        end
        if promise.connection then
            promise.connection:Disconnect()
        end
    end

    -- Após a barra carregar, faz o fade out e destrói a UI
    promise.connection = tween.Completed:Connect(function()
        -- Fade out suave da UI
        TweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
        TweenService:Create(barBG, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
        TweenService:Create(bar, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
        TweenService:Create(image, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()
        TweenService:Create(nameText, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
        
        -- Aguarda o fade out terminar
        task.delay(1.2, function()
            -- Toca som de conclusão
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://8486683243"
            sound.Volume = 0.5
            sound.PlayOnRemove = true
            sound.Parent = workspace
            sound:Destroy()
            
            -- Exibe a notificação de boas-vindas
            StarterGui:SetCore("SendNotification", {
                Title = "DR4V3X ON TOP",
                Text = "مرحبا بكم في سكربت DR4V3X! ",
                Duration = 5
            })
            
            -- Marca como concluído e limpa
            promise.completed = true
            cleanup()
        end)
    end)
    
    return promise
end

-- Função para esperar até que a promise seja resolvida
local function waitForPromise(promise)
    while not promise.completed do
        task.wait()
    end
end

-- Uso:
local loadingPromise = createLoadingScreen()

-- Aqui você coloca o código que deve esperar até que o loading termine
waitForPromise(loadingPromise)

-- SEU CÓDIGO ABAIXO AQUI
print("----------------------------------------------------------")
print("Loading complete! Now running the script...")
print("Loaded successfully! Enjoy using our script!")

-- ... resto do seu código ...

local Libary = loadstring(game:HttpGet("https://raw.githubusercontent.com/cubodegelo1116/ui/refs/heads/main/ui"))()

  Libary:SetTheme("c00l")

workspace.FallenPartsDestroyHeight = -math.huge



local Window = Libary:MakeWindow({
    Title = "DR4V3X HUB",
    SubTitle = "        BROOKHAVEN RP| by DR4V3X",
    LoadText = "Loading DR4V3X HUB",
    Flags = "DR4V3XHUB_Broookhaven"
})



Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://77996083279350", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(35, 1) },
})

	local Tab = Window:MakeTab({ Title = "القائمه", Icon = "rbxassetid://15309138473" })
	
	Tab:AddDiscordInvite({
    Name = "",
    Description = "",
    Logo = "rbxassetid://",
    Invite = "",
})

local Section = Tab:AddSection({
    Name = "السيرفر"
})

Tab:AddButton({
    Name = "اعاده الدخول للسيرفر",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
    end
})

Tab:AddButton({
    Name = "دخول سيرفر عشوائي",
    Callback = function()
        local HttpService = game:GetService("HttpService")
        local TeleportService = game:GetService("TeleportService")
        local LocalPlayer = game:GetService("Players").LocalPlayer
        local PlaceId = game.PlaceId

        local function serverRequest(url)
            if http_request then
                return http_request({Url = url, Method = "GET"})
            elseif syn and syn.request then
                return syn.request({Url = url, Method = "GET"})
            elseif fluxus and fluxus.request then
                return fluxus.request({Url = url, Method = "GET"})
            elseif request then
                return request({Url = url, Method = "GET"})
            else
                warn("Exploit não suporta http_request.")
                return nil
            end
        end

        local function GetServers()
            local url = "https://games.roblox.com/v1/games/" .. PlaceId .. "/servers/Public?limit=100"
            local data = serverRequest(url)
            if not data then return {} end

            local body = data.Body or data.body
            local decoded = HttpService:JSONDecode(body)
            local servers = {}

            for _, server in pairs(decoded.data or {}) do
                if server.playing < server.maxPlayers and server.id ~= game.JobId then
                    table.insert(servers, server.id)
                end
            end
            return servers
        end

        local servers = GetServers()
        if #servers > 0 then
            local chosen = servers[math.random(1, #servers)]
            TeleportService:TeleportToPlaceInstance(PlaceId, chosen, LocalPlayer)
        else
            warn("Nenhum servidor diferente encontrado.")
        end
    end
})

local Section = Tab:AddSection({
    Name = "اخرى"
})

Tab:AddButton({
    Name = "فتح ال console",
    Callback = function()
        local StarterGui = game:GetService("StarterGui")
        pcall(function()
            StarterGui:SetCore("DevConsoleVisible", true)
        end)
    end
})

local Tab = Window:MakeTab({"الاعب", "user"})

local Section = Tab:AddSection({
    Name = "السرعه، القفز، الجاذبيه"
})

Tab:AddTextBox({
    Name = "سرعه الاعب",
    PlaceholderText = "ادخل مدى السرعه",
    Callback = function(value)
        local speed = tonumber(value)
        if speed and pl.Character and pl.Character:FindFirstChild("Humanoid") then
            pl.Character.Humanoid.WalkSpeed = speed
        else
            warn("Velocidade inválida ou personagem não encontrado!")
        end
    end
})

Tab:AddButton({
    Name = "ارجاع السرعه الطبيعيه",
    Callback = function()
        if pl.Character and pl.Character:FindFirstChild("Humanoid") then
            pl.Character.Humanoid.WalkSpeed = 16
        end
    end
})

Tab:AddTextBox({
    Name = "القفز",
    PlaceholderText = "ادخل مدى القفز",
    Callback = function(value)
        local jumpHeight = tonumber(value)
        if jumpHeight and pl.Character and pl.Character:FindFirstChild("Humanoid") then
            pl.Character.Humanoid.JumpPower = jumpHeight
        else
            warn("Altura de pulo inválida ou personagem não encontrado!")
        end
    end
})

Tab:AddButton({
    Name = "ارجاع القفز الطبيعي",
    Callback = function()
        if pl.Character and pl.Character:FindFirstChild("Humanoid") then
            pl.Character.Humanoid.JumpPower = 50
        end
    end
})

Tab:AddTextBox({
    Name = "الجاذبيه",
    PlaceholderText = "ادخل مدى الجاذبيه",
    Callback = function(value)
        local gravity = tonumber(value)
        if gravity then
            workspace.Gravity = gravity
        else
            warn("Gravidade inválida!")
        end
    end
})

Tab:AddButton({
    Name = "ارجاع الجاذبيه الطبيعيه",
    Callback = function()
        workspace.Gravity = 196.2
    end
})

local Section = Tab:AddSection({
    Name = "مضاد جلوس"
})

Tab:AddToggle({
    Name = "مضاد جلوس",
    Description = "",
    Default = true,
    Callback = function(Value)
        local player = game.Players.LocalPlayer
        local connections = {}
        local runService = game:GetService("RunService")


        local function preventSitting(humanoid)
            if humanoid then
                humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                local sitConnection = humanoid.StateChanged:Connect(function(_, newState)
                    if newState == Enum.HumanoidStateType.Seated then
                        humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                    end
                end)
                table.insert(connections, sitConnection)
            end
        end


        local function monitorCharacter()
            local function onCharacterAdded(character)
                local humanoid = character:WaitForChild("Humanoid")
                preventSitting(humanoid)
            end


            local characterAddedConnection = player.CharacterAdded:Connect(onCharacterAdded)
            table.insert(connections, characterAddedConnection)


            if player.Character then
                onCharacterAdded(player.Character)
            end
        end


        local function resetSitting()
            for _, connection in ipairs(connections) do
                connection:Disconnect()
            end
            connections = {}
            local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
            end
        end


        if Value then
            monitorCharacter()
            local heartbeatConnection = runService.Heartbeat:Connect(function()
                local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                end
            end)
            table.insert(connections, heartbeatConnection)
        else
            resetSitting()
        end
    end
})

local HouseTab = Window:MakeTab({"البيت", "home"})
local SelectHouse = nil
local NoclipDoor = nil

-- Função para obter lista de casas
local function getHouseList()
    local Tabela = {}
    local lots = workspace:FindFirstChild("001_Lots")
    if lots then
        for _, House in ipairs(lots:GetChildren()) do
            if House.Name ~= "For Sale" and House:IsA("Model") then
                table.insert(Tabela, House.Name)
            end
        end
    end
    return Tabela
end

-- Função para atualizar a lista de casas
-- Crie o dropdown uma vez e guarde a referência
local houseDropdown = HouseTab:AddDropdown({
    Name = "اختار البيت",
    Options = getHouseList(),
    Default = "...",
    Callback = function(Value)
        SelectHouse = Value
        if NoclipDoor then
            NoclipDoor:Set(false)
        end
    end
})

-- Agora só atualize as opções com Set()
local function DropdownHouseUpdate()
    local Tabela = getHouseList()
    print("DropdownHouseUpdate called. Houses found:", #Tabela)
    if houseDropdown and #Tabela > 0 then
        houseDropdown:Set(Tabela)
        -- opcional: resetar valor selecionado
        houseDropdown:SetValue("...")
    else
        warn("Dropdown não encontrado ou nenhuma casa disponível.")
    end
end


-- Inicializar dropdown
pcall(DropdownHouseUpdate)

-- Botão para atualizar lista de casas
pcall(function()
    HouseTab:AddButton({
        Name = "تحديث القائمه",
        Callback = function()
            pcall(DropdownHouseUpdate)
        end
    })
end)

-- Botão para teleportar para casa
pcall(function()
    HouseTab:AddButton({
        Name = "الانتقال للبيت",
        Callback = function()
            local House = workspace["001_Lots"]:FindFirstChild(tostring(SelectHouse))
            if House and game.Players.LocalPlayer.Character then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(House.WorldPivot.Position)
            else
                print("Casa não encontrada: " .. tostring(SelectHouse))
            end
        end
    })
end)

-- Botão para teleportar para cofre
pcall(function()
    HouseTab:AddButton({
        Name = "الانتقال للخزنه",
        Callback = function()
            local House = workspace["001_Lots"]:FindFirstChild(tostring(SelectHouse))
            if House and House:FindFirstChild("HousePickedByPlayer") and game.Players.LocalPlayer.Character then
                local safe = House.HousePickedByPlayer.HouseModel:FindFirstChild("001_Safe")
                if safe then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(safe.WorldPivot.Position)
                else
                    print("Cofre não encontrado na casa: " .. tostring(SelectHouse))
                end
            else
                print("Casa não encontrada: " .. tostring(SelectHouse))
            end
        end
    })
end)

-- Toggle para atravessar porta
pcall(function()
    NoclipDoor = HouseTab:AddToggle({
        Name = "اختراق باب البيت",
        Description = "",
        Default = false,
        Callback = function(Value)
            pcall(function()
                local House = workspace["001_Lots"]:FindFirstChild(tostring(SelectHouse))
                if House and House:FindFirstChild("HousePickedByPlayer") then
                    local housepickedbyplayer = House.HousePickedByPlayer
                    local doors = housepickedbyplayer.HouseModel:FindFirstChild("001_HouseDoors")
                    if doors and doors:FindFirstChild("HouseDoorFront") then
                        for _, Base in ipairs(doors.HouseDoorFront:GetChildren()) do
                            if Base:IsA("BasePart") then
                                Base.CanCollide = not Value
                            end
                        end
                    end
                end
            end)
        end
    })
end)

-- Toggle para tocar campainha
pcall(function()
    HouseTab:AddToggle({
        Name = "رن جرس البيت",
        Description = "",
        Default = false,
        Callback = function(Value)
            getgenv().ChaosHubAutoSpawnDoorbellValue = Value
            spawn(function()
                while getgenv().ChaosHubAutoSpawnDoorbellValue do
                    local House = workspace["001_Lots"]:FindFirstChild(tostring(SelectHouse))
                    if House and House:FindFirstChild("HousePickedByPlayer") then
                        local doorbell = House.HousePickedByPlayer.HouseModel:FindFirstChild("001_DoorBell")
                        if doorbell and doorbell:FindFirstChild("TouchBell") then
                            pcall(function()
                                fireclickdetector(doorbell.TouchBell.ClickDetector)
                            end)
                        end
                    end
                    task.wait(0.5)
                end
            end)
        end
    })
end)

-- Toggle para bater na porta
pcall(function()
    HouseTab:AddToggle({
        Name = "دق باب البيت",
        Description = "",
        Default = false,
        Callback = function(Value)
            getgenv().ChaosHubAutoSpawnDoorValue = Value
            spawn(function()
                while getgenv().ChaosHubAutoSpawnDoorValue do
                    local House = workspace["001_Lots"]:FindFirstChild(tostring(SelectHouse))
                    if House and House:FindFirstChild("HousePickedByPlayer") then
                        local doors = House.HousePickedByPlayer.HouseModel:FindFirstChild("001_HouseDoors")
                        if doors and doors:FindFirstChild("HouseDoorFront") and doors.HouseDoorFront:FindFirstChild("Knock") then
                            pcall(function()
                                fireclickdetector(doors.HouseDoorFront.Knock.TouchBell.ClickDetector)
                            end)
                        end
                    end
                    task.wait(0.5)
                end
            end)
        end
    })
end)

local Section = Tab:AddSection({
	Name = "مميزات لبيتك"
})

HouseTab:AddButton({ 	Name  = "فتح و غلق الكراج", 	Callback = function()
local args = {
						[1] = "GarageDoor"
					}
					game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack(args))
end })

HouseTab:AddButton({ 	Name  = "غلق و فتح الشباك", 	Callback = function()
local args = {
						[1] = "Curtains"
					}
					game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack(args))
end })

HouseTab:AddButton({ 	Name  = "حذف البيت", 	Callback = function()
local args = {
    [1] = "PlayerSellHouse"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1eChoic1e"):FireServer(unpack(args))

end })

HouseTab:AddButton({ 	Name  = "فتح و قفل الباب", 	Callback = function()
local args = {
    [1] = "LockDoors"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack(args))

end })

-- Music Section
local MusicSection = HouseTab:AddSection({"اغاني للبيت"})

local musicIds = {
    "71373562243752", "138129019858244", "138480372357526", "122199933878670",
    "74187181906707", "82793916573031", "107421761958790", "91394092603440",
    "113198957973421", "81452315991527", "93786060174790", "74752089069476",
    "131592235762789", "132081774507495", "124394293950763", "83381647646350",
    "16190782181", "1841682637", "3148329638", "124928367733395",
    "106317184644394", "100247055114504", "107035638005233", "109351649716900",
    "84751398517083", "125259969174449", "89269071829332", "88094479399489",
    "72440232513341", "92893359226454", "111281710445018", "98677515506006",
    "105882833374061", "104541292443133", "105832154444494", "84733736048142",
    "94718473830640", "130324826943718", "123039027577735", "113312785512702",
    "139161205970637", "113768944849093", "135667903253566", "81335392002580",
    "77428091165211", "14145624031", "8080255618", "8654835474",
    "13530439502", "18841894272", "90323407842935", "136932193331774",
    "113504863495384", "1836175030", "79998949362539", "109188610023287",
    "134939857094956", "132245626038510", "124567809277408", "72591334498716",
    "76578817848504", "17422156627", "81902909302285", "130449561461006",
    "110519234838026", "106434295960535", "86271123924168", "85481949732828",
    "106476166672589", "87968531262747", "73966367524216", "137962454483542",
    "98371771055411", "111668097052966", "140095882383991", "122873874738223",
    "105461615542794"
}

local function playHouseMusic(musicId)
    if musicId and musicId ~= "" then
        local houseArgs = {
            [1] = "PickHouseMusicText",
            [2] = musicId
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack(houseArgs))
    end
end

HouseTab:AddTextBox({
    Name = "كود الاغنيه",
    PlaceholderText = "ادخل كود الاغنيه",
    Callback = function(value)
        playHouseMusic(value)
    end
})

HouseTab:AddDropdown({
    Name = "اختار الاغنيه (تحتاج لقيمباس)",
    Options = musicIds,
    Callback = function(value)
        playHouseMusic(value)
    end
})

pcall(function()
    HouseTab:AddSection({ Name = "الانتقال للبيوت" })
end)

-- Lista de casas para teletransporte
local casas = {
    ["Casa 1"] = Vector3.new(260.29, 4.37, 209.32),
    ["Casa 2"] = Vector3.new(234.49, 4.37, 228.00),
    ["Casa 3"] = Vector3.new(262.79, 21.37, 210.84),
    ["Casa 4"] = Vector3.new(229.60, 21.37, 225.40),
    ["Casa 5"] = Vector3.new(173.44, 21.37, 228.11),
    ["Casa 6"] = Vector3.new(-43, 21, -137),
    ["Casa 7"] = Vector3.new(-40, 36, -137),
    ["Casa 11"] = Vector3.new(-21, 40, 436),
    ["Casa 12"] = Vector3.new(155, 37, 433),
    ["Casa 13"] = Vector3.new(255, 35, 431),
    ["Casa 14"] = Vector3.new(254, 38, 394),
    ["Casa 15"] = Vector3.new(148, 39, 387),
    ["Casa 16"] = Vector3.new(-17, 42, 395),
    ["Casa 17"] = Vector3.new(-189, 37, -247),
    ["Casa 18"] = Vector3.new(-354, 37, -244),
    ["Casa 19"] = Vector3.new(-456, 36, -245),
    ["Casa 20"] = Vector3.new(-453, 38, -295),
    ["Casa 21"] = Vector3.new(-356, 38, -294),
    ["Casa 22"] = Vector3.new(-187, 37, -295),
    ["Casa 23"] = Vector3.new(-410, 68, -447),
    ["Casa 24"] = Vector3.new(-348, 69, -496),
    ["Casa 28"] = Vector3.new(-103, 12, 1087),
    ["Casa 29"] = Vector3.new(-730, 6, 808),
    ["Casa 30"] = Vector3.new(-245, 7, 822),
    ["Casa 31"] = Vector3.new(639, 76, -361),
    ["Casa 32"] = Vector3.new(-908, 6, -361),
    ["Casa 33"] = Vector3.new(-111, 70, -417),
    ["Casa 34"] = Vector3.new(230, 38, 569),
    ["Casa 35"] = Vector3.new(-30, 13, 2209)
}


local housenames = {}
for nome, _ in pairs(casas) do
    table.insert(housenames, nome)
end

table.sort(housenames, function(a, b)
    local numA = tonumber(a:match("%d+")) or 0
    local numB = tonumber(b:match("%d+")) or 0
    return numA < numB
end)

-- Dropdown para teletransporte
pcall(function()
    HouseTab:AddDropdown({
        Name = "اختار البيت",
        Options = housenames,
        Callback = function(casaSelecionada)
            local player = game.Players.LocalPlayer
            if player and player.Character then
                player.Character.HumanoidRootPart.CFrame = CFrame.new(casas[casaSelecionada])
            end
        end
    })
end)

-- Label após dropdown
pcall(function()
    HouseTab:AddLabel("Teleport to the House You Want")
end)

local noclipEnabled = false
local noclipConnection

local function enableNoclip()
    noclipEnabled = true
    local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()

    noclipConnection = game:GetService("RunService").Stepped:Connect(function()
        if noclipEnabled and character then
            for _, part in pairs(character:GetChildren()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        else
            if noclipConnection then
                noclipConnection:Disconnect()
                noclipConnection = nil
            end
        end
    end)
end

local function disableNoclip()
    noclipEnabled = false
    local character = game.Players.LocalPlayer.Character
    if character then
        for _, part in pairs(character:GetChildren()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
    end
    if noclipConnection then
        noclipConnection:Disconnect()
        noclipConnection = nil
    end
end

HouseTab:AddButton({
    Name = "فك البان",
    Description = "اضغط هنا لفك البان",
    Callback = function()
        local successCount = 0
        local failCount = 0
        for i = 1, 37 do
            local bannedBlockName = "BannedBlock" .. i
            local bannedBlock = Workspace:FindFirstChild(bannedBlockName, true)
            if bannedBlock then
                local success, _ = pcall(function()
                    bannedBlock:Destroy()
                end)
                if success then
                    successCount = successCount + 1
                else
                    failCount = failCount + 1
                end
            end
        end
        for _, house in pairs(Workspace:GetDescendants()) do
            if house.Name:match("BannedBlock") then
                local success, _ = pcall(function()
                    house:Destroy()
                end)
                if success then
                    successCount = successCount + 1
                else
                    failCount = failCount + 1
                end
            end
        end
        if successCount > 0 then
        end
    end
})


-- Label após Auto Unban
pcall(function()
    HouseTab:AddLabel("Automatically unbans you from the Houses")
end)

-- Seção para Casa RGB
pcall(function()
    HouseTab:AddSection({ Name = "" })
end)

-- Toggle para Casa RGB
pcall(function()
    HouseTab:AddToggle({
        Name = "تلوين البيت",
        Default = false,
        Callback = function(state)
            toggleHouseRGB(state)
        end
    })
end)

-- Label após Casa RGB
pcall(function()
    HouseTab:AddLabel("Makes your home RGB")
end)

-- Função para Auto Unban
function startAutoUnban()
    while isUnbanActive do
        pcall(function()
            for _, v in pairs(game:GetService("Workspace"):WaitForChild("001_Lots"):GetDescendants()) do
                if v.Name:match("^BannedBlock%d+$") then
                    v:Destroy()
                end
            end
        end)
        task.wait(1)
    end
end

local CarTab = Window:MakeTab({"السياره", "car"})

-- Colors for RGB
local colors = {
    Color3.new(1, 0, 0),     -- Red
    Color3.new(0, 1, 0),     -- Green
    Color3.new(0, 0, 1),     -- Blue
    Color3.new(1, 1, 0),     -- Yellow
    Color3.new(1, 0, 1),     -- Magenta
    Color3.new(0, 1, 1),     -- Cyan
    Color3.new(0.5, 0, 0.5), -- Purple
    Color3.new(1, 0.5, 0)    -- Orange
}

-- Replicated Storage Service
local replicatedStorage = game:GetService("ReplicatedStorage")
local remoteEvent = replicatedStorage:WaitForChild("RE"):WaitForChild("1Player1sCa1r")

-- RGB Color Change Logic
local isColorChanging = false
local colorChangeCoroutine = nil

local function changeCarColor()
    while isColorChanging do
        for _, color in ipairs(colors) do
            if not isColorChanging then return end
            local args = {
                [1] = "PickingCarColor",
                [2] = color
            }
            remoteEvent:FireServer(unpack(args))
            wait(1)
        end
    end
end

-- Speed V1 Section
local SpeedSection = CarTab:AddSection({"السرعه V1"})

local Speed = 50
local Turbo = 50

local function ChangeCarSpeedAndTurbo(speedValue, turboValue)
    local player = game.Players.LocalPlayer
    local car = workspace.Vehicles:FindFirstChild(player.Name .. "Car")

    if car then
        local body = car:FindFirstChild("Body").VehicleSeat
        if body then
            body.TopSpeed.Value = speedValue
            body.Turbo.Value = turboValue
            wait(0.1)
            redzlib:MakeNotification({
                Name = "DR4V3X HUB",
                Content = "Done, You can Move Now!",
                Time = 5
            })
        else
            redzlib:MakeNotification({
                Name = "Error",
                Content = "Sit in car first!",
                Time = 5
            })
        end
    else
        redzlib:MakeNotification({
            Name = "Error",
            Content = "Put a Car First!",
            Time = 5
        })
    end
end

CarTab:AddTextBox({
    Name = "السرعه",
    PlaceholderText = "50",
    Callback = function(value)
        local newSpeed = tonumber(value)
        if newSpeed then
            Speed = newSpeed
        end
    end
})

CarTab:AddTextBox({
    Name = "التيربو",
    PlaceholderText = "50",
    Callback = function(value)
        local newTurbo = tonumber(value)
        if newTurbo then
            Turbo = newTurbo
        end
    end
})

CarTab:AddTextBox({
    Name = "الدريفت",
    PlaceholderText = "50",
    Callback = function(value)
        local args = {
            [1] = "DriftingNumber",
            [2] = value
        }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Player1sCa1r"):FireServer(unpack(args))
    end
})

CarTab:AddButton({
    Name = "وضع السرعه و التيربو و الدريفت",
    Callback = function()
        ChangeCarSpeedAndTurbo(Speed, Turbo)
    end
})

-- Turbo V2 Section
local TurboSection = CarTab:AddSection({"التيربو V2"})

CarTab:AddButton({
    Name = "تيربو V2",
    Callback = function()
     local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

local voando = false
local velocidade = 30

local telaGui = Instance.new("ScreenGui", player.PlayerGui)

local function criarBotaoImagem(nome, posicao, idImagem, rotacao, acao)
    local botao = Instance.new("ImageButton", telaGui)
    botao.Size = UDim2.new(0, 60, 0, 60)
    botao.Position = posicao
    botao.BackgroundTransparency = 1
    botao.Image = "rbxassetid://" .. idImagem
    botao.Rotation = rotacao
    botao.MouseButton1Down:Connect(acao)
    return botao
end

local botaoFrente = criarBotaoImagem("BotaoFrente", UDim2.new(0, 10, 0.35, 0), "18478249606", 0, function()
    voando = true
    while voando do
        if humanoidRootPart then
            humanoidRootPart.Velocity = humanoidRootPart.CFrame.LookVector * velocidade
        end
        task.wait()
    end
end)

local botaoTras = criarBotaoImagem("BotaoTras", UDim2.new(0, 10, 0.5, 0), "18478249606", 180, function()
    voando = true
    while voando do
        if humanoidRootPart then
            humanoidRootPart.Velocity = -humanoidRootPart.CFrame.LookVector * velocidade
        end
        task.wait()
    end
end)

local botaoEsquerda = criarBotaoImagem("BotaoEsquerda", UDim2.new(1, -210, 0.3, 0), "18478249606", -90, function()
    voando = true
    while voando do
        if humanoidRootPart then
            humanoidRootPart.Velocity = -humanoidRootPart.CFrame.RightVector * velocidade
        end
        task.wait()
    end
end)

local botaoDireita = criarBotaoImagem("BotaoDireita", UDim2.new(1, -140, 0.3, 0), "18478249606", 90, function()
    voando = true
    while voando do
        if humanoidRootPart then
            humanoidRootPart.Velocity = humanoidRootPart.CFrame.RightVector * velocidade
        end
        task.wait()
    end
end)

local function pararVoo()
    voando = false
    if humanoidRootPart then
        humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
    end
end

botaoFrente.MouseButton1Up:Connect(pararVoo)
botaoTras.MouseButton1Up:Connect(pararVoo)
botaoEsquerda.MouseButton1Up:Connect(pararVoo)
botaoDireita.MouseButton1Up:Connect(pararVoo)

local botaoTurbo = Instance.new("ImageButton", telaGui)
botaoTurbo.Size = UDim2.new(0, 60, 0, 60)
botaoTurbo.Position = UDim2.new(1, -130, 0, 10)
botaoTurbo.BackgroundTransparency = 1
botaoTurbo.Image = "rbxassetid://97607579386418"
botaoTurbo.MouseButton1Down:Connect(function()
    velocidade = 300
end)

-- Botão de minimizar (com "+" ou "-" dependendo do estado)
local botaoMinimizar = Instance.new("TextButton", telaGui)
botaoMinimizar.Size = UDim2.new(0, 60, 0, 60)
botaoMinimizar.Position = UDim2.new(0, 10, 0, 10)  -- Alterado para o canto superior esquerdo
botaoMinimizar.BackgroundTransparency = 1
botaoMinimizar.Text = "-"  -- Inicia com o símbolo de "-"
botaoMinimizar.TextSize = 40
botaoMinimizar.TextColor3 = Color3.fromRGB(255, 255, 255)

local botoes = {botaoFrente, botaoTras, botaoEsquerda, botaoDireita, botaoTurbo}

local minimizado = false

local function alternarBotoes()
    minimizado = not minimizado
    for _, botao in ipairs(botoes) do
        botao.Visible = not minimizado
    end
    -- Alterar o texto do botão de minimizar
    if minimizado then
        botaoMinimizar.Text = "+"
    else
        botaoMinimizar.Text = "-"
    end
end

botaoMinimizar.MouseButton1Down:Connect(alternarBotoes)    
    end
})

CarTab:AddParagraph({"ملاحظه:", "لا تحتاج لقيمباس لتشغيل هذا التيربو"})

-- Music Section
local MusicSection = CarTab:AddSection({"اغاني للسياره"})

local musicIds = {
    "71373562243752", "138129019858244", "138480372357526", "122199933878670",
    "74187181906707", "82793916573031", "107421761958790", "91394092603440",
    "113198957973421", "81452315991527", "93786060174790", "74752089069476",
    "131592235762789", "132081774507495", "124394293950763", "83381647646350",
    "16190782181", "1841682637", "3148329638", "124928367733395",
    "106317184644394", "100247055114504", "107035638005233", "109351649716900",
    "84751398517083", "125259969174449", "89269071829332", "88094479399489",
    "72440232513341", "92893359226454", "111281710445018", "98677515506006",
    "105882833374061", "104541292443133", "105832154444494", "84733736048142",
    "94718473830640", "130324826943718", "123039027577735", "113312785512702",
    "139161205970637", "113768944849093", "135667903253566", "81335392002580",
    "77428091165211", "14145624031", "8080255618", "8654835474",
    "13530439502", "18841894272", "90323407842935", "136932193331774",
    "113504863495384", "1836175030", "79998949362539", "109188610023287",
    "134939857094956", "132245626038510", "124567809277408", "72591334498716",
    "76578817848504", "17422156627", "81902909302285", "130449561461006",
    "110519234838026", "106434295960535", "86271123924168", "85481949732828",
    "106476166672589", "87968531262747", "73966367524216", "137962454483542",
    "98371771055411", "111668097052966", "140095882383991", "122873874738223",
    "105461615542794"
}

local function playCarMusic(musicId)
    if musicId and musicId ~= "" then
        local carArgs = {
            [1] = "PickingCarMusicText",
            [2] = musicId
        }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Player1sCa1r"):FireServer(unpack(carArgs))
    end
end

local function playScooterMusic(musicId)
    if musicId and musicId ~= "" then
        local scooterArgs = {
            [1] = "PickingScooterMusicText",
            [2] = musicId
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack(scooterArgs))
    end
end

local function playHouseMusic(musicId)
    if musicId and musicId ~= "" then
        local houseArgs = {
            [1] = "PickHouseMusicText",
            [2] = musicId
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack(houseArgs))
    end
end

CarTab:AddTextBox({
    Name = "كوظ الاغنيه (يحتاج لقيمباس)",
    PlaceholderText = "ادخل كود الاغنيه",
    Callback = function(value)
        playCarMusic(value)
        playScooterMusic(value)
    end
})

CarTab:AddDropdown({
    Name = "اختار الاغنيه (يحتاج لقيمباس)",
    Options = musicIds,
    Callback = function(value)
        playCarMusic(value)
        playScooterMusic(value)
    end
})

-- Car RGB Section
local RGBSection = CarTab:AddSection({"تلوين السياره"})

CarTab:AddToggle({
    Name = "تلوين السياره",
    Default = false,
    Callback = function(state)
        isColorChanging = state
        if isColorChanging then
            colorChangeCoroutine = coroutine.create(changeCarColor)
            coroutine.resume(colorChangeCoroutine)
        end
    end
})

-- Spam Horn Section
local HornSection = CarTab:AddSection({""})

local spamming = false
local args = {"Horn"}

local function spamHorn()
    while spamming do
        remoteEvent:FireServer(unpack(args))
        wait(0.1)
    end
end

CarTab:AddToggle({
    Name = "سبام الزمور",
    Default = false,
    Callback = function(value)
        spamming = value
        if spamming then
            spawn(spamHorn)
        end
    end
})

-- Fly Car Section
local FlySection = CarTab:AddSection({""})

CarTab:AddButton({
    Name = "طيران السياره",
    Callback = function()
        --by Luscaa
-- Version: 4.1

-- Instances:
local Flymguiv2 = Instance.new("ScreenGui")
local Drag = Instance.new("Frame")
local FlyFrame = Instance.new("Frame")
local ddnsfbfwewefe = Instance.new("TextButton")
local Speed = Instance.new("TextBox")
local Fly = Instance.new("TextButton")
local Speeed = Instance.new("TextLabel")
local Stat = Instance.new("TextLabel")
local Stat2 = Instance.new("TextLabel")
local Unfly = Instance.new("TextButton")
local Vfly = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local Flyon = Instance.new("Frame")
local W = Instance.new("TextButton")
local S = Instance.new("TextButton")

--Properties:

Flymguiv2.Name = "Car Fly gui v2"
Flymguiv2.Parent = game.CoreGui
Flymguiv2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Drag.Name = "Drag"
Drag.Parent = Flymguiv2
Drag.Active = true
Drag.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
Drag.BorderSizePixel = 0
Drag.Draggable = true
Drag.Position = UDim2.new(0.482438415, 0, 0.454874992, 0)
Drag.Size = UDim2.new(0, 237, 0, 27)

FlyFrame.Name = "FlyFrame"
FlyFrame.Parent = Drag
FlyFrame.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
FlyFrame.BorderSizePixel = 0
FlyFrame.Draggable = true
FlyFrame.Position = UDim2.new(-0.00200000009, 0, 0.989000022, 0)
FlyFrame.Size = UDim2.new(0, 237, 0, 139)

ddnsfbfwewefe.Name = "ddnsfbfwewefe"
ddnsfbfwewefe.Parent = FlyFrame
ddnsfbfwewefe.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
ddnsfbfwewefe.BorderSizePixel = 0
ddnsfbfwewefe.Position = UDim2.new(-0.000210968778, 0, -0.00395679474, 0)
ddnsfbfwewefe.Size = UDim2.new(0, 237, 0, 27)
ddnsfbfwewefe.Font = Enum.Font.SourceSans
ddnsfbfwewefe.Text = "الصانع: DR4V3X"
ddnsfbfwewefe.TextColor3 = Color3.fromRGB(255, 255, 255)
ddnsfbfwewefe.TextScaled = true
ddnsfbfwewefe.TextSize = 14.000
ddnsfbfwewefe.TextWrapped = true

Speed.Name = "Speed"
Speed.Parent = FlyFrame
Speed.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
Speed.BorderColor3 = Color3.fromRGB(0, 0, 191)
Speed.BorderSizePixel = 0
Speed.Position = UDim2.new(0.445025861, 0, 0.402877688, 0)
Speed.Size = UDim2.new(0, 111, 0, 33)
Speed.Font = Enum.Font.SourceSans
Speed.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
Speed.Text = "50"
Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed.TextScaled = true
Speed.TextSize = 14.000
Speed.TextWrapped = true

Fly.Name = "Fly"
Fly.Parent = FlyFrame
Fly.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
Fly.BorderSizePixel = 0
Fly.Position = UDim2.new(0.0759493634, 0, 0.705797076, 0)
Fly.Size = UDim2.new(0, 199, 0, 32)
Fly.Font = Enum.Font.SourceSans
Fly.Text = "تشغيل"
Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
Fly.TextScaled = true
Fly.TextSize = 14.000
Fly.TextWrapped = true
Fly.MouseButton1Click:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	Fly.Visible = false
	Stat2.Text = "مشغل"
	Stat2.TextColor3 = Color3.fromRGB(0, 255, 0)
	Unfly.Visible = true
	Flyon.Visible = true
	local BV = Instance.new("BodyVelocity",HumanoidRP)
	local BG = Instance.new("BodyGyro",HumanoidRP)
	BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	game:GetService('RunService').RenderStepped:connect(function()
	BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
	BG.D = 5000
	BG.P = 100000
	BG.CFrame = game.Workspace.CurrentCamera.CFrame
	end)
end)

Speeed.Name = "Speeed"
Speeed.Parent = FlyFrame
Speeed.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Speeed.BorderSizePixel = 0
Speeed.Position = UDim2.new(0.0759493634, 0, 0.402877688, 0)
Speeed.Size = UDim2.new(0, 87, 0, 32)
Speeed.ZIndex = 0
Speeed.Font = Enum.Font.SourceSans
Speeed.Text = "السرعه:"
Speeed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speeed.TextScaled = true
Speeed.TextSize = 14.000
Speeed.TextWrapped = true

Stat.Name = "Stat"
Stat.Parent = FlyFrame
Stat.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Stat.BorderSizePixel = 0
Stat.Position = UDim2.new(0.299983799, 0, 0.239817441, 0)
Stat.Size = UDim2.new(0, 85, 0, 15)
Stat.Font = Enum.Font.SourceSans
Stat.Text = "الحاله"
Stat.TextColor3 = Color3.fromRGB(255, 255, 255)
Stat.TextScaled = true
Stat.TextSize = 14.000
Stat.TextWrapped = true

Stat2.Name = "Stat2"
Stat2.Parent = FlyFrame
Stat2.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Stat2.BorderSizePixel = 0
Stat2.Position = UDim2.new(0.546535194, 0, 0.239817441, 0)
Stat2.Size = UDim2.new(0, 27, 0, 15)
Stat2.Font = Enum.Font.SourceSans
Stat2.Text = "مطفئ"
Stat2.TextColor3 = Color3.fromRGB(255, 0, 0)
Stat2.TextScaled = true
Stat2.TextSize = 14.000
Stat2.TextWrapped = true

Unfly.Name = "Unfly"
Unfly.Parent = FlyFrame
Unfly.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
Unfly.BorderSizePixel = 0
Unfly.Position = UDim2.new(0.0759493634, 0, 0.705797076, 0)
Unfly.Size = UDim2.new(0, 199, 0, 32)
Unfly.Visible = false
Unfly.Font = Enum.Font.SourceSans
Unfly.Text = "اطفاء"
Unfly.TextColor3 = Color3.fromRGB(255, 255, 255)
Unfly.TextScaled = true
Unfly.TextSize = 14.000
Unfly.TextWrapped = true
Unfly.MouseButton1Click:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	Fly.Visible = true
	Stat2.Text = "مطفئ"
	Stat2.TextColor3 = Color3.fromRGB(255, 0, 0)
	wait()
	Unfly.Visible = false
	Flyon.Visible = false
	HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
	HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
end)

Vfly.Name = "Vfly"
Vfly.Parent = Drag
Vfly.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
Vfly.BorderSizePixel = 0
Vfly.Size = UDim2.new(0, 57, 0, 27)
Vfly.Font = Enum.Font.SourceSans
Vfly.Text = "طيران السياره"
Vfly.TextColor3 = Color3.fromRGB(255, 255, 255)
Vfly.TextScaled = true
Vfly.TextSize = 14.000
Vfly.TextWrapped = true

Close.Name = "Close"
Close.Parent = Drag
Close.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.875, 0, 0, 0)
Close.Size = UDim2.new(0, 27, 0, 27)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true
Close.MouseButton1Click:Connect(function()
	Flymguiv2:Destroy()
end)

Minimize.Name = "Minimize"
Minimize.Parent = Drag
Minimize.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.75, 0, 0, 0)
Minimize.Size = UDim2.new(0, 27, 0, 27)
Minimize.Font = Enum.Font.SourceSans
Minimize.Text = "-"
Minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
Minimize.TextScaled = true
Minimize.TextSize = 14.000
Minimize.TextWrapped = true
function Mini()
	if Minimize.Text == "-" then
		Minimize.Text = "+"
		FlyFrame.Visible = false
	elseif Minimize.Text == "+" then
		Minimize.Text = "-"
		FlyFrame.Visible = true
	end
end
Minimize.MouseButton1Click:Connect(Mini)

Flyon.Name = "Fly on"
Flyon.Parent = Flymguiv2
Flyon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Flyon.BorderSizePixel = 0
Flyon.Position = UDim2.new(0.117647067, 0, 0.550284624, 0)
Flyon.Size = UDim2.new(0.148000002, 0, 0.314999998, 0)
Flyon.Visible = false
Flyon.Active = true
Flyon.Draggable = true

W.Name = "W"
W.Parent = Flyon
W.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
W.BorderSizePixel = 0
W.Position = UDim2.new(0.134719521, 0, 0.0152013302, 0)
W.Size = UDim2.new(0.708999991, 0, 0.499000013, 0)
W.Font = Enum.Font.SourceSans
W.Text = "^"
W.TextColor3 = Color3.fromRGB(255, 255, 255)
W.TextScaled = true
W.TextSize = 14.000
W.TextWrapped = true
W.TouchLongPress:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * 0
end)

W.MouseButton1Click:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * 0
end)

S.Name = "S"
S.Parent = Flyon
S.BackgroundColor3 = Color3.fromRGB(0, 150, 191)
S.BorderSizePixel = 0
S.Position = UDim2.new(0.134000003, 0, 0.479999989, 0)
S.Rotation = 180.000
S.Size = UDim2.new(0.708999991, 0, 0.499000013, 0)
S.Font = Enum.Font.SourceSans
S.Text = "^"
S.TextColor3 = Color3.fromRGB(255, 255, 255)
S.TextScaled = true
S.TextSize = 14.000
S.TextWrapped = true
S.TouchLongPress:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * 0
end)

S.MouseButton1Click:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed.Text
	wait(.1)
	HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * 0
end)
    end
})

-- Spam Cars Section
local SpamCarSection = CarTab:AddSection({"سبام سيارات"})

local carList = {
    "SchoolBus", "SmartCar", "FarmTruck", "Cadillac", "Excavator",
    "Jeep", "NascarTruck", "TowTruck", "Snowplow", "MilitaryTruck",
    "Tank", "Limo", "FireTruck"
}

local spamCarsActive = false

local function spawnCar(carName)
    local args = {
        [1] = "PickingCar",
        [2] = carName
    }
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(args))
end

CarTab:AddToggle({
    Name = "سبام سيارات",
    Default = false,
    Callback = function(state)
        spamCarsActive = state
        if spamCarsActive then
            task.spawn(function()
                while spamCarsActive do
                    for _, carName in ipairs(carList) do
                        if not spamCarsActive then break end
                        spawnCar(carName)
                        wait(0.4)
                    end
                end
            end)
        end
    end
})



-- Variáveis globais
local pl = game.Players.LocalPlayer
local players = {}

-- Função para atualizar a lista de players
local function updatePlayerList()
    players = {}
    for _, player in pairs(game.Players:GetPlayers()) do
        table.insert(players, player.Name)
    end
    return players
end

-- Inicializa a lista de players
updatePlayerList()

CarTab:AddButton({
    Name = "ازاله جميع السيارات",
    Callback = function()
        local ofnawufn = false

if ofnawufn == true then
    return
end
ofnawufn = true

local cawwfer = "MilitaryBoatFree" -- Alterado para MilitaryBoatFree
local oldcfffff = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1754, -2, 58) -- Coordenadas atualizadas
wait(0.3)

local args = {
    [1] = "PickingBoat", -- Alterado para PickingBoat
    [2] = cawwfer
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer(unpack(args))
wait(1)

local wrinfjn
for _, errb in pairs(game.workspace.Vehicles[game.Players.LocalPlayer.Name.."Car"]:GetDescendants()) do
    if errb:IsA("VehicleSeat") then
        wrinfjn = errb
    end
end

repeat
    if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then return end
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
        if not game.Players.LocalPlayer.Character.Humanoid.SeatPart == wrinfjn then
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
        end
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = wrinfjn.CFrame
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = wrinfjn.CFrame + Vector3.new(0,1,0)
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = wrinfjn.CFrame + Vector3.new(0,-1,0)
    task.wait()
until game.Players.LocalPlayer.Character.Humanoid.SeatPart == wrinfjn

for _, wifn in pairs(game.workspace.Vehicles[game.Players.LocalPlayer.Name.."Car"]:GetDescendants()) do
    if wifn.Name == "PhysicalWheel" then
        wifn:Destroy()
    end
end

local FLINGED = Instance.new("BodyThrust", game.workspace.Vehicles[game.Players.LocalPlayer.Name.."Car"].Chassis.Mass) 
FLINGED.Force = Vector3.new(50000, 0, 50000) 
FLINGED.Name = "FLING"
FLINGED.Location = game.workspace.Vehicles[game.Players.LocalPlayer.Name.."Car"].Chassis.Mass.Position

for _, wvwvwasc in pairs(game.workspace.Vehicles:GetChildren()) do
    for _, ascegr in pairs(wvwvwasc:GetDescendants()) do
        if ascegr.Name == "VehicleSeat" then
            local targetcar = ascegr
            local tet = Instance.new("BodyVelocity", game.workspace.Vehicles[game.Players.LocalPlayer.Name.."Car"].Chassis.Mass)
            tet.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            tet.P = 1250
            tet.Velocity = Vector3.new(0,0,0)
            tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"
            for m=1,25 do
                local pos = {x=0, y=0, z=0}
                pos.x = targetcar.Position.X
                pos.y = targetcar.Position.Y
                pos.z = targetcar.Position.Z
                pos.x = pos.x + targetcar.Velocity.X / 2
                pos.y = pos.y + targetcar.Velocity.Y / 2
                pos.z = pos.z + targetcar.Velocity.Z / 2
                if pos.y <= -200 then
                    game.workspace.Vehicles[game.Players.LocalPlayer.Name.."Car"].Chassis.Mass.CFrame = CFrame.new(0,1000,0)
                else
                    game.workspace.Vehicles[game.Players.LocalPlayer.Name.."Car"].Chassis.Mass.CFrame = CFrame.new(Vector3.new(pos.x,pos.y,pos.z))
                    task.wait()
                    game.workspace.Vehicles[game.Players.LocalPlayer.Name.."Car"].Chassis.Mass.CFrame = CFrame.new(Vector3.new(pos.x,pos.y,pos.z)) + Vector3.new(0,-2,0)
                    task.wait()
                    game.workspace.Vehicles[game.Players.LocalPlayer.Name.."Car"].Chassis.Mass.CFrame = CFrame.new(Vector3.new(pos.x,pos.y,pos.z)) * CFrame.new(0,0,2)
                    task.wait()
                    game.workspace.Vehicles[
game.Players.LocalPlayer.Name.."Car"].Chassis.Mass.CFrame = CFrame.new(Vector3.new(pos.x,pos.y,pos.z)) * CFrame.new(2,0,0)
                    task.wait()
                end
                task.wait()
            end
        end
    end
end

task.wait()
local args = {
    [1] = "DeleteAllVehicles"
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer(unpack(args))
game.Players.LocalPlayer.Character.Humanoid.Sit = false
wait()
local tet = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
tet.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
tet.P = 1250
tet.Velocity = Vector3.new(0,0,0)
tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"
wait(0.1)
for m=1,2 do 
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcfffff
end
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcfffff
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"):Destroy()
wait(0.2)
ofnawufn = false
    end
})

CarTab:AddParagraph({"ملاحظه:", "ازاله جميع السيارات يقوم بازاله جميع السيارات التي في الماب"})

CarTab:AddButton({
    Name = "سحب جميع السيارات",
    Callback = function()
        for _, v in next, workspace.Vehicles:GetChildren() do
            v:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character:GetPrimaryPartCFrame())
        end
    end
})

CarTab:AddParagraph({"ملاحظه:", "سحب جميع السيارات يقوم بسحب جميع السيارات التي في الماب"})

local Tab = Window:MakeTab({ Title = "التخريب", Icon = "rbxassetid://10734962068" })


local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualInputManager = game:GetService("VirtualInputManager")
local RunService = game:GetService("RunService")
local cam = workspace.CurrentCamera


local selectedPlayerName = nil
local methodKill = nil
getgenv().Target = nil
local Character = LocalPlayer.Character
local Humanoid = Character and Character:WaitForChild("Humanoid")
local RootPart = Character and Character:WaitForChild("HumanoidRootPart")

-- Função para limpar o sofá (couch)
local function cleanupCouch()
    local char = LocalPlayer.Character
    if char then
        local couch = char:FindFirstChild("Chaos.Couch") or LocalPlayer.Backpack:FindFirstChild("Chaos.Couch")
        if couch then
            couch:Destroy()
        end
    end
    -- Limpar ferramentas via remoto
    ReplicatedStorage:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer("ClearAllTools")
end

-- Conectar evento CharacterAdded
LocalPlayer.CharacterAdded:Connect(function(newCharacter)
    Character = newCharacter
    Humanoid = newCharacter:WaitForChild("Humanoid")
    RootPart = newCharacter:WaitForChild("HumanoidRootPart")
    cleanupCouch()
    
    -- Conectar evento Died para o novo Humanoid
    Humanoid.Died:Connect(function()
        cleanupCouch()
    end)
end)

-- Conectar evento Died para o Humanoid inicial, se existir
if Humanoid then
    Humanoid.Died:Connect(function()
        cleanupCouch()
    end)
end

-- Função KillPlayerCouch
local function KillPlayerCouch()
    if not selectedPlayerName then
        warn("Erro: Nenhum jogador selecionado")
        return
    end
    local target = Players:FindFirstChild(selectedPlayerName)
    if not target or not target.Character then
        warn("Erro: Jogador alvo não encontrado ou sem personagem")
        return
    end

    local char = LocalPlayer.Character
    if not char then
        warn("Erro: Personagem do jogador local não encontrado")
        return
    end
    local hum = char:FindFirstChildOfClass("Humanoid")
    local root = char:FindFirstChild("HumanoidRootPart")
    local tRoot = target.Character and target.Character:FindFirstChild("HumanoidRootPart")
    if not hum or not root or not tRoot then
        warn("Erro: Componentes necessários não encontrados")
        return
    end

    local originalPos = root.Position 
    local sitPos = Vector3.new(145.51, -350.09, 21.58)

    ReplicatedStorage:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer("ClearAllTools")
    task.wait(0.2)

    ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
    task.wait(0.3)

    local tool = LocalPlayer.Backpack:FindFirstChild("Couch")
    if tool then tool.Parent = char end
    task.wait(0.1)

    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F, false, game)
    task.wait(0.1)

    hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    hum.PlatformStand = false
    cam.CameraSubject = target.Character:FindFirstChild("Head") or tRoot or hum

    local align = Instance.new("BodyPosition")
    align.Name = "BringPosition"
    align.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    align.D = 10
    align.P = 30000
    align.Position = root.Position
    align.Parent = tRoot

    task.spawn(function()
        local angle = 0
        local startTime = tick()
        while tick() - startTime < 5 and target and target.Character and target.Character:FindFirstChildOfClass("Humanoid") do
            local tHum = target.Character:FindFirstChildOfClass("Humanoid")
            if not tHum or tHum.Sit then break end

            local hrp = target.Character.HumanoidRootPart
            local adjustedPos = hrp.Position + (hrp.Velocity / 1.5)

            angle += 50
            root.CFrame = CFrame.new(adjustedPos + Vector3.new(0, 2, 0)) * CFrame.Angles(math.rad(angle), 0, 0)
            align.Position = root.Position + Vector3.new(2, 0, 0)

            task.wait()
        end

        align:Destroy()
        hum:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        hum.PlatformStand = false
        cam.CameraSubject = hum

        for _, p in pairs(char:GetDescendants()) do
            if p:IsA("BasePart") then
                p.Velocity = Vector3.zero
                p.RotVelocity = Vector3.zero
            end
        end

        task.wait(0.1)
        root.CFrame = CFrame.new(sitPos)
        task.wait(0.3)

        local tool = char:FindFirstChild("Couch")
        if tool then tool.Parent = LocalPlayer.Backpack end

        task.wait(0.01)
        ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
        task.wait(0.2)
        root.CFrame = CFrame.new(originalPos)
    end)
end

-- Função BringPlayerLLL
local function BringPlayerLLL()
    if not selectedPlayerName then
        warn("Erro: Nenhum jogador selecionado")
        return
    end
    local target = Players:FindFirstChild(selectedPlayerName)
    if not target or not target.Character then
        warn("Erro: Jogador alvo não encontrado ou sem personagem")
        return
    end

    local char = LocalPlayer.Character
    if not char then
        warn("Erro: Personagem do jogador local não encontrado")
        return
    end
    local hum = char:FindFirstChildOfClass("Humanoid")
    local root = char:FindFirstChild("HumanoidRootPart")
    local tRoot = target.Character and target.Character:FindFirstChild("HumanoidRootPart")
    if not hum or not root or not tRoot then
        warn("Erro: Componentes necessários não encontrados")
        return
    end

    local originalPos = root.Position 
    ReplicatedStorage:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer("ClearAllTools")
    task.wait(0.2)

    ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
    task.wait(0.3)

    local tool = LocalPlayer.Backpack:FindFirstChild("Couch")
    if tool then
        tool.Parent = char
    end
    task.wait(0.1)

    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F, false, game)
    task.wait(0.1)

    hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    hum.PlatformStand = false
    cam.CameraSubject = target.Character:FindFirstChild("Head") or tRoot or hum

    local align = Instance.new("BodyPosition")
    align.Name = "BringPosition"
    align.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    align.D = 10
    align.P = 30000
    align.Position = root.Position
    align.Parent = tRoot

    task.spawn(function()
        local angle = 0
        local startTime = tick()
        while tick() - startTime < 5 and target and target.Character and target.Character:FindFirstChildOfClass("Humanoid") do
            local tHum = target.Character:FindFirstChildOfClass("Humanoid")
            if not tHum or tHum.Sit then break end

            local hrp = target.Character.HumanoidRootPart
            local adjustedPos = hrp.Position + (hrp.Velocity / 1.5)

            angle += 50
            root.CFrame = CFrame.new(adjustedPos + Vector3.new(0, 2, 0)) * CFrame.Angles(math.rad(angle), 0, 0)
            align.Position = root.Position + Vector3.new(2, 0, 0)

            task.wait()
        end

        align:Destroy()
        hum:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        hum.PlatformStand = false
        cam.CameraSubject = hum

        for _, p in pairs(char:GetDescendants()) do
            if p:IsA("BasePart") then
                p.Velocity = Vector3.zero
                p.RotVelocity = Vector3.zero
            end
        end

        task.wait(0.1)
        root.Anchored = true
        root.CFrame = CFrame.new(originalPos)
        task.wait(0.001)
        root.Anchored = false

        task.wait(0.7)
        local tool = char:FindFirstChild("Couch")
        if tool then
            tool.Parent = LocalPlayer.Backpack
        end

        task.wait(0.001)
        ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
    end)
end

-- Função BringWithCouch
local function BringWithCouch()
    local targetPlayer = Players:FindFirstChild(getgenv().Target)
    if not targetPlayer then
        warn("Error: No target player selected")
        return
    end
    if not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        warn("Error: Target player has no character or HumanoidRootPart")
        return
    end

    local args = { [1] = "ClearAllTools" }
    ReplicatedStorage.RE["1Clea1rTool1s"]:FireServer(unpack(args))
    local args = { [1] = "PickingTools", [2] = "Couch" }
    ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

    local couch = LocalPlayer.Backpack:WaitForChild("Couch", 2)
    if not couch then
        warn("Error: Couch not found in Backpack")
        return
    end

    couch.Name = "Chaos.Couch"
    local seat1 = couch:FindFirstChild("Seat1")
    local seat2 = couch:FindFirstChild("Seat2")
    local handle = couch:FindFirstChild("Handle")
    if seat1 and seat2 and handle then
        seat1.Disabled = true
        seat2.Disabled = true
        handle.Name = "Handle "
    else
        warn("Error: Couch components not found")
        return
    end
    couch.Parent = LocalPlayer.Character

    local tet = Instance.new("BodyVelocity", seat1)
    tet.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    tet.P = 1250
    tet.Velocity = Vector3.new(0, 0, 0)
    tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"

    repeat
        for m = 1, 35 do
            local pos = { x = 0, y = 0, z = 0 }
            local tRoot = targetPlayer.Character and targetPlayer.Character.HumanoidRootPart
            if not tRoot then break end
            pos.x = tRoot.Position.X + (tRoot.Velocity.X / 2)
            pos.y = tRoot.Position.Y + (tRoot.Velocity.Y / 2)
            pos.z = tRoot.Position.Z + (tRoot.Velocity.Z / 2)
            seat1.CFrame = CFrame.new(Vector3.new(pos.x, pos.y, pos.z)) * CFrame.new(-2, 2, 0)
            task.wait()
        end
        tet:Destroy()
        couch.Parent = LocalPlayer.Backpack
        task.wait()
        couch:FindFirstChild("Handle ").Name = "Handle"
        task.wait(0.2)
        couch.Parent = LocalPlayer.Character
        task.wait()
        couch.Parent = LocalPlayer.Backpack
        couch.Handle.Name = "Handle "
        task.wait(0.2)
        couch.Parent = LocalPlayer.Character
        tet = Instance.new("BodyVelocity", seat1)
        tet.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        tet.P = 1250
        tet.Velocity = Vector3.new(0, 0, 0)
        tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"
    until targetPlayer.Character and targetPlayer.Character.Humanoid and targetPlayer.Character.Humanoid.Sit == true
    task.wait()
    tet:Destroy()
    couch.Parent = LocalPlayer.Backpack
    task.wait()
    couch:FindFirstChild("Handle ").Name = "Handle"
    task.wait(0.3)
    couch.Parent = LocalPlayer.Character
    task.wait(0.3)
    couch.Grip = CFrame.new(Vector3.new(0, 0, 0))
    task.wait(0.3)
    ReplicatedStorage.RE["1Clea1rTool1s"]:FireServer("ClearAllTools")
end

-- Função KillWithCouch
local function KillWithCouch()
    local targetPlayer = Players:FindFirstChild(getgenv().Target)
    if not targetPlayer then
        warn("Error: No target player selected")
        return
    end
    if not targetPlayer.Character or not targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        warn("Error: Target player has no character or HumanoidRootPart")
        return
    end

    local args = { [1] = "ClearAllTools" }
    ReplicatedStorage.RE["1Clea1rTool1s"]:FireServer(unpack(args))
    local args = { [1] = "PickingTools", [2] = "Couch" }
    ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

    local couch = LocalPlayer.Backpack:WaitForChild("Couch", 2)
    if not couch then
        warn("Error: Couch not found in Backpack")
        return
    end

    couch.Name = "Chaos.Couch"
    local seat1 = couch:FindFirstChild("Seat1")
    local seat2 = couch:FindFirstChild("Seat2")
    local handle = couch:FindFirstChild("Handle")
    if seat1 and seat2 and handle then
        seat1.Disabled = true
        seat2.Disabled = true
        handle.Name = "Handle "
    else
        warn("Error: Couch components not found")
        return
    end
    couch.Parent = LocalPlayer.Character

    local tet = Instance.new("BodyVelocity", seat1)
    tet.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    tet.P = 1250
    tet.Velocity = Vector3.new(0, 0, 0)
    tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"

    repeat
        for m = 1, 35 do
            local pos = { x = 0, y = 0, z = 0 }
            local tRoot = targetPlayer.Character and targetPlayer.Character.HumanoidRootPart
            if not tRoot then break end
            pos.x = tRoot.Position.X + (tRoot.Velocity.X / 2)
            pos.y = tRoot.Position.Y + (tRoot.Velocity.Y / 2)
            pos.z = tRoot.Position.Z + (tRoot.Velocity.Z / 2)
            seat1.CFrame = CFrame.new(Vector3.new(pos.x, pos.y, pos.z)) * CFrame.new(-2, 2, 0)
            task.wait()
        end
        tet:Destroy()
        couch.Parent = LocalPlayer.Backpack
        task.wait()
        couch:FindFirstChild("Handle ").Name = "Handle"
        task.wait(0.2)
        couch.Parent = LocalPlayer.Character
        task.wait()
        couch.Parent = LocalPlayer.Backpack
        couch.Handle.Name = "Handle "
        task.wait(0.2)
        couch.Parent = LocalPlayer.Character
        tet = Instance.new("BodyVelocity", seat1)
        tet.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        tet.P = 1250
        tet.Velocity = Vector3.new(0, 0, 0)
        tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"
    until targetPlayer.Character and targetPlayer.Character.Humanoid and targetPlayer.Character.Humanoid.Sit == true
    task.wait()
    couch.Parent = LocalPlayer.Backpack
    seat1.CFrame = CFrame.new(Vector3.new(9999, -450, 9999))
    seat2.CFrame = CFrame.new(Vector3.new(9999, -450, 9999))
    couch.Parent = LocalPlayer.Character
    task.wait(0.1)
    couch.Parent = LocalPlayer.Backpack
    task.wait(2)
    local bv = seat1:FindFirstChild("#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W")
    if bv then bv:Destroy() end
    ReplicatedStorage.RE["1Clea1rTool1s"]:FireServer("ClearAllTools")
end

    local PlayerSection = Tab:AddSection({ Name = "" })

    -- Função para obter lista de jogadores
    local function getPlayerList()
        local players = Players:GetPlayers()
        local playerNames = {}
        for _, player in ipairs(players) do
            if player ~= LocalPlayer then
                table.insert(playerNames, player.Name)
            end
        end
        return playerNames
    end

    local killDropdown = Tab:AddDropdown({
        Name = "اختار لاعب",
        Options = getPlayerList(),
        Default = "",
        Callback = function(value)
            selectedPlayerName = value
            getgenv().Target = value
            print("Target Set : " .. tostring(value))
        end
    })

    Tab:AddButton({
        Name = "نحديث القائمه",
        Callback = function()
            local tablePlayers = Players:GetPlayers()
            local newPlayers = {}
            if killDropdown and #tablePlayers > 0 then
                for _, player in ipairs(tablePlayers) do
                    if player.Name ~= LocalPlayer.Name then
                        table.insert(newPlayers, player.Name)
                    end
                end
                killDropdown:Set(newPlayers)
                print("Player List Refreshed: ", table.concat(newPlayers, ", "))
                if selectedPlayerName and not Players:FindFirstChild(selectedPlayerName) then
                    selectedPlayerName = nil
                    getgenv().Target = nil
                    killDropdown:SetValue("")
                    print("Selection reset, player is no longer on the server.")
                end
            else
                print("Error: Dropdown not found or no player available.")
            end
        end
    })

   
    Tab:AddButton({
        Name = "الانتقال للاعب",
        Callback = function()
            if not selectedPlayerName or not Players:FindFirstChild(selectedPlayerName) then
                print("Error: Player not selected or does not exist")
                return
            end
            local character = LocalPlayer.Character
            local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
            if not humanoidRootPart then
                warn("Error: Local Player's HumanoidRootPart not found")
                return
            end

            local targetPlayer = Players:FindFirstChild(selectedPlayerName)
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                humanoidRootPart.CFrame = targetPlayer.Character.HumanoidRootPart.CFrame
            else
                print("Error: Target Player not found or missing HumanoidRootPart")
            end
        end
    })

    
    
    Tab:AddToggle({
        Name = "رؤيه الاعب",
        Default = false,
        Callback = function(value)
            local Camera = workspace.CurrentCamera

            local function UpdateCamera()
                if value then
                    local targetPlayer = Players:FindFirstChild(selectedPlayerName)
                    if targetPlayer and targetPlayer.Character then
                        local humanoid = targetPlayer.Character:FindFirstChild("Humanoid")
                        if humanoid then
                            Camera.CameraSubject = humanoid
                        end
                    end
                else
                    if LocalPlayer.Character then
                        local humanoid = LocalPlayer.Character:FindFirstChild("Humanoid")
                        if humanoid then
                            Camera.CameraSubject = humanoid
                        end
                    end
                end
            end

            if value then
                if not getgenv().CameraConnection then
                    getgenv().CameraConnection = RunService.Heartbeat:Connect(UpdateCamera)
                end
            else
                if getgenv().CameraConnection then
                    getgenv().CameraConnection:Disconnect()
                    getgenv().CameraConnection = nil
                end
                UpdateCamera()
            end
        end
    })

   local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local espNames = {}
local espConnection1, espConnection2, updateLoop

Tab:AddToggle({
    Name = "كشف",
    Default = false,
    Callback = function(value)
        local function CreateNameTag(player)
            if player == LocalPlayer or espNames[player] then return end

            local function onCharacter(char)
                local head = char:WaitForChild("Head", 5)
                if not head or espNames[player] then return end

                local billboard = Instance.new("BillboardGui")
                billboard.Name = "ESP_Name"
                billboard.AlwaysOnTop = true
                billboard.Size = UDim2.new(0, 100, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 2.5, 0)
                billboard.Adornee = head
                billboard.Parent = head

                local nameLabel = Instance.new("TextLabel")
                nameLabel.BackgroundTransparency = 1
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.Text = player.Name .. " (0)"
                nameLabel.TextColor3 = Color3.new(1, 1, 1)
                nameLabel.TextStrokeTransparency = 0
                nameLabel.TextScaled = true
                nameLabel.Font = Enum.Font.GothamBold
                nameLabel.Name = "NameTag"
                nameLabel.Parent = billboard

                espNames[player] = billboard
            end

            if player.Character then
                onCharacter(player.Character)
            end

            player.CharacterAdded:Connect(onCharacter)
        end

        local function RemoveAllTags()
            for _, gui in pairs(espNames) do
                if gui then gui:Destroy() end
            end
            table.clear(espNames)
        end

        local function UpdateDistances()
            while value do
                for player, gui in pairs(espNames) do
                    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        local dist = math.floor((LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude)
                        local nameLabel = gui:FindFirstChild("NameTag")
                        if nameLabel then
                            nameLabel.Text = player.Name .. " (" .. dist .. " studs)"
                        end
                    end
                end
                task.wait(0.3)
            end
        end

        if value then
            for _, player in pairs(Players:GetPlayers()) do
                CreateNameTag(player)
            end

            espConnection1 = Players.PlayerAdded:Connect(CreateNameTag)
            espConnection2 = Players.PlayerRemoving:Connect(function(player)
                if espNames[player] then
                    espNames[player]:Destroy()
                    espNames[player] = nil
                end
            end)

            -- Iniciar loop de atualização
            updateLoop = task.spawn(UpdateDistances)
        else
            RemoveAllTags()
            if espConnection1 then espConnection1:Disconnect() espConnection1 = nil end
            if espConnection2 then espConnection2:Disconnect() espConnection2 = nil end
            if updateLoop then task.cancel(updateLoop) updateLoop = nil end
        end
    end
})


    local MethodSection = Tab:AddSection({ Name = "" })

    Tab:AddDropdown({
        Name = "اختار طريقه القتل",
        Options = {"باص", "كنبه", "كنبه دون الذهاب للاعب [BETA]"},
        Default = "",
        Callback = function(value)
            methodKill = value
            print("Selected Method: " .. tostring(value))
        end
    })

    Tab:AddButton({
        Name = "قتل الاعب",
        Callback = function()
            if not selectedPlayerName or not Players:FindFirstChild(selectedPlayerName) then
                print("Error: Player not selected or does not exist")
                return
            end
            if methodKill == "Couch" then
                KillPlayerCouch()
            elseif methodKill == "Couch Without Going to the Target [BETA]" then
                KillWithCouch()
            else
                -- Método de ônibus
                local character = LocalPlayer.Character
                local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
                if not humanoidRootPart then
                    warn("Error: Local Player's HumanoidRootPart not found")
                    return
                end

                local originalPosition = humanoidRootPart.CFrame

                local function GetBus()
                    local vehicles = game.Workspace:FindFirstChild("Vehicles")
                    if vehicles then
                        return vehicles:FindFirstChild(LocalPlayer.Name .. "Car")
                    end
                    return nil
                end

                local bus = GetBus()

                if not bus then
                    humanoidRootPart.CFrame = CFrame.new(1118.81, 75.998, -1138.61)
                    task.wait(0.5)
                    local remoteEvent = ReplicatedStorage:FindFirstChild("RE")
                    if remoteEvent and remoteEvent:FindFirstChild("1Ca1r") then
                        remoteEvent["1Ca1r"]:FireServer("PickingCar", "SchoolBus")
                    end
                    task.wait(1)
                    bus = GetBus()
                end

                if bus then
                    local seat = bus:FindFirstChild("Body") and bus.Body:FindFirstChild("VehicleSeat")
                    if seat and character:FindFirstChildOfClass("Humanoid") and not character.Humanoid.Sit then
                        repeat
                            humanoidRootPart.CFrame = seat.CFrame * CFrame.new(0, 2, 0)
                            task.wait()
                        until character.Humanoid.Sit or not bus.Parent
                        if character.Humanoid.Sit or not bus.Parent then
                            for k, v in pairs(bus.Body:GetChildren()) do
                                if v:IsA("Seat") then
                                    v.CanTouch = false
                                end
                            end
                        end
                    end
                end

                local function TrackPlayer()
                    while true do
                        if selectedPlayerName then
                            local targetPlayer = Players:FindFirstChild(selectedPlayerName)
                            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
                                if targetHumanoid and targetHumanoid.Sit then
                                    if character.Humanoid then
                                        bus:SetPrimaryPartCFrame(CFrame.new(Vector3.new(9999, -450, 9999)))
                                        print("Player sit down, taking bus to the void!")
                                        task.wait(0.2)

                                        local function simulateJump()
                                            local humanoid = character and character:FindFirstChildWhichIsA("Humanoid")
                                            if humanoid then
                                                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                                            end
                                        end

                                        simulateJump()
                                        print("Simulating pull!")
                                        task.wait(0.5)
                                        humanoidRootPart.CFrame = originalPosition
                                        print("Player returned to original position.")
                                    end
                                    break
                                else
                                    local targetRoot = targetPlayer.Character.HumanoidRootPart
                                    local time = tick() * 35
                                    local lateralOffset = math.sin(time) * 4
                                    local frontBackOffset = math.cos(time) * 20
                                    bus:SetPrimaryPartCFrame(targetRoot.CFrame * CFrame.new(lateralOffset, 0, frontBackOffset))
                                end
                            end
                        end
                        RunService.RenderStepped:Wait()
                    end
                end

                spawn(TrackPlayer)
            end
        end
    })

    Tab:AddButton({
        Name = "وقع الاعب",
        Callback = function()
            if not selectedPlayerName or not Players:FindFirstChild(selectedPlayerName) then
                print("Error: Player not selected or does not exist")
                return
            end
            if methodKill == "Couch" then
                BringPlayerLLL()
            elseif methodKill == "Couch Without Going to the Target [BETA]" then
                BringWithCouch()
            else
                -- Método de ônibus
                local character = LocalPlayer.Character
                local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
                if not humanoidRootPart then
                    warn("Error: Local Player's HumanoidRootPart not found")
                    return
                end

                local originalPosition = humanoidRootPart.CFrame

                local function GetBus()
                    local vehicles = game.Workspace:FindFirstChild("Vehicles")
                    if vehicles then
                        return vehicles:FindFirstChild(LocalPlayer.Name .. "Car")
                    end
                    return nil
                end

                local bus = GetBus()

                if not bus then
                    humanoidRootPart.CFrame = CFrame.new(1118.81, 75.998, -1138.61)
                    task.wait(0.5)
                    local remoteEvent = ReplicatedStorage:FindFirstChild("RE")
                    if remoteEvent and remoteEvent:FindFirstChild("1Ca1r") then
                        remoteEvent["1Ca1r"]:FireServer("PickingCar", "SchoolBus")
                    end
                    task.wait(1)
                    bus = GetBus()
                end

                if bus then
                    local seat = bus:FindFirstChild("Body") and bus.Body:FindFirstChild("VehicleSeat")
                    if seat and character:FindFirstChildOfClass("Humanoid") and not character.Humanoid.Sit then
                        repeat
                            humanoidRootPart.CFrame = seat.CFrame * CFrame.new(0, 2, 0)
                            task.wait()
                        until character.Humanoid.Sit or not bus.Parent
                    end
                end

                local function TrackPlayer()
                    while true do
                        if selectedPlayerName then
                            local targetPlayer = Players:FindFirstChild(selectedPlayerName)
                            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
                                if targetHumanoid and targetHumanoid.Sit then
                                    if character.Humanoid then
                                        bus:SetPrimaryPartCFrame(originalPosition)
                                        task.wait(0.7)
                                        local args = { [1] = "DeleteAllVehicles" }
                                        ReplicatedStorage.RE:FindFirstChild("1Ca1r"):FireServer(unpack(args))
                                    end
                                    break
                                else
                                    local targetRoot = targetPlayer.Character.HumanoidRootPart
                                    local time = tick() * 35
                                    local lateralOffset = math.sin(time) * 4
                                    local frontBackOffset = math.cos(time) * 20
                                    bus:SetPrimaryPartCFrame(targetRoot.CFrame * CFrame.new(lateralOffset, 0, frontBackOffset))
                                end
                            end
                        end
                        RunService.RenderStepped:Wait()
                    end
                end

                spawn(TrackPlayer)
            end
        end
    })


local function houseBanKill()
    if not selectedPlayerName then
        print("No player Selected.")
        return
    end

    local Player = game.Players.LocalPlayer
    local Backpack = Player.Backpack
    local Character = Player.Character
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Character:FindFirstChild("HumanoidRootPart")
    local Houses = game.Workspace:FindFirstChild("001_Lots")
    local OldPos = RootPart.CFrame
    local Angles = 0
    local Vehicles = Workspace.Vehicles
    local Pos

    function Check()
        if Player and Character and Humanoid and RootPart and Vehicles then
            return true
        else
            return false
        end
    end

    local selectedPlayer = game.Players:FindFirstChild(selectedPlayerName)
    if selectedPlayer and selectedPlayer.Character then
        if Check() then
            local House = Houses:FindFirstChild(Player.Name .. "House")
            if not House then
                local EHouse
                local availableHouses = {}
                
                -- Coletar todas as casas disponÃ­veis ("For Sale")
                for _, Lot in pairs(Houses:GetChildren()) do
                    if Lot.Name == "For Sale" then
                        for _, num in pairs(Lot:GetDescendants()) do
                            if num:IsA("NumberValue") and num.Name == "Number" and num.Value < 25 and num.Value > 10 then
                                table.insert(availableHouses, {Lot = Lot, Number = num.Value})
                                break
                            end
                        end
                    end
                end

                -- Escolher uma casa aleatÃ³ria da lista
                if #availableHouses > 0 then
                    local randomHouse = availableHouses[math.random(1, #availableHouses)]
                    EHouse = randomHouse.Lot
                    local houseNumber = randomHouse.Number

                    -- Teleportar para o BuyDetector e clicar
                    local BuyDetector = EHouse:FindFirstChild("BuyHouse")
                    Pos = BuyDetector.Position
                    if BuyDetector and BuyDetector:IsA("BasePart") then
                        RootPart.CFrame = BuyDetector.CFrame + Vector3.new(0, -6, 0)
                        task.wait(0.5)
                        local ClickDetector = BuyDetector:FindFirstChild("ClickDetector")
                        if ClickDetector then
                            fireclickdetector(ClickDetector)
                        end
                    end

                    -- Disparar o novo remote event para construir a casa
                    task.wait(0.5)
                    local args = {
                        houseNumber, -- NÃºmero da casa aleatÃ³ria
                        "056_House" -- Tipo da casa
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Lot:BuildProperty"):FireServer(unpack(args))
                else
                    print("No house available.")
                    return
                end
            end

            task.wait(0.5)
            local PreHouse = Houses:FindFirstChild(Player.Name .. "House")
            if PreHouse then
                task.wait(0.5)
                local Number
                for i, x in pairs(PreHouse:GetDescendants()) do
                    if x.Name == "Number" and x:IsA("NumberValue") then
                        Number = x
                    end
                end
                task.wait(0.5)
                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gettin1gHous1e"):FireServer("PickingCustomHouse", "049_House", Number.Value)
            end

            task.wait(0.5)
            local PCar = Vehicles:FindFirstChild(Player.Name .. "Car")
            if not PCar then
                if Check() then
                    RootPart.CFrame = CFrame.new(1118.81, 75.998, -1138.61)
                    task.wait(0.5)
                    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer("PickingCar", "SchoolBus")
                    task.wait(0.5)
                    local PCar = Vehicles:FindFirstChild(Player.Name .. "Car")
                    task.wait(0.5)
                    local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")
                    if Seat then
                        repeat
                            task.wait()
                            RootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)
                        until Humanoid.Sit
                    end
                end
            end

            task.wait(0.5)
            local PCar = Vehicles:FindFirstChild(Player.Name .. "Car")
            if PCar then
                if not Humanoid.Sit then
                    local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")
                    if Seat then
                        repeat
                            task.wait()
                            RootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)
                        until Humanoid.Sit
                    end
                end

                local Target = selectedPlayer
                local TargetC = Target.Character
                local TargetH = TargetC:FindFirstChildOfClass("Humanoid")
                local TargetRP = TargetC:FindFirstChild("HumanoidRootPart")
                if TargetC and TargetH and TargetRP then
                    if not TargetH.Sit then
                        while not TargetH.Sit do
                            task.wait()
                            local Fling = function(alvo, pos, angulo)
                                PCar:SetPrimaryPartCFrame(CFrame.new(alvo.Position) * pos * angulo)
                            end
                            Angles = Angles + 100
                            Fling(TargetRP, CFrame.new(0, 1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10, CFrame.Angles(math.rad(Angles), 0, 0))
                            Fling(TargetRP, CFrame.new(0, -1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10, CFrame.Angles(math.rad(Angles), 0, 0))
                            Fling(TargetRP, CFrame.new(2.25, 1.5, -2.25) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10, CFrame.Angles(math.rad(Angles), 0, 0))
                            Fling(TargetRP, CFrame.new(-2.25, -1.5, 2.25) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10, CFrame.Angles(math.rad(Angles), 0, 0))
                            Fling(TargetRP, CFrame.new(0, 1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10, CFrame.Angles(math.rad(Angles), 0, 0))
                            Fling(TargetRP, CFrame.new(0, -1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10, CFrame.Angles(math.rad(Angles), 0, 0))
                        end
                        task.wait(0.2)
                        local House = Houses:FindFirstChild(Player.Name .. "House")
                        PCar:SetPrimaryPartCFrame(CFrame.new(House.HouseSpawnPosition.Position))
                        task.wait(0.2)
                        local pedro = Region3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(30, 30, 30), game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(30, 30, 30))
                        local a = workspace:FindPartsInRegion3(pedro, game.Players.LocalPlayer.Character.HumanoidRootPart, math.huge)
                        for i, v in pairs(a) do
                            if v.Name == "HumanoidRootPart" then
                                local b = game:GetService("Players"):FindFirstChild(v.Parent.Name)
                                local args = {
                                    [1] = "BanPlayerFromHouse",
                                    [2] = b,
                                    [3] = v.Parent
                                }
                                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
                                local args = {
                                    [1] = "DeleteAllVehicles"
                                }
                                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer(unpack(args))
                            end
                        end
                    end
                end
            end
        end
    end
end

Tab:AddButton({
    Name = "قتل طرد بيت",
    Callback = houseBanKill
})

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local cam = workspace.CurrentCamera
local currentPlayers, selectedPlayer = {}, nil
local viewing = false
local flingActive = false

Tab:AddToggle({
    Name = "اوتو فلينق",
    Default = false,
    Callback = function(state)

        flingActive = state
        if state and selectedPlayerName then
            local target = Players:FindFirstChild(selectedPlayerName)
            if not target or not target.Character then return end
            local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local tRoot = target.Character and target.Character:FindFirstChild("HumanoidRootPart")
            if not root or not tRoot then return end
            local char = LocalPlayer.Character
            local hum = char:FindFirstChildOfClass("Humanoid")
            local original = root.CFrame

local args = {
	"ClearAllTools"
}
game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack(args))

task.wait(0.2)


            local args = {
                [1] = "PickingTools",
                [2] = "Couch"
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))

            task.wait(0.3)
            local tool = LocalPlayer.Backpack:FindFirstChild("Couch")
            if tool then
                tool.Parent = char
            end
				task.wait(0.2)
				game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.F, false, game)
task.wait(0.25)

            workspace.FallenPartsDestroyHeight = 0/0
            local bv = Instance.new("BodyVelocity")
            bv.Name = "FlingForce"
            bv.Velocity = Vector3.new(9e8, 9e8, 9e8)
            bv.MaxForce = Vector3.new(1/0, 1/0, 1/0)
            bv.Parent = root
            hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
            hum.PlatformStand = false
            cam.CameraSubject = target.Character:FindFirstChild("Head") or tRoot or hum

            task.spawn(function()
                local angle = 0
                local parts = {root}
                while flingActive and target and target.Character and target.Character:FindFirstChildOfClass("Humanoid") do
                    local tHum = target.Character:FindFirstChildOfClass("Humanoid")
                    if tHum.Sit then break end
                    angle += 50

                    for _, part in ipairs(parts) do
                        local pos_x = target.Character.HumanoidRootPart.Position.X
                        local pos_y = target.Character.HumanoidRootPart.Position.Y
                        local pos_z = target.Character.HumanoidRootPart.Position.Z
                        pos_x = pos_x + (target.Character.HumanoidRootPart.Velocity.X / 1.5)
                        pos_y = pos_y + (target.Character.HumanoidRootPart.Velocity.Y / 1.5)
                        pos_z = pos_z + (target.Character.HumanoidRootPart.Velocity.Z / 1.5)
                        root.CFrame = CFrame.new(pos_x, pos_y, pos_z) * CFrame.Angles(math.rad(angle), 0, 0)
                    end

                    root.Velocity = Vector3.new(9e8, 9e8, 9e8)
                    root.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
                    task.wait()
                end
                flingActive = false
                bv:Destroy()
                hum:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                hum.PlatformStand = false
                root.CFrame = original
                cam.CameraSubject = hum
                for _, p in pairs(char:GetDescendants()) do
                    if p:IsA("BasePart") then
                        p.Velocity = Vector3.zero
                        p.RotVelocity = Vector3.zero
                    end
                end
                hum:UnequipTools()
                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
            end)
        end
    end
})


local function FlingBall(target)

    local players = game:GetService("Players")
    local player = players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local hrp = character:WaitForChild("HumanoidRootPart")
    local backpack = player:WaitForChild("Backpack")
    local ServerBalls = workspace.WorkspaceCom:WaitForChild("001_SoccerBalls")

    local function GetBall()
        if not backpack:FindFirstChild("SoccerBall") then
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "SoccerBall")
        end
        repeat task.wait() until backpack:FindFirstChild("SoccerBall")
        backpack.SoccerBall.Parent = character
        repeat task.wait() until ServerBalls:FindFirstChild("Soccer" .. player.Name)
        character.SoccerBall.Parent = backpack
        return ServerBalls:FindFirstChild("Soccer" .. player.Name)
    end

    local Ball = ServerBalls:FindFirstChild("Soccer" .. player.Name) or GetBall()
    Ball.CanCollide = false
    Ball.Massless = true
    Ball.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0, 0)

    if target ~= player then
        local tchar = target.Character
        if tchar and tchar:FindFirstChild("HumanoidRootPart") and tchar:FindFirstChild("Humanoid") then
            local troot = tchar.HumanoidRootPart
            local thum = tchar.Humanoid

            if Ball:FindFirstChildWhichIsA("BodyVelocity") then
                Ball:FindFirstChildWhichIsA("BodyVelocity"):Destroy()
            end

            local bv = Instance.new("BodyVelocity")
            bv.Name = "FlingPower"
            bv.Velocity = Vector3.new(9e8, 9e8, 9e8)
            bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bv.P = 9e900
            bv.Parent = Ball

            workspace.CurrentCamera.CameraSubject = thum
            local StartTime = os.time()
            repeat
                if troot.Velocity.Magnitude > 0 then
                -- Cálculo da posição ajustada com base na velocidade do alvo
                local pos_x = troot.Position.X + (troot.Velocity.X / 1.5)
                local pos_y = troot.Position.Y + (troot.Velocity.Y / 1.5)
                local pos_z = troot.Position.Z + (troot.Velocity.Z / 1.5)

                -- Posiciona a bola diretamente na posição ajustada
                local position = Vector3.new(pos_x, pos_y, pos_z)
                Ball.CFrame = CFrame.new(position)
                Ball.Orientation += Vector3.new(45, 60, 30)
else
for i, v in pairs(tchar:GetChildren()) do
if v:IsA("BasePart") and v.CanCollide and not v.Anchored then
Ball.CFrame = v.CFrame
task.wait(1/6000)
end
end
end
                task.wait(1/6000)
            until troot.Velocity.Magnitude > 1000 or thum.Health <= 0 or not tchar:IsDescendantOf(workspace) or target.Parent ~= players
            workspace.CurrentCamera.CameraSubject = humanoid
        end
    end
end

Tab:AddButton({
    Name = "فلينق كره",
    Callback = function()
        FlingBall(game:GetService("Players")[selectedPlayerName])
    end
})

---------------------------------------------------------
local TweenService = game:GetService("TweenService")

local function bounceBall(ball)
    if not ball then return end
    local amplitude = 2
    local duration = 0.1
    task.spawn(function()
        while ball and ball.Parent and getgenv().flingloop do
            local startCFrame = ball.CFrame
            local tweenUp = TweenService:Create(ball, TweenInfo.new(duration, Enum.EasingStyle.Linear), {CFrame = startCFrame * CFrame.new(0, amplitude, 0)})
            local tweenDown = TweenService:Create(ball, TweenInfo.new(duration, Enum.EasingStyle.Linear), {CFrame = startCFrame})

            tweenUp:Play()
            tweenUp.Completed:Wait()
            tweenDown:Play()
            tweenDown.Completed:Wait()
        end
    end)
end

local function FlingBall(target)
    local players = game:GetService("Players")
    local player = players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local hrp = character:WaitForChild("HumanoidRootPart")
    local backpack = player:WaitForChild("Backpack")
    local ServerBalls = workspace.WorkspaceCom:WaitForChild("001_SoccerBalls")

    local function GetBall()
        if not backpack:FindFirstChild("SoccerBall") then
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "SoccerBall")
        end
        repeat task.wait() until backpack:FindFirstChild("SoccerBall")
        backpack.SoccerBall.Parent = character
        repeat task.wait() until ServerBalls:FindFirstChild("Soccer" .. player.Name)
        character.SoccerBall.Parent = backpack
        return ServerBalls:FindFirstChild("Soccer" .. player.Name)
    end

    local Ball = ServerBalls:FindFirstChild("Soccer" .. player.Name) or GetBall()
    Ball.CanCollide = false
    Ball.Massless = true
    Ball.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0, 0)

    if target ~= player then
        local tchar = target.Character
        if tchar and tchar:FindFirstChild("HumanoidRootPart") and tchar:FindFirstChild("Humanoid") then
            local troot = tchar.HumanoidRootPart
            local thum = tchar.Humanoid

            if Ball:FindFirstChildWhichIsA("BodyVelocity") then
                Ball:FindFirstChildWhichIsA("BodyVelocity"):Destroy()
            end

            local bv = Instance.new("BodyVelocity")
            bv.Name = "FlingPower"
            bv.Velocity = Vector3.new(9e8, 9e8, 9e8)
            bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bv.P = 9e900
            bv.Parent = Ball

            workspace.CurrentCamera.CameraSubject = thum
            bounceBall(Ball) -- aqui começa o bounce

            repeat
                if troot.Velocity.Magnitude > 0 then
                    -- Posição ajustada com base na velocidade do alvo
                    local pos_x = troot.Position.X + (troot.Velocity.X / 1.5)
                    local pos_y = troot.Position.Y + (troot.Velocity.Y / 1.5)
                    local pos_z = troot.Position.Z + (troot.Velocity.Z / 1.5)

                    local position = Vector3.new(pos_x, pos_y, pos_z)
                    Ball.CFrame = CFrame.new(position)
                    Ball.Orientation += Vector3.new(45, 60, 30)
                else
                    for i, v in pairs(tchar:GetChildren()) do
                        if v:IsA("BasePart") and v.CanCollide and not v.Anchored then
                            Ball.CFrame = v.CFrame
                            task.wait(1/6000)
                        end
                    end
                end
                task.wait(1/6000)
            until troot.Velocity.Magnitude > 1000 or thum.Health <= 0 or not tchar:IsDescendantOf(workspace) or target.Parent ~= players

            workspace.CurrentCamera.CameraSubject = humanoid
        end
    end
end

-- Botão para usar na MI HUB
Tab:AddButton({
    Name = "فلينق كره",
    Callback = function()
        -- Usar selectedPlayerName da sua hub pra pegar o alvo
        local Players = game:GetService("Players")
        local target = Players:FindFirstChild(selectedPlayerName)
        if target then
            getgenv().flingloop = true
            FlingBall(target)
            getgenv().flingloop = false
        else
            warn("Jogador não encontrado para flingar.")
        end
    end
})

local Players = game:GetService('Players')
local lplayer = Players.LocalPlayer

local function isItemInInventory(itemName)
    for _, item in pairs(lplayer.Backpack:GetChildren()) do
        if item.Name == itemName then
            return true
        end
    end
    return false
end

local function equipItem(itemName)
    local item = lplayer.Backpack:FindFirstChild(itemName)
    if item then
        lplayer.Character.Humanoid:EquipTool(item)
    end
end

local function unequipItem(itemName)
    local item = lplayer.Character:FindFirstChild(itemName)
    if item then
        item.Parent = lplayer.Backpack
    end
end

local function ActiveAutoFling(targetPlayer)
    if not isItemInInventory("Couch") then
        local args = { [1] = "PickingTools", [2] = "Couch" }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
    end

    equipItem("Couch")
    getgenv().flingloop = true

    while getgenv().flingloop do
        local function flingloopfix()
            local Players = game:GetService("Players")
            local Player = Players.LocalPlayer
            local AllBool = false

            local SkidFling = function(TargetPlayer)
                local Character = Player.Character
                local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
                local RootPart = Humanoid and Humanoid.RootPart
                local TCharacter = TargetPlayer.Character
                local THumanoid, TRootPart, THead, Accessory, Handle

                if TCharacter:FindFirstChildOfClass("Humanoid") then
                    THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
                end
                if THumanoid and THumanoid.RootPart then
                    TRootPart = THumanoid.RootPart
                end
                if TCharacter:FindFirstChild("Head") then
                    THead = TCharacter.Head
                end
                if TCharacter:FindFirstChildOfClass("Accessory") then
                    Accessory = TCharacter:FindFirstChildOfClass("Accessory")
                end
                if Accessory and Accessory:FindFirstChild("Handle") then
                    Handle = Accessory.Handle
                end

                if Character and Humanoid and RootPart then
                    if RootPart.Velocity.Magnitude < 50 then
                        getgenv().OldPos = RootPart.CFrame
                    end
                    if THumanoid and THumanoid.Sit and not AllBool then
                        unequipItem("Couch")
                        getgenv().flingloop = false
                        return
                    end
                    if THead then
                        workspace.CurrentCamera.CameraSubject = THead
                    elseif not THead and Handle then
                        workspace.CurrentCamera.CameraSubject = Handle
                    elseif THumanoid and TRootPart then
                        workspace.CurrentCamera.CameraSubject = THumanoid
                    end

                    if not TCharacter:FindFirstChildWhichIsA("BasePart") then
                        return
                    end

                    local FPos = function(BasePart, Pos, Ang)
                        RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
                        Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
                        RootPart.Velocity = Vector3.new(math.huge, math.huge * 10, math.huge)
                        RootPart.RotVelocity = Vector3.new(math.huge, math.huge, math.huge)
                    end

                    local SFBasePart = function(BasePart)
                        local TimeToWait = 2
                        local Time = tick()
                        local Angle = 0
                        repeat
                            if RootPart and THumanoid then
                                if BasePart.Velocity.Magnitude < 50 then
                                    Angle = Angle + 100
                                    FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                                    task.wait()
                                    FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                                    task.wait()
                                    FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                                    task.wait()
                                    FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                                    task.wait()
                                    FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection, CFrame.Angles(math.rad(Angle), 0, 0))
                                    task.wait()
                                    FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection, CFrame.Angles(math.rad(Angle), 0, 0))
                                    task.wait()
                                else
                                    FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                                    task.wait()
                                    FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
                                    task.wait()
                                    FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                                    task.wait()
                                    FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                                    task.wait()
                                    FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                                    task.wait()
                                    FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                                    task.wait()
                                    FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                                    task.wait()
                                    FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                                    task.wait()
                                    FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(-90), 0, 0))
                                    task.wait()
                                    FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                                    task.wait()
                                end
                            else
                                break
                            end
                        until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait or getgenv().flingloop == false
                    end

                    workspace.FallenPartsDestroyHeight = 0/0
                    local BV = Instance.new("BodyVelocity")
                    BV.Name = "SpeedDoPai"
                    BV.Parent = RootPart
                    BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
                    BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
                    Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

                    if TRootPart and THead then
                        if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
                            SFBasePart(THead)
                        else
                            SFBasePart(TRootPart)
                        end
                    elseif TRootPart and not THead then
                        SFBasePart(TRootPart)
                    elseif not TRootPart and THead then
                        SFBasePart(THead)
                    elseif not TRootPart and not THead and Accessory and Handle then
                        SFBasePart(Handle)
                    end
                    BV:Destroy()
                    Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                    workspace.CurrentCamera.CameraSubject = Humanoid

                    repeat
                        RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
                        Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
                        Humanoid:ChangeState("GettingUp")
                        table.foreach(Character:GetChildren(), function(_, x)
                            if x:IsA("BasePart") then
                                x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
                            end
                        end)
                        task.wait()
                    until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25

                    workspace.FallenPartsDestroyHeight = getgenv().FPDH
                end
            end

            if AllBool then
                for _, x in next, Players:GetPlayers() do
                    SkidFling(x)
                end
            end

            if targetPlayer then
                SkidFling(targetPlayer)
            end

            task.wait()
        end

        wait()
        pcall(flingloopfix)
    end
end

Tab:AddButton({
  Name = "فلينق ابواب من خلال الضغط على الاعب",
  Callback = function()
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HRP = Character:WaitForChild("HumanoidRootPart")

-- Alvo invisível (BlackHole)
local BlackHole = Instance.new("Part")
BlackHole.Size = Vector3.new(100000, 100000, 100000)
BlackHole.Transparency = 1
BlackHole.Anchored = true
BlackHole.CanCollide = false
BlackHole.Name = "BlackHoleTarget"
BlackHole.Parent = Workspace

-- Attachment base no BlackHole
local baseAttachment = Instance.new("Attachment")
baseAttachment.Name = "Luscaa_BlackHoleAttachment"
baseAttachment.Parent = BlackHole

-- Atualiza posição do BlackHole
RunService.Heartbeat:Connect(function()
	BlackHole.CFrame = HRP.CFrame
end)

-- Lista de portas controladas
local ControlledDoors = {}

-- Prepara uma porta para ser controlada
local function SetupPart(part)
	if not part:IsA("BasePart") or part.Anchored or not string.find(part.Name, "Door") then return end
	if part:FindFirstChild("Luscaa_Attached") then return end

	part.CanCollide = false

	for _, obj in ipairs(part:GetChildren()) do
		if obj:IsA("AlignPosition") or obj:IsA("Torque") or obj:IsA("Attachment") then
			obj:Destroy()
		end
	end

	local marker = Instance.new("BoolValue", part)
	marker.Name = "Luscaa_Attached"

	local a1 = Instance.new("Attachment", part)

	local align = Instance.new("AlignPosition", part)
	align.Attachment0 = a1
	align.Attachment1 = baseAttachment
	align.MaxForce = 1e20
	align.MaxVelocity = math.huge
	align.Responsiveness = 99999

	local torque = Instance.new("Torque", part)
	torque.Attachment0 = a1
	torque.RelativeTo = Enum.ActuatorRelativeTo.World
	torque.Torque = Vector3.new(
		math.random(-10e5, 10e5) * 10000,
		math.random(-10e5, 10e5) * 10000,
		math.random(-10e5, 10e5) * 10000
	)

	table.insert(ControlledDoors, {Part = part, Align = align})
end

-- Detecta e prepara portas existentes
for _, obj in ipairs(Workspace:GetDescendants()) do
	if obj:IsA("BasePart") and string.find(obj.Name, "Door") then
		SetupPart(obj)
	end
end

-- Novas portas no futuro
Workspace.DescendantAdded:Connect(function(obj)
	if obj:IsA("BasePart") and string.find(obj.Name, "Door") then
		SetupPart(obj)
	end
end)

-- Flinga jogador com timeout e retorno
local function FlingPlayer(player)
	local char = player.Character
	if not char then return end
	local targetHRP = char:FindFirstChild("HumanoidRootPart")
	if not targetHRP then return end

	local targetAttachment = targetHRP:FindFirstChild("SHNMAX_TargetAttachment")
	if not targetAttachment then
		targetAttachment = Instance.new("Attachment", targetHRP)
		targetAttachment.Name = "SHNMAX_TargetAttachment"
	end

	for _, data in ipairs(ControlledDoors) do
		if data.Align then
			data.Align.Attachment1 = targetAttachment
		end
	end

	local start = tick()
	local flingDetected = false

	while tick() - start < 5 do
		if targetHRP.Velocity.Magnitude >= 20 then
			flingDetected = true
			break
		end
		RunService.Heartbeat:Wait()
	end

	-- Sempre retorna as portas
	for _, data in ipairs(ControlledDoors) do
		if data.Align then
			data.Align.Attachment1 = baseAttachment
		end
	end
end

-- Clique (funciona no mobile)
UserInputService.TouchTap:Connect(function(touchPositions, processed)
	if processed then return end
	local pos = touchPositions[1]
	local camera = Workspace.CurrentCamera
	local unitRay = camera:ScreenPointToRay(pos.X, pos.Y)
	local raycast = Workspace:Raycast(unitRay.Origin, unitRay.Direction * 1000)

	if raycast and raycast.Instance then
		local hit = raycast.Instance
		local player = Players:GetPlayerFromCharacter(hit:FindFirstAncestorOfClass("Model"))
		if player and player ~= LocalPlayer then
			FlingPlayer(player)
		end
	end
end)
  end
})

local kill = Tab:AddSection({Name = "فينق قارب"})

Tab:AddButton({
    Name = "فلينق - قارب",
    Callback = function()
        if not selectedPlayerName or not game.Players:FindFirstChild(selectedPlayerName) then
            warn("No target selected.")
            return
        end

        local Player = game.Players.LocalPlayer
        local Character = Player.Character
        local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
        local RootPart = Character and Character:FindFirstChild("HumanoidRootPart")
        local Vehicles = game.Workspace:FindFirstChild("Vehicles")

        if not Humanoid or not RootPart then
            warn("Humanoid or RootPart invalid")
            return
        end

        local function spawnBoat()
            RootPart.CFrame = CFrame.new(1754, -2, 58)
            task.wait(0.5)
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer("PickingBoat", "MilitaryBoatFree")
            task.wait(1)
            return Vehicles:FindFirstChild(Player.Name.."Car")
        end

        local PCar = Vehicles:FindFirstChild(Player.Name.."Car") or spawnBoat()
        if not PCar then
            warn("Failed to spawn boat")
            return
        end

        local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")
        if not Seat then
            warn("Seat not found")
            return
        end

        repeat 
            task.wait(0.1)
            RootPart.CFrame = Seat.CFrame * CFrame.new(0, 1, 0)
        until Humanoid.SeatPart == Seat

        print("Boat Spawned!")

        local TargetPlayer = game.Players:FindFirstChild(selectedPlayerName)
        if not TargetPlayer or not TargetPlayer.Character then
            warn("Player Not Found!")
            return
        end

        local TargetC = TargetPlayer.Character
        local TargetH = TargetC:FindFirstChildOfClass("Humanoid")
        local TargetRP = TargetC:FindFirstChild("HumanoidRootPart")

        if not TargetRP or not TargetH then
            warn("Humanoid or RootPart of target not found")
            return
        end

        local Spin = Instance.new("BodyAngularVelocity")
        Spin.Name = "Spinning"
        Spin.Parent = PCar.PrimaryPart
        Spin.MaxTorque = Vector3.new(0, math.huge, 0)
        Spin.AngularVelocity = Vector3.new(0, 369, 0) 

        print("Fling enabled!")

        local function moveCar(TargetRP, offset)
            if PCar and PCar.PrimaryPart then
                PCar:SetPrimaryPartCFrame(CFrame.new(TargetRP.Position + offset))
            end
        end

        task.spawn(function()
            while PCar and PCar.Parent and TargetRP and TargetRP.Parent do
                task.wait(0.01) 
                
                moveCar(TargetRP, Vector3.new(0, 1, 0))  
                moveCar(TargetRP, Vector3.new(0, -2.25, 5))  
                moveCar(TargetRP, Vector3.new(0, 2.25, 0.25))  
                moveCar(TargetRP, Vector3.new(-2.25, -1.5, 2.25))  
                moveCar(TargetRP, Vector3.new(0, 1.5, 0))  
                moveCar(TargetRP, Vector3.new(0, -1.5, 0))  

                if PCar and PCar.PrimaryPart then
                    local Rotation = CFrame.Angles(
                        math.rad(math.random(-369, 369)),  
                        math.rad(math.random(-369, 369)), 
                        math.rad(math.random(-369, 369))
                    )
                    PCar:SetPrimaryPartCFrame(CFrame.new(TargetRP.Position + Vector3.new(0, 1.5, 0)) * Rotation)
                end
            end

            if Spin and Spin.Parent then
                Spin:Destroy()
                print("Fling disabled!")
            end
        end)
    end
})
print("Fling - Boat button created")

Tab:AddButton({
    Name = "توقيف فلينق - القارب",
    Callback = function()
        local Player = game.Players.LocalPlayer
        local Character = Player.Character
        local RootPart = Character and Character:FindFirstChild("HumanoidRootPart")
        local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
        local Vehicles = game.Workspace:FindFirstChild("Vehicles")

        if not RootPart or not Humanoid then
            warn("No RootPart or Humanoid found!")
            return
        end

        Humanoid.PlatformStand = true
        print("Player paralyzed to reduce spin effects.")

        for _, obj in pairs(RootPart:GetChildren()) do
            if obj:IsA("BodyAngularVelocity") or obj:IsA("BodyVelocity") then
                obj:Destroy()
            end
        end
        print("Spin and forces removed from player.")

        game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer("DeleteAllVehicles")
        task.wait(0.5)

        local PCar = Vehicles and Vehicles:FindFirstChild(Player.Name.."Car")
        if PCar and PCar.PrimaryPart then
            for _, obj in pairs(PCar.PrimaryPart:GetChildren()) do
                if obj:IsA("BodyAngularVelocity") or obj:IsA("BodyVelocity") then
                    obj:Destroy()
                end
            end
            print("Spin removed from boat.")
        end

        task.wait(1)

        local safePos = Vector3.new(0, 1000, 0)
        local bp = Instance.new("BodyPosition", RootPart)
        bp.Position = safePos
        bp.MaxForce = Vector3.new(math.huge, math.huge, math.huge)

        local bg = Instance.new("BodyGyro", RootPart)
        bg.CFrame = RootPart.CFrame
        bg.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)

        print("Player is stuck at safe coordinate.")

        task.wait(3)

        bp:Destroy()
        bg:Destroy()
        Humanoid.PlatformStand = false

        print("Player released, secure in position.")
    end
})

local kill = Tab:AddSection({Name = "قتل الجميع و بكل الطرائق"})

Tab:AddButton({
    Name = "قتل الجميع باص",
    Callback = function()
        local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local destination = Vector3.new(145.51, -374.09, 21.58) 
local originalPosition = nil  

local function GetBus()  
    local vehicles = Workspace:FindFirstChild("Vehicles")  
    if vehicles then  
        return vehicles:FindFirstChild(Players.LocalPlayer.Name.."Car")  
    end  
    return nil  
end  

local function TrackPlayer(selectedPlayerName, callback)
    while true do  
        if selectedPlayerName then  
            local targetPlayer = Players:FindFirstChild(selectedPlayerName)  
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then  
                local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")  
                if targetHumanoid and targetHumanoid.Sit then  
                    local bus = GetBus()
                    if bus then
                        bus:SetPrimaryPartCFrame(CFrame.new(destination))   
                        print("Jogador sentou, levando ônibus para o void!")  

                        task.wait(0.2)  

                        local function simulateJump()  
                            local humanoid = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")  
                            if humanoid then  
                                humanoid:ChangeState(Enum.HumanoidStateType.Jumping)  
                            end  
                        end  

                        simulateJump()  
                        print("Simulating first pull!")  

                        task.wait(0.4)  
                        simulateJump()
                        print("Simulating second pull!")  

                        task.wait(0.5)
                        if originalPosition then
                            Players.LocalPlayer.Character.HumanoidRootPart.CFrame = originalPosition  
                            print("Player voltou para a posição inicial Xique")  

                            task.wait(0.1)
                            local args = {
                                [1] = "DeleteAllVehicles"
                            }
                            ReplicatedStorage:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(args))
                            print("Todos os veículos foram deletados!")
                        end
                    end
                    break  
                else  
                    local targetRoot = targetPlayer.Character.HumanoidRootPart  
                    local time = tick() * 35
               
                    local lateralOffset = math.sin(time) * 10  -- Movimento lateral rápido  
                    local frontBackOffset = math.cos(time) * 20  -- Movimento frente/trás
                      
                    local bus = GetBus()
                    if bus then
                        bus:SetPrimaryPartCFrame(targetRoot.CFrame * CFrame.new(0, 0, frontBackOffset))  
                    end
                end  
            end  
        end  
        RunService.RenderStepped:Wait()  
    end
    
    if callback then
        callback()
    end
end  

local function StartKillBusao(playerName, callback)
    local selectedPlayerName = playerName

    local player = Players.LocalPlayer  
    local character = player.Character or player.CharacterAdded:Wait()  
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")  

    originalPosition = humanoidRootPart.CFrame  

    local bus = GetBus()  

    if not bus then  
        humanoidRootPart.CFrame = CFrame.new(1118.81, 75.998, -1138.61)  
        task.wait(0.5)  
        local remoteEvent = ReplicatedStorage:FindFirstChild("RE")  
        if remoteEvent and remoteEvent:FindFirstChild("1Ca1r") then  
            remoteEvent["1Ca1r"]:FireServer("PickingCar", "SchoolBus")  
        end  
        task.wait(1)  
        bus = GetBus()  
    end  

    if bus then  
        local seat = bus:FindFirstChild("Body") and bus.Body:FindFirstChild("VehicleSeat")  
        if seat and character:FindFirstChildOfClass("Humanoid") and not character.Humanoid.Sit then  
            repeat  
                humanoidRootPart.CFrame = seat.CFrame * CFrame.new(0, 2, 0)  
                task.wait()  
            until character.Humanoid.Sit or not bus.Parent  
        end  
    end  

    spawn(function()
        TrackPlayer(selectedPlayerName, callback)
    end)
end

local function PerformActionForAllPlayers(players)
    if #players == 0 then
        return
    end

    local player = table.remove(players, 1)
    StartKillBusao(player.Name, function()
        task.wait(0.5)
        PerformActionForAllPlayers(players)
    end)
end

PerformActionForAllPlayers(Players:GetPlayers())
    end
})
print("Kill All Bus button created")

Tab:AddButton({
    Name = "قتل الجميع طرد بيت",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")


local function executeScriptForPlayer(targetPlayer)
    local Player = game.Players.LocalPlayer
    local Backpack = Player.Backpack
    local Character = Player.Character
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Character:FindFirstChild("HumanoidRootPart")
    local Houses = game.Workspace:FindFirstChild("001_Lots")
    local OldPos = RootPart.CFrame
    local Angles = 0
    local Vehicles = Workspace.Vehicles
    local Pos


    function Check()
        if Player and Character and Humanoid and RootPart and Vehicles then
            return true
        else
            return false
        end
    end


    if Check() then
        local House = Houses:FindFirstChild(Player.Name.."House")
        if not House then
            local EHouse
            for _, Lot in pairs(Houses:GetChildren()) do
                if Lot.Name == "For Sale" then
                    for _, num in pairs(Lot:GetDescendants()) do
                        if num:IsA("NumberValue") and num.Name == "Number" and num.Value < 25 and num.Value > 10 then
                            EHouse = Lot
                            break
                        end
                    end
                end
            end


            local BuyDetector = EHouse:FindFirstChild("BuyHouse")
            Pos = BuyDetector.Position
            if BuyDetector and BuyDetector:IsA("BasePart") then
                RootPart.CFrame = BuyDetector.CFrame + Vector3.new(0, -6, 0)
                task.wait(0.5)
                local ClickDetector = BuyDetector:FindFirstChild("ClickDetector")
                if ClickDetector then
                    fireclickdetector(ClickDetector)
                end
            end
        end


        task.wait(0.5)
        local PreHouse = Houses:FindFirstChild(Player.Name .. "House")
        if PreHouse then
            task.wait(0.5)
            local Number
            for i, x in pairs(PreHouse:GetDescendants()) do
                if x.Name == "Number" and x:IsA("NumberValue") then
                    Number = x
                end
            end
            task.wait(0.5)
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gettin1gHous1e"):FireServer("PickingCustomHouse", "049_House", Number.Value)
        end


        task.wait(0.5)
        local PCar = Vehicles:FindFirstChild(Player.Name.."Car")
        if not PCar then
            if Check() then
                RootPart.CFrame = CFrame.new(1118.81, 75.998, -1138.61)
                task.wait(0.5)
                game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer("PickingCar", "SchoolBus")
                task.wait(0.5)
                local PCar = Vehicles:FindFirstChild(Player.Name.."Car")
                task.wait(0.5)
                local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")
                if Seat then
                    repeat
                        task.wait()
                        RootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)
                    until Humanoid.Sit
                end
            end
        end


        task.wait(0.5)
        local PCar = Vehicles:FindFirstChild(Player.Name.."Car")
        if PCar then
            if not Humanoid.Sit then
                local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")
                if Seat then
                    repeat
                        task.wait()
                        RootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)
                    until Humanoid.Sit
                end
            end


            local Target = targetPlayer
            local TargetC = Target.Character
            local TargetH = TargetC:FindFirstChildOfClass("Humanoid")
            local TargetRP = TargetC:FindFirstChild("HumanoidRootPart")
            if TargetC and TargetH and TargetRP then
                if not TargetH.Sit then
                    while not TargetH.Sit do
                        task.wait()
                        local Fling = function(alvo, pos, angulo)
                            PCar:SetPrimaryPartCFrame(CFrame.new(alvo.Position) * pos * angulo)
                        end
                        Angles = Angles + 100
                        Fling(TargetRP, CFrame.new(0, 1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10, CFrame.Angles(math.rad(Angles), 0, 0))
                        Fling(TargetRP, CFrame.new(0, -1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10, CFrame.Angles(math.rad(Angles), 0, 0))
                        Fling(TargetRP, CFrame.new(2.25, 1.5, -2.25) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10, CFrame.Angles(math.rad(Angles), 0, 0))
                        Fling(TargetRP, CFrame.new(-2.25, -1.5, 2.25) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10, CFrame.Angles(math.rad(Angles), 0, 0))
                        Fling(TargetRP, CFrame.new(0, 1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10, CFrame.Angles(math.rad(Angles), 0, 0))
                        Fling(TargetRP, CFrame.new(0, -1.5, 0) + TargetH.MoveDirection * TargetRP.Velocity.Magnitude / 1.10, CFrame.Angles(math.rad(Angles), 0, 0))
                    end
                    task.wait(0.2)
                    local House = Houses:FindFirstChild(Player.Name.."House")
                    PCar:SetPrimaryPartCFrame(CFrame.new(House.HouseSpawnPosition.Position))
                    task.wait(0.2)
                    local pedro = Region3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(30,30,30), game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(30,30,30))
                    local a = workspace:FindPartsInRegion3(pedro, game.Players.LocalPlayer.Character.HumanoidRootPart, math.huge)
                    for i, v in pairs(a) do
                        if v.Name == "HumanoidRootPart" then
                            local b = game:GetService("Players"):FindFirstChild(v.Parent.Name)
                            local args = {
                                [1] = "BanPlayerFromHouse",
                                [2] = b,
                                [3] = v.Parent
                            }
                            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Playe1rTrigge1rEven1t"):FireServer(unpack(args))
                        end
                    end
                end
            end
        end
    end


    -- Deletar o veículo
    local deleteArgs = {
        [1] = "DeleteAllVehicles"
    }
    ReplicatedStorage:WaitForChild("RE"):WaitForChild("1Ca1r"):FireServer(unpack(deleteArgs))
end


-- Iterar sobre todos os jogadores no mapa
for _, player in pairs(Players:GetPlayers()) do
    if player ~= Player then
        executeScriptForPlayer(player)
       task.wait(2)
    end
end
    end
})
print("House Ban kill All button created")

Tab:AddButton({
    Name = "فلينق الجميع قارب",
    Callback = function()
        local Player = game.Players.LocalPlayer
    local Character = Player.Character
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Character:FindFirstChild("HumanoidRootPart")
    local Vehicles = game.Workspace:FindFirstChild("Vehicles")
    local OldPos = RootPart.CFrame
    local Angles = 0
    local PCar = Vehicles:FindFirstChild(Player.Name.."Car")
    
    -- Se nÃ£o tiver um carro, cria um  
            if not PCar then  
                if RootPart then  
                    RootPart.CFrame = CFrame.new(1754, -2, 58)  
                    task.wait(0.5)  
                    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Ca1r"):FireServer("PickingBoat", "MilitaryBoatFree")  
                    task.wait(0.5)  
                    PCar = Vehicles:FindFirstChild(Player.Name.."Car")  
                    task.wait(0.5)  
                    local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")  
                    if Seat then  
                        repeat  
                            task.wait()  
                            RootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)  
                        until Humanoid.Sit  
                    end  
                end  
            end  
      
            task.wait(0.5)  
            PCar = Vehicles:FindFirstChild(Player.Name.."Car")  
      
            -- Se o carro existir, teletransporta para o assento se necessÃ¡rio  
            if PCar then  
                if not Humanoid.Sit then  
                    local Seat = PCar:FindFirstChild("Body") and PCar.Body:FindFirstChild("VehicleSeat")  
                    if Seat then  
                        repeat  
                            task.wait()  
                            RootPart.CFrame = Seat.CFrame * CFrame.new(0, math.random(-1, 1), 0)  
                        until Humanoid.Sit  
                    end  
                end  
            end  
      
            -- Adiciona o BodyGyro ao carro para controle de movimento  
            local SpinGyro = Instance.new("BodyGyro")  
            SpinGyro.Parent = PCar.PrimaryPart  
            SpinGyro.MaxTorque = Vector3.new(1e7, 1e7, 1e7)  
            SpinGyro.P = 1e7  
            SpinGyro.CFrame = PCar.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(90), 0)  
      
            -- FunÃ§Ã£o de Fling em cada jogador por 3 segundos  
            local function flingPlayer(TargetC, TargetRP, TargetH)
    Angles = 0  
                local endTime = tick() + 1  -- Define o tempo final em 2 segundos a partir de agora  
                while tick() < endTime do  
                    Angles = Angles + 100  
                    task.wait()  
      
                    -- Movimentos e Ã¢ngulos para o Fling  
                    local kill = function(alvo, pos, angulo)  
                        PCar:SetPrimaryPartCFrame(CFrame.new(alvo.Position) * pos * angulo)  
                    end  
      
                    -- Fling para vÃ¡rias posiÃ§Ãµes ao redor do TargetRP  
                    kill(TargetRP, CFrame.new(0, 3, 0), CFrame.Angles(math.rad(Angles), 0, 0))  
                    kill(TargetRP, CFrame.new(0, -1.5, 2), CFrame.Angles(math.rad(Angles), 0, 0))  
                    kill(TargetRP, CFrame.new(2, 1.5, 2.25), CFrame.Angles(math.rad(50), 0, 0))  
                    kill(TargetRP, CFrame.new(-2.25, -1.5, 2.25), CFrame.Angles(math.rad(30), 0, 0))  
                    kill(TargetRP, CFrame.new(0, 1.5, 0), CFrame.Angles(math.rad(Angles), 0, 0))  
                    kill(TargetRP, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(Angles), 0, 0))  
                end  
            end  
      
            -- Itera sobre todos os jogadores  
            for _, Target in pairs(game.Players:GetPlayers()) do  
                -- Pula o jogador local  
                if Target ~= Player then  
                    local TargetC = Target.Character  
                    local TargetH = TargetC and TargetC:FindFirstChildOfClass("Humanoid")  
                    local TargetRP = TargetC and TargetC:FindFirstChild("HumanoidRootPart")  
      
                    -- Se encontrar o alvo e seus componentes, executa o fling  
                    if TargetC and TargetH and TargetRP then  
                        flingPlayer(TargetC, TargetRP, TargetH)  -- Fling no jogador atual  
                    end  
                end  
            end  
      
            -- Retorna o jogador para sua posiÃ§Ã£o original  
            task.wait(0.5)  
            PCar:SetPrimaryPartCFrame(CFrame.new(0, 0, 0))  
            task.wait(0.5)  
            Humanoid.Sit = false  
            task.wait(0.5)  
            RootPart.CFrame = OldPos  
      
            -- Remove o BodyGyro apÃ³s o efeito  
            SpinGyro:Destroy()  
    end
})
print("Fling Boat All button created")

Tab:AddButton({
    Name = "اوتو فلينق الجميع",
    Callback = function()
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local LocalPlayer = Players.LocalPlayer
    local cam = workspace.CurrentCamera


    local function ProcessPlayer(target)
        if not target or not target.Character or target == LocalPlayer then return end
        
        local flingActive = true
        local root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        local tRoot = target.Character and target.Character:FindFirstChild("HumanoidRootPart")
        if not root or not tRoot then return end
        
        local char = LocalPlayer.Character
        local hum = char:FindFirstChildOfClass("Humanoid")
        local original = root.CFrame

    
        ReplicatedStorage:WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer("ClearAllTools")
        task.wait(0.2)

  
        ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
        task.wait(0.3)

        local tool = LocalPlayer.Backpack:FindFirstChild("Couch")
        if tool then
            tool.Parent = char
        end
task.wait(0.1)

game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.F, false, game)
task.wait(0.25)

        workspace.FallenPartsDestroyHeight = 0/0

        local bv = Instance.new("BodyVelocity")
        bv.Name = "FlingForce"
        bv.Velocity = Vector3.new(9e8, 9e8, 9e8)
        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bv.Parent = root

        hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        hum.PlatformStand = false
        cam.CameraSubject = target.Character:FindFirstChild("Head") or tRoot or hum

 
        task.spawn(function()
            local angle = 0
            local parts = {root}
            while flingActive and target and target.Character and target.Character:FindFirstChildOfClass("Humanoid") do
                local tHum = target.Character:FindFirstChildOfClass("Humanoid")
                if tHum.Sit then break end
                angle += 50

                for _, part in ipairs(parts) do
                    local hrp = target.Character.HumanoidRootPart
                    local pos = hrp.Position + hrp.Velocity / 1.5
                    root.CFrame = CFrame.new(pos) * CFrame.Angles(math.rad(angle), 0, 0)
                end

                root.Velocity = Vector3.new(9e8, 9e8, 9e8)
                root.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
                task.wait()
            end

         
            flingActive = false
            bv:Destroy()
            hum:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
            hum.PlatformStand = false
            root.CFrame = original
            cam.CameraSubject = hum

            for _, p in pairs(char:GetDescendants()) do
                if p:IsA("BasePart") then
                    p.Velocity = Vector3.zero
                    p.RotVelocity = Vector3.zero
                end
            end

            hum:UnequipTools()
            ReplicatedStorage.RE:FindFirstChild("1Too1l"):InvokeServer("PickingTools", "Couch")
        end)
       
        while flingActive do
            task.wait()
        end
    end


    for _, player in ipairs(Players:GetPlayers()) do
        ProcessPlayer(player)
			end
    end
})

Tab:AddButton({
    Name = "سحب الجميع كنبه [افضل]",
    Callback = function()
        local args = {
    [1] = "ClearAllTools"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack(args))

wait(0.2)

toolselcted = "Couch"
dupeamot = 25 --Put amouth to dupe
picktoolremote = game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l")
cleartoolremote = game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clea1rTool1s")
game:GetService("StarterGui"):SetCore("SendNotification",{Title="Dupando",Text="Nao Clique em nada quando tiver dupando . ", Button1 = " Eu entendi" ,Duration=5})
game:GetService("StarterGui"):SetCore("SendNotification",{Title="Dupe Script",Text="Because It will break the script and you will need to rejoin.", Button1 = "Eu entendi" ,Duration=5}) 
duping = true
oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
    task.wait()
    game.Players.LocalPlayer.Character.Humanoid.Sit = false
end
wait(0.1)
if game:GetService("Workspace"):FindFirstChild("Camera") then
    game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() 
end
for m=1,2 do 
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999.414, -490, 999999999.414, 0.974360406, -0.175734088, 0.14049761, -0.133441404, 0.0514053069, 0.989722729, -0.181150302, -0.983094692, 0.0266370922)
end
task.wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(0.5)
for aidj,afh in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if afh.Name == toolselcted == false then
        if afh:IsA("Tool") then
            afh.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end
for aiefhiewhwf,dvjbvj in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if dvjbvj:IsA("Tool") then
        if dvjbvj.Name == toolselcted == false then
            dvjbvj:Destroy()
        end
    end
end
for ttjtjutjutjjtj,ddvdvdsvdfbrnytytmvdv in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if ddvdvdsvdfbrnytytmvdv:IsA("Tool") then
        if ddvdvdsvdfbrnytytmvdv.name == toolselcted == false then
            ddvdvdsvdfbrnytytmvdv:Destroy()
        end
    end
end
for findin,toollel in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if toollel:IsA("Tool") then
        if toollel.Name == toolselcted then
            toollllfoun2 = true
            for basc,aijfw in pairs(toollel:GetDescendants()) do
                if aijfw.Name == "Handle" then
                    aijfw.Name = "Hâ¥aâ¥nâ¥dâ¥lâ¥e"
                    toollel.Parent = game.Players.LocalPlayer.Backpack
                    toollel.Parent = game.Players.LocalPlayer.Character
                    tollllahhhh = toollel
                    task.wait()
                end
            end
        else 
            toollllfoun2 = false
        end
    end
end
for fiifi,toollll in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if toollll:IsA("Tool") then
        if toollll.Name == toolselcted then
            toollllfoun = true
            for nana,jjsjsj in pairs(toollll:GetDescendants()) do
                if jjsjsj.Name == "Handle" then
                    toollll.Parent = game.Players.LocalPlayer.Character
                    wait()
                    jjsjsj.Name = "Hâ¥aâ¥nâ¥dâ¥lâ¥e"
                    toollll.Parent = game.Players.LocalPlayer.Backpack
                    toollll.Parent = game.Players.LocalPlayer.Character
                    toolllffel = toollll
                end
            end
        else 
            toollllfoun = false
        end
    end
end
if toollllfoun == true then
    if game.Players.LocalPlayer.Character:FindFirstChild(toolllffel) == nil then  
        toollllfoun = false 
    end
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild(toolllffel) == nil
    toollllfoun = false
end
if toollllfoun2 == true then
    if game.Players.LocalPlayer.Character:FindFirstChild(tollllahhhh) == nil then 
        toollllfoun2 = false 
    end
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild(tollllahhhh) == nil
    toollllfoun2 = false
end
wait(0.1)
for m=1, dupeamot do
    if duping == false then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false 
        return 
    end
    if game:GetService("Workspace"):FindFirstChild("Camera") then
        game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() 
    end
    if m <= dupeamot then
        game:GetService("StarterGui"):SetCore("SendNotification",{Title="Dupando vida",Text="Se tem".." "..m.." ".."Duped".." "..toolselcted.."!",Duration=0.5})
    elseif m == dupeamot or m >= dupeamot - 1 then
        game:GetService("StarterGui"):SetCore("SendNotification",{Title="Dupando",Text="Se tem".." "..m.." ".."Duped".." "..toolselcted.."!".." ".."Duping tools is done now, Please wait a little bit to respawn.",Duration=4})
    end
    local args = {
        [1] = "PickingTools",
        [2] = toolselcted
    }
    
    picktoolremote:InvokeServer(unpack(args))
    game:GetService("Players").LocalPlayer.Backpack:WaitForChild(toolselcted).Parent = game.Players.LocalPlayer.Character
    if duping == false then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false 
        return 
    end
    wait()
    game:GetService("Players").LocalPlayer.Character[toolselcted]:FindFirstChild("Handle").Name = "Hâ¥aâ¥nâ¥dâ¥lâ¥e"
    game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolselcted).Parent = game.Players.LocalPlayer.Backpack
    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(toolselcted).Parent = game.Players.LocalPlayer.Character
    repeat  
        if game:GetService("Workspace"):FindFirstChild("Camera") then
            game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() 
        end
        task.wait() 
    until game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolselcted) == nil
end
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") == nil
repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf
wait()
duping = false

for wwefef,weifwwe in pairs(game.Players:GetPlayers()) do
    if weifwwe.Name == game.Players.LocalPlayer.Name == false then
        ewoifjwoifjiwo = wwefef
    end
end
for m=1,ewoifjwoifjiwo do
    game.Players.LocalPlayer.Backpack.Couch.Name = "couch"..m
end
wait()
for weofefawd,iwiejguiwg in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if iwiejguiwg.Name == "couch"..weofefawd then
        iwiejguiwg.Handle.Name = "Handle "
    end
end
wait(0.2)
local function bring(skjdfuwiruwg,woiejewg)
    if woiejewg == nil == false then
        game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg]:FindFirstChild("Seat1").Disabled = true
        game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg]:FindFirstChild("Seat2").Disabled = true
        game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Character
        tet = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character["couch"..skjdfuwiruwg]:FindFirstChild("Handle "))
        tet.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        tet.P = 1250
        tet.Velocity = Vector3.new(0,0,0)
        tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"
        repeat
            for m=1,35 do
                local pos = {x=0, y=0, z=0}
                pos.x = woiejewg.Character.HumanoidRootPart.Position.X
                pos.y = woiejewg.Character.HumanoidRootPart.Position.Y
                pos.z = woiejewg.Character.HumanoidRootPart.Position.Z
                pos.x = pos.x + woiejewg.Character.HumanoidRootPart.Velocity.X / 2
                pos.y = pos.y + woiejewg.Character.HumanoidRootPart.Velocity.Y / 2
                pos.z = pos.z + woiejewg.Character.HumanoidRootPart.Velocity.Z / 2
                game.Players.LocalPlayer.Character["couch"..skjdfuwiruwg]:FindFirstChild("Seat1").CFrame = CFrame.new(Vector3.new(pos.x,pos.y,pos.z)) * CFrame.new(-2,2,0)
                task.wait()
            end
            game.Players.LocalPlayer.Character["couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Backpack
            wait()
            game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg]:FindFirstChild("Handle ").Name = "Handle"
            wait(0.2)
            game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Character
            wait()
            game.Players.LocalPlayer.Character["couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Backpack
            game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg].Handle.Name = "Handle "
            wait(0.2)
            game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Character
            tet = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character["couch"..skjdfuwiruwg]:FindFirstChild("Seat1"))
            tet.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            tet.P = 1250
            tet.Velocity = Vector3.new(0,0,0)
            tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"
        until woiejewg.Character.Humanoid.Sit == true
        wait()
        game.Players.LocalPlayer.Character["couch"..skjdfuwiruwg]:FindFirstChild("Handle "):FindFirstChild("#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"):Destroy()
        game.Players.LocalPlayer.Character["couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Backpack
        wait()
        game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg]:FindFirstChild("Handle ").Name = "Handle"
        wait(0.2)
        game.Players.LocalPlayer.Backpack["couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Character
        wait()
        game.Players.LocalPlayer.Character["couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Backpack
    end
end
for mwef,weuerg in pairs(game.Players:GetPlayers()) do
    if weuerg.Name == game.Players.LocalPlayer.Name == false then
        spawn(function()
            bring(mwef,weuerg)
        end)
    end
end
    end
})
print("Bring All Couch button created")

Tab:AddButton({
    Name = "قتل الجميع كنبه [افضل]",
    Callback = function()
        local args = {
    [1] = "ClearAllTools"
}

game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack(args))

wait(0.2)

local initialPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

local part = Instance.new("Part")
part.Size = Vector3.new(5000, 10, 5000)
part.Position = Vector3.new(0, -500, 0)
part.Anchored = true
part.CanCollide = true
part.Parent = game.Workspace
task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -500, 0)
wait(2)
toolselcted = "Couch"
dupeamot = 25 -- dupe
picktoolremote = game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l")
cleartoolremote = game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clea1rTool1s")
game:GetService("StarterGui"):SetCore("SendNotification",{Title="Dupando",Text="Nao clique em nada", Button1 = "Eu entendi" ,Duration=5})
game:GetService("StarterGui"):SetCore("SendNotification",{Title="Dupando",Text="Espere", Button1 = "Tendeu" ,Duration=5})
duping = true
oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
    task.wait()
    game.Players.LocalPlayer.Character.Humanoid.Sit = false
end
wait(0.1)
if game:GetService("Workspace"):FindFirstChild("Camera") then
    game:GetService("Workspace"):FindFirstChild("Camera"):Destroy()
end
for m=1,2 do 
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999.414, -490, 999999999.414, 0.974360406, -0.175734088, 0.14049761, -0.133441404, 0.0514053069, 0.989722729, -0.181150302, -0.983094692, 0.0266370922)
end
task.wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait(0.5)
for aidj,afh in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if afh.Name == toolselcted == false then
        if afh:IsA("Tool") then
            afh.Parent = game.Players.LocalPlayer.Backpack
        end
    end
end
for aiefhiewhwf,dvjbvj in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if dvjbvj:IsA("Tool") then
        if dvjbvj.Name == toolselcted == false then
            dvjbvj:Destroy()
        end
    end
end
for ttjtjutjutjjtj,ddvdvdsvdfbrnytytmvdv in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if ddvdvdsvdfbrnytytmvdv:IsA("Tool") then
        if ddvdvdsvdfbrnytytmvdv.Name == toolselcted == false then
            ddvdvdsvdfbrnytytmvdv:Destroy()
        end
    end
end
for findin,toollel in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
    if toollel:IsA("Tool") then
        if toollel.Name == toolselcted then
            toollllfoun2 = true
            for basc,aijfw in pairs(toollel:GetDescendants()) do
                if aijfw.Name == "Handle" then
                    aijfw.Name = "HÃ¢Â Â¥aÃ¢Â Â¥nÃ¢Â Â¥dÃ¢Â Â¥lÃ¢Â Â¥e"
                    toollel.Parent = game.Players.LocalPlayer.Backpack
                    toollel.Parent = game.Players.LocalPlayer.Character
                    tollllahhhh = toollel
                    task.wait()
                end
            end
        else 
            toollllfoun2 = false
        end
    end
end
for fiifi,toollll in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if toollll:IsA("Tool") then
        if toollll.Name == toolselcted then
            toollllfoun = true
            for nana,jjsjsj in pairs(toollll:GetDescendants()) do
                if jjsjsj.Name == "Handle" then
                    toollll.Parent = game.Players.LocalPlayer.Character
                    wait()
                    jjsjsj.Name = "HÃ¢Â Â¥aÃ¢Â Â¥nÃ¢Â Â¥dÃ¢Â Â¥lÃ¢Â Â¥e"
                    toollll.Parent = game.Players.LocalPlayer.Backpack
                    toollll.Parent = game.Players.LocalPlayer.Character
                    toolllffel = toollll
                end
            end
        else 
            toollllfoun = false
        end
    end
end
if toollllfoun == true then
    if game.Players.LocalPlayer.Character:FindFirstChild(toolllffel) == nil then 
        toollllfoun = false 
    end
    repeat 
        wait() 
    until game.Players.LocalPlayer.Character:FindFirstChild(toolllffel) == nil
    toollllfoun = false
end
if toollllfoun2 == true then
    if game.Players.LocalPlayer.Character:FindFirstChild(tollllahhhh) == nil then 
        toollllfoun2 = false 
    end
    repeat 
        wait() 
    until game.Players.LocalPlayer.Character:FindFirstChild(tollllahhhh) == nil
    toollllfoun2 = false
end
wait(0.1)
for m=1, dupeamot do
    if duping == false then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false 
        return 
    end
    if game:GetService("Workspace"):FindFirstChild("Camera") then
        game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() 
    end
    if m <= dupeamot then
        game:GetService("StarterGui"):SetCore("SendNotification",{Title="Dupe Script",Text="Agora c Tem".." "..m.." ".."Duped".." "..toolselcted.."!",Duration=0.5})
    elseif m == dupeamot or m >= dupeamot - 1 then
        game:GetService("StarterGui"):SetCore("SendNotification",{Title="Dupe Script",Text="Agora c tem".." "..m.." ".."Duped".." "..toolselcted.."!".." ".."As tools Tao sendo dupada Clica em nada nao fiote",Duration=4})
    end
    local args = {
        [1] = "PickingTools",
        [2] = toolselcted
    }

    picktoolremote:InvokeServer(unpack(args)) 
    game:GetService("Players").LocalPlayer.Backpack:WaitForChild(toolselcted).Parent = game.Players.LocalPlayer.Character 
    if duping == false then 
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false 
        return 
    end 
    wait() 
    game:GetService("Players").LocalPlayer.Character[toolselcted]:FindFirstChild("Handle").Name = "HÃ¢Â Â¥aÃ¢Â Â¥nÃ¢Â Â¥dÃ¢Â Â¥lÃ¢Â Â¥e" 
    game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolselcted).Parent = game.Players.LocalPlayer.Backpack 
    game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(toolselcted).Parent = game.Players.LocalPlayer.Character 
    repeat 
        if game:GetService("Workspace"):FindFirstChild("Camera") then 
            game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() 
        end 
        task.wait() 
    until game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolselcted) == nil 
end 
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false 
repeat 
    wait() 
until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") == nil 
repeat 
    wait() 
until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcf 
wait() 
duping = false 
for wwefef,weifwwe in pairs(game.Players:GetPlayers()) do 
    if weifwwe.Name == game.Players.LocalPlayer.Name == false then 
        ewoifjwoifjiwo = wwefef 
    end 
end 
for m=1,ewoifjwoifjiwo do 
    game.Players.LocalPlayer.Backpack.Couch.Name = "Chaos Couch"..m 
end 
wait() 
for weofefawd,iwiejguiwg in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
    if iwiejguiwg.Name == "Chaos Couch"..weofefawd then 
        iwiejguiwg.Handle.Name = "Handle " 
    end 
end 
wait(0.2) 
local function bring(skjdfuwiruwg,woiejewg) 
    if woiejewg == nil == false then 
        game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg]:FindFirstChild("Seat1").Disabled = true 
        game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg]:FindFirstChild("Seat2").Disabled = true 
        game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Character 
        tet = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character["Chaos Couch"..skjdfuwiruwg]:FindFirstChild("Handle ")) 
        tet.MaxForce = Vector3.new(math.huge,math.huge,math.huge) 
        tet.P = 1250 
        tet.Velocity = Vector3.new(0,0,0) 
        tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W" 
        repeat 
            for m=1,35 do 
                local pos = {x=0, y=0, z=0} 
                pos.x = woiejewg.Character.HumanoidRootPart.Position.X 
                pos.y = woiejewg.Character.HumanoidRootPart.Position.Y 
                pos.z = woiejewg.Character.HumanoidRootPart.Position.Z 
                pos.x = pos.x + woiejewg.Character.HumanoidRootPart.Velocity.X / 2 
                pos.y = pos.y + woiejewg.Character.HumanoidRootPart.Velocity.Y / 2 
                pos.z = pos.z + woiejewg.Character.HumanoidRootPart.Velocity.Z / 2 
                game.Players.LocalPlayer.Character["Chaos Couch"..skjdfuwiruwg]:FindFirstChild("Seat1").CFrame = CFrame.new(Vector3.new(pos.x,pos.y,pos.z)) * CFrame.new(-2,2,0) 
                task.wait() 
            end 
            game.Players.LocalPlayer.Character["Chaos Couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Backpack 
            wait() 
            game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg]:FindFirstChild("Handle ").Name = "Handle" 
            wait(0.2) 
            game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Character 
            wait() 
            game.Players.LocalPlayer.Character["Chaos Couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Backpack 
            game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg].Handle.Name = "Handle " 
            wait(0.2) 
            game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Character 
            tet = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character["Chaos Couch"..skjdfuwiruwg]:FindFirstChild("Seat1")) 
            tet.MaxForce = Vector3.new(math.huge,math.huge,math.huge) 
            tet.P = 1250 
            tet.Velocity = Vector3.new(0,0,0) 
            tet.Name = "#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W" 
        until woiejewg.Character.Humanoid.Sit == true 
        wait() 
        game.Players.LocalPlayer.Character["Chaos Couch"..skjdfuwiruwg]:FindFirstChild("Handle "):FindFirstChild("#mOVOOEPF$#@F$#GERE..>V<<<<EW<V<<W"):Destroy() 
        game.Players.LocalPlayer.Character["Chaos Couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Backpack 
        wait() 
        game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg]:FindFirstChild("Handle ").Name = "Handle" 
        wait(0.2) 
        game.Players.LocalPlayer.Backpack["Chaos Couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Character 
        wait() 
        game.Players.LocalPlayer.Character["Chaos Couch"..skjdfuwiruwg].Parent = game.Players.LocalPlayer.Backpack 
    end 
end 
for mwef,weuerg in pairs(game.Players:GetPlayers()) do 
    if weuerg.Name == game.Players.LocalPlayer.Name == false then 
        spawn(function() bring(mwef,weuerg) end) 
    end 
end 

-- Função para teletransportar o jogador de volta à posição inicial após 10 segundos
task.delay(14, function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(initialPosition)
end)

-- Função para limpar todas as ferramentas 0.5 segundos após teletransporte para a posição inicial
task.delay(14.1, function()
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Clea1rTool1s"):FireServer(unpack(args))
end)
    end
})
print("Kill All Couch button created")  

Tab:AddButton({
    Name = "فلينق الجميع كره",
    Callback = function()
local player=game:GetService("Players").LocalPlayer
local SoccerBalls=workspace.WorkspaceCom["001_SoccerBalls"]
local MyBall=SoccerBalls:FindFirstChild("Soccer"..player.Name)

if not MyBall then
if not player.Backpack:FindFirstChild("SoccerBall") then
local args={[1]="PickingTools",[2]="SoccerBall"}
game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l"):InvokeServer(unpack(args))
task.wait()
player.Backpack.SoccerBall.Parent=player.Character
repeat MyBall=SoccerBalls:FindFirstChild("Soccer"..player.Name) task.wait() until MyBall
player.Character.SoccerBall.Parent=player.Backpack
task.wait()
else
player.Backpack.SoccerBall.Parent=player.Character
repeat MyBall=SoccerBalls:FindFirstChild("Soccer"..player.Name) task.wait() until MyBall
player.Character.SoccerBall.Parent=player.Backpack
end
end


for i,v in pairs(game.Players:GetPlayers()) do
if v~=game.Players.LocalPlayer then
local target=v
local TCharacter=target.Character or target.CharacterAdded:Wait()
local THumanoidRootPart=TCharacter:WaitForChild("HumanoidRootPart")
if not MyBall or not THumanoidRootPart then return end

for _,v in pairs(MyBall:GetChildren()) do
if v:IsA("BodyMover") then v:Destroy() end
end

local bodyVelocity=Instance.new("BodyVelocity")
bodyVelocity.Velocity=Vector3.new(9e8,9e8,9e8)
bodyVelocity.MaxForce=Vector3.new(1/0,1/0,1/0)
bodyVelocity.P=1e10
bodyVelocity.Parent=MyBall

local bv=Instance.new("BodyVelocity")
bv.Velocity=Vector3.new(9e8,9e8,9e8)
bv.MaxForce=Vector3.new(1/0,1/0,1/0)
bv.P=1e9
bv.Parent=THumanoidRootPart

local oldPos=THumanoidRootPart.Position
workspace.CurrentCamera.CameraSubject=THumanoidRootPart

repeat
local velocity=THumanoidRootPart.Velocity.Magnitude
local parts={}
for _,v in pairs(TCharacter:GetDescendants()) do
if v:IsA("BasePart") and v.CanCollide and not v.Anchored then table.insert(parts,v) end
end
for _,part in ipairs(parts) do
local pos_x=target.Character.HumanoidRootPart.Position.X
local pos_y=target.Character.HumanoidRootPart.Position.Y
local pos_z=target.Character.HumanoidRootPart.Position.Z
pos_x=pos_x+(target.Character.HumanoidRootPart.Velocity.X/1.5)
pos_y=pos_y+(target.Character.HumanoidRootPart.Velocity.Y/1.5)
pos_z=pos_z+(target.Character.HumanoidRootPart.Velocity.Z/1.5)
MyBall.CFrame=CFrame.new(pos_x,pos_y,pos_z)
task.wait(1/6000)
end
task.wait(1/6000)
until THumanoidRootPart.Velocity.Magnitude>5000 or TCharacter.Humanoid.Health==0 or target.Parent~=game.Players or THumanoidRootPart.Parent~=TCharacter or TCharacter~=target.Character

end
end

workspace.CurrentCamera.CameraSubject=game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
  end
})

local Section = Tab:AddSection({
	Name = "جلوس على راس الاعب"
})

local selectedHeadSit = nil
local headSitConnection = nil

local headSitDropdown = Tab:AddDropdown({
    Name = "اختار لاعب",
    Default = "",
    Options = players,
    Callback = function(Value)
        selectedHeadSit = Value
    end
})

Tab:AddToggle({
    Name = "جلوس على راسه",
    Default = false,
    Callback = function(bool)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local humanoid = character:WaitForChild("Humanoid")

        if not selectedHeadSit or selectedHeadSit == "" then
            warn("Nenhum jogador selecionado para Head Sit!")
            return false
        end

        local selectedPlayer = game.Players:FindFirstChild(selectedHeadSit)

        if bool then
            if selectedPlayer and selectedPlayer.Character then
                humanoid.Sit = true

                if headSitConnection then
                    headSitConnection:Disconnect()
                end

                headSitConnection = game:GetService("RunService").Heartbeat:Connect(function()
                    if selectedPlayer.Character and selectedPlayer.Character:FindFirstChild("Head") and humanoid.Sit then
                        local targetHead = selectedPlayer.Character.Head
                        humanoidRootPart.CFrame = targetHead.CFrame * CFrame.Angles(0, 0, 0) * CFrame.new(0, 1.6, 0.4)
                    else
                        if headSitConnection then
                            headSitConnection:Disconnect()
                            headSitConnection = nil
                            humanoid.Sit = false
                        end
                    end
                end)
            else
                warn("Jogador selecionado não encontrado ou sem Character!")
                return false
            end
        else
            if headSitConnection then
                headSitConnection:Disconnect()
                headSitConnection = nil
            end
            humanoid.Sit = false
        end
    end
})

Tab:AddButton({
    Name = "تحديث القائمه",
    Callback = function()
        local updatedPlayers = updatePlayerList()
        if headSitDropdown and updatedPlayers then
            pcall(function()
                headSitDropdown:Refresh(updatedPlayers)
            end)
            if selectedHeadSit and not game.Players:FindFirstChild(selectedHeadSit) then
                selectedHeadSit = nil
                pcall(function()
                    headSitDropdown:Set("")
                end)
            end
        end
    end
})

local Section = Tab:AddSection({
	Name = "التخريب V2"
})

Tab:AddSection({ "ادوات الاق" })

local BNumber = 2000 -- Initial default value

Toggle = Tab:AddToggle({
    Name = "سبام كرة السلة",
    Default = false,
    Callback = function(Value)
        BasketToggleH = Value
        if BasketToggleH then
            local Player = game.Players.LocalPlayer
            local Backpack = Player.Backpack
            local Mouse = Player:GetMouse()
            local Character = Player.Character
            local Humanoid = Character:FindFirstChildOfClass("Humanoid")
            local RootPart = Character:FindFirstChild("HumanoidRootPart")
            local OldPosition = RootPart.CFrame
            local Clone = Workspace.WorkspaceCom["001_GiveTools"].Basketball

            for i = 1, BNumber do
                task.wait()
                RootPart.CFrame = Clone.CFrame
                fireclickdetector(Clone.ClickDetector)
            end
            task.wait()
            RootPart.CFrame = OldPosition

            while BasketToggleH do
                task.wait()
                for i, v in ipairs(Character:GetChildren()) do
                    if v.Name == "Basketball" then
                        task.wait()
                        local args = {
                            [1] = Mouse.Hit.p
                        }
                        v.ClickEvent:FireServer(unpack(args))
                    end
                end
            end
        end
    end
})

local Slider = Tab:AddSlider({
    Name = "عدد كرات السلة",
    MinValue = 1,
    MaxValue = 2000, -- Adjust as needed
    Default = BNumber,
    Increase = 1,
    Callback = function(Value)
        BNumber = Value
    end
})

local BNumber = 12  -- Valor padrÃ£o inicial para a quantidade de duplicaÃ§Ãµes

-- Adiciona um TextBox para inserir a quantidade de itens a serem duplicados
local Slider = Tab:AddTextBox({
    Name = "ضع عدد نسخ اليزر",
    Default = tostring(BNumber),
    Callback = function(Value)
        BNumber = tonumber(Value) or BNumber  -- Atualiza o valor de BNumber com o que o usuÃ¡rio inseriu
    end
})

local loopEnabled = false

local Toggle = Tab:AddToggle({
    Name = "لاق سلاح اليزر",
    Description = "يحتاج تقريبا من 20 الى 25 ثانية",
    Default = false,
    Callback = function(Value)
        loopEnabled = Value

        if loopEnabled then
            warn("Lag Taser Ativado")

            local function duplicarTaser()
                local Player = game.Players.LocalPlayer
                local Character = Player.Character or Player.CharacterAdded:Wait()
                local RootPart = Character:WaitForChild("HumanoidRootPart")
                local Taser = game:GetService("Workspace"):FindFirstChild("WorkspaceCom")
                    and game:GetService("Workspace").WorkspaceCom["001_GiveTools"]:FindFirstChild("Taser")

                if Taser and Taser:FindFirstChild("ClickDetector") then
                    local OldPos = RootPart.CFrame

                    for i = 1, 12 do
                        RootPart.CFrame = Taser.CFrame
                        fireclickdetector(Taser.ClickDetector)
                        task.wait()
                    end

                    RootPart.CFrame = OldPos
                else
                    warn("Erro ao encontrar o Taser! Tente novamente.")
                end
            end

            task.spawn(function()
                while loopEnabled do
                    duplicarTaser()
                    task.wait(0.001)
                end
            end)
        else
            warn("Lag Taser Desativado")
        end
    end
})

local BNumber = 9e9
local LaptopLoop = false

Tab:AddToggle({
    Name = "لاق الابتوب",
    Description = "يحتاج تقريبا من 20 الى 25 ثانيه",
    Default = false,
    Callback = function(Value)
        LaptopLoop = Value

        if LaptopLoop then
            warn("Lag Laptop Ativado")

            task.spawn(function()
                local Player = game.Players.LocalPlayer 
                local Character = Player.Character or Player.CharacterAdded:Wait()
                local RootPart = Character:WaitForChild("HumanoidRootPart")
                local Clone = game:GetService("Workspace"):FindFirstChild("WorkspaceCom") 
                    and game:GetService("Workspace").WorkspaceCom:FindFirstChild("001_GiveTools")
                    and game:GetService("Workspace").WorkspaceCom["001_GiveTools"]:FindFirstChild("Laptop")

                if not (Clone and Clone:FindFirstChild("ClickDetector")) then
                    warn("Laptop ou ClickDetector não encontrado!")
                    return
                end

                local OldPos = RootPart.CFrame
                local processed = 0
                local iterationsPerFrame = 500

                -- Loop controlado por Heartbeat
                local connection
                connection = game:GetService("RunService").Heartbeat:Connect(function()
                    if not LaptopLoop then
                        connection:Disconnect()
                        RootPart.CFrame = OldPos
                        warn("Lag Laptop Desativado")
                        return
                    end

                    for i = 1, iterationsPerFrame do
                        if processed < BNumber then
                            RootPart.CFrame = Clone.CFrame
                            fireclickdetector(Clone.ClickDetector)
                            processed += 1
                        else
                            connection:Disconnect()
                            RootPart.CFrame = OldPos
                            warn("Finalizado spam do Laptop.")
                            return
                        end
                    end
                end)
            end)
        else
            -- Apenas para feedback instantâneo
            warn("Lag Laptop Desativado")
        end
    end
})

local BookLoop = false

Tab:AddToggle({
    Name = "لاق كتاب",
    Description = "يحتاج من 20 الى 25 ثانيه",
    Default = false,
    Callback = function(Value)
        BookLoop = Value

        if BookLoop then
            warn("Lag Book Ativado")

            task.spawn(function()
                local Player = game.Players.LocalPlayer
                local Character = Player.Character or Player.CharacterAdded:Wait()
                local RootPart = Character:WaitForChild("HumanoidRootPart")
                local Book = game:GetService("Workspace")
                    :FindFirstChild("WorkspaceCom")
                    and game.Workspace.WorkspaceCom["001_DayCare"].Tools:FindFirstChild("Book")

                if not (Book and Book:FindFirstChild("ClickDetector")) then
                    warn("Erro ao encontrar o Book! Tente novamente.")
                    return
                end

                local OldPos = RootPart.CFrame

                while BookLoop do
                    for i = 1, 12 do
                        if not BookLoop then break end
                        RootPart.CFrame = Book.CFrame
                        fireclickdetector(Book.ClickDetector)
                        task.wait(0)
                    end
                    RootPart.CFrame = OldPos
                    task.wait(0.001)
                end

                RootPart.CFrame = OldPos
                warn("Lag Book Desativado")
            end)

        else
            warn("Lag Book Desativado")
        end
    end
})

local Section = Tab:AddSection({"ادوات الحيط"})

local BNumber = 600 -- Valor fixo
local distanciaEntreItens = 3 -- DistÃ¢ncia entre os itens ao longo do bastÃ£o

-- FunÃ§Ã£o para organizar itens em forma de bastÃ£o gigante para baixo
local function organizarItensEmBastaoParaBaixo()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local backpack = player.Backpack
    local rootPart = character:WaitForChild("HumanoidRootPart")

    -- Coleta todos os Tools no personagem e na mochila
    local itens = {}

    -- Procura Tools no personagem
    for _, item in pairs(character:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            table.insert(itens, item)
        end
    end

    -- Procura Tools na mochila
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            table.insert(itens, item)
        end
    end

    -- Verifica duplicatas e organiza por nome
    local duplicatas = {}
    for _, item in pairs(itens) do
        if not duplicatas[item.Name] then
            duplicatas[item.Name] = {}
        end
        table.insert(duplicatas[item.Name], item)
    end

    -- Para cada grupo de duplicatas, organize-os em formato de bastÃ£o
    local yOffset = 0 -- Offset inicial no eixo Y
    for _, grupo in pairs(duplicatas) do
        local total = #grupo
        if total > 1 then
            for i, item in pairs(grupo) do
                -- Equipa o item para ajustar o GripPos
                item.Parent = character

                -- Define a posiÃ§Ã£o vertical para o item no bastÃ£o (para baixo no eixo Y)
                item.GripPos = Vector3.new(0, -yOffset, 0)

                -- Incrementa o offset no eixo Y para "descer"
                yOffset = yOffset + distanciaEntreItens

                -- Aguarda um pouco para o efeito ser visÃ­vel
                task.wait()

                -- Solta o item colocando de volta na mochila
                item.Parent = backpack
            end
        end
    end

    -- Equipa todos os itens "FireX" da mochila
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            item.Parent = character
        end
    end
end


Tab:AddButton({
  Name = "لاق اداه اطفاء الحريق قوي",
  Callback = function()
    local Player = game.Players.LocalPlayer
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local RootPart = Character:WaitForChild("HumanoidRootPart")

        -- AtualizaÃ§Ã£o da hierarquia para FireX
        local Clone = game:GetService("Workspace"):FindFirstChild("WorkspaceCom")
            and game:GetService("Workspace").WorkspaceCom:FindFirstChild("001_GiveTools")
            and game:GetService("Workspace").WorkspaceCom["001_GiveTools"]:FindFirstChild("FireX")

        if Clone and Clone:FindFirstChild("ClickDetector") then
            local OldPos = RootPart.CFrame -- Armazena a posiÃ§Ã£o original

            -- Loop para pegar os itens repetidamente
            local processed = 0
            while processed < BNumber do
                RootPart.CFrame = Clone.CFrame -- Teletransporta para o clone
                fireclickdetector(Clone.ClickDetector) -- Clica no detector
                processed = processed + 1
                task.wait() -- Pausa para evitar travamento
            end

            -- Retorna Ã  posiÃ§Ã£o original
            RootPart.CFrame = OldPos

            -- Executa a funÃ§Ã£o de organizaÃ§Ã£o ao final do loop
            organizarItensEmBastaoParaBaixo()
        else
            warn("FireX ou ClickDetector nÃ£o encontrado!")
        end
  end
})


local BNumber = 600 -- Valor fixo
local raioCirculo = 5 -- DistÃ¢ncia do cÃ­rculo em relaÃ§Ã£o ao personagem

-- FunÃ§Ã£o para organizar itens em formato de cÃ­rculo
local function organizarItensEmCirculo()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local backpack = player.Backpack
local rootPart = character:WaitForChild("HumanoidRootPart")

-- Coleta todos os Tools no personagem e na mochila  
local itens = {}  
  
-- Procura Tools no personagem  
for _, item in pairs(character:GetChildren()) do  
    if item:IsA("Tool") and item.Name == "FireX" then  
        table.insert(itens, item)  
    end  
end  
  
-- Procura Tools na mochila  
for _, item in pairs(backpack:GetChildren()) do  
    if item:IsA("Tool") and item.Name == "FireX" then  
        table.insert(itens, item)  
    end  
end  
  
-- Verifica duplicatas e organiza por nome  
local duplicatas = {}  
for _, item in pairs(itens) do  
    if not duplicatas[item.Name] then  
        duplicatas[item.Name] = {}  
    end  
    table.insert(duplicatas[item.Name], item)  
end  
  
-- Para cada grupo de duplicatas, organize-os em formato de cÃ­rculo  
for _, grupo in pairs(duplicatas) do  
    local total = #grupo  
    if total > 1 then  
        for i, item in pairs(grupo) do  
            -- Equipa o item para ajustar o GripPos  
            item.Parent = character  
              
            -- Calcula o Ã¢ngulo de cada item no cÃ­rculo  
            local angulo = (i / total) * (2 * math.pi)  
              
            -- Calcula a posiÃ§Ã£o circular atrÃ¡s do jogador  
            local offsetX = math.cos(angulo) * raioCirculo  
            local offsetZ = math.sin(angulo) * raioCirculo  
              
            -- Define a posiÃ§Ã£o atrÃ¡s do HumanoidRootPart  
            item.GripPos = Vector3.new(-offsetX, 0, -offsetZ - raioCirculo)  
              
            -- Aguarda um pouco para o efeito ser visÃ­vel  
            task.wait()  
              
            -- Solta o item colocando de volta na mochila  
            item.Parent = backpack  
        end  
    end  
end  
  
-- Equipa todos os itens "FireX" da mochila  
for _, item in pairs(backpack:GetChildren()) do  
    if item:IsA("Tool") and item.Name == "FireX" then  
        item.Parent = character  
    end  
end

end


Tab:AddButton({
  Name = "لاق اداه اطفاء حريق قوي 2",
  Callback = function()
    local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local RootPart = Character:WaitForChild("HumanoidRootPart")

-- AtualizaÃ§Ã£o da hierarquia para FireX  
    local Clone = game:GetService("Workspace"):FindFirstChild("WorkspaceCom")   
        and game:GetService("Workspace").WorkspaceCom:FindFirstChild("001_GiveTools")  
        and game:GetService("Workspace").WorkspaceCom["001_GiveTools"]:FindFirstChild("FireX")  

    if Clone and Clone:FindFirstChild("ClickDetector") then  
        local OldPos = RootPart.CFrame -- Armazena a posiÃ§Ã£o original  

        -- Loop para pegar os itens repetidamente  
        local processed = 0  
        while processed < BNumber do  
            RootPart.CFrame = Clone.CFrame -- Teletransporta para o clone  
            fireclickdetector(Clone.ClickDetector) -- Clica no detector  
            processed = processed + 1  
            task.wait() -- Pausa para evitar travamento  
        end  

        -- Retorna Ã  posiÃ§Ã£o original  
        RootPart.CFrame = OldPos   

        -- Executa a funÃ§Ã£o de organizaÃ§Ã£o ao final do loop  
        organizarItensEmCirculo()  
    else  
        warn("FireX ou ClickDetector nÃ£o encontrado!")  
    end  
  end
})


local BNumber = 600 -- Valor fixo
local distanciaAtras = 5 -- DistÃ¢ncia da parede em relaÃ§Ã£o ao personagem
local espacamentoX = 3 -- EspaÃ§amento horizontal entre itens
local espacamentoY = 3 -- EspaÃ§amento vertical entre itens

-- FunÃ§Ã£o para organizar itens em formato de parede
local function organizarItensEmParede()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local backpack = player.Backpack
    local rootPart = character:WaitForChild("HumanoidRootPart")

    -- Coleta todos os Tools no personagem e na mochila
    local itens = {}
    
    -- Procura Tools no personagem
    for _, item in pairs(character:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            table.insert(itens, item)
        end
    end
    
    -- Procura Tools na mochila
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            table.insert(itens, item)
        end
    end
    
    -- Verifica duplicatas e organiza por nome
    local duplicatas = {}
    for _, item in pairs(itens) do
        if not duplicatas[item.Name] then
            duplicatas[item.Name] = {}
        end
        table.insert(duplicatas[item.Name], item)
    end
    
    -- Organiza os itens em formato de parede
    for _, grupo in pairs(duplicatas) do
        local total = #grupo
        
        -- Calcula o nÃºmero de colunas e linhas necessÃ¡rias
        local colunas = math.ceil(math.sqrt(total))
        local linhas = math.ceil(total / colunas)
        
        for i, item in pairs(grupo) do
            -- Calcula a posiÃ§Ã£o na grade
            local linha = math.floor((i-1) / colunas)
            local coluna = (i-1) % colunas
            
            -- Equipa o item para ajustar o GripPos
            item.Parent = character
            
            -- Ajusta a posiÃ§Ã£o na parede atrÃ¡s do jogador
            item.GripPos = Vector3.new(coluna * espacamentoX, -linha * espacamentoY, -distanciaAtras)
            
            -- Aguarda um pouco para o efeito ser visÃ­vel
            task.wait()
            
            -- Solta o item colocando de volta na mochila
            item.Parent = backpack
        end
    end
    
    -- Equipa todos os itens "FireX" da mochila
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name == "FireX" then
            item.Parent = character
        end
    end
end


local Button = Tab:AddButton({
  Name = "جدار اداه اطفاء الحرائق",
  Callback = function()
    local Player = game.Players.LocalPlayer 
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local RootPart = Character:WaitForChild("HumanoidRootPart")
        
        -- AtualizaÃ§Ã£o da hierarquia para FireX
        local Clone = game:GetService("Workspace"):FindFirstChild("WorkspaceCom") 
            and game:GetService("Workspace").WorkspaceCom:FindFirstChild("001_GiveTools")
            and game:GetService("Workspace").WorkspaceCom["001_GiveTools"]:FindFirstChild("FireX")

        if Clone and Clone:FindFirstChild("ClickDetector") then
            local OldPos = RootPart.CFrame -- Armazena a posiÃ§Ã£o original

            -- Loop para pegar os itens repetidamente
            local processed = 0
            while processed < BNumber do
                RootPart.CFrame = Clone.CFrame -- Teletransporta para o clone
                fireclickdetector(Clone.ClickDetector) -- Clica no detector
                processed = processed + 1
                task.wait() -- Pausa para evitar travamento
            end

            -- Retorna Ã  posiÃ§Ã£o original
            RootPart.CFrame = OldPos 

            -- Executa a funÃ§Ã£o de organizaÃ§Ã£o ao final do loop
            organizarItensEmParede()
        else
            warn("FireX ou ClickDetector nÃ£o encontrado!")
        end
  end
})

local Toggle = Tab:AddToggle({
  Name = "بلاك رول",
  Default = false,
  Callback = function(Value)
    if Value then
            -- Quando a toggle estiver ativada
            loadstring(game:HttpGet("https://github.com/TemplariosScripts1/Tornado/raw/refs/heads/main/TornadoObfuscate.txt"))()
        else
            -- Quando a toggle estiver desativada
            loadstring(game:HttpGet("https://github.com/TemplariosScripts1/Blackhole2/raw/refs/heads/main/Blackhole2Obfuscate.txt"))()
        end
  end
})

local Section = Tab:AddSection({"تقفيل السيرفر بيتا"})

Tab:AddButton({
  Name = "تقفيل السيرفر اداه اطفاء الحريق قوي",
  Callback = function()
          local TextChatService = game:GetService("TextChatService")
        if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
            local message = ".\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r⚠️تحذير سيتم قفل السيرفر⚠️"
            TextChatService.TextChannels.RBXGeneral:SendAsync(message)
        else
        end

wait(1)

local TextChatService = game:GetService("TextChatService")
        if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
            local message = ".\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r⚠️تحذير سيتم قفل السيرفر⚠️"
            TextChatService.TextChannels.RBXGeneral:SendAsync(message)
        else
        end

wait(1)

local TextChatService = game:GetService("TextChatService")
        if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
            local message = ".\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r⚠️تحذير سيتم قفل السيرفر⚠️"
            TextChatService.TextChannels.RBXGeneral:SendAsync(message)
        else
        end

wait(1)

local TextChatService = game:GetService("TextChatService")
        if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
            local message = ".\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r⚠️تحذير سيتم قفل السيرفر⚠️"
            TextChatService.TextChannels.RBXGeneral:SendAsync(message)
        else
        end

wait(5)

        local TextChatService = game:GetService("TextChatService")
        if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
            local message = ".\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r✅️جار قفل السيرفر✅️"
            TextChatService.TextChannels.RBXGeneral:SendAsync(message)
        else
    end
    
    tools = "FireX"
		lagserver = true
		if game:GetService("Workspace"):FindFirstChild("Camera") then
			game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() end
			wait(0.1)
		if game:GetService("Workspace"):FindFirstChild("Camera") then
		game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() end
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").WorkspaceCom["001_GiveTools"].FireX.CFrame + Vector3.new(0,-15,0)
task.wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
ddos = true
		for i=1, 425 do task.wait()
			if ddos == false then
				local args = {
					[1] = "ClearAllTools"
				}
				
				cleartoolremote:FireServer(unpack(args))
				 game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
				 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9999,-475,9999)
				 return
			end
			if game:GetService("Workspace"):FindFirstChild("Camera") then
				game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild(tools) then
					game:GetService("Players").LocalPlayer.Character:FindFirstChild(tools):Destroy() end
					if ddos == false then return end
			fireclickdetector(game:GetService("Workspace").WorkspaceCom["001_GiveTools"].FireX.ClickDetector,0)
			end
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,-475,0)
			wait()
			lagserver = false
  end
})


Tab:AddButton({
  Name = "تقفيل السيرفر قوي V2",
  Callback = function()
          local TextChatService = game:GetService("TextChatService")
        if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
            local message = ".\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r⚠️تحذير سيتم قفل السيرفر⚠️"
            TextChatService.TextChannels.RBXGeneral:SendAsync(message)
        else
        end

wait(1)

local TextChatService = game:GetService("TextChatService")
        if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
            local message = ".\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r⚠️تحذير سيتم قفل السيرفر⚠️"
            TextChatService.TextChannels.RBXGeneral:SendAsync(message)
        else
        end

wait(1)

local TextChatService = game:GetService("TextChatService")
        if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
            local message = ".\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r⚠️تحذير سيتم قفل السيرفر⚠️"
            TextChatService.TextChannels.RBXGeneral:SendAsync(message)
        else
        end

wait(1)

local TextChatService = game:GetService("TextChatService")
        if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
            local message = ".\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r⚠️تحذير سيتم قفل السيرفر⚠️"
            TextChatService.TextChannels.RBXGeneral:SendAsync(message)
        else
        end

wait(5)

        local TextChatService = game:GetService("TextChatService")
        if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
            local message = ".\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r✅️جار قفل السيرفر✅️"
            TextChatService.TextChannels.RBXGeneral:SendAsync(message)
        else
    end
    
    tools = "Iphone"
		lagserver = true
		if game:GetService("Workspace"):FindFirstChild("Camera") then
			game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() end
			wait(0.1)
		if game:GetService("Workspace"):FindFirstChild("Camera") then
		game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() end
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").WorkspaceCom["001_GiveTools"].FireX.CFrame + Vector3.new(0,-15,0)
task.wait(0.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
ddos = true
		for i=1, 425 do task.wait()
			if ddos == false then
				local args = {
					[1] = "ClearAllTools"
				}
				
				cleartoolremote:FireServer(unpack(args))
				 game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
				 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9999,-475,9999)
				 return
			end
			if game:GetService("Workspace"):FindFirstChild("Camera") then
				game:GetService("Workspace"):FindFirstChild("Camera"):Destroy() end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild(tools) then
					game:GetService("Players").LocalPlayer.Character:FindFirstChild(tools):Destroy() end
					if ddos == false then return end
			fireclickdetector(game:GetService("Workspace").WorkspaceCom["001_GiveTools"].FireX.ClickDetector,0)
			end
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,-475,0)
			wait()
			lagserver = false
  end
})


Tab:AddButton({
  Name = "توقيف تقفيل السيرفر",
  Callback = function()
        local TextChatService = game:GetService("TextChatService")
        if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
            local message = ".\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r✅️تم ايقاف قفل السيرفر✅️"
            TextChatService.TextChannels.RBXGeneral:SendAsync(message)
        else
        end
    
    ddos = false
		lagserver = false
		shutdownserver = false
  end
})


local Section = Tab:AddSection({"سباب قنابل/متفجرات"})


local cleartoolremote = game:GetService("ReplicatedStorage").RE:FindFirstChild("1Clea1rTool1s")
local picktoolremote = game:GetService("ReplicatedStorage").RE:FindFirstChild("1Too1l")

local function safeskripz()
    if duping then
        print("Dupe Function ")
        return true
    end

    if toolgrip == true then
        print("Tool Grip ")
        return true
    end

    return false
end

-- VariÃ¡vel global para controlar a interrupÃ§Ã£o do processo
local stopProcess = false

-- FunÃ§Ã£o para resetar o personagem
local function resetCharacter()
    local player = game.Players.LocalPlayer
    if player.Character then
        player.Character:BreakJoints()  -- Reseta o personagem
    end
end

-- FunÃ§Ã£o principal para criar paredes, chÃ£os, linhas ou cubos
local function createToolWallOrFloor(toolName, width, height, spacingX, spacingY, isFloor, isLine, isCube)
    safeskripz()

    -- Reinicia a variÃ¡vel de controle ao iniciar o processo
    stopProcess = false

    local nametools = toolName .. (isFloor and " floor lel" or (isLine and " line lel" or (isCube and " cube lel" or " wall lel")))
    local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

    -- Verifica se o personagem estÃ¡ sentado e o levanta
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
        task.wait()
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end

    wait(0.1)
    local args = { [1] = "ClearAllTools" }
    cleartoolremote:FireServer(unpack(args))

    -- Remove a cÃ¢mera se existir
    if game:GetService("Workspace"):FindFirstChild("Camera") then
        game:GetService("Workspace"):FindFirstChild("Camera"):Destroy()
    end

    -- Teleporta o personagem para uma posiÃ§Ã£o segura
    for m = 1, 2 do
        task.wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(999999999.414, -490, 999999999.414, 0.974360406, -0.175734088, 0.14049761, -0.133441404, 0.0514053069, 0.989722729, -0.181150302, -0.983094692, 0.0266370922)
    end

    task.wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    wait(0.3)

    local duping = true
    local iterations = isLine and width or (isCube and width * height * width or width * height)

    -- Loop de duplicaÃ§Ã£o das ferramentas
    for m = 1, iterations do
        -- Verifica se o processo foi interrompido
        if stopProcess then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            resetCharacter() -- Reseta o personagem
            return
        end

        -- Remove a cÃ¢mera se existir
        if game:GetService("Workspace"):FindFirstChild("Camera") then
            game:GetService("Workspace"):FindFirstChild("Camera"):Destroy()
        end

        -- Pega a ferramenta
        local args = { [1] = "PickingTools", [2] = toolName }
        picktoolremote:InvokeServer(unpack(args))
        game:GetService("Players").LocalPlayer.Backpack:WaitForChild(toolName).Parent = game.Players.LocalPlayer.Character

        -- Verifica novamente se o processo foi interrompido
        if stopProcess then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            resetCharacter() -- Reseta o personagem
            return
        end

        wait()
        game:GetService("Players").LocalPlayer.Character[toolName]:FindFirstChild("Handle").Name = "Handle"
        game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolName).Parent = game.Players.LocalPlayer.Backpack
        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(toolName).Parent = game.Players.LocalPlayer.Character

        -- Espera atÃ© que a ferramenta seja removida do personagem
        repeat
            if game:GetService("Workspace"):FindFirstChild("Camera") then
                game:GetService("Workspace"):FindFirstChild("Camera"):Destroy()
            end
            wait()
        until game:GetService("Players").LocalPlayer.Character:FindFirstChild(toolName) == nil
    end

    -- Finaliza o processo
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") == nil
    repeat wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

    local toolgrip = true
    duping = false
    wait()

    -- Posicionamento das ferramentas
    local tools = game.Players.LocalPlayer.Backpack:GetChildren()
    local baseCFrame = CFrame.new(0.0538333468, -0.264812469, -0.0177594293, 0.999998629, 0, 0.00164011808, 0, 1, 0, -0.00164011808, 0, 0.999998629)

    if isLine then
        -- Cria uma linha reta de ferramentas
        for i = 0, width - 1 do
            if tools[i + 1] then
                tools[i + 1].Grip = baseCFrame + Vector3.new(i * spacingX, spacingY, 0)
                tools[i + 1].Name = nametools
            end
        end
    elseif isCube then
        -- Cria um cubo de ferramentas
        for x = 0, width - 1 do
            for y = 0, height - 1 do
                for z = 0, width - 1 do
                    local toolIndex = x * height * width + y * width + z + 1
                    if tools[toolIndex] then
                        tools[toolIndex].Grip = baseCFrame + Vector3.new(x * spacingX, -y * spacingY, z * spacingX)
                        tools[toolIndex].Name = nametools
                    end
                end
            end
        end
    else
        -- Cria uma parede ou chÃ£o de ferramentas
        for x = 0, width - 1 do
            for y = 0, height - 1 do
                local toolIndex = x * height + y + 1
                if tools[toolIndex] then
                    if isFloor then
                        tools[toolIndex].Grip = baseCFrame + Vector3.new(x * spacingX, 0, y * spacingY)
                    else
                        tools[toolIndex].Grip = baseCFrame + Vector3.new(x * spacingX, -y * spacingY, 0)
                    end
                    tools[toolIndex].Name = nametools
                end
            end
        end
    end

    -- Retorna o personagem Ã  posiÃ§Ã£o original
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
    wait(0.5)

    -- Move as ferramentas para o personagem
    for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if tool:IsA("Tool") and tool.Name == nametools then
            tool.Parent = game:GetService("Players").LocalPlayer.Character
        end
    end
end

local spam = false
local playerName = game.Players.LocalPlayer.Name -- pega automaticamente o nome do player local

Tab:AddToggle({
    Name = "سبام قنابل/متفجرات",
    Default = false,
    Callback = function(v)
        spam = v
        if spam then
            task.spawn(function()
                while spam do
                    local args = {
                        [1] = "Bomb" .. playerName
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Blo1wBomb1sServe1r"):FireServer(unpack(args))
                    task.wait(0.1) -- intervalo de 0.1 segundo entre cada spam
                end
            end)
        end
    end
})

local duplicarAtivo = false
local duplicarThread = nil

Tab:AddToggle({
    Name = "لاق سبام متفجرات/قنابل",
    Default = false,
    Callback = function(v)
        duplicarAtivo = v
        if duplicarAtivo then
            duplicarThread = task.spawn(function()
                local Player = game.Players.LocalPlayer
                local Character = Player.Character or Player.CharacterAdded:Wait()
                local RootPart = Character:WaitForChild("HumanoidRootPart")
                local OldPos = RootPart.CFrame

                local Bomb = game:GetService("Workspace"):FindFirstChild("WorkspaceCom")
                    and game:GetService("Workspace").WorkspaceCom["001_CriminalWeapons"]:FindFirstChild("GiveTools")
                    and game:GetService("Workspace").WorkspaceCom["001_CriminalWeapons"].GiveTools:FindFirstChild("Bomb")

                if not Bomb or not Bomb:FindFirstChild("ClickDetector") then
                    warn("Erro ao encontrar a Bomb! Tente novamente.")
                    duplicarAtivo = false
                    return
                end

                while duplicarAtivo do
                    for i = 1, 12 do
                        RootPart.CFrame = Bomb.CFrame
                        fireclickdetector(Bomb.ClickDetector)
                        task.wait(0)
                    end
                    task.wait(0.001)
                end

                -- Quando desativar, volta para a posição original
                RootPart.CFrame = OldPos
            end)
        end
    end
})

local Tab = Window:MakeTab({"السكنات", "rbxassetid://10734952036"})

Tab:AddSection({ Name = "نسخ السكن" })



local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")

local Target = nil

-- FunÃ§Ã£o para obter os nomes dos jogadores
local function GetPlayerNames()
    local PlayerNames = {}
    for _, player in ipairs(Players:GetPlayers()) do
        table.insert(PlayerNames, player.Name)
    end
    return PlayerNames
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function GetPlayerNames()
    local names = {}
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(names, player.Name)
        end
    end
    return names
end

local Target = ""

local Dropdown = Tab:AddDropdown({
    Name = "اختار الاعب",
    Options = GetPlayerNames(),
    Default = Target,
    Callback = function(Value)
        Target = Value
    end
})

Tab:AddButton({
    Name = "تحديث القائمه",
    Callback = function()
        if Dropdown then
            Dropdown:Set(GetPlayerNames())
            -- opcional: resetar seleção se quiser
            Dropdown:SetValue("")
        end
    end
})


Tab:AddButton({
    Name = "نسخ السكن",
    Callback = function()
        if not Target then return end

        local LP = Players.LocalPlayer
        local LChar = LP.Character
        local TPlayer = Players:FindFirstChild(Target)

        if TPlayer and TPlayer.Character then
            local LHumanoid = LChar and LChar:FindFirstChildOfClass("Humanoid")
            local THumanoid = TPlayer.Character:FindFirstChildOfClass("Humanoid")

            if LHumanoid and THumanoid then
                -- RESETAR LOCALPLAYER
                local LDesc = LHumanoid:GetAppliedDescription()

                -- Remover acessÃ³rios, roupas e face atuais
                for _, acc in ipairs(LDesc:GetAccessories(true)) do
                    if acc.AssetId and tonumber(acc.AssetId) then
                        Remotes.Wear:InvokeServer(tonumber(acc.AssetId))
                        task.wait(0.2)
                    end
                end

                if tonumber(LDesc.Shirt) then
                    Remotes.Wear:InvokeServer(tonumber(LDesc.Shirt))
                    task.wait(0.2)
                end

                if tonumber(LDesc.Pants) then
                    Remotes.Wear:InvokeServer(tonumber(LDesc.Pants))
                    task.wait(0.2)
                end

                if tonumber(LDesc.Face) then
                    Remotes.Wear:InvokeServer(tonumber(LDesc.Face))
                    task.wait(0.2)
                end

                -- COPIAR DO JOGADOR ALVO
                local PDesc = THumanoid:GetAppliedDescription()

                -- Enviar partes do corpo
                local argsBody = {
                    [1] = {
                        [1] = PDesc.Torso,
                        [2] = PDesc.RightArm,
                        [3] = PDesc.LeftArm,
                        [4] = PDesc.RightLeg,
                        [5] = PDesc.LeftLeg,
                        [6] = PDesc.Head
                    }
                }
                Remotes.ChangeCharacterBody:InvokeServer(unpack(argsBody))
                task.wait(0.5)

                if tonumber(PDesc.Shirt) then
                    Remotes.Wear:InvokeServer(tonumber(PDesc.Shirt))
                    task.wait(0.3)
                end

                if tonumber(PDesc.Pants) then
                    Remotes.Wear:InvokeServer(tonumber(PDesc.Pants))
                    task.wait(0.3)
                end

                if tonumber(PDesc.Face) then
                    Remotes.Wear:InvokeServer(tonumber(PDesc.Face))
                    task.wait(0.3)
                end

                for _, v in ipairs(PDesc:GetAccessories(true)) do
                    if v.AssetId and tonumber(v.AssetId) then
                        Remotes.Wear:InvokeServer(tonumber(v.AssetId))
                        task.wait(0.3)
                    end
                end

                local SkinColor = TPlayer.Character:FindFirstChild("Body Colors")
                if SkinColor then
                    Remotes.ChangeBodyColor:FireServer(tostring(SkinColor.HeadColor))
                    task.wait(0.3)
                end

                if tonumber(PDesc.IdleAnimation) then
                    Remotes.Wear:InvokeServer(tonumber(PDesc.IdleAnimation))
                    task.wait(0.3)
                end

                -- Nome, bio e cor
                local Bag = TPlayer:FindFirstChild("PlayersBag")
                if Bag then
                    if Bag:FindFirstChild("RPName") and Bag.RPName.Value ~= "" then
                        Remotes.RPNameText:FireServer("RolePlayName", Bag.RPName.Value)
                        task.wait(0.3)
                    end
                    if Bag:FindFirstChild("RPBio") and Bag.RPBio.Value ~= "" then
                        Remotes.RPNameText:FireServer("RolePlayBio", Bag.RPBio.Value)
                        task.wait(0.3)
                    end
                    if Bag:FindFirstChild("RPNameColor") then
                        Remotes.RPNameColor:FireServer("PickingRPNameColor", Bag.RPNameColor.Value)
                        task.wait(0.3)
                    end
                    if Bag:FindFirstChild("RPBioColor") then
                        Remotes.RPNameColor:FireServer("PickingRPBioColor", Bag.RPBioColor.Value)
                        task.wait(0.3)
                    end
                end
            end
        end
    end
})

Tab:AddSection({ "تلوين السكن" })

local colors = { "Bright red", "Lime green", "Bright blue", "Bright yellow", "Bright cyan", "Hot pink", "Royal purple" }
local rgbEnabled = false

local function changeColor(color)
    local args = { color }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeBodyColor"):FireServer(unpack(args))
end

local function toggleRGBCharacter(enabled)
    rgbEnabled = enabled
    if rgbEnabled then
        while rgbEnabled do
            for _, color in ipairs(colors) do
                if not rgbEnabled then return end
                changeColor(color)
                wait(0.5)
            end
        end
    end
end

Tab:AddToggle({
    Name = "تلوين الشخصيه",
    Description = "",
    Default = false,
    Callback = function(value)
        toggleRGBCharacter(value)
    end
})


local hairColors = {
    Color3.new(1, 1, 0), Color3.new(0, 0, 1), Color3.new(1, 0, 1), Color3.new(1, 1, 1),
    Color3.new(0, 1, 0), Color3.new(0.5, 0, 1), Color3.new(1, 0.647, 0), Color3.new(0, 1, 1)
}
local isActive = false


local function changeHairColor()
    local i = 1
    while isActive do
        if not isActive then break end
        local args = { [1] = "ChangeHairColor2", [2] = hairColors[i] }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Max1y"):FireServer(unpack(args))
        wait(0.1)
        i = i % #hairColors + 1
    end
end


Tab:AddToggle({
    Name = "تلوين الشعر",
    Description = "",
    Default = false,
    Callback = function(value)
        isActive = value
        if isActive then
            changeHairColor()
        end
    end
})

Tab:AddSection({ "" })

Tab:AddButton({
    Name = "سكن مخفي",
Callback = function()
        
        local args = {
    [1] = {
        [1] = 102344834840946,
        [2] = 70400527171038,
        [3] = 0,
        [4] = 0,
        [5] = 0,
        [6] = 0
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody"):InvokeServer(unpack(args))
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(111858803548721)
local allaccessories = {}

for zxcwefwfecas, xcaefwefas in ipairs({
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.BackAccessory,
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.FaceAccessory,
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.FrontAccessory,
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.NeckAccessory,
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.HatAccessory,
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.HairAccessory,
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.ShouldersAccessory,
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.WaistAccessory,
    game.Players.LocalPlayer.Character.Humanoid.HumanoidDescription.GraphicTShirt
}) do
    for scacvdfbdb in string.gmatch(xcaefwefas, "%d+") do
        table.insert(allaccessories, tonumber(scacvdfbdb))
    end
end

wait()

for asdwr,asderg in ipairs(allaccessories) do
    task.spawn(function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(asderg)
        print(asderg)
    end)
end
    end
})

-- Definir cores para o efeito RGB
local colors = {
    Color3.new(1, 0, 0),       -- Vermelho
    Color3.new(0, 1, 0),       -- Verde
    Color3.new(0, 0, 1),       -- Azul
    Color3.new(1, 1, 0),       -- Amarelo
    Color3.new(0, 1, 1),       -- Ciano
    Color3.new(1, 0, 1)        -- Magenta
}

-- Variável para controlar o estado do toggle House RGB
local isHouseRGBActive = false

-- Função para alterar a cor da casa
local function changeColor()
    local replicatedStorage = game:GetService("ReplicatedStorage")
    local remoteEvent = replicatedStorage:FindFirstChild("RE") and replicatedStorage.RE:FindFirstChild("1Player1sHous1e")
    
    if not remoteEvent then
        warn("RemoteEvent '1Player1sHous1e' não encontrado.")
        return
    end

    while isHouseRGBActive do
        for _, color in ipairs(colors) do
            if not isHouseRGBActive then return end
            local args = {
                [1] = "ColorPickHouse",
                [2] = color
            }
            pcall(function()
                remoteEvent:FireServer(unpack(args))
            end)
            task.wait(0.8)
        end
    end
end

local function toggleHouseRGB(state)
    isHouseRGBActive = state
    if isHouseRGBActive then
        print("House RGB Activated")
        spawn(changeColor)
    else
        print("House RGB Deactivated")
    end
end

local Tab = Window:MakeTab({"الاجسام", "rbxassetid://10734952036"})

local Section = Tab:AddSection({
	Name = "الارجل"
})

Tab:AddButton({ 	Name  = "رجل مقطوعه", 	Callback = function()
local args = {
            [1] = {
                [1] = 0;
                [2] = 0;
                [3] = 0;
                [4] = 139607718;
                [5] = 0;
                [6] = 1;
            };
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "رجل حديديه", 	Callback = function()
local args = {
            [1] = {
                [1] = 1;
                [2] = 1;
                [3] = 1;
                [4] = 17500249989;
                [5] = 1;
                [6] = 1;
            };
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "رجل العضام السوداء", 	Callback = function()
local args = {
            [1] = {
                [1] = 0;
                [2] = 0;
                [3] = 0;
                [4] = 14547162578;
                [5] = 0;
                [6] = 1;
            };
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "رجل العضام البيضاء", 	Callback = function()
local args = {
            [1] = {
                [1] = 0;
                [2] = 0;
                [3] = 0;
                [4] = 14580308646;
                [5] = 0;
                [6] = 1;
            };
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "رجل الرول", 	Callback = function()
local args = {
            [1] = {
                [1] = 0;
                [2] = 0;
                [3] = 0;
                [4] = 3230472745;
                [5] = 3230470862;
                [6] = 1;
            };
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

local Section = Tab:AddSection({
	Name = "الرؤوس"
})

Tab:AddButton({ 	Name  = "راس روبوت او فضائي", 	Callback = function()
local args = {
            [1] = 3210773801;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "راس مخفي", 	Callback = function()
local args = {
            [1] = 134082579;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "راس المخفي عيون زرقاء", 	Callback = function()
 local args = {
            [1] = 16580493236;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "راس كوبي او رول", 	Callback = function()
local args = {
            [1] = 746767604;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("Wear", 9e9):InvokeServer(unpack(args))
end })

local Section = Tab:AddSection({
	Name = "الاجسام"
})

Tab:AddButton({ 	Name  = "جسم بنت خصر صغير", 	Callback = function()
local args = {
            [1] = {
                [1] = 96491916349570;
                [2] = 76683091425509;
                [3] = 75159926897589;
                [4] = 1;
                [5] = 1;
                [6] = 1;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جسم بنت خصر ضعيف", 	Callback = function()
local args = {
            [1] = {
                [1] = 74302534603111;
                [2] = 76683091425509;
                [3] = 75159926897589;
                [4] = 1;
                [5] = 1;
                [6] = 1;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جسم بنت 1", 	Callback = function()
local args = {
            [1] = {
                [1] = 96491916349570;
                [2] = 14854350570;
                [3] = 14854350451;
                [4] = 1;
                [5] = 1;
                [6] = 1;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جسم بنت 2", 	Callback = function()
local args = {
            [1] = {
                [1] = 16214246112;
                [2] = 16214249513;
                [3] = 16214251181;
                [4] = 1;
                [5] = 1;
                [6] = 1;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جسم بنت 3", 	Callback = function()
local args = {
            [1] = {
                [1] = 15539008532;
                [2] = 15539008875;
                [3] = 15539008680;
                [4] = 15539008795;
                [5] = 15539011945;
                [6] = 1;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جسم بنت 4", 	Callback = function()
local args = {
            [1] = {
                [1] = 14861800638;
                [2] = 14861800626;
                [3] = 14861801452;
                [4] = 14861800627;
                [5] = 14861801454;
                [6] = 1;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جسم ولد حلو", 	Callback = function()
local args = {
            [1] = {
                [1] = 17754346388;
                [2] = 1;
                [3] = 1;
                [4] = 1;
                [5] = 1;
                [6] = 1;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جسم ولد ضعيف", 	Callback = function()
local args = {
            [1] = {
                [1] = 92757812011061;
                [2] = 99519402284266;
                [3] = 115905570886697;
                [4] = 1;
                [5] = 1;
                [6] = 1;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جسم ولد رول", 	Callback = function()
local args = {
            [1] = {
                [1] = 27112025;
                [2] = 27112039;
                [3] = 27112052;
                [4] = 3230472745;
                [5] = 3230470862;
                [6] = 1;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جسم ولد كوبي", 	Callback = function()
local args = {
            [1] = {
                [1] = 86499666;
                [2] = 27112039;
                [3] = 27112052;
                [4] = 27112068;
                [5] = 27112056;
                [6] = 1;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جسم ولد معضل", 	Callback = function()
local args = {
            [1] = {
                [1] = 18178775358;
                [2] = 18178775182;
                [3] = 18178775725;
                [4] = 18178777453;
                [5] = 18178775695;
                [6] = 1;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

local Section = Tab:AddSection({
	Name = "اجسام القزم"
})

Tab:AddButton({ 	Name  = "جسم القزم", 	Callback = function()
local args = {
            [1] = {
                [1] = 14579958702;
                [2] = 14579959062;
                [3] = 14579959191;
                [4] = 14579959249;
                [5] = 14579963667;
                [6] = 1;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جسم القزم المتوسط", 	Callback = function()
local args = {
            [1] = {
                [1] = 77813057823038;
                [2] = 135110043370135;
                [3] = 116607813654019;
                [4] = 138966229804486;
                [5] = 128961183894053;
                [6] = 1;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جسم القزم القصير", 	Callback = function()
local args = {
            [1] = {
                [1] = 120973199097564;
                [2] = 118345433416023;
                [3] = 112849465115864;
                [4] = 78321005147549;
                [5] = 106586789635639;
                [6] = 1;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جسم القزم المتوسط تقريبا", 	Callback = function()
local args = {
            [1] = {
                [1] = 126267841602936;
                [2] = 77530451194918;
                [3] = 123471958406889;
                [4] = 117042768644173;
                [5] = 131948590344338;
                [6] = 1;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جسم الهامستر", 	Callback = function()
local args = {
            [1] = {
                [1] = 14898536974;
                [2] = 14898536957;
                [3] = 14898537277;
                [4] = 14898537300;
                [5] = 14898537292;
                [6] = 14898536975;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

local Section = Tab:AddSection({
	Name = "اجسام غريبه"
})

Tab:AddButton({ 	Name  = "جسم روبوت", 	Callback = function()
local args = {
            [1] = {
                [1] = 14776593226;
                [2] = 14776227941;
                [3] = 14776227816;
                [4] = 102149844389538;
                [5] = 102624006545764;
                [6] = 74920391713702;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جسم هالك", 	Callback = function()
local args = {
            [1] = {
                [1] = 105938035513300;
                [2] = 120682289281525;
                [3] = 78459091342559;
                [4] = 119167161940457;
                [5] = 78171925423915;
                [6] = 92193892051712;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جسم كرسي", 	Callback = function()
local args = {
            [1] = {
                [1] = 16872133248;
                [2] = 16872133982;
                [3] = 16872133723;
                [4] = 16872133730;
                [5] = 16872133733;
                [6] = 134082579;
            };
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Remotes", 9e9):WaitForChild("ChangeCharacterBody", 9e9):InvokeServer(unpack(args))
end })

local Tab = Window:MakeTab({"الملابس", "rbxassetid://10734952036"})

local Section = Tab:AddSection({
	Name = "من الافضل انك تشيل الملابس قبل ما تلبس اشي"
})

Tab:AddButton({ 	Name  = "ازاله الملابس", 	Callback = function()
local args = {
    [1] = "wear",
    [2] = 2248242028
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack(args))
wait(0.1)

   local args = {
    [1] = "wear",
    [2] = 2547392639
}

game:GetService("ReplicatedStorage").RE:FindFirstChild("1Updat1eAvata1r"):FireServer(unpack(args))
wait(0.1)
end })

local Section = Tab:AddSection({
	Name = "احذية الشيطان"
})

Tab:AddButton({ 	Name  = "حذاء الشيطان الابيض", 	Callback = function()
local args = {
            [1] = 14388009243;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "حذاء الشيطان الاسود و الاحمر", 	Callback = function()
local args = {
            [1] = 14388001192;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "حذاء الشيطان الاسود", 	Callback = function()
local args = {
            [1] = 14388004031;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

local Section = Tab:AddSection({
	Name = "شوك"
})

Tab:AddButton({ 	Name  = "شوك اسود بالذراع و الساق", 	Callback = function()
local args = {
            [1] = 17406577951;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "شوك ابيض بالذراع و الساق", 	Callback = function()
local args = {
            [1] = 17406634097;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "شوك اسود حول الجسم كامل", 	Callback = function()
local args = {
            [1] = 13463285148;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

local Section = Tab:AddSection({
	Name = "باقات ورد"
})

Tab:AddButton({ 	Name  = "باقة ورد سوداء", 	Callback = function()
local args = {
            [1] = 12465465333;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "باقة ورد حمراء", 	Callback = function()
local args = {
            [1] = 86738633187728;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "باقة ورد وردية", 	Callback = function()
local args = {
            [1] = 12465478536;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "باقة ورد بيضاء", 	Callback = function()
local args = {
            [1] = 72175664063418;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

local Section = Tab:AddSection({
	Name = "ضمادات الذراع"
})

Tab:AddButton({ 	Name  = "ضمادات الذراع لون اسود", 	Callback = function()
local args = {
            [1] = 11456892689;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "ضمادات الذراع لون ابيض", 	Callback = function()
local args = {
            [1] = 11458078735;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

local Section = Tab:AddSection({
	Name = "قفازات اليد"
})

Tab:AddButton({ 	Name  = "قفازات طويله لون اسود", 	Callback = function()
local args = {
            [1] = 14663501859;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات قصيره لون اسود", 	Callback = function()
local args = {
            [1] = 14915193711;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات طويله لون احمر", 	Callback = function()
local args = {
            [1] = 15209194774;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات طويله لون ابيض", 	Callback = function()
local args = {
            [1] = 10789933479;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات قصيره لون ابيض", 	Callback = function()
local args = {
            [1] = 15066901505;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات طويله لون ازرق", 	Callback = function()
local args = {
            [1] = 10789945803;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات قصيره لون ازرق", 	Callback = function()
local args = {
            [1] = 10714157708;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات طويله لون وردي", 	Callback = function()
local args = {
            [1] = 10789939838;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات قصيره لون وردي", 	Callback = function()
local args = {
            [1] = 17775444165;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات طويله لون اخضر", 	Callback = function()
local args = {
            [1] = 13233318125;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات قصيره لون اخضر", 	Callback = function()
local args = {
            [1] = 10713817180;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفاز غريب", 	Callback = function()
local args = {
            [1] = 12175951307;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات حمراء مخططه لون ابيض", 	Callback = function()
local args = {
            [1] = 14687547890;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات تتناسب على البنت او الولد", 	Callback = function()
local args = {
            [1] = 106701020164834;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات ورديه للبنات", 	Callback = function()
local args = {
            [1] = 16030963309;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات سوداء حلوه", 	Callback = function()
local args = {
            [1] = 12368927792;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات بيضاء حلوه", 	Callback = function()
local args = {
            [1] = 12368919975;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات خضراء حلوه", 	Callback = function()
local args = {
            [1] = 12368854118;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات مخططه اسود و احمر", 	Callback = function()
local args = {
            [1] = 14758885890;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "قفازات مخططه ابيض و اسود", 	Callback = function()
local args = {
            [1] = 14758885890;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

local Section = Tab:AddSection({
	Name = "جاكيتات"
})

Tab:AddButton({ 	Name  = "جاكيت اسود مفتوح", 	Callback = function()
local args = {
            [1] = 9048321833;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جاكيت اسود هيكل عظمي مفتوح", 	Callback = function()
local args = {
            [1] = 15154273975;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جاكيت اسود و ابيض مفتوح", 	Callback = function()
local args = {
            [1] = 9122099141;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جاكيت ابيض مفتوح", 	Callback = function()
local args = {
            [1] = 11247067714;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جاكيت اسود مفتوح حلو", 	Callback = function()
local args = {
            [1] = 9132711224;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

local Section = Tab:AddSection({
	Name = "جاكيتات بنات"
})

Tab:AddButton({ 	Name  = "جاكيت اسود مفتوح حلو", 	Callback = function()
local args = {
            [1] = 14849843673;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جاكيت احمر مفتوح", 	Callback = function()
local args = {
            [1] = 18623320140;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جاكيت احمر و اسود", 	Callback = function()
local args = {
            [1] = 17833109917;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "جاكيت قصير احمر مفتوح", 	Callback = function()
local args = {
            [1] = 109964869516145;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

local Section = Tab:AddSection({
	Name = "تيشيرتات اولاد"
})

Tab:AddButton({ 	Name  = "تيشيرت ابيض موشم", 	Callback = function()
local args = {
            [1] = 16756099522;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "تيشيرت اسود موشم", 	Callback = function()
local args = {
            [1] = 16690692104;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "تيشيرت باد بوي ويني", 	Callback = function()
local args = {
            [1] = 17490664393;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "تيشيرت باد بوي اسود و رصاصي", 	Callback = function()
local args = {
            [1] = 12938645598;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "تيشيرت باد بوي اسود و احمر", 	Callback = function()
local args = {
            [1] = 12938637969;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

local Section = Tab:AddSection({
	Name = "تيشيرتات بنات"
})

Tab:AddButton({ 	Name  = "تيشيرت اسود موشم", 	Callback = function()
local args = {
            [1] = 16701261333;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "تيشيرت اسود فيه ورود", 	Callback = function()
local args = {
            [1] = 16466139521;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "تيشيرت اسود و ابيض و نجوم", 	Callback = function()
local args = {
            [1] = 16249512832;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "تيشيرت اسود و يحضن كلب", 	Callback = function()
local args = {
            [1] = 17120804100;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "تيشيرت ابيض و يحضن كلب", 	Callback = function()
local args = {
            [1] = 17585438642;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "تيشيرت اسود و يحضن قطه", 	Callback = function()
local args = {
            [1] = 17044246130;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

local Section = Tab:AddSection({
	Name = "سويترات"
})

Tab:AddButton({ 	Name  = "سويتر اسود ديناصور للاولاد", 	Callback = function()
local args = {
            [1] = 12503598247;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "سويتر اسود للاولاد", 	Callback = function()
local args = {
            [1] = 11567575400;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

local Section = Tab:AddSection({
	Name = "تنانير"
})

Tab:AddButton({ 	Name  = "تنوره ورديه", 	Callback = function()
local args = {
            [1] = 15116615569;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

local Section = Tab:AddSection({
	Name = "بنطلونات"
})

Tab:AddButton({ 	Name  = "بنطال Y2K اسود", 	Callback = function()
local args = {
            [1] = 126490351689789;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "بنطال Y2K ابيض", 	Callback = function()
local args = {
            [1] = 80443852619543;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "بنطال اسود و احمر", 	Callback = function()
local args = {
            [1] = 14733928358;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "بنطال جينز سماوي", 	Callback = function()
local args = {
            [1] = 18507527463;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "بنطال جينز اسود", 	Callback = function()
local args = {
            [1] = 18507625481;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "بنطال اسود حلو", 	Callback = function()
local args = {
            [1] = 18667464289;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "بنطال Y2K اسود و ابيض موشم", 	Callback = function()
local args = {
            [1] = 17829216066;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "بنطال اسود ايمو موشم", 	Callback = function()
local args = {
            [1] = 18964450118;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "بنطال اسود زائد بوي", 	Callback = function()
local args = {
            [1] = 17106135964;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "بنطال اسود جينز", 	Callback = function()
local args = {
            [1] = 17278036207;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

Tab:AddButton({ 	Name  = "بنطال حلو للبنات", 	Callback = function()
local args = {
            [1] = 77787269452920;
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes",9e9):WaitForChild("Wear",9e9):InvokeServer(unpack(args))
end })

local Tab = Window:MakeTab({"سكربتات من صنعي", Icon = ""})

local Section = Tab:AddSection({
	Name = "جميع السكربتات هنا من صنعي"
})

local Section = Tab:AddSection({
	Name = "سكربت طيران بدون صوت مي"
})

local Button = Tab:AddButton({
  Name = "سكربت طيران",
  Callback = function()
    local flySpeed = 60
local minSpeed = 16
local maxSpeed = 1000

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "FlyControlGui"
ScreenGui.Parent = game:GetService("CoreGui")

local Frame = Instance.new("Frame")
Frame.Name = "MainFrame"
Frame.Size = UDim2.new(0, 200, 0, 150)
Frame.Position = UDim2.new(0.5, -100, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame.BorderColor3 = Color3.fromRGB(20, 20, 20)
Frame.BorderSizePixel = 2
Frame.Active = true
Frame.Draggable = true
Frame.ClipsDescendants = true
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = Frame

local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title.BorderSizePixel = 0
Title.Text = "MT3ATI HUB FLY GUI"
Title.TextColor3 = Color3.fromRGB(200, 200, 200)
Title.Font = Enum.Font.Gotham
Title.TextSize = 14
Title.Parent = Frame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 8)
TitleCorner.Parent = Title

local ToggleButton = Instance.new("TextButton")
ToggleButton.Name = "ToggleButton"
ToggleButton.Size = UDim2.new(0.9, 0, 0, 30)
ToggleButton.Position = UDim2.new(0.05, 0, 0, 40)
ToggleButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
ToggleButton.BorderSizePixel = 0
ToggleButton.Text = "تشغيل الطيران"
ToggleButton.TextColor3 = Color3.fromRGB(200, 200, 200)
ToggleButton.Font = Enum.Font.Gotham
ToggleButton.TextSize = 12
ToggleButton.Parent = Frame

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 6)
ButtonCorner.Parent = ToggleButton

local SpeedSlider = Instance.new("Frame")
SpeedSlider.Name = "SpeedSlider"
SpeedSlider.Size = UDim2.new(0.9, 0, 0, 50)
SpeedSlider.Position = UDim2.new(0.05, 0, 0, 80)
SpeedSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
SpeedSlider.BorderSizePixel = 0
SpeedSlider.Parent = Frame

local SliderCorner = Instance.new("UICorner")
SliderCorner.CornerRadius = UDim.new(0, 6)
SliderCorner.Parent = SpeedSlider

local SpeedText = Instance.new("TextLabel")
SpeedText.Name = "SpeedText"
SpeedText.Size = UDim2.new(1, 0, 0, 20)
SpeedText.Position = UDim2.new(0, 0, 0, 0)
SpeedText.BackgroundTransparency = 1
SpeedText.Text = "السرعه: " .. flySpeed
SpeedText.TextColor3 = Color3.fromRGB(200, 200, 200)
SpeedText.Font = Enum.Font.Gotham
SpeedText.TextSize = 12
SpeedText.Parent = SpeedSlider

local SliderBar = Instance.new("Frame")
SliderBar.Name = "SliderBar"
SliderBar.Size = UDim2.new(0.9, 0, 0, 6)
SliderBar.Position = UDim2.new(0.05, 0, 0, 25)
SliderBar.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
SliderBar.BorderSizePixel = 0
SliderBar.Parent = SpeedSlider

local BarCorner = Instance.new("UICorner")
BarCorner.CornerRadius = UDim.new(0, 3)
BarCorner.Parent = SliderBar

local SliderFill = Instance.new("Frame")
SliderFill.Name = "SliderFill"
SliderFill.Size = UDim2.new((flySpeed - minSpeed) / (maxSpeed - minSpeed), 0, 1, 0)
SliderFill.Position = UDim2.new(0, 0, 0, 0)
SliderFill.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
SliderFill.BorderSizePixel = 0
SliderFill.Parent = SliderBar

local FillCorner = Instance.new("UICorner")
FillCorner.CornerRadius = UDim.new(0, 3)
FillCorner.Parent = SliderFill

local SliderButton = Instance.new("TextButton")
SliderButton.Name = "SliderButton"
SliderButton.Size = UDim2.new(0, 20, 0, 20)
SliderButton.Position = UDim2.new((flySpeed - minSpeed) / (maxSpeed - minSpeed), -10, 0.5, -10)
SliderButton.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
SliderButton.BorderSizePixel = 0
SliderButton.Text = ""
SliderButton.Parent = SliderBar

local SliderButtonCorner = Instance.new("UICorner")
SliderButtonCorner.CornerRadius = UDim.new(0, 10)
SliderButtonCorner.Parent = SliderButton

local flying = false
local flyConnection = nil
local plr = game:GetService("Players").LocalPlayer
local rs = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local function disableFlight()
    if flying then
        flying = false
        ToggleButton.Text = "تشغيل الطيران"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
        
        if plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") then
            plr.Character.Humanoid.PlatformStand = false
            
            local bv = plr.Character.HumanoidRootPart:FindFirstChild("VelocityHandler")
            if bv then
                bv.MaxForce = Vector3.new(0, 0, 0)
                bv:Destroy()
            end
            
            local bg = plr.Character.HumanoidRootPart:FindFirstChild("GyroHandler")
            if bg then
                bg.MaxTorque = Vector3.new(0, 0, 0)
                bg:Destroy()
            end
        end
        
        if flyConnection then
            flyConnection:Disconnect()
            flyConnection = nil
        end
    end
end

local function enableFlight()
    if not flying then
        flying = true
        ToggleButton.Text = "ايقاف الطيران"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
        
        local camera = Workspace.CurrentCamera
        local controlModule = require(plr.PlayerScripts:WaitForChild('PlayerModule'):WaitForChild("ControlModule"))
        
        -- Create or update BodyVelocity
        local bv = plr.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") or Instance.new("BodyVelocity")
        bv.Name = "VelocityHandler"
        bv.Parent = plr.Character.HumanoidRootPart
        bv.MaxForce = Vector3.new(9e9, 9e9, 9e9)
        bv.Velocity = Vector3.new(0, 0, 0)
        
        -- Create or update BodyGyro
        local bg = plr.Character.HumanoidRootPart:FindFirstChild("GyroHandler") or Instance.new("BodyGyro")
        bg.Name = "GyroHandler"
        bg.Parent = plr.Character.HumanoidRootPart
        bg.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
        bg.P = 1000
        bg.D = 50
        
        -- Enable flying
        plr.Character.Humanoid.PlatformStand = true
        
        -- Main flying loop
        flyConnection = rs.RenderStepped:Connect(function()
            if not flying or not plr.Character or not plr.Character:FindFirstChildOfClass("Humanoid") or 
               not plr.Character.Humanoid.RootPart or plr.Character.Humanoid.Health <= 0 or
               not plr.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") or 
               not plr.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
                disableFlight()
                return
            end
            
            bg.CFrame = camera.CoordinateFrame
            local direction = controlModule:GetMoveVector()
            bv.Velocity = Vector3.new()
            
            if direction.X ~= 0 then
                bv.Velocity = bv.Velocity + camera.CFrame.RightVector * (direction.X * flySpeed)
            end
            if direction.Z ~= 0 then
                bv.Velocity = bv.Velocity - camera.CFrame.LookVector * (direction.Z * flySpeed)
            end
        end)
    end
end

ToggleButton.MouseButton1Click:Connect(function()
    if flying then
        disableFlight()
    else
        enableFlight()
    end
end)

plr.CharacterAdded:Connect(function(character)
    character:WaitForChild("Humanoid").Died:Connect(function()
        disableFlight()
    end)
end)

local sliding = false

local function updateSlider(input)
    if sliding then
        local sliderAbsolutePosition = SliderBar.AbsolutePosition
        local sliderAbsoluteSize = SliderBar.AbsoluteSize
        
        local touchPosition
        if input.UserInputType == Enum.UserInputType.Touch then
            touchPosition = input.Position
        else
            touchPosition = UserInputService:GetMouseLocation()
        end
        
        local relativeX = (touchPosition.X - sliderAbsolutePosition.X) / sliderAbsoluteSize.X
        relativeX = math.clamp(relativeX, 0, 1)
        
        SliderButton.Position = UDim2.new(relativeX, -10, 0.5, -10)
        SliderFill.Size = UDim2.new(relativeX, 0, 1, 0)
        
        flySpeed = math.floor(minSpeed + (maxSpeed - minSpeed) * relativeX)
        SpeedText.Text = "السرعه: " .. flySpeed
    end
end

SliderButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        sliding = true
    end
end)

SliderBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        sliding = true
        updateSlider(input)
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        sliding = false
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if sliding and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then
        updateSlider(input)
    end
end)
  end
})

local Section = Tab:AddSection({
	Name = "سكربت طيران عادي"
})

local Button = Tab:AddButton({
  Name = "سكربت طيران",
  Callback = function()
    local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")
local closebutton = Instance.new("TextButton")
local mini = Instance.new("TextButton")
local mini2 = Instance.new("TextButton")

main.Name = "main"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "ارتفاع"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "انخفاض"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "طيران"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "MT3ATI HUB"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true

closebutton.Name = "Close"
closebutton.Parent = main.Frame
closebutton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closebutton.Font = "SourceSans"
closebutton.Size = UDim2.new(0, 45, 0, 28)
closebutton.Text = "X"
closebutton.TextSize = 30
closebutton.Position =  UDim2.new(0, 0, -1, 27)

mini.Name = "minimize"
mini.Parent = main.Frame
mini.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
mini.Font = "SourceSans"
mini.Size = UDim2.new(0, 45, 0, 28)
mini.Text = "-"
mini.TextSize = 40
mini.Position = UDim2.new(0, 44, -1, 27)

mini2.Name = "minimize2"
mini2.Parent = main.Frame
mini2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
mini2.Font = "SourceSans"
mini2.Size = UDim2.new(0, 45, 0, 28)
mini2.Text = "+"
mini2.TextSize = 40
mini2.Position = UDim2.new(0, 44, -1, 57)
mini2.Visible = false

speeds = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "MT3ATI HUB";
	Text = "BY MT3ATI";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 5;

Frame.Active = true -- main = gui
Frame.Draggable = true

onof.MouseButton1Down:connect(function()

	if nowe == true then
		nowe = false

		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true



		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = game.Players.LocalPlayer.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end




	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



		local plr = game.Players.LocalPlayer
		local torso = plr.Character.Torso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", torso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = torso.CFrame
		local bv = Instance.new("BodyVelocity", torso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			game:GetService("RunService").RenderStepped:Wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end
			--	game.Players.LocalPlayer.Character.Animate.Disabled = true
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false




	else
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.UpperTorso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", UpperTorso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = UpperTorso.CFrame
		local bv = Instance.new("BodyVelocity", UpperTorso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end

			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false



	end





end)

local tis

up.MouseButton1Down:connect(function()
	tis = up.MouseEnter:connect(function()
		while tis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
		end
	end)
end)

up.MouseLeave:connect(function()
	if tis then
		tis:Disconnect()
		tis = nil
	end
end)

local dis

down.MouseButton1Down:connect(function()
	dis = down.MouseEnter:connect(function()
		while dis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
		end
	end)
end)

down.MouseLeave:connect(function()
	if dis then
		dis:Disconnect()
		dis = nil
	end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false

end)


plus.MouseButton1Down:connect(function()
	speeds = speeds + 1
	speed.Text = speeds
	if nowe == true then


		tpwalking = false
		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
	end
end)
mine.MouseButton1Down:connect(function()
	if speeds == 1 then
		speed.Text = 'cannot be less than 1'
		wait(1)
		speed.Text = speeds
	else
		speeds = speeds - 1
		speed.Text = speeds
		if nowe == true then
			tpwalking = false
			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
		end
	end
end)

closebutton.MouseButton1Click:Connect(function()
	main:Destroy()
end)

mini.MouseButton1Click:Connect(function()
	up.Visible = false
	down.Visible = false
	onof.Visible = false
	plus.Visible = false
	speed.Visible = false
	mine.Visible = false
	mini.Visible = false
	mini2.Visible = true
	main.Frame.BackgroundTransparency = 1
	closebutton.Position =  UDim2.new(0, 0, -1, 57)
end)

mini2.MouseButton1Click:Connect(function()
	up.Visible = true
	down.Visible = true
	onof.Visible = true
	plus.Visible = true
	speed.Visible = true
	mine.Visible = true
	mini.Visible = true
	mini2.Visible = false
	main.Frame.BackgroundTransparency = 0 
	closebutton.Position =  UDim2.new(0, 0, -1, 27)
end)
  end
})

local Section = Tab:AddSection({
	Name = "سكربت سحب اشياء"
})

Tab:AddButton({
    Name = "سكربت سحب الاشياء للاعب",
    Description = "السكربت عباره عن سحب الابواب للاعب الذي تضع اسمه",
    Callback = function()
        -- Gui to Lua
-- Version: 3.2

-- Instances:

local Gui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Box = Instance.new("TextBox")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Label = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local Button = Instance.new("TextButton")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")

--Properties:

Gui.Name = "Gui"
Gui.Parent = gethui()
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Gui
Main.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.335954279, 0, 0.542361975, 0)
Main.Size = UDim2.new(0.240350261, 0, 0.166880623, 0)
Main.Active = true
Main.Draggable = true

Box.Name = "Box"
Box.Parent = Main
Box.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
Box.BorderColor3 = Color3.fromRGB(0, 0, 0)
Box.BorderSizePixel = 0
Box.Position = UDim2.new(0.0980926454, 0, 0.218712583, 0)
Box.Size = UDim2.new(0.801089942, 0, 0.364963502, 0)
Box.FontFace = Font.new("rbxasset://fonts/families/SourceSansSemibold.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Box.PlaceholderText = "اكتب اسم الاعب هنا"
Box.Text = ""
Box.TextColor3 = Color3.fromRGB(255, 255, 255)
Box.TextScaled = true
Box.TextSize = 31.000
Box.TextWrapped = true

UITextSizeConstraint.Parent = Box
UITextSizeConstraint.MaxTextSize = 31

Label.Name = "Label"
Label.Parent = Main
Label.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
Label.BorderSizePixel = 0
Label.Size = UDim2.new(1, 0, 0.160583943, 0)
Label.FontFace = Font.new("rbxasset://fonts/families/Nunito.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
Label.Text = "سحب الاشياء | Made by: DR4V3X"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextScaled = true
Label.TextSize = 14.000
Label.TextWrapped = true

UITextSizeConstraint_2.Parent = Label
UITextSizeConstraint_2.MaxTextSize = 21

Button.Name = "Button"
Button.Parent = Main
Button.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0.183284417, 0, 0.656760991, 0)
Button.Size = UDim2.new(0.629427791, 0, 0.277372271, 0)
Button.Font = Enum.Font.Nunito
Button.Text = "سحب الاشياء | مطفئ"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextScaled = true
Button.TextSize = 28.000
Button.TextWrapped = true

UITextSizeConstraint_3.Parent = Button
UITextSizeConstraint_3.MaxTextSize = 28

-- Scripts:

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")

local character
local humanoidRootPart

mainStatus = true
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
	if input.KeyCode == Enum.KeyCode.RightControl and not gameProcessedEvent then
		mainStatus = not mainStatus
		Main.Visible = mainStatus
	end
end)

local Folder = Instance.new("Folder", Workspace)
local Part = Instance.new("Part", Folder)
local Attachment1 = Instance.new("Attachment", Part)
Part.Anchored = true
Part.CanCollide = false
Part.Transparency = 1

if not getgenv().Network then
	getgenv().Network = {
		BaseParts = {},
		Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)
	}

	Network.RetainPart = function(Part)
		if Part:IsA("BasePart") and Part:IsDescendantOf(Workspace) then
			table.insert(Network.BaseParts, Part)
			Part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
			Part.CanCollide = false
		end
	end

	local function EnablePartControl()
		LocalPlayer.ReplicationFocus = Workspace
		RunService.Heartbeat:Connect(function()
			sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
			for _, Part in pairs(Network.BaseParts) do
				if Part:IsDescendantOf(Workspace) then
					Part.Velocity = Network.Velocity
				end
			end
		end)
	end

	EnablePartControl()
end

local function ForcePart(v)
	if v:IsA("BasePart") and not v.Anchored and not v.Parent:FindFirstChildOfClass("Humanoid") and not v.Parent:FindFirstChild("Head") and v.Name ~= "Handle" then
		for _, x in ipairs(v:GetChildren()) do
			if x:IsA("BodyMover") or x:IsA("RocketPropulsion") then
				x:Destroy()
			end
		end
		if v:FindFirstChild("Attachment") then
			v:FindFirstChild("Attachment"):Destroy()
		end
		if v:FindFirstChild("AlignPosition") then
			v:FindFirstChild("AlignPosition"):Destroy()
		end
		if v:FindFirstChild("Torque") then
			v:FindFirstChild("Torque"):Destroy()
		end
		v.CanCollide = false
		local Torque = Instance.new("Torque", v)
		Torque.Torque = Vector3.new(100000, 100000, 100000)
		local AlignPosition = Instance.new("AlignPosition", v)
		local Attachment2 = Instance.new("Attachment", v)
		Torque.Attachment0 = Attachment2
		AlignPosition.MaxForce = math.huge
		AlignPosition.MaxVelocity = math.huge
		AlignPosition.Responsiveness = 200
		AlignPosition.Attachment0 = Attachment2
		AlignPosition.Attachment1 = Attachment1
	end
end

local blackHoleActive = false
local DescendantAddedConnection

local function toggleBlackHole()
	blackHoleActive = not blackHoleActive
	if blackHoleActive then
		Button.Text = "سحب الاشياء | مشغل"
		for _, v in ipairs(Workspace:GetDescendants()) do
			ForcePart(v)
		end

		DescendantAddedConnection = Workspace.DescendantAdded:Connect(function(v)
			if blackHoleActive then
				ForcePart(v)
			end
		end)

		spawn(function()
			while blackHoleActive and RunService.RenderStepped:Wait() do
				Attachment1.WorldCFrame = humanoidRootPart.CFrame
			end
		end)
	else
		Button.Text = "سحب الاشياء | مطفء"
		if DescendantAddedConnection then
			DescendantAddedConnection:Disconnect()
		end
	end
end

local function getPlayer(name)
	local lowerName = string.lower(name)
	for _, p in pairs(Players:GetPlayers()) do
		local lowerPlayer = string.lower(p.Name)
		if string.find(lowerPlayer, lowerName) then
			return p
		elseif string.find(string.lower(p.DisplayName), lowerName) then
			return p
		end
	end
end

local player = nil

local function VDOYZQL_fake_script() -- Box.Script 
	local script = Instance.new('Script', Box)

	script.Parent.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			player = getPlayer(Box.Text)
			if player then
				Box.Text = player.Name
				print("Player found:", player.Name)
			else
				print("Player not found")
			end
		end
	end)
end
coroutine.wrap(VDOYZQL_fake_script)()
local function JUBNQKI_fake_script() -- Button.Script 
	local script = Instance.new('Script', Button)

	script.Parent.MouseButton1Click:Connect(function()
		if player then
			character = player.Character or player.CharacterAdded:Wait()
			humanoidRootPart = character:WaitForChild("HumanoidRootPart")
			toggleBlackHole()
		else
			print("Player is not selected")
		end
	end)
end
coroutine.wrap(JUBNQKI_fake_script)()
    end
})

local Section = Tab:AddSection({
	Name = "سكربت انتقال"
})

local Button = Tab:AddButton({
  Name = "سكربت انتقال",
  Callback = function()
    local url = ""
setclipboard(url)
print("Discord url has been copied to your clipboard!")





wait(1.2)
game.StarterGui:SetCore("SendNotification", {
Title = "نرحب بالجميع"; -- the title (ofc)
Text = "MT3ATI HUB"; -- what the text says (ofc)
Icon = ""; -- the image if u want. 
Duration = 5; -- how long the notification should in secounds
})




local gui = Instance.new("ScreenGui")
gui.Name = "قائمه تنقل"
gui.Parent = game.Players.LocalPlayer.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 150, 0, 70)
frame.Position = UDim2.new(0, 10, 0, 10)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 3
frame.BorderColor3 = Color3.new(255, 0, 0)
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local label = Instance.new("TextLabel")
label.Text = "انتقال الى الاعب:"
label.Position = UDim2.new(0, 5, 0, 5)
label.Size = UDim2.new(0, 100, 0, 20)
label.TextColor3 = Color3.new(255, 0, 0)
label.BackgroundTransparency = 1
label.Parent = frame

local textbox = Instance.new("TextBox")
textbox.Position = UDim2.new(0, 5, 0, 25)
textbox.Size = UDim2.new(0, 140, 0, 20)
textbox.Text = ""
textbox.ClearTextOnFocus = true
textbox.Parent = frame

local button = Instance.new("TextButton")
button.Text = "انتقال"
button.Position = UDim2.new(0, 5, 0, 50)
button.Size = UDim2.new(0, 140, 0, 20)
button.Parent = frame

local madeBy = Instance.new("TextLabel")
madeBy.Text = "MT3ATI HUB"
madeBy.Position = UDim2.new(0, 5, 0, 75)
madeBy.Size = UDim2.new(0, 140, 0, 20)
madeBy.TextColor3 = Color3.new(255, 0, 0)
madeBy.BackgroundTransparency = 1
madeBy.Parent = frame

button.MouseButton1Click:Connect(function()
    local targetName = textbox.Text
    for _, player in ipairs(game.Players:GetPlayers()) do
        if string.find(string.lower(player.Name), string.lower(targetName)) then
            game.Players.LocalPlayer.Character:MoveTo(player.Character.Head.Position)
            break
        end
    end
end)
  end
})

local Tab = Window:MakeTab({"السكربتات القويه", Icon = ""})

Tab:AddButton({
    Name = "Ghost Hub",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
    end
})

local Tab = Window:MakeTab({"السكربتات", Icon = ""})

Tab:AddButton({
    Name = "اداه انتقال",
    Callback = function()
        -- tp

mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Equip to Click TP"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
    end
})

Tab:AddButton({
    Name = "حذف جميع الايتمات",
    Callback = function()
        -- Deletando todos os itens do inventÃ¡rio
        local player = game.Players.LocalPlayer
        for _, item in pairs(player.Backpack:GetChildren()) do
            if item:IsA("Tool") then
                item:Destroy()  -- Deleta o item
            end
        end
    end
})

local Tab = Window:MakeTab({"سبام شات", Icon = ""})

local Section = Tab:AddSection({
	Name = "سبام شات"
})

local TextSave
local tcs = game:GetService("TextChatService")
local chat = tcs.ChatInputBarConfiguration and tcs.ChatInputBarConfiguration.TargetTextChannel

function sendchat(msg)
    if not msg or msg == "" then return end
    if tcs.ChatVersion == Enum.ChatVersion.LegacyChatService then
        local success, err = pcall(function()
            game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(msg, "All")
        end)
        if not success then
            warn("Erro ao enviar chat: " .. err)
        end
    elseif chat then
        local success, err = pcall(function()
            chat:SendAsync(msg)
        end)
        if not success then
            warn("Erro ao enviar chat: " .. err)
        end
    end
end

Tab:AddTextBox({
    Name = "ضع الكلام",
    PlaceholderText = "ادخل الكلام هنا",
    Callback = function(text)
        TextSave = text
    end
})

Tab:AddButton({
    Name = "سبام شات",
    Callback = function()
        sendchat(TextSave)
    end
})

getgenv().ChaosHubEnviarDelay = 1

Tab:AddSlider({
    Name = "سرعه السبام",
    Min = 0.4,
    Max = 10,
    Default = 1,
    Increment = 0.1,
    Callback = function(Value)
        getgenv().ChaosHubEnviarDelay = Value
    end
})

Tab:AddParagraph({"تحذير:", "يرجى عدم وضع السرعه على 0 و الا ستاخذ تحذير او بان"})

Tab:AddToggle({
    Name = "تفعيل السبام",
    Default = false,
    Flag = "Spawn with texts",
    Callback = function(Value)
        getgenv().ChaosHubSpawnText = Value
        while getgenv().ChaosHubSpawnText do
            sendchat(TextSave)
            task.wait(getgenv().ChaosHubEnviarDelay)
        end
    end
})

Tab:AddButton({
    Name = "سبام شات Hacked By DR4V3X HUB",
    Callback = function()
        if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then 
            game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("msg\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rServer: Hacked By DR4V3X HUB")
        else 
            print("Nadaa")
    end
end
})

Tab:AddButton({
    Name = "حذف الشات",
    Callback = function()
        if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then 
            game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("msg2\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\rServer: Chat Cleared")
        else 
            print("Nadaa")
    end
end
})