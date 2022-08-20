local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
if game.PlaceId == 4501589071 then
	Notification.new("Info", "Supported Game Detected", "Loading...")
	wait(1)
	loadstring(game:HttpGet("https://www.lunarscriptz.tk/PrisonLife.lua"))()
	wait(1)
	Notification.new("success", "Lunar X", "Script Loaded!")
elseif game.PlaceId == 2788229376 then
	Notification.new("Info", "Supported Game Detected", "Loading...")
	wait(1)
	loadstring(game:HttpGet("https://www.lunarscriptz.tk/DaHood.lua"))()
	wait(1)
	Notification.new("success", "Lunar X", "Script Loaded!")
else
Notification.new("Info", "Unsupported Game", "No Supported Game was found!")
end
