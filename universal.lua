local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Spawn = game.Players.LocalPlayer.SpawnCFrame
local P = game:GetService'Players'
local HRP = P.LocalPlayer.Character.HumanoidRootPart
local Name = game.Players.LocalPlayer.Name
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local UniversalHub = OrionLib:MakeWindow({Name = "BloxxerHub | No Game Detected (Universal Mode)", HidePremium = false, IntroText = "Team Bloxxer", IntroIcon = "rbxassetid://12022925290", Icon = "rbxassetid://12022925290", SaveConfig = true, ConfigFolder = "BloxxerConfig"})


OrionLib:MakeNotification({
    Name = "Welcome!",
    Content = "Welcome to Bloxxer Hub! Thank you for using this script. Regards by: bloxxer101101",
    Image = "rbxassetid://12022925290",
    Time = 7.5
})

OrionLib:MakeNotification({
    Name = "No Game Detected",
    Content = "Bloxxer Hub has not detected a game that it supports. Switching to Universal Mode.",
    Image = "rbxassetid://12022925290",
    Time = 6
})


function discordnotification()
    syn.write_clipboard("https://discord.gg/Puy6SYbDC6")
    
        OrionLib:MakeNotification({
            Name = "Join the discord!",
            Content = "Team Bloxxer request that you join the official Team Bloxxer Discord Server! It has been copied to your clipboard.",
            Image = "rbxassetid://12022925290",
            Time = 6
        })
    end


-- Tabs

local LocalPlayerTab = UniversalHub:MakeTab({
    Name = "LocalPlayer",
    Icon = "rbxassetid://12039944949",
    PremiumOnly = false
})

local ScriptsTab = UniversalHub:MakeTab({
    Name = "Scripts",
    Icon = "rbxassetid://12039944949",
    PremiumOnly = false
})

-- LocalPlayerTab

LocalPlayerTab:AddSlider({
	Name = "Walkspeed",
	Min = 0,
	Max = 500,
	Default = 15,
	Increment = 1,
	ValueName = "Walkspeed",
    Color = Color3.fromRGB(63, 198, 255),
	Callback = function(Value)
		game:GetService('Workspace')[Name].Humanoid.WalkSpeed = Value
	end
})
LocalPlayerTab:AddSlider({
	Name = "JumpPower",
	Min = 0,
	Max = 500,
	Default = 50,
	Increment = 1,
	ValueName = "JumpPower",
    Color = Color3.fromRGB(31, 255, 23),
	Callback = function(Value)
		game:GetService('Workspace')[Name].Humanoid.JumpPower = Value
	end 
})

LocalPlayerTab:AddSlider({
	Name = "HipHeight",
	Min = 0,
	Max = 500,
	Default = 0,
	Increment = 1,
	ValueName = "HipHeight",
    Color = Color3.fromRGB(253, 17, 17),
	Callback = function(Value)
		game:GetService('Workspace')[Name].Humanoid.HipHeight = Value
	end
})
LocalPlayerTab:AddSlider({
	Name = "Gravity",
	Min = 0,
	Max = 500,
	Default = 200,
	Increment = 1,
	ValueName = "Gravity",
    Color = Color3.fromRGB(242, 249, 148),
	Callback = function(Value)
		workspace.Gravity = Value
	end
})
LocalPlayerTab:AddTextbox({
	Name = "Teleport to player",
	Default = "Player Name",
	TextDisappear = true,
	Callback = function(Value)
        local function TPToPlayer()
            HRP.CFrame = workspace[Value].HumanoidRootPart.CFrame
        end
        TPToPlayer()
	end	  
})

LocalPlayerTab:AddToggle({
    Name = "NoClip",
    Default = false,
    Callback = function(Value)
        _G.noclipValue = Value
        noclipFunction()
    end    
})

-- ScriptsTab

ScriptsTab:AddButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
      end    
})


ScriptsTab:AddButton({
    Name = "FE Click Fling (R6 Only)",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/WpfTHhyq'))()
      end    
})


ScriptsTab:AddButton({
    Name = "FE Yeet GUI (Works Mostly)",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/375hic15'))()
      end    
})

ScriptsTab:AddButton({
    Name = "Pendulum Hub (Warning NSFW Content Inside)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
    end    
})


wait(5)
discordnotification()

-- Toggles

OrionLib:Init()