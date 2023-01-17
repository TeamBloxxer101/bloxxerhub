	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local Spawn = game.Players.LocalPlayer.SpawnCFrame
	local P = game:GetService'Players'
	local HRP = P.LocalPlayer.Character.HumanoidRootPart
	local Name = game.Players.LocalPlayer.Name
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

		function discordnotification()
			syn.write_clipboard("https://discord.gg/Puy6SYbDC6")
			
				OrionLib:MakeNotification({
					Name = "Join the discord!",
					Content = "Team Bloxxer request that you join the official Team Bloxxer Discord Server! It has been copied to your clipboard.",
					Image = "rbxassetid://12022925290",
					Time = 6
				})
			end

		
		
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

		-- LocalPlayerTab
		
		LocalPlayerTab:AddLabel("Walkspeed is disabled due to anticheat detection.")
		
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
			Name = "Swagmode",
			Callback = function()
				loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002'))()
			  end    
		})

		ScriptsTab:AddButton({
			Name = "Faded",
			Callback = function()
				_G.Toggles = "Z" -- You can put any keybind
				loadstring(game:HttpGet("https://raw.githubusercontent.com/NighterEpic/Faded/main/YesEpic", true))()
			  end    
		})


		wait(5)
		discordnotification()


        OrionLib:Init()