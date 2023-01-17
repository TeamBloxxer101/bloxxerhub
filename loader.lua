local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local KeyWindow = OrionLib:MakeWindow({Name = "Team Bloxxer Key System", HidePremium = false, IntroText = "Team Bloxxer Key System", IntroIcon = "rbxassetid://12022925290", Icon = "rbxassetid://12022925290", SaveConfig = true, })



function discordnotification()
setclipboard("https://discord.gg/Puy6SYbDC6")

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
	if game.PlaceId == 155615604 then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/TeamBloxxer101/bloxxerhub/main/prison-life.lua'))()
	else if game.PlaceId == 2788229376 then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/TeamBloxxer101/bloxxerhub/main/da-hood.lua'))()
	else if game.PlaceId == 662417684 then
		loadstring(game:HttpGet('https://raw.githubusercontent.com/TeamBloxxer101/bloxxerhub/main/lucky-block-battlegrounds.lua'))()
	else
		loadstring(game:HttpGet('https://raw.githubusercontent.com/TeamBloxxer101/bloxxerhub/main/universal.lua'))()
	end
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

discordnotification()


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
		wait(1.2)
		MakeHub()
	else if _G.KeyInput == _G.BloxxerKey then
		CorrectKeyBloxxerNotification()
		destroylogin()
		wait(1.2)
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