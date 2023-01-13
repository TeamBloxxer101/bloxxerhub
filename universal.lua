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

-- Sliders

LocalPlayerTab:AddSlider({
    Name = "WalkSpeed",
    Min = 16,
    Max = 1000,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Walkspeed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end    
})

LocalPlayerTab:AddSlider({
    Name = "Jump Power",
    Min = 50,
    Max = 1000,
    Default = 50,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Jump Power",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end    
})

-- Buttons

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