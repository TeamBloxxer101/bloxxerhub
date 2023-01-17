local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Spawn = game.Players.LocalPlayer.SpawnCFrame
local P = game:GetService'Players'
local HRP = P.LocalPlayer.Character.HumanoidRootPart
local Name = game.Players.LocalPlayer.Name
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
    


    function discordnotification()
        syn.write_clipboard("https://discord.gg/Puy6SYbDC6")
        
            OrionLib:MakeNotification({
                Name = "Join the discord!",
                Content = "Team Bloxxer request that you join the official Team Bloxxer Discord Server! It has been copied to your clipboard.",
                Image = "rbxassetid://12022925290",
                Time = 6
            })
        end

        wait(5)
        discordnotification()

    OrionLib:Init()