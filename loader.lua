local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local KeyWindow = OrionLib:MakeWindow({Name = "Team Bloxxer Key System", HidePremium = false, IntroText = "Team Bloxxer Key System", IntroIcon = "rbxassetid://12022925290", Icon = "rbxassetid://12022925290", SaveConfig = true, })



function discordnotification()
syn.write_clipboard("https://discord.gg/Puy6SYbDC6")

	OrionLib:MakeNotification({
		Name = "Join the discord!",
		Content = "Team Bloxxer request that you join the official Team Bloxxer Discord Server! It has been copied to your clipboard.",
		Image = "rbxassetid://12022925290",
		Time = 6
	})
end



_G.BloxxerKey = "Bloxxer"
_G.NormalKey = "yes"
_G.KeyInput = "string"
_G.RacistKey = "nigger"


function destroylogin()
	game:GetService("CoreGui").Orion:Destroy()
end

function MakeHub()
	_G.KeyInput = "string"
	
	if game.PlaceId == 155615604 then
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
		
		wait(3)
		discordnotification()


	else if game.PlaceId == 2788229376 then
		local DaHoodHub = OrionLib:MakeWindow({Name = "BloxxerHub | Da Hood", HidePremium = false, IntroText = "Team Bloxxer", IntroIcon = "rbxassetid://12022925290", Icon = "rbxassetid://12022925290", SaveConfig = true, ConfigFolder = "BloxxerConfig"})
		
		function fadedkeybind()
			OrionLib:MakeNotification({
				Name = "Faded Alert",
				Content = "The Keybind to toggle Faded will be Z (This is if you want to use Faded and Swagmode)",
				Image = "rbxassetid://12022925290",
				Time = 5
			})

			function swagmodekeybind()
				OrionLib:MakeNotification({
					Name = "SwagMode Alert",
					Content = "The Keybind to toggle Swagmode will be V (This is if you want to use Swagmode and Faded)",
					Image = "rbxassetid://12022925290",
					Time = 5
				})
			end
			
		end
		
		OrionLib:MakeNotification({
			Name = "Welcome!",
			Content = "Welcome to Bloxxer Hub! Thank you for using this script. Regards by: bloxxer101101",
			Image = "rbxassetid://12022925290",
			Time = 7.5
		})
		
		OrionLib:MakeNotification({
			Name = "Game Detected",
			Content = "Bloxxer Hub has detected the game as: Da Hood",
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
		
		local LocalPlayerTab = DaHoodHub:MakeTab({
			Name = "LocalPlayer",
			Icon = "rbxassetid://12039944949",
			PremiumOnly = false
		})
		
		local ScriptsTab = DaHoodHub:MakeTab({
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
			Name = "Swagmode (If you own swagmode premium it will automatically apply)",
			Callback = function()
				loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002'))()
			  end    
		})

		ScriptsTab:AddButton({
			Name = "Faded (If you own faded premium it will automatically apply)",
			Callback = function()
				_G.Toggles = "Z" -- You can put any keybind
				loadstring(game:HttpGet("https://raw.githubusercontent.com/NighterEpic/Faded/main/YesEpic", true))()
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


		wait(3)
		discordnotification()

		
		else
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
	
		
		-- Toggles
		
		
		-- TextBox

		wait(3)
		discordnotification()
		
		OrionLib:Init()
	end
	end
end
function CorrectKeyBloxxerNotification()
OrionLib:MakeNotification({
	Name = "Correct Key!",
	Content = "The Key you entered was correct. You have been logged in as: Bloxxer, with the username: "..Player.Name..".",
	Image = "rbxassetid://12022925290",
	Time = 5.5
})
end

function CorrectKeyNormalNotification()
OrionLib:MakeNotification({
	Name = "Correct Key!",
	Content = "The Key you entered was correct. You have been logged in as: NormalUser, with the username: "..Player.Name..".",
	Image = "rbxassetid://12022925290",
	Time = 5.5
})
end

function IncorrectKeyNotification()
OrionLib:MakeNotification({
	Name = "Incorrect Key!",
	Content = "The Key you entered was incorrect, Please try again.",
	Image = "rbxassetid://12022925290",
	Time = 5.5
})
end


local KeyTab = KeyWindow:MakeTab({
Name = "Key",
Icon = "rbxassetid://12022925290",
PremiumOnly = false
})


OrionLib:MakeNotification({
Name = "Key System",
Content = "Bloxxer Hub has detected that you are not logged in, Please enter a Login key.",
Image = "rbxassetid://12022925290",
Time = 7.5
})


KeyTab:AddTextbox({
Name = "Login Key",
Default = "Enter Key Here",
TextDisappear = true,
Callback = function(Value)
	_G.KeyInput = Value
end	  
})


KeyTab:AddButton({
Name = "Check Key",
Callback = function()
	  if _G.KeyInput == _G.NormalKey then
		CorrectKeyNormalNotification()
		destroylogin()
		wait(3.2)
		MakeHub()
	else if _G.KeyInput == _G.BloxxerKey then
		CorrectKeyBloxxerNotification()
		destroylogin()
		wait(3.2)
		MakeHub()
		else if _G.KeyInput == _G.RacistKey then
			Player:Kick("stop being racist you nigger")
		else
			IncorrectKeyNotification()
		end
	end
end
end		
})
OrionLib:Init()
