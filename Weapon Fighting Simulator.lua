local WorkspacePlayers = game:GetService("Workspace").Game.Players
local Players = game:GetService('Players')
local localplayer = Players.LocalPlayer
local GuiService = game:GetService("GuiService")
local Light = game:GetService("Lighting")
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
    Name = "GUI Loading",
    Content = "Johnny Hub is Loading.",
    Image = "rbxassetid://4483345998",
    Time = 4
})
wait(4)
OrionLib:MakeNotification({	
    Name = "GUI Loading",
    Content = "Johnny Hub is Ready!",
    Image = "rbxassetid://4483345998",
    Time = 2
})

local Window = OrionLib:MakeWindow({Name = "Weapon Simurator", HidePremium = false, SaveConfig = true, ConfigFolder = "Weapon1"})

local Tab = Window:MakeTab({
	Name = "test1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "test!",
	Callback = function()
      		print("button pressed")
  	end    
})
