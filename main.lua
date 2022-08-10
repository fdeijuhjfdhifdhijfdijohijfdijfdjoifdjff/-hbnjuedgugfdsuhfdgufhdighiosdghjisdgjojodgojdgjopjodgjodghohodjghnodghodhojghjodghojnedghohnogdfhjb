local LocalPlayer = game:GetService("Players").LocalPlayer

game.ReplicatedStorage.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(message)

    local player = message.FromSpeaker
    local chat = message.Message:lower()

    if string.find(chat,"duy") then
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("It's time for you to all realise....", "All")
        wait(5)
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I AM THE ONLY ONE WHO IS UNDEFEATABLE", "All")
        wait(10)
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I WILL DESTROY YOU ALL!!", "All")
        wait(0.5)
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("(I LIEK SMELLY FEET)", "All")
    end
end)
