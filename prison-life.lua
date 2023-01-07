local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local PrisonLifeHub = OrionLib:MakeWindow({Name = "BloxxerHub | Prison Life", HidePremium = false, IntroText = "Team Bloxxer", IntroIcon = "rbxassetid://12022925290", Icon = "rbxassetid://12022925290", SaveConfig = true, ConfigFolder = "BloxxerConfig"})
    
    
    OrionLib:MakeNotification({
        Name = "Welcome!",
        Content = "Welcome to Bloxxer Hub! Thank you for using this script. Regards by: bloxxer101101",
        Image = "rbxassetid://12022925290",
        Time = 7.5
    })
    
    OrionLib:MakeNotification({
        Name = "Game Detected",
        Content = "Bloxxer Hub has detected the game as: Prison Life",
        Image = "rbxassetid://12022925290",
        Time = 6
    })
    
    
    -- Values
    
    _G.noclipValue = true


    -- Functions

    function noclipFunction()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.noclipValue == true then
                pcall(function()
                    game.Players.LocalPlayer.Character:FindFirstChild("Head").CanCollide = false
                    game.Players.LocalPlayer.Character:FindFirstChild("Torso").CanCollide = false
                    if _G.noclipValue == false then
                        pcall(function()
                            game.Players.LocalPlayer.Character:FindFirstChild("Head").CanCollide = true
                            game.Players.LocalPlayer.Character:FindFirstChild("Torso").CanCollide = true
                        end)
                    end
                end)
            end
        end)
    end


    -- Tabs
    
    local LocalPlayerTab = PrisonLifeHub:MakeTab({
        Name = "LocalPlayer",
        Icon = "rbxassetid://12039944949",
        PremiumOnly = false
    })
    
    local ScriptsTab = PrisonLifeHub:MakeTab({
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
        Name = "Septex (Prison Life Admin, requires key now)",
        Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
          end    
    })
    
    
    ScriptsTab:AddButton({
        Name = "Prevail X (Prison Life GUI)",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/scam666/Prevail-X/main/src.lua", true))()
          end    
    })
    
    
    ScriptsTab:AddButton({
        Name = "Admin commands (Prison Life, worse than septex tho)",
        Callback = function()
            loadstring(game:HttpGet("https://pastebin.com/raw/VPrNqGKU", true))()
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
    
    
    -- Toggles
    
    LocalPlayerTab:AddToggle({
        Name = "NoClip",
        Default = false,
        Callback = function(Value)
            _G.noclipValue = Value
            noclipFunction()
        end    
    })

    -- TextBox
    OrionLib:Init()