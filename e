local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Ultra Clicker", "DarkTheme")
local Tab = Window:NewTab("First")
local Section = Tab:NewSection("Auto Farm")


Section:NewToggle("Auto Farm", "ToggleInfo", function(state)
    if state then
        _G.Farm = true
        
        while _G.Farm do wait()
        workspace.Events.AddClick:FireServer()
    end

    else
        _G.Farm = false
    end
end)


Section:NewButton("Buy Egg1", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2121.2221679688, 0.70681023597717, 439.52185058594)
    wait(0.25)
    local ohString1 = "Basic"
    local ohString2 = "Single"

    game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(ohString1, ohString2)
end)

local Tab = Window:NewTab("Teleport")
local Section = Tab:NewSection("Click to teleport")

Section:NewButton("Desert", "Click to teleport", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-56.555847167969, -25.866174697876, 483.58270263672)
end)
Section:NewButton("Snow Land", "Click to teleport", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-349.89636230469, -26.13697052002, 484.29571533203)
end)
Section:NewButton("Forest", "Click to teleport", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-659.53533935547, -25.866174697876, 483.98541259766)
end)
Section:NewButton("Candy Land", "Click to teleport", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-989.87884521484, -26.13697052002, 502.36178588867)
end)

local Tab = Window:NewTab("Misc")
local Section = Tab:NewSection("Toggle UI")
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)
