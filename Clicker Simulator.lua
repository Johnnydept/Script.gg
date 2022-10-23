local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Click Simulator", HidePremium = false, SaveConfig = true, ConfigFolder = "Johnny_Test"})

_G.AutoClick = true
_G.AutoRebirths = true

local Tab = Window:MakeTab({
	Name = "Auto FARM",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab_EX = Window:MakeTab({
	Name = "Exit",
	PremiumOnly = false
})

Tab:AddToggle({
    Name = "GetGamepass",
    Default = false,
	Callback = function(Value)
		for i, v in pairs(game:GetService("Players").AustinraceCup.Boosts:GetDescendants()) do
     		v.Value = Value
    	end
		for i, v in pairs(game:GetService("Players").AustinraceCup.Boosts.x6Hatch:GetDescendants()) do
			v.Value = false
		end
	end
})

Tab:AddToggle({
	Name = "Auto Click!",
	Default = false,
	Callback = function (Value)
		_G.AutoClick = Value
		while _G.AutoClick do wait()
			local ohNumber1 = 1.635939575774381e+36
			local ohNumber2 = 109
			local ohBoolean3 = false
			local ohBoolean4 = false

			game:GetService("ReplicatedStorage").Bindable.Client.additionNew:Fire(ohNumber1, ohNumber2, ohBoolean3, ohBoolean4)
		end
	end
})

Tab:AddToggle({	
	Name = "Auto Rebirths!",
	Default = false,
	Callback = function (Value)
		_G.AutoRebirths = Value
		while _G.AutoRebirths do wait(0.5)
			local ohNumber1 = 1
			local ohBoolean2 = false
			local ohBoolean3 = false

			game:GetService("ReplicatedStorage").Events.Client.requestRebirth:FireServer(ohNumber1, ohBoolean2, ohBoolean3)
		end
	end
})

Tab_EX:AddButton({
	Name = "Destroy GUI!",
	Callback = function ()
		OrionLib:Destroy()
	end
})

Tab_EX:AddButton({
	Name = "ANTI IDLE",
	Callback = function ()
		local VirtualUser=game:service'VirtualUser'
		game:service'Players'.LocalPlayer.Idled:connect(function()
		VirtualUser:CaptureController()
		VirtualUser:ClickButton2(Vector2.new())
		end)

		OrionLib:MakeNotification({
			Name = "ANTI IDLE ON!",
			Content = "คุณได้เปิดใช้งาน ANTI IDLE แล้ว??",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
	end
})

-- OrionLib:MakeNotification({
-- 	Name = "Title!",
-- 	Content = "Notification content... what will it say??",
-- 	Image = "rbxassetid://4483345998",
-- 	Time = 5
-- })

OrionLib:Init()