    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
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

        OrionLib:Init()