local tab = win:NewTab({
    Title = "Information"
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
    Title = "Enable Rainbow Ui",
    Description = "Enables Lunar X Rainbow Mode",
    Callback = function(args)
        print(args)
    end
})

tab:Toggle({
    Title = "Notifications",
    Description = "Notifications true/false",
    Callback = function(args)
        print(args)
    end
})

tab:DropDown({
    Text = "Teleport Method",
    PlaceHolder = 'Choose a Teleport Method...',
    Options = {'Instant',"Tween"},
    Callback = function(args)
        print(args)
    end
})

tab:Slider({
    Title = "Walkspeed",
    MinValue = 16,
    Def = 0,
    MaxValue = 100,
    callback = function(args)
        print(args)
    end
})

tab:Slider({
    Title = "Jumpower",
    MinValue = 50,
    Def = 0,
    MaxValue = 100,
    callback = function(args)
        print(args)
    end
})
