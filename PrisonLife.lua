local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
local player = game:GetService("Players").LocalPlayer
   Notification.new("success", "Working!", "Loading script...")
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
    Title = "Character"
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

tab2:Toggle({
    Title = "Noclip",
    Description = "Enables no clip for you.",
    Callback = function(args)
        local enabled = args
        
        while enabled do
            setfflag("HumanoidParallelRemoveNoPhysics", "False")
            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
            wait()
        end
    end
})

tab:Toggle({
    Title = "Notifications",
    Description = "Notifications true/false",
    Callback = function(args)
    -- nothing to do with this right now
    end
})

tab2:DropDown({
    Text = "Teleport Method",
    PlaceHolder = 'Choose a Teleport Method...',
    Options = {'Instant',"Tween"},
    Callback = function(args)
    -- nothing to do with this atm
    end
})

tab2:Slider({
    Title = "Walkspeed",
    MinValue = 16,
    Def = 0,
    MaxValue = 100,
    callback = function(args)
        player.Character.Humanoid.WalkSpeed = args
    end
})

tab2:Slider({
    Title = "Jumpower",
    MinValue = 50,
    Def = 0,
    MaxValue = 100,
    callback = function(args)
        player.Character.Humanoid.JumpPower = args
    end
})

   wait(2.5)
   Notification.new("info", "Information", "Script Loaded!")

local PremiumUsers = {
   3589438125 -- Owner of Script
}
   if table.find(PremiumUsers, player.UserId) then
      Notification.new("info", "Checking", "Checking if you're a premium user...")
      wait(2)
      Notification.new("success", "Premium Commands", "Commands Loaded - Say :cmds for commands")
   else
      Notification.new("info", "Checking", "Checking if you're a premium user...")
      wait(2)
      Notification.new("error", "Premium Commands", "Not a premium User!")
if table.find(PremiumUsers, player.UserId) then
    wait(15)
    loadstring(game:HttpGet('https://www.atriumhub.cloud/scripts/premium.lua'))()
end
end
