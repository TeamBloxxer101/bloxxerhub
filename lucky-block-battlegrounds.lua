local Name = game.Players.LocalPlayer.Name
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Spawn = game.Players.LocalPlayer.SpawnCFrame
local Window = OrionLib:MakeWindow({Name = "BloxxerHub | Lucky Block Battlegrounds"})
local P = game:GetService'Players'
local HRP = P.LocalPlayer.Character.HumanoidRootPart
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483362458",
	PremiumOnly = false
})
local Tab2 = Window:MakeTab({
	Name = "LocalPlayer",
	Icon = "rbxassetid://4515645493",
	PremiumOnly = false
})
local Tab3 = Window:MakeTab({
	Name = "Keybinds",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


OrionLib:MakeNotification({
    Name = "Welcome!",
    Content = "Welcome to Bloxxer Hub! Thank you for using this script. Regards by: bloxxer101101",
    Image = "rbxassetid://12022925290",
    Time = 7.5
})

OrionLib:MakeNotification({
    Name = "Game Detected",
    Content = "Bloxxer Hub has detected the game as: Lucky Block Battlegrounds",
    Image = "rbxassetid://12022925290",
    Time = 6
})


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





---//SPAWNER
Tab:AddDropdown({
	Name = "Spawn 1 Block",
	Default = "Select Block",
	Options = {"Select Block", "Lucky Block", "Super Block", "Diamond Block", "Rainbow Block","Galaxy Block"},
	Callback = function(Value)
		if Value == 'Lucky Block' then
			ReplicatedStorage.SpawnLuckyBlock:FireServer()
		end
		if Value == 'Super Block' then
			ReplicatedStorage.SpawnSuperBlock:FireServer()
		end
		if Value == 'Diamond Block' then
			ReplicatedStorage.SpawnDiamondBlock:FireServer()
		end
		if Value == 'Rainbow Block' then
			ReplicatedStorage.SpawnRainbowBlock:FireServer()
		end
		if Value == 'Galaxy Block' then
			ReplicatedStorage.SpawnGalaxyBlock:FireServer()
		end
	end})
Tab:AddDropdown({
	Name = "Spawn 5 Blocks",
	Default = "Select Block",
	Options = {"Select Block", "Lucky Block", "Super Block", "Diamond Block", "Rainbow Block","Galaxy Block"},
	Callback = function(Value)
		if Value == 'Lucky Block' then
			for _ = 1,5 do
				ReplicatedStorage.SpawnLuckyBlock:FireServer()
			end
		end
		if Value == 'Super Block' then
			for _ = 1,5 do
				ReplicatedStorage.SpawnSuperBlock:FireServer()
			end
		end
		if Value == 'Diamond Block' then
			for _ = 1,5 do
				ReplicatedStorage.SpawnDiamondBlock:FireServer()
			end
		end
		if Value == 'Rainbow Block' then
			for _ = 1,5 do
				ReplicatedStorage.SpawnRainbowBlock:FireServer()
			end
		end
		if Value == 'Galaxy Block' then
			for _ = 1,5 do
				ReplicatedStorage.SpawnGalaxyBlock:FireServer()
			end
		end
	end})
	
Tab:AddDropdown({
	Name = "Spawn 10 Blocks",
	Default = "Select Block",
	Options = {"Select Block", "Lucky Block", "Super Block", "Diamond Block", "Rainbow Block","Galaxy Block"},
	Callback = function(Value)
		if Value == 'Lucky Block' then
			for _ = 1,5 do
				ReplicatedStorage.SpawnLuckyBlock:FireServer()
			end
		end
		if Value == 'Super Block' then
			for _ = 1,10 do
				ReplicatedStorage.SpawnSuperBlock:FireServer()
			end
		end
		if Value == 'Diamond Block' then
			for _ = 1,10 do
				ReplicatedStorage.SpawnDiamondBlock:FireServer()
			end
		end
		if Value == 'Rainbow Block' then
			for _ = 1,10 do
				ReplicatedStorage.SpawnRainbowBlock:FireServer()
			end
		end
		if Value == 'Galaxy Block' then
			for _ = 1,10 do
				ReplicatedStorage.SpawnGalaxyBlock:FireServer()
			end
		end
	end})

Tab:AddDropdown({
	Name = "Spawn 20 Blocks",
	Default = "Select Block",
	Options = {"Select Block", "Lucky Block", "Super Block", "Diamond Block", "Rainbow Block","Galaxy Block"},
	Callback = function(Value)
		if Value == 'Lucky Block' then
			for _ = 1,20 do
				ReplicatedStorage.SpawnLuckyBlock:FireServer()
			end
		end
		if Value == 'Super Block' then
			for _ = 1,20 do
				ReplicatedStorage.SpawnSuperBlock:FireServer()
			end
		end
		if Value == 'Diamond Block' then
			for _ = 1,20 do
				ReplicatedStorage.SpawnDiamondBlock:FireServer()
			end
		end
		if Value == 'Rainbow Block' then
			for _ = 1,20 do
				ReplicatedStorage.SpawnRainbowBlock:FireServer()
			end
		end
		if Value == 'Galaxy Block' then
			for _ = 1,20 do
				ReplicatedStorage.SpawnGalaxyBlock:FireServer()
			end
		end
	end})
	
Tab:AddButton({
	Name = "Kill All (Requires Hex Spitter)",
	Callback = function()
		local HexSpitter = P.LocalPlayer.Character.HexSpitter
		local ServerControl = HexSpitter.Remotes.ServerControl
		for _ = 1,20 do
			for _, Child in next, game.Players:GetPlayers() do
				if Child ~= game.Players.LocalPlayer then
					ServerControl:InvokeServer('RayHit', {['Position'] = Vector3.new(0, 0, 0), ["Hit"] = Child.Character.Head})
				end
			end
		end
	OrionLib:MakeNotification({
		Name = "GUI",
		Content = "Killed everyone ;)",
		Image = "rbxassetid://12022925290",
		Time = 3
	})
	end    
})
	
---//MISC
Tab2:AddSlider({
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
Tab2:AddSlider({
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

Tab2:AddToggle({
    Name = "NoClip",
    Default = false,
    Callback = function(Value)
        _G.noclipValue = Value
        noclipFunction()
    end    
})

Tab2:AddSlider({
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
Tab2:AddSlider({
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
Tab2:AddTextbox({
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
Tab2:AddButton({
	Name = "Teleport to VoidBlock",
	Callback = function()
        local function GetVoidBlock()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.CenterBlocks.Givers.VoidGiver.GUI.CFrame
        end
        GetVoidBlock()
	end
})
Tab2:AddButton({
	Name = "Teleport to Safe spot",
	Callback = function()
        local function Cute()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Wedge.CFrame
        end
        Cute()
	end
})
Tab2:AddButton({
	Name = "Teleport to Base",
	Callback = function()
		local function Run()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Spawn.Value
		end
		Run()
	end
})
Tab2:AddButton({
	Name = "Delete Trees",
	Callback = function()
        for _, Tree in next, game.Workspace:GetChildren() do
            if Tree.Name == 'Tree' then
                Tree:Destroy()
            end
        end
	end
})

---//Keybinds
Tab3:AddBind({
	Name = "Lucky Block",
	Default = Enum.KeyCode.Q,
	Callback = function()
		ReplicatedStorage.SpawnLuckyBlock:FireServer()
	end    
})
Tab3:AddBind({
	Name = "Super Block",
	Default = Enum.KeyCode.E,
	Callback = function()
		ReplicatedStorage.SpawnSuperBlock:FireServer()
	end    
})
Tab3:AddBind({
	Name = "Diamond Block",
	Default = Enum.KeyCode.R,
	Callback = function()
		ReplicatedStorage.SpawnDiamondBlock:FireServer()
	end    
})
Tab3:AddBind({
	Name = "Rainbow Block",
	Default = Enum.KeyCode.T,
	Callback = function()
		ReplicatedStorage.SpawnRainbowBlock:FireServer()
	end    
})
Tab3:AddBind({
	Name = "Galaxy Block",
	Default = Enum.KeyCode.Y,
	Callback = function()
		ReplicatedStorage.SpawnGalaxyBlock:FireServer()
	end    
})

wait(5)
discordnotification()
OrionLib:Init()