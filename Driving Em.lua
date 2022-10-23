loadstring(game:HttpGet("https://raw.githubusercontent.com/WindyKung/WindyWare/main/MainScript/DrivingEmpire.lua"))()

local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)

warn("Anti-Afk has Loaded")