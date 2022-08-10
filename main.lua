local LocalPlayer = game:GetService("Players").LocalPlayer
game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(message)
    local player = message.FromSpeaker
    local chat = message.Message:lower()
    if string.find(chat,"funnideath") then
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I AM UNDEFEATABLE!!", "All")
        wait(6)
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("wait.... i dont feel so good...", "All")
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("🤢", "All")
        wait(5)
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
        wait(0.5)
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("X_X", "All")     
    end
if string.find(chat,"magic") then
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("woah woah whats happening....", "All")
        wait(2)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 100
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("OMG HELP", "All")
        wait(5)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2
        wait(1)
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
        wait(0.5)
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("X_X", "All")     
    end
end)
