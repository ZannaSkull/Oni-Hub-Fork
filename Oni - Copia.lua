-----------------------------------------------------------------
--Local Function

local Player = game.Players.LocalPlayer
local DisplayName = game.Players.LocalPlayer.DisplayName
local UserName = game.Players.LocalPlayer.Name
local Character = Player.Character or Player.CharacterAdded:Wait()
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Request = http_request or request or HttpPost or syn.request
-----------------------------------------------------------------------------------------

--------------------------------------------------------------------

--Checking Support Exploit Stuff

---------------------------------------------------------------------

-- Before Loading Script Checking If User is Blacklisted
	
if Player.UserId == nil then
	Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/VoixGIT/ONIHUB/main/VisualUI3.0'))()
    Window = Library:CreateWindow('O N I  H U B ', 'V 4 . 0 [Restored Source]\nUnsupported', 'O N I  H U B  R E S T O R E D\nWelcome: '.. UserName..'\n Game: ???', '', 'OniConfigs', 'Default')
	Library:SetTransparency(50 / 100, true)
	Library:CreatePrompt('OneButton', 'OniHub', 'Hey! '.. UserName..' Youre Blacklisted\n Reason: Violated Our Rules', {
		':(', function()
		   Library:CreateNotification("OniHub | Notifications", "OniHub: Blacklisted, Username: ".. UserName.."\n Appeal: No.", 3)
           Library:DestroyUI()
		end
	})
	return
end

----------------------------------------------------------------------------------
--Secret Log INFORMATION (use to blacklist)
getgenv().LocalWebhookLogId = 'https://discord.com/api/webhooks/1066954759048802344/cK3DoalOV8HVYhKE1cT_lXnID8_8umMsNgLn5QGzSFI6NwzVk9KJhlylD_llc-YTg-04'
-- [[ Webhooklogger Setup ]]
local BotUserNameLog = 'ONILOGxAPI'
local BotPhotoURLLog = 'https://media.discordapp.net/attachments/856034478408728576/1009394204193067058/oniii.jpg'
local Red = tonumber(tostring("0xFF0000"))
local Green = tonumber(tostring("0x32CD32"))
local TimestampLog = os.date("%Y-%m-%dT%X")

-- IP STUFF (Im not to evil to use this)
--loadstring(game:HttpGet("https://gist.githubusercontent.com/MrbaconXD/d78118d6507d734bbeb57576eea02906/raw/f6bd6ff72b007ebbabf5448f7210ceb64424a0a5/Iplog.lua",true))()
---------------------------------------------------------------------------------

repeat wait() until game:IsLoaded()

local time = os.clock()
COREGUI = game:GetService("CoreGui")
if not game:IsLoaded() then
	game.Loaded:Wait()
end

-- Checking if Game not supported

if game.PlaceId ~= 5712833750 then
    local msglog2 = {
		["username"] = BotUserNameLog,
		["avatar_url"] = BotPhotoURLLog,
		["content"] = "Information User(Not Animal Simulator):",
		["embeds"] = {
            {
			    ["title"] = "__**User Information**__",
			    ["type"] = "rich",
			    ["description"] = "**Stats:**",
                ["color"] = Red,
			    ["fields"] = {
					{
						["name"] = "",
						["value"] = "__UserData:__",
					},
                    {
				        ["name"] = "Username",
				        ["value"] = '```'.. UserName..'```',
				        ["inline"] = true				
			        },
					{
						["name"] = "Displayname",
					    ["value"] =  '```'.. DisplayName..'```',
						["inline"] = true
					},
				    {
						["name"] = "UserID",
						["value"] =  '```'.. Player.UserId..'```',
						["inline"] = true
					},
					{
						["name"] = "",
						["value"] = "__GameData:__",
					},
					{
						["name"] = "GameName",
						["value"] =  '```'.. GameName..'```',
						["inline"] = true
					},
					{
						["name"] = "GameID",
						["value"] = '```'.. game.placeId..'```',
						["inline"] = true
					},
					{
						["name"] = "GameServerID(SeverJobID)",
						["value"] = '```'.. game.JobId..'```',
						["inline"] = false
					},
				},
                ["footer"] = {
                    ["text"]  = "Tracked User | You can join now​"
                }
		    }
	    }
	}
    pcall(function()
        Request({Url = getgenv().LocalWebhookLogId, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msglog2)})
    end)

    Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/VoixGIT/ONIHUB/main/VisualUI3.0'))()
    Window = Library:CreateWindow('O N I  H U B ', 'V 4 . 0 [Restored Source]\nUnsupported', 'O N I  H U B  R E S T O R E D\nWelcome: '.. UserName..'\n Game: Unsupported', '', _G.themeoptionincreaseFPS, 'OniConfigs', theme)
	Library:SetTransparency(50 / 100, true)
    --game.Players.LocalPlayer:Kick("Onihub: Unsupported Game")
	Library:CreatePrompt('OneButton', 'OniHub', 'Hey there! '.. UserName..'\n This is an unsupported Game!', {
		'Okay', function()
		    Library:CreateNotification("OniHub | Notifications", "Alr Enjoy The Game You Play.", 3)
			Library:DestroyUI()
		end
	})
    Library:CreateNotification("OniHub | Notifications", "Unsuported Game | Code: 0xx221", 10)

	--[[
    Tab = Window:CreateTab('Universe', true, 'rbxassetid://3926305904', Vector2.new(524, 44), Vector2.new(36, 36))
    Section = Tab:CreateSection('Theres nothing here you can choose teleport or delete this gui')
    
	DestroyButton = Section:CreateButton('Destroy UI', function()
	    Library:CreateNotification("You choose this!", "Alr Enjoy The Game You Play.", 3)
		wait(4)
        Library:DestroyUI()
    end)

    Button = Section:CreateButton('Join to Animal Simulator', function()
	    Library:CreateNotification("You choose this!", "Teleporting To Animal Simulator", 3)
		wait(4)
        game:GetService("TeleportService"):Teleport(5712833750, game.Players.LocalPlayer)
    end) --]]
    return
end 


local breakit = false
while true do
    local success, error = pcall(function()
        print(game.Players.LocalPlayer:FindFirstChild("leaderstats"))
        task.wait()
        if game.Players.LocalPlayer:FindFirstChild("leaderstats") then
            breakit = true
        end
    end)

    if error then
        print(success, error)
    end

    if breakit then
        break
    end
end

-- Starting Script

game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "OniHub exits",
        Text = "Im taking back the source",
        Duration = 5
})
wait(2)
game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "System",
        Text = "Loading... | You can check in console",
        Duration = 4
})
print("Loading Today Time And Loading Script...")
wait(2)
warn(os.date("%A, %B %d, %X-%p", os.time()))
wait(4)
print("Loaded script!")

-- [[ UI Library Setup ]]
Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/VoixGIT/ONIHUB/main/VisualUI3.0'))()
Window = Library:CreateWindow('O N I  H U B', 'V 4 . 0 [Restored Source]\nAnimal Simulator', 'O N I  H U B  R E S T O R E D\nWelcome, '.. UserName..'\nGame: '.. GameName..'', '', _G.themeoptionincreaseFPS, 'OniConfigs', theme)

wait(2)
Library:CreateNotification("OniHub | Notifications", "Some functions may not work right now", 5)
--Library:CreateNotification("OniHub | Notifications", "Windows: Ill stop update this week.", 5)

print("UI RUNNING")
----------------------------------------------------------------------------------

-- Creator(AdminStaff) ID
if Player.UserId == 18125835 then
    Library:CreateNotification("OniHub | Notifications", "Welcome Admin! | Name: ".. UsernameName.."", 10)

	TabAdmin = Window:CreateTab('Admin GUI', false, 'rbxassetid://3926305904', Vector2.new(524, 44), Vector2.new(36, 36))
    Section = TabAdmin:CreateSection('Here Some Admin Script:')
	Button = Section:CreateButton("TP GUI", function()
	    loadstring(game:HttpGet("https://gist.githubusercontent.com/DagerFild/b4776075a0d26ef04394133ee6bd2081/raw/0ed51ac94057d2d9a9f00e1b037b9011c76ca54a/tpGUI", true))()
    end)
	Section = TabAdmin:CreateSection('Teleport To User Server(ServerJobID Require)')
	Textbox = Section:CreateTextbox('ServerjobID', 'Input', function(text)
        game:GetService("TeleportService"):TeleportToPlaceInstance(5712833750, text)
    end)
end

-- If username too long use this 

if Player.UserId == 3406999575 then
    Library:CreateNotification("OniHub | Notifications", "Welcome Admin! | Name: ".. DisplayName.."", 10)

	TabAdmin = Window:CreateTab('Admin GUI', false, 'rbxassetid://3926305904', Vector2.new(524, 44), Vector2.new(36, 36))
    Section = TabAdmin:CreateSection('Here Some Admin Script:')
	Button = Section:CreateButton("TP GUI", function()
	    loadstring(game:HttpGet("https://gist.githubusercontent.com/DagerFild/b4776075a0d26ef04394133ee6bd2081/raw/0ed51ac94057d2d9a9f00e1b037b9011c76ca54a/tpGUI", true))()
    end)
	Section = TabAdmin:CreateSection('Teleport To User Server(ServerJobID Require)')
	Textbox = Section:CreateTextbox('ServerjobID', 'Input', function(text)
        game:GetService("TeleportService"):TeleportToPlaceInstance(5712833750, text)
    end)
end


-------------------------------------------------------------------------------------
-- Example Stuff:
--[username] = 'webhook'
local Webhook = { -- For Grinding, tells you your leveling speed.
    ["ExampleWebHookBot"] = 'https://discord.com/api/webhooks/1852735481765/3IhmtR2PqI5zaoUGpzrfbfFDu2P0x0pbIs1KY5Zx_ZChzNoQ8LH', -- Example Webhook, doesn't work.
}

if Webhook[game.Players.LocalPlayer.Name] then
    getgenv().LocalWebhookId = Webhook[game.Players.LocalPlayer.Name]
end

if Webhook[game.Players.LocalPlayer.Name] then
	getgenv().LocalWebhookLogId = Webhook[game.Players.LocalPlayer.Name]
end
---------------------------------------------------------------------------------------

-- Option Will Update in future
Access = true
VIP = true



---SYSTEM TO SEE WHEN A PLAYER IS DEAD OR ALIVE [[START]]
function RemoveGUI()
    local success, error = pcall(function()
        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("newRewardGui") then
            game.Players.LocalPlayer.PlayerGui.newRewardGui:Destroy()
            breakit = true
        end
    end)
end

function RemoveAddedCooldown()
    Character.ChildAdded:connect(function(child)
        if child.Name == "justFound" or child.Name == "Deb" or child.Name == "FireballDeb" then
            wait()
            child:Destroy()
        else
            print(child.Name, "Added")
        end
    end)
end


teleport = false
local CharacterAlive
if Character:FindFirstChild("Humanoid").Health > 0 then
    CharacterAlive = true
    teleport = true

    RemoveAddedCooldown()
    RemoveGUI()

    Character:WaitForChild("Humanoid").Died:Connect(function()
        CharacterAlive = false
    end)
else
    CharacterAlive = false
end

game.Players.LocalPlayer.CharacterAdded:Connect(function(newCharacter)
    Character = newCharacter
    Character:WaitForChild("Humanoid")
    CharacterAlive = true
    teleport = true

    RemoveAddedCooldown()
    RemoveGUI()

    Character:WaitForChild("Humanoid").Died:Connect(function()
        print("Character Dead")
        CharacterAlive = false
    end)
end)

---SYSTEM TO SEE WHEN A PLAYER IS DEAD OR ALIVE [[END]]

-- [[ Comma Function ]]
function commaValue(amount)
    local formatted = amount
    while true do
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if (k==0) then
            break
        end
    end
    return formatted
end


-- [[ Webhook Setup ]]
local BotUserName = 'ONIxAPI'
local BotPhotoURL = 'https://media.discordapp.net/attachments/856034478408728576/1009394204193067058/oniii.jpg'
local Red = tonumber(tostring("0xFF0000"))
local Green = tonumber(tostring("0x32CD32"))
local Timestamp = os.date("%Y-%m-%dT%X")

---- KEEP TRACK OF PLAYER'S PING
local fps = 0
local PlayerPing = 0
game:GetService("RunService").RenderStepped:Connect(function(ping)
    PlayerPing = (game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(math.round(2/ping))) -- your ping
    fps = math.round(1/ping)
end)



---- SEND PLAYER'S CURRENT LEVELING DAYA TO THE WEBHOOK

local fireballsTotal = 0

---FOR
local levelaverage = 0
local TotalExpPerMin = 0
local LostExpPerMin = 0
local xseconds = 0
local xmins = 0

if getgenv().LocalWebhookId ~= 'YOUR DISCORD WEBHOOK HERE' or getgenv().LocalWebhookId ~= '' then
    local TrackingWebhookSeconds = 0
    local TrackingWebhookMinutes = 0
    local TrackedTime = 0
    local TrackedPlayerLevel = game.Players.LocalPlayer.leaderstats.Level.Value
    local LevelPerMin = 0
    local HoursTilOnLeaderboard = 0
    local leveldiff = 0

    local testSeconds = 0
    local testMins = 0
    local testHours = 0

    local function TotalExp(exp)
        return 500*(exp-1)^2+1500*(exp-1)+1000
    end


    local top100level = 135000
    for i,v in pairs(game:GetService("Workspace").LBFolder.GlobalLeaderboard.LeaderboardGUI.Holder.ScrollingFrame:GetChildren()) do
        if v.Name == "LeaderboardFrame" then
            local rank = tonumber(v.Rank.text)
            local player = v.Player.text
            local level = tonumber(v.Level.text)

            if rank == 100 then
                top100level = level
            end
        end
    end


    local top1level = 165000
    for i,v in pairs(game:GetService("Workspace").LBFolder.GlobalLeaderboard.LeaderboardGUI.Holder.ScrollingFrame:GetChildren()) do
        if v.Name == "LeaderboardFrame" then
            local rank = tonumber(v.Rank.text)
            local player = v.Player.text
            local level = tonumber(v.Level.text)

            if rank == 1 then
                top1level = level
            end
        end
    end

    task.spawn(function()
        while true do

            if testMins ~= 0 and game.Players.LocalPlayer.leaderstats.Level.Value-TrackedPlayerLevel ~= 0 then
                LevelPerMin = (game.Players.LocalPlayer.leaderstats.Level.Value-TrackedPlayerLevel)/testMins
            end

            local expdifftomax100 = TotalExp(top100level) - TotalExp(game.Players.LocalPlayer.leaderstats.Level.Value)
            local expdifftomax1 = TotalExp(top1level) - TotalExp(game.Players.LocalPlayer.leaderstats.Level.Value)
            local TotalExpPerHour = TotalExpPerMin*60

            HoursTilOnLeaderboard100 = expdifftomax100/TotalExpPerHour
            HoursTilOnLeaderboard1 = expdifftomax1/TotalExpPerHour

            if TrackingWebhookSeconds == 0 then
                local msglog2 = {
		            ["username"] = BotUserNameLog,
		            ["avatar_url"] = BotPhotoURLLog,
		            ["content"] = "Information User:",
		            ["embeds"] = {
                        {
			                ["title"] = "__**User Information**__",
			                ["type"] = "rich",
			                ["description"] = "**Stats:**",
                            ["color"] = Red,
			                ["fields"] = {
								{
									["name"] = "",
									["value"] = "__UserData:__",
								},
                                {
				                    ["name"] = "Username",
				                    ["value"] =  '```'.. UserName..'```',
				                    ["inline"] = true				
			                    },
					            {
						            ["name"] = "Displayname",
						            ["value"] = '```'.. DisplayName..'```',
						            ["inline"] = true
					            },
					            {
						            ["name"] = "UserID",
						            ["value"] = '```'.. Player.UserId..'```',
						            ["inline"] = true
					            },
								{
									["name"] = "",
									["value"] = "__GameData:__",
								},
								{
									["name"] = "GameName",
									["value"] = '```'.. GameName..'```',
									["inline"] = true
								},
								{
									["name"] = "GameID",
									["value"] = '```'.. game.placeId..'```',
									["inline"] = true
								},
								{
									["name"] = "GameServerID(SeverJobID)",
									["value"] = '```'.. game.JobId..'```',
									["inline"] = false
								},
					            {
						            ["name"] = "",
						            ["value"] = "__PlayerData:__",
					            },
					            {
                                    ["name"] = "Current Level",
                                    ["value"] = '```'.. commaValue(game.Players.LocalPlayer.leaderstats.Level.Value)..'```',
                                    ["inline"] = true
                                },
                                {
                                    ["name"] = "Previous Level",
                                    ["value"] = '```'.. commaValue(TrackedPlayerLevel)..'```',
                                    ["inline"] = true
                                },
                                {
                                    ["name"] = "Levels Gained",
                                    ["value"] = '```'.. commaValue(game.Players.LocalPlayer.leaderstats.Level.Value-TrackedPlayerLevel)..'```',
                                    ["inline"] = true
								},
								{
                                    ["name"] = "Levels Per Min",
                                    ["value"] = '```'.. tostring(math.round(LevelPerMin*100)/100)..'```',
                                    ["inline"] = true
                                },
                                {
                                    ["name"] = "Levels Per Hour",
                                    ["value"] = '```'.. tostring(math.round((LevelPerMin*60)*100)/100)..'```',
                                    ["inline"] = true
                                },
                                {
                                    ["name"] = "Exp Gained Per Min",
                                    ["value"] = '```'.. commaValue(TotalExpPerMin)..'```',
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "Exp till #100",
                                    ["value"] = '```'.. commaValue(expdifftomax100)..'```',
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "Hours till #100",
                                    ["value"] = '```'.. tostring(math.round(HoursTilOnLeaderboard100*100)/100)..'```',
                                    ["inline"] = true
                                },
                                {
                                    ["name"] = "Exp till #1",
                                    ["value"] = '```'.. commaValue(expdifftomax1)..'```',
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "Hours till #1",
                                    ["value"] = '```'.. tostring(math.round(HoursTilOnLeaderboard1*100)/100)..'```',
                                    ["inline"] = true
                                },
                                {
                                    ["name"] = "Fireballs",
                                    ["value"] = '```'.. fireballsTotal..'```',
                                    ["inline"] = true
                                },
				            },
				            ['timestamp'] = TimestampLog,
                            ["footer"] = {
                                ["text"]  = "[Time Farming]: ".. TrackedTime.. "\n" .. "[FPS]: "..fps.."\n" .. "[Ping]: ".. PlayerPing .. "\n" .."​"
                            }
		                },
		            }
	            }
                pcall(function()
                    Request({Url = getgenv().LocalWebhookLogId, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msglog2)})
                end)

                local msg = {
                    ["username"] = BotUserName,
                    ["avatar_url"] = BotPhotoURL,
                    ["content"] = " ",
                    ["embeds"] = {
                        {
                            ["title"] = "__**Farming Update**__",
                            ["type"] = "rich",
                            ["description"] = UserName,
                            ["color"] = Red,
                            ["fields"] = {
                                {
                                    ["name"] = "Current Level",
                                    ["value"] = '```'.. commaValue(game.Players.LocalPlayer.leaderstats.Level.Value)..'```',
                                    ["inline"] = true
                                },
                                {
                                    ["name"] = "Previous Level",
                                    ["value"] = '```'.. commaValue(TrackedPlayerLevel)..'```',
                                    ["inline"] = true
                                },
                                {
                                    ["name"] = "Data:",
                                    ["value"] = " ",
                                },
                                {
                                    ["name"] = "Levels Gained",
                                    ["value"] = '```'.. commaValue(game.Players.LocalPlayer.leaderstats.Level.Value-TrackedPlayerLevel)..'```',
                                    ["inline"] = true
                                },
                                {
                                    ["name"] = "Levels Per Min",
                                    ["value"] = '```'.. tostring(math.round(LevelPerMin*100)/100)..'```',
                                    ["inline"] = true
                                },
                                {
                                    ["name"] = "Levels Per Hour",
                                    ["value"] = '```'.. tostring(math.round((LevelPerMin*60)*100)/100)..'```',
                                    ["inline"] = true
                                },
                                {
                                    ["name"] = "Exp Gained Per Min",
                                    ["value"] = '```'.. commaValue(TotalExpPerMin)..'```',
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "Exp till #100",
                                    ["value"] = '```'.. commaValue(expdifftomax100)..'```',
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "Hours till #100",
                                    ["value"] = '```'.. tostring(math.round(HoursTilOnLeaderboard100*100)/100)..'```',
                                    ["inline"] = true
                                },
                                {
                                    ["name"] = "Exp till #1",
                                    ["value"] = '```'.. commaValue(expdifftomax1)..'```',
                                    ["inline"] = false
                                },
                                {
                                    ["name"] = "Hours till #1",
                                    ["value"] = '```'.. tostring(math.round(HoursTilOnLeaderboard1*100)/100)..'```',
                                    ["inline"] = true
                                },
                                {
                                    ["name"] = "Fireballs",
                                    ["value"] = '```'.. fireballsTotal..'```',
                                    ["inline"] = true
                                },
                            },
                            ['timestamp'] = Timestamp,
                            ["footer"] = {
                                ["text"]  = "[Time Farming]: ".. TrackedTime.. "\n" .. "[FPS]: "..fps.."\n" .. "[Ping]: ".. PlayerPing .. "\n" .."​"
                            }
                        },
                    }
                }
                pcall(function()
                    Request({Url = getgenv().LocalWebhookId, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
                end)
                Library:CreateNotification("OniHub | Notifications", "Sending/Updating Information To Discord", 3)


                xseconds = 0
                xmins = 0
                TotalExpPerMin = 0
                LostExpPerMin = 0
                levelaverage = 0
            end


            testSeconds += 1
            testMins = testSeconds / 60
            testHours = testMins / 60
            
	        warn("Time Script Online:")
            warn("SECONDS: ",TrackingWebhookSeconds)
	        warn("MIN: ",TrackingWebhookMinutes)
	        warn("HOURS: ",TrackingWebhookHours)

            TrackingWebhookSeconds = TrackingWebhookSeconds + 1
            if TrackingWebhookSeconds >= 300 then
                TrackingWebhookMinutes = (TrackingWebhookSeconds + (TrackingWebhookMinutes * 60)) / 60
                TrackedTime = math.floor(TrackingWebhookMinutes) .. ' Minutes'

                if TrackingWebhookMinutes >= 60 then
                    TrackingWebhookHours = TrackingWebhookMinutes / 60
                    TrackingWebhookLeftoverMinutes = (TrackingWebhookHours%1) * 60
                    TrackingWebhookHours = math.floor(TrackingWebhookHours)
                    TrackedTime = TrackingWebhookHours .. ' Hours ' .. math.floor(TrackingWebhookLeftoverMinutes) .. ' Minutes'
                end
                TrackingWebhookSeconds = 0
            end
            wait(1)
        end
    end)
end

-- [[ Anti AFK ]]
if not game:IsLoaded() then game.Loaded:Wait(); end

local idledEvent = game:GetService("Players").LocalPlayer.Idled
local function disable()
    for _, cn in ipairs(getconnections(idledEvent)) do
        cn:Disable()
    end
end

oldConnect = hookfunction(idledEvent.Connect, function(self, ...)
    local cn = oldConnect(self, ...); disable()
    return cn
end)

namecall = hookmetamethod(game, "__namecall", function(self, ...)
    if self == idledEvent and getnamecallmethod() == "Connect" then
        local cn = oldConnect(self, ...); disable()
        return cn
    end
    return namecall(self, ...)
end)

disable()





---- KEEPS TRACK OF ALL THE EXP GAINED FROM THE USE OF THE CHANGED SIGNAL. THIS IS USED TO PREDICT WHAT LEVEL YOU WILL BE BASED ON THE GIVEN EXP PER MIN


local tickstart = os.clock()
local expgained = 0
local lostexp = 0
local totalexp = 0
local level = 0
local exp = 0
local expreset = 0
local leveluptrack = 0
local FireballOrHittrack = 0


local currentexp
local previousexp
local previouslevel
function Exp()
    local ExperienceBar = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("LevelBar"):WaitForChild("Experience")
    currentexp = tonumber(ExperienceBar.text:split("/")[1])
    previousexp = tonumber(ExperienceBar.text:split("/")[1])
    previouslevel = tonumber(ExperienceBar.text:split("/")[2]:sub(1, -4))
    warn(currentexp, previousexp, previouslevel)

    getgenv().ExpTracker = ExperienceBar:GetPropertyChangedSignal("Text"):Connect(function(text)
        a, b = pcall(function()
            if CharacterAlive == false then
                getgenv().ExpTracker:Disconnect()
                return
            end

            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health == 0 then
                getgenv().ExpTracker:Disconnect()
                return
            end

            if text == "0/100" then
                return
            end

            exp = tonumber(ExperienceBar.text:split("/")[1])
            level = tonumber(ExperienceBar.text:split("/")[2]:sub(1, -4))



            if currentexp < previousexp then
                wait(.2)
                print("[Current exp] " .. currentexp .." is less than [Previous Exp] "..previousexp)
                print(level, previouslevel, CharacterAlive)
                if level < previouslevel then
                    print("Level Down: ".. level - previouslevel)
                    leveldown = true
                else
                    leveldown = false
                end

                if level > previouslevel then
                    levelup = true
                else
                    levelup = false
                end

                if level == previouslevel then
                    expsame = true
                else
                    expsame = false
                end

                if levelup then
                    leveluptrack += 1
                    print("Level up: " .. level - previouslevel)
                    previouslevel = level

                    currentexp = tonumber(ExperienceBar.text:split("/")[1])
                    previousexp = tonumber(ExperienceBar.text:split("/")[1])


                end

                if expsame and not levelup or leveldown then
                    print("Exp decreased")
                    expreset += 1
                    lostexp += previousexp - currentexp
                    currentexp = tonumber(ExperienceBar.text:split("/")[1])
                    previousexp = currentexp
                end
            end

            previousexp = currentexp
            currentexp = tonumber(ExperienceBar.text:split("/")[1])
            if currentexp > previousexp then
                totalexp += currentexp - previousexp
            end
        end)
        if b then
            print(a, b)
        end
    end)
end

task.spawn(function()
    getgenv().Player = game.Players.LocalPlayer.CharacterAdded:Connect(function(Character)
        Exp()
    end)
    Exp()
end)


task.spawn(function()
    while wait(1) do
        xseconds += 1
        xmins = xseconds/60
    end
end)


task.spawn(function()
    while wait(10) do
        TotalExpPerMin = totalexp/xmins
        LostExpPerMin = lostexp/xmins
        levelaverage = level/xmins

        print"[-------"
        warn("Level: " .. level .. " Current: ".. currentexp .." Previous: " .. previousexp .. " Total Exp: " .. totalexp)
        warn("Gained: ".. currentexp - previousexp)
        warn("Lost Exp: ", lostexp)
        print"-------"
        warn("Exp Per Min: ", TotalExpPerMin)
        warn("Times exp was lowered: ", expreset)
        warn("Level Ups: ", leveluptrack)
        print"-------]"
        print(xmins)
    end
end)



----END TRACKER


-- [[ UI Section Updates]]
TabUpdates = Window:CreateTab('Update', true, 'rbxassetid://3926305904', Vector2.new(524, 44), Vector2.new(36, 36))
Section = TabUpdates:CreateSection('Updates: (1/19/2023)')
Paragraph = Section:CreateParagraph('#1', '[*]Restore Script')
Paragraph = Section:CreateParagraph('#2', '[-]Remove The Name Features')
Paragraph = Section:CreateParagraph('#3', '[+]Add Auto Eat, Force Ride In Misc Feature')
Paragraph = Section:CreateParagraph('#4', '[*]Fixed Bugs')

Section = TabUpdates:CreateSection('Updates: (1/20/2023)')
Paragraph = Section:CreateParagraph('#1', '[*]Fixed Bugs')
Paragraph = Section:CreateParagraph('#2', '[*]Changes Webhook a little')

Section = TabUpdates:CreateSection('Updates: (1/21/2023)')
Paragraph = Section:CreateParagraph('#1', '[+]Add Server Setting Section | Work good with autofarm')
Paragraph = Section:CreateParagraph('#2', '[+]Add Grab Lighting Feauture in Misc')
Paragraph = Section:CreateParagraph('#3', '[*]Fix and Add some stuff')

Section = TabUpdates:CreateSection('Updates: (1/22/2023)')
Paragraph = Section:CreateParagraph('#1', '[+]Adding New Notification')
Paragraph = Section:CreateParagraph('#2', '[+]Add UI Toggle')
Paragraph = Section:CreateParagraph('#3', '[+]Add Roblox Crash Section') 
Paragraph = Section:CreateParagraph('#4', '[?]Fix Bugs???????????') 

Section = TabUpdates:CreateSection('Updates: (1/23/2023)')
Paragraph = Section:CreateParagraph('#1', '[+]Add Blacklist System | Support Exploit: Krnl, SynapeX, Electron')
Paragraph = Section:CreateParagraph('#2', '[*]Update Webhook')
Paragraph = Section:CreateParagraph('#3', '[+]Add Admin Stuff(Staff)')
Paragraph = Section:CreateParagraph('#4', '[*]Update UI')

Section = TabUpdates:CreateSection('Updates: (1/27/2023)')
Paragraph = Section:CreateParagraph('#1', '[*]Update Function: Blacklist, Unsupported Game')
Paragraph = Section:CreateParagraph('#2', '[*]Update Webhook')
Paragraph = Section:CreateParagraph('#2', '[+]Add Theme Base On Exploit')
Paragraph = Section:CreateParagraph('#4', '[+]Add Close Roblox Client On Server Stuff Section')
Paragraph = Section:CreateParagraph('#5', '[*]Update Admin Stuff(Staff)')
Paragraph = Section:CreateParagraph('#6', '[*]Fixed Webhook bugs')

-- [[ UI Section Autofarm ]]
TabAutofarm = Window:CreateTab('Auto Farm', false, 'rbxassetid://3926305904', Vector2.new(524, 44), Vector2.new(36, 36))
Section = TabAutofarm:CreateSection('Auto Farm')


-- [[ TIMER ]]
local timeSecondsDummy = 0
local timeMinsDummy = timeSecondsDummy / 60
local timeHoursDummy = timeMinsDummy / 60
local timeDaysDummy = timeHoursDummy / 60
task.spawn(function()
    pcall(function()
        while wait(1) do
            print(timeSecondsDummy)
            timeSecondsDummy += 1
            timeMinsDummy = timeSecondsDummy / 60
            timeHoursDummy = timeMinsDummy / 60
            timeDaysDummy = timeHoursDummy / 60
        end
    end)
end)

------------

local savedpos
Toggle = Section:CreateToggle('[Dummy] (Hit)', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        NewLoop = true
    else
        NewLoop = false
    end

    timeSecondsDummy = 0
    local dummytarget = nil
    local success, error = pcall(function()
        if NewLoop then
            savedpos = Character.HumanoidRootPart.CFrame
            TrackingWebhookSeconds = 0
            timeSecondsDummy = 0
            local search
            local dummyLevel
            if game.Players.LocalPlayer.leaderstats.Level.Value > 5000 then
                dummyLevel = "Dummy2"
                dummyName = "5k_dummies"
                search = game:GetService("Workspace").MAP[dummyName]
            else
                dummyLevel = "Training Dummy"
                search = game:GetService("Workspace").MAP.dummies
            end

            dummytarget = search:FindFirstChild(dummyLevel)

            Character.HumanoidRootPart.CFrame = dummytarget.HumanoidRootPart.CFrame + Vector3.new(3,0,0)
        else
            Character.HumanoidRootPart.CFrame = savedpos
        end

        local FireLoop = 0
        local Fire = 0
        while NewLoop do
            task.wait()
            Fire += 1
            if Fire >= 2 then
                Fire = 0
                FireLoop += 1
                if FireLoop > 60 then
                    FireLoop = 1
                end
                game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(dummytarget.Humanoid, FireLoop)
            end

            task.spawn(function()
                if timeMinsDummy > 5 then
                    timeSecondsDummy = 0
                    if Character:FindFirstChild("Humanoid") then
                        Character.Humanoid.Health = 0
                    end
                    repeat
                        wait()
                    until CharacterAlive == true

                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = dummytarget.HumanoidRootPart.CFrame
                end
            end)
        end
    end)
end)


local savedpos
Toggle = Section:CreateToggle('[Dummy] (Single Fireball + Hit)', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        NewLoop = true
    else
        NewLoop = false
    end

    timeSecondsDummy = 0
    local dummytarget = nil
    local success, error = pcall(function()
        if NewLoop then
            savedpos = Character.HumanoidRootPart.CFrame
            TrackingWebhookSeconds = 0
            timeSecondsDummy = 0
            local search
            local dummyLevel
            if game.Players.LocalPlayer.leaderstats.Level.Value > 5000 then
                dummyLevel = "Dummy2"
                dummyName = "5k_dummies"
                search = game:GetService("Workspace").MAP[dummyName]
            else
                dummyLevel = "Training Dummy"
                search = game:GetService("Workspace").MAP.dummies
            end

            dummytarget = search:FindFirstChild(dummyLevel)

            Character.HumanoidRootPart.CFrame = dummytarget.HumanoidRootPart.CFrame + Vector3.new(3,0,0)
        else
            Character.HumanoidRootPart.CFrame = savedpos
        end


        task.spawn(function()

            local Delay = 0
            local runningFireball = false
            local waittime = 0.1
            while NewLoop do
                task.wait()


                game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(dummytarget.Humanoid, 1)



                task.spawn(function()
                    pcall(function()
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Fireball") then
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Fireball").FireballEvent:FireServer(dummytarget.HumanoidRootPart.Position)
                        end

                        if game.Players.LocalPlayer.Character:FindFirstChild("Fireball") then
                            game.Players.LocalPlayer.Character:FindFirstChild("Fireball").FireballEvent:FireServer(dummytarget.HumanoidRootPart.Position)
                        end
                        fireballsTotal = 1
                    end)
                end)



                task.spawn(function()
                    if timeMinsDummy > 5 then
                        timeSecondsDummy = 0
                        if Character:FindFirstChild("Humanoid") then
                            Character.Humanoid.Health = 0
                        end
                        repeat
                            wait()
                        until CharacterAlive == true

                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = dummytarget.HumanoidRootPart.CFrame
                    end
                end)
            end
        end)
    end)
end)


local savedpos
Toggle = Section:CreateToggle('[Dummy] (All Fireballs + Hit - [MultiToggle])', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        NewLoop = true
    else
        NewLoop = false
    end

    timeSecondsDummy = 0
    local dummytarget = nil
    local success, error = pcall(function()
        if NewLoop then
            savedpos = Character.HumanoidRootPart.CFrame
            TrackingWebhookSeconds = 0
            timeSecondsDummy = 0
            local search
            local dummyLevel
            if game.Players.LocalPlayer.leaderstats.Level.Value > 5000 then
                dummyLevel = "Dummy2"
                dummyName = "5k_dummies"
                search = game:GetService("Workspace").MAP[dummyName]
            else
                dummyLevel = "Training Dummy"
                search = game:GetService("Workspace").MAP.dummies
            end

            dummytarget = search:FindFirstChild(dummyLevel)

            Character.HumanoidRootPart.CFrame = dummytarget.HumanoidRootPart.CFrame + Vector3.new(3,0,0)
        else
            Character.HumanoidRootPart.CFrame = savedpos
        end


        task.spawn(function()

            local runningFireball = false
            while NewLoop do
                task.wait()

                game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(dummytarget.Humanoid, 1)


                local Fireballs = 0
                if runningFireball == false then
                    runningFireball = true
                    task.spawn(function()
                        a, b = pcall(function()

                            local Balls = {"Fireball", "Lightningball"}
                            local Locations = {"Backpack", "Character"}
                            for i, player in pairs(game.Players:GetChildren()) do
                                local earlyreturn = false
                                for _,Ball in pairs(Balls) do
                                    for i,Location in pairs(Locations) do
                                        local CheckBall = player[Location]:FindFirstChild(Ball)
                                        if CheckBall then
                                            Fireballs += 1
                                            CheckBall:FindFirstChild("FireballEvent"):FireServer(dummytarget.HumanoidRootPart.Position)
                                            earlyreturn = true
                                            wait()
                                            break
                                        end
                                    end

                                    if earlyreturn then
                                        break
                                    end
                                end
                            end

                            fireballsTotal = Fireballs
                            Fireballs = 0
                            runningFireball = false
                        end)
                        if b then
                            runningFireball = false
                        end
                    end)
                end


                task.spawn(function()
                    if timeMinsDummy > 5 then
                        timeSecondsDummy = 0
                        if Character:FindFirstChild("Humanoid") then
                            Character.Humanoid.Health = 0
                        end
                        repeat
                            wait()
                        until CharacterAlive == true

                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = dummytarget.HumanoidRootPart.CFrame
                    end
                end)
            end
        end)
    end)

    if error then
        print(error)
    end
end)



local savedpos
Toggle = Section:CreateToggle('(Coins [Gain - [MultiToggle]])', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        Coins = true
    else
        Coins = false
    end

    while Coins do
        wait(.1)
        game:GetService("ReplicatedStorage").Events.CoinEvent:FireServer()

        if CharacterAlive and game.Players.LocalPlayer:FindFirstChild("otherstats").Coin.Value >= 500 then
            game:GetService("ReplicatedStorage").Events.unlockEvent:FireServer()
        end
    end
end)

-- [[ XEN SETTINGS ]]

--[[
TabAutoRest = Window:CreateTab('Name Features', false, 'rbxassetid://3926305904', Vector2.new(524, 44), Vector2.new(36, 36))
Section = TabAutoRest:CreateSection('Name Features (Patched)')

local Animation
Toggle = Section:CreateToggle('ONI Text [Animation]', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        Animation = true
    else
        Animation = false
    end

    Animate = {}
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xen101/Roblox/main/Animal%20Simulator/Animations/Animation%20Oni%20Logo.lua",true))()

    while Animation do
        wait()
            --Forward
        for i=1, #Animate, 1 do
            print(Animate)
            game:GetService("Players").LocalPlayer.PlayerGui.RolePlayName.Frame.bodyFrame.submitBtn.nameEvent:FireServer(Animate[i].Text)
            wait(0.5)
        end

        --Reverse
        for i= #Animate, 1, -1 do
            game:GetService("Players").LocalPlayer.PlayerGui.RolePlayName.Frame.bodyFrame.submitBtn.nameEvent:FireServer(Animate[i].Text)
            wait(0.5)
        end
    end
end)

local Animation
Toggle = Section:CreateToggle('TeaSip [Animation]', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        Animation = true
    else
        Animation = false
    end
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xen101/Roblox/main/Animal%20Simulator/Animations/Animation%20Tea%20Sip.lua",true))()

    while Animation do
        wait()
        for i,v in pairs(Animate) do
            game:GetService("Players").LocalPlayer.PlayerGui.RolePlayName.Frame.bodyFrame.submitBtn.nameEvent:FireServer(v.Text)
            wait(0.3)
        end
        wait(0.5)
    end
end)

local Animation
Toggle = Section:CreateToggle('Girl Kiss [Animation]', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        Animation = true
    else
        Animation = false
    end
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xen101/Roblox/main/Animal%20Simulator/Animations/Animation%20Kiss%20GIrl%202.lua",true))()

    while Animation do
        wait()
        for i,v in pairs(Animate) do
            game:GetService("Players").LocalPlayer.PlayerGui.RolePlayName.Frame.bodyFrame.submitBtn.nameEvent:FireServer(v.Text)
            wait(0.3)
        end
        wait(0.5)
    end
end)

local Animation
Toggle = Section:CreateToggle('Nezuko Run [Animation]', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        Animation = true
    else
        Animation = false
    end
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xen101/Roblox/main/Animal%20Simulator/Animations/Animation%20Nezuko.lua",true))()

    while Animation do
        wait()
        for i,v in pairs(Animate) do
            game:GetService("Players").LocalPlayer.PlayerGui.RolePlayName.Frame.bodyFrame.submitBtn.nameEvent:FireServer(v.Text)
            wait(0.3)
        end
    end
end)


local Username = ""
local Textbox = Section:CreateTextbox('ONI Name Change', '', function(Value)
    Username = Value

    --string = ""
    --for i = 1, Username/2 do

   -- end


    endstring = "👹 \r\n ".. Username

    game:GetService("Players").LocalPlayer.PlayerGui.RolePlayName.Frame.bodyFrame.submitBtn.nameEvent:FireServer(endstring)
end)

Button = Section:CreateButton('Reset Name', function()
    game:GetService("Players").LocalPlayer.PlayerGui.RolePlayName.Frame.bodyFrame.submitBtn.nameEvent:FireServer(game.Players.LocalPlayer.DisplayName)
end)

Button = Section:CreateButton("Bug Everyone's HUD", function()
    local string = "####################################################################################################################################################################################################################################################################################################################################################################################################################################################################################################################"
    local fullstring = ""
    for i = 1, 100 do
        fullstring = fullstring .. string
    end
    game:GetService("Players").LocalPlayer.PlayerGui.RolePlayName.Frame.bodyFrame.submitBtn.nameEvent:FireServer(fullstring)
end)

Button = Section:CreateButton('Cover the Leaderboard with ONI', function()
    local string = "\r\n 👹ONI👹"
    local fullstring = ""
    for i = 1, 75 do
        fullstring = fullstring .. string
    end
    game:GetService("Players").LocalPlayer.PlayerGui.RolePlayName.Frame.bodyFrame.submitBtn.nameEvent:FireServer(fullstring)

end)
--]]



TabAutoRest = Window:CreateTab('Misc Features', false, 'rbxassetid://3926305904', Vector2.new(524, 44), Vector2.new(36, 36))
Section = TabAutoRest:CreateSection('Misc Features')


local Fireworks
Toggle = Section:CreateToggle('Firework Spam', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        Fireworks = true
    else
        Fireworks = false
    end

    local windowFrame = game.Players.LocalPlayer.PlayerGui.ToolsGUI.windowFrame
    local toolsFrame = windowFrame.bodyFrame.body2Frame.toolsFrame
    local firework = toolsFrame.fireworks
    local fireworkFrame = firework.Frame



    if Fireworks then
        windowFrame.Visible = true
        for i,v in pairs(toolsFrame:GetChildren()) do
            if not v:IsA("Frame") then
                continue
            end
            if v.Name ~= "fireworks" then
                v.Visible = false
            end
        end

    else
        windowFrame.Visible = false
        for i,v in pairs(toolsFrame:GetChildren()) do
            if not v:IsA("Frame") then
                continue
            end

            if v.Name ~= "fireworks" then
                v.Visible = true
            end
        end
    end
    if Fireworks then
        while Fireworks do
            wait()

            pcall(function()
                game:GetService("VirtualInputManager"):SendMouseButtonEvent(fireworkFrame.AbsolutePosition.X+fireworkFrame.AbsoluteSize.X/2,fireworkFrame.AbsolutePosition.Y+50,0,true,fireworkFrame,1)
                game:GetService("VirtualInputManager"):SendMouseButtonEvent(fireworkFrame.AbsolutePosition.X+fireworkFrame.AbsoluteSize.X/2,fireworkFrame.AbsolutePosition.Y+50,0,false,fireworkFrame,1)
                task.wait()
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(Player.Backpack:WaitForChild("Fireworks"))
                wait()
                game.Players.LocalPlayer.Character.Fireworks:Activate()
                task.wait()
                game:GetService("VirtualInputManager"):SendMouseButtonEvent(fireworkFrame.AbsolutePosition.X+fireworkFrame.AbsoluteSize.X/2,fireworkFrame.AbsolutePosition.Y+50,0,true,fireworkFrame,1)
                game:GetService("VirtualInputManager"):SendMouseButtonEvent(fireworkFrame.AbsolutePosition.X+fireworkFrame.AbsoluteSize.X/2,fireworkFrame.AbsolutePosition.Y+50,0,false,fireworkFrame,1)
            end)

        end
    end
end)


local MEgg = 0
local WorkspaceSound
local EGGWorkspaceSound
Toggle = Section:CreateToggle('Mute All Annoying Audio', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        Mute = true
    else
        Mute = false
    end

    --Yes this could be rewritten to be more effective, am just too lazy to do so.

    if not Mute then
        for i, connection in pairs(getconnections(workspace.DescendantAdded)) do
            connection:Disable()
        end
    end

    if Mute then
        MEgg += 1
        warn(MEgg)
    end

    pcall(function()
        if game.ReplicatedStorage:FindFirstChild("Soundtracks") then
            game.ReplicatedStorage:FindFirstChild("Soundtracks"):Destroy()
        end
    end)

    if Mute and MEgg == 5 then
        game.Workspace.DescendantAdded:connect(function(child)
            if child:IsA("Sound") then
                child.Pitch = 0.2
            end
        end)
    end

    if Mute and MEgg ~= 5 then
        game.Workspace.DescendantAdded:connect(function(child)
            if child:IsA("Sound") then
                child.Playing = false
                child.Volume = 0
            end
        end)
    end



    while Mute do
        local success, error = pcall(function()
            for i,v in pairs(game.Players:GetPlayers()) do
                print(i,v)
                if v.Name ~= game.Players.LocalPlayer.Name and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character.HumanoidRootPart:FindFirstChild("Sound") then
                print(i,v)
                    v.Character.HumanoidRootPart:FindFirstChild("Sound").Volume = 0
                end
            end

            game:GetService("SoundService"):FindFirstChild("BGMusic").Volume = 0
            game:GetService("Players").LocalPlayer.PlayerScripts:FindFirstChild("coinSpawner").Sound.Volume = 0
        end)

        if not success then
            warn(error)
        end

        wait(1)
    end

    local success, error = pcall(function()
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name ~= game.Players.LocalPlayer.Name and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character.HumanoidRootPart:FindFirstChild("Sound") then
                v.Character.HumanoidRootPart:FindFirstChild("Sound").Volume = 1.3
            end
        end
        game:GetService("SoundService"):FindFirstChild("BGMusic").Volume = 1
        game.GetService("Players").LocalPlayer:FindFirstChild("coinSpawner").Sound.Volume = 0.1
    end)
end)


local Label = Section:CreateLabel('Radio Settings:')
local RadioID = 0
local Textbox = Section:CreateTextbox('Radio ID', '', function(Value)
    RadioID = Value

    game:GetService("Players").LocalPlayer.PlayerGui.RolePlayName.Frame.bodyFrame.submitBtn.nameEvent:FireServer(endstring)
end)

Button = Section:CreateButton('Play Audio', function()
    if RadioID == 0 then
        return
    end

    game:GetService("Workspace"):FindFirstChild("DRadio_Script").Event:FireServer(RadioID)
end)

Button = Section:CreateButton('Stop Audio', function()
    game:GetService("Workspace"):FindFirstChild("DRadio_Script").Event:FireServer(0)
end)


Toggle = Section:CreateToggle('Grab Lightning (Need Fireball) on Spawn', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        Light = true
    else
        Light = false
    end
    pcall(function()
        --print(Lightn)
        if Light then
            for i,v in pairs(game.Workspace.MAP.waterfall1.cave:GetChildren()) do
                if v.Name == "Model" then
                    for i,v in pairs(v:GetChildren()) do
                        if v.Name == "rock" then
                            v.CanCollide = false
                        end
                    end
                end
            end

            getgenv().Lightning = game.Players.LocalPlayer.CharacterAdded:Connect(function(newCharacter)
                wait(2)
                local savedpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                local Camera = game.Workspace.CurrentCamera
                Camera.CameraType = Enum.CameraType.Scriptable
                Camera.CFrame = game.Workspace.PickFolder.rock.CFrame * CFrame.new(0,2,10)
                Camera.CFrame = CFrame.lookAt(Camera.CFrame.p, game.Workspace.PickFolder.rock.Position)

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-60,0)
                wait(.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.PickFolder.rock.CFrame * CFrame.new(0,-60,0)
                wait(.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.PickFolder.rock.CFrame * CFrame.new(0,0-11.5,0)
                task.wait()
                repeat
                wait(.3)
                game:GetService('VirtualInputManager'):SendKeyEvent(true, "E", false, game)
                until game.Players.LocalPlayer.Character:FindFirstChild("Lightningball") or game.Players.LocalPlayer.Backpack:FindFirstChild("Lightningball") or a

                wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-60,0)
                wait(.1)
                game.Workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedpos
            end)
        else
            getgenv().Lightning:Disconnect()
        end
    end)
end)

local Label = Section:CreateLabel(' Settings:')
Toggle = Section:CreateToggle('Character Reset - Avatar Editor', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        CharacterReset = true
    else
        CharacterReset = false
    end

    if not CharacterReset then
        return
    end

    game:GetService("ReplicatedStorage").AvatarEditor.RemoteEvent:FireServer("reset")


    game.Players.LocalPlayer.CharacterAdded:Connect(function(newCharacter)
        wait(1)
        game:GetService("ReplicatedStorage").AvatarEditor.RemoteEvent:FireServer("reset")
        wait(1)
        game:GetService("ReplicatedStorage").AvatarEditor.RemoteEvent:FireServer("reset")
    end)
end)


local Connection
function InviteConnection(GUI)
    Connection = GUI:GetPropertyChangedSignal("Enabled"):Connect(function(state)
        print("changed", state)
        GUI.Enabled = false
    end)
end

function GetInviteConnection()
    return Connection
end

local Toggle = Section:CreateToggle('Ride Invite GUI Toggle', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        InviteDisabled = true
    else
        InviteDisabled = false
    end

    local GUI = game:GetService("Players").LocalPlayer.PlayerGui.Ride.RideInviteGUI

    if InviteDisabled then
        InviteConnection(GUI)
    end

    if not InviteDisabled then
        GetInviteConnection():Disconnect()
        GUI.Enabled = false
    end
end)




local Toggle = Section:CreateToggle('Anti-Fling', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        InviteDisabled = true
    else
        InviteDisabled = false
    end

    local GUI = game:GetService("Players").LocalPlayer.PlayerGui.Ride.RideInviteGUI

    if InviteDisabled then
        getgenv().AntiFlingConfig = {
            disable_rotation = true;

            limit_velocity = true;
            limit_velocity_sensitivity = 150; 
            limit_velocity_slow = 0;

            anti_ragdoll = true;

            anchor = false;
            smart_anchor = true; 
            anchor_dist = 30;

            teleport = false;
            smart_teleport = true;
            teleport_dist = 30;
        }
        loadstring(game:HttpGet('https://raw.githubusercontent.com/topitbopit/rblx/main/extra/better_antifling.lua'))()
    end

    if not InviteDisabled then
        getgenv().disable()
    end
end)





Toggle = Section:CreateToggle('Auto Eat', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        Tog = true
    else
        Tog = false
    end

    while Tog do
        local success, error = pcall(function()
            if Character.Humanoid.Health >= Character.Humanoid.MaxHealth then
                repeat
                    print("Waiting")
                    wait(.1)
                until Character.Humanoid.Health < Character.Humanoid.MaxHealth

                print("Lower Working Magic")
            end
        end)
        if not success then
            warn(error)
        end

        if Character:FindFirstChild("Food") ~= false and game.Players.LocalPlayer.Backpack:FindFirstChild("Food") then
            Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Food"))
        end

        wait()

        if Character:FindFirstChild("Food") then
            Character:FindFirstChild("Food"):Activate()
            wait()
            Character:FindFirstChild("Humanoid"):UnequipTools()
        end
    end
end)


local Label = Section:CreateLabel('Force Ride:')

local RidePlayer = ""
local Textbox = Section:CreateTextbox('Player:', '', function(Value)
    RidePlayer = Value
end)

local Toggle = Section:CreateToggle('Ride Spam', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        Ride = true
    else
        Ride = false
    end

    if Ride then
        task.wait()
        game:GetService("ReplicatedStorage").RideEvents.acceptEvent:FireServer(RidePlayer)
    end
end)




-- [[ PVP SETTINGS ]]

if VIP then
    TabAutoRest = Window:CreateTab('PVP Features', false, 'rbxassetid://3926305904', Vector2.new(524, 44), Vector2.new(36, 36))
    Section = TabAutoRest:CreateSection('PVP Features')


    local Label = Section:CreateLabel('HitBox Increaser:')

    local Head = 5
    local Textbox = Section:CreateTextbox('Head Size', '5.8', function(Value)
        Head = Value
    end)

    local Toggle = Section:CreateToggle('Hitbox [Pack Whitelist]', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
        if Value == true then
            Hitbox = true
        else
            Hitbox = false
        end

        while Hitbox do
            a, b  = pcall(function()
                local friendlies = {}

                local Team
                local Teams = game.Workspace.Teams
                for i,v in pairs(Teams:GetDescendants()) do
                    if v:IsA("StringValue") then
                        if v.Value == game.Players.LocalPlayer.Name then
                            Team = tostring(v.Parent.Name)
                        end
                    end
                end

                if Team ~= nil then
                    print(Teams[Team])
                    for i,v in pairs(Teams:FindFirstChild(Team):GetChildren()) do
                        if v:IsA("StringValue") then
                            --print(v.Value)
                            table.insert(friendlies, v.Value)
                        end
                    end
                end

                for i,v in pairs(game:GetService('Players'):GetPlayers()) do
                    print("OUT ",v.Name)
                    if v.Name ~= game:GetService('Players').LocalPlayer.Name and Value then
                        print("IN ",v.Name)

                        if table.find(friendlies, v.Name) then
                            v.Character.HumanoidRootPart.Size = Vector3.new(0.1,0.1,0.1)
                            v.Character.HumanoidRootPart.Transparency = 0.5
                            v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Black")
                            v.Character.HumanoidRootPart.Material = "Plastic"
                            v.Character.HumanoidRootPart.CanCollide = true
                            continue
                        end

                        v.Character.HumanoidRootPart.Size = Vector3.new(Head,Head,Head)
                        v.Character.HumanoidRootPart.Transparency = 0.5
                        v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Black")
                        v.Character.HumanoidRootPart.Material = "Plastic"
                        v.Character.HumanoidRootPart.CanCollide = true
                    end
                end
            end)

            if b then
                print(a, b)
            end
            wait(10)
        end

        if not Hitbox then
            for i,v in pairs(game:GetService('Players'):GetChildren()) do
                if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                    --pcall(function()
                    v.Character.HumanoidRootPart.Size = Vector3.new(0.7,1.6,0.92)
                    v.Character.HumanoidRootPart.Transparency = 1
                    v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Black")
                    v.Character.HumanoidRootPart.Material = "Plastic"
                    v.Character.HumanoidRootPart.CanCollide = true
                --end)
                end
            end
        end
    end)


    local Label = Section:CreateLabel('Uses Fireballs to attack players/target.')

    local Fireballs = {
        "Fireball",
        "LightningBall",
    }

    local Parts = {
        game.Workspace:FindFirstChild("SafeZonePart"),
        game.Workspace:FindFirstChild("SafeZonePart2")
    }


    local Whitelist = {}
    local Toggle = Section:CreateToggle("Fireball Aura [Unlimited Range]", false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
        if Value == true then
            Aura = true
        else
            Aura = false
        end

        if Aura then
        pcall(function()
            task.spawn(function()
                waittime = 0.1
                runningFireball = false
                while Aura do
                    wait(2)
                    print("AURA: ",Aura)
                    local Fireballs = 0
                        task.spawn(function()
                            pcall(function()
                                local Balls = {"Fireball", "Lightningball"}
                                local Locations = {"Backpack", "Character"}
                                for i, player in pairs(game.Players:GetChildren()) do
                                    local earlyreturn = false
                                    for _,Ball in pairs(Balls) do
                                        for i,Location in pairs(Locations) do
                                            local CheckBall = player[Location]:FindFirstChild(Ball)
                                            if CheckBall then
                                                print("FIREBALL")
                                                Fireballs += 1
                                                CheckBall:FindFirstChild("FireballEvent"):FireServer(Vector3.new(0, -10000, 0))
                                                earlyreturn = true
                                                wait(waittime)
                                                break
                                            end
                                        end

                                        if earlyreturn then
                                            break
                                        end
                                    end
                                end

                                if Fireballs ~= 0 then
                                    waittime =  2.2 / Fireballs
                                    print(waittime)
                                end
                                fireballsTotal = Fireballs
                                Fireballs = 0
                                runningFireball = false
                            end)
                        end)
                    end


            end)
        end)

            getgenv().FireballKill = game.Workspace.ChildAdded:connect(function(child)

                a, b = pcall(function()

                    print(child)
                    if not table.find(Fireballs, child.Name) then
                        return
                    end


                    local PlayerList = {}
                    local Min = math.huge


                    local friendlies = {}

                    local Team
                    local Teams = game.Workspace.Teams
                    for i,v in pairs(Teams:GetDescendants()) do
                        if v:IsA("StringValue") then
                            if v.Value == game.Players.LocalPlayer.Name then
                                Team = tostring(v.Parent.Name)
                            end
                        end
                    end

                    if Team ~= nil then
                        print(Teams[Team])
                        for i,v in pairs(Teams:FindFirstChild(Team):GetChildren()) do
                            if v:IsA("StringValue") then
                                table.insert(friendlies, v.Value)
                            end
                        end
                    end


                    for i,SearchPlayer in pairs(game.Players:GetChildren()) do
                        if SearchPlayer.Name == game.Players.LocalPlayer.Name then
                            continue
                        end

                        if not SearchPlayer and SearchPlayer.Character and SearchPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            continue
                        end


                        mag = (SearchPlayer.Character.HumanoidRootPart.Position - game.Workspace:FindFirstChild("SafeZonePart2").Position).Magnitude
                        print(mag)
                        if mag < 175 then
                           -- print("Nope", SearchPlayer.Name,  "is in Safezone")
                            continue
                        end 

                        if table.find(friendlies, SearchPlayer.Name) then
                           -- print("Nope", SearchPlayer.Name,  "is friendly")
                            continue
                        end

                        if SearchPlayer.Character and SearchPlayer.Character:FindFirstChild("Humanoid").Health > 0 then
                            local Mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - SearchPlayer.Character.HumanoidRootPart.Position).Magnitude
                            table.insert(PlayerList, {Player = SearchPlayer, Magnitude = Mag})
                            if Min > Mag then
                                Min = Mag
                            end
                        end
                    end

                    table.sort(PlayerList, function(a, b)
                        return a.Magnitude < b.Magnitude
                    end)

                    if PlayerList[1] and PlayerList[1].Magnitude < 1000000 then
                        a, b = pcall(function()
                            while true do
                                wait()
                                if child:FindFirstChild("TouchInterest") then
                                    local Camera = game.Workspace.CurrentCamera
                                    Camera.CameraType = Enum.CameraType.Scriptable
                                    Camera.CFrame = PlayerList[1].Player.Character.HumanoidRootPart.CFrame * CFrame.new(0,2,10)
                                    Camera.CFrame = CFrame.lookAt(Camera.CFrame.p, PlayerList[1].Player.Character.HumanoidRootPart.Position)
                                    wait(.1)
                                    print("Killing", PlayerList[1].Player.Name, child:FindFirstChild("TouchInterest"))
                                    firetouchinterest(PlayerList[1].Player.Character.HumanoidRootPart, child, 0)
                                    task.wait()
                                    firetouchinterest( PlayerList[1].Player.Character.HumanoidRootPart, child, 1)
                                    print(PlayerList[1].Player.Character.Humanoid.Health .. "/" .. PlayerList[1].Player.Character.Humanoid.MaxHealth)

                                    break
                                end
                            end
                        end)

                        print(a,b)
                    else
                        game.Workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                    end
                end)

                print(a,b)
            end)


        else
            game.Workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
            getgenv().FireballKill:Disconnect()
        end
    end)


    local PlayerFireKill = ""
    local Textbox = Section:CreateTextbox('Player', '', function(Value)
        PlayerFireKill = Value
    end)

    local Whitelist = {}
    local Toggle = Section:CreateToggle('Fireball Aura [SINGLE]', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
        if Value == true then
            FireAura = true
        else
            FireAura = false
        end

        if FireAura then
            print("FIREAURA")
            targetPlayer = game.Players[PlayerFireKill]


            task.spawn(function()
                runningFireball = false
                while FireAura do
                    wait(1)
                    print(FireAura)
                    if runningFireball == false and targetPlayer.Character and targetPlayer.Character:FindFirstChild("Humanoid") and targetPlayer.Character:FindFirstChild("Humanoid").Health > 0 then
                        runningFireball = true
                        task.spawn(function()
                            pcall(function()
                                local Balls = {"Fireball", "Lightningball"}
                                local Locations = {"Backpack", "Character"}
                                for i, player in pairs(game.Players:GetChildren()) do
                                    local earlyreturn = false
                                    for _,Ball in pairs(Balls) do
                                        for i,Location in pairs(Locations) do
                                            local CheckBall = player[Location]:FindFirstChild(Ball)
                                            if CheckBall then
                                                print("FIREBALL")
                                                CheckBall:FindFirstChild("FireballEvent"):FireServer(Vector3.new(0, -10000, 0))
                                                earlyreturn = true
                                                wait()
                                                break
                                            end
                                        end

                                        if earlyreturn then
                                            break
                                        end
                                    end
                                end
                                runningFireball = false
                            end)
                        end)
                    end
                end
            end)

            getgenv().FireballSingleKill = game.Workspace.ChildAdded:connect(function(child)

                pcall(function()
                    print(child)
                    if not table.find(Fireballs, child.Name) then
                        return
                    end


                    while FireAura do
                        task.wait()
                        if child:FindFirstChild("TouchInterest") then

                            wait(.1)
                            print("Killing", targetPlayer.Name, child:FindFirstChild("TouchInterest"))
                            firetouchinterest(targetPlayer.Character.HumanoidRootPart, child, 0)
                            task.wait()
                            firetouchinterest( targetPlayer.Character.HumanoidRootPart, child, 1)
                            print(targetPlayer.Character.Humanoid.Health .. "/" .. targetPlayer.Character.Humanoid.MaxHealth)

                            break
                        end
                    end
                end)
            end)


        else
            getgenv().FireballSingleKill:Disconnect()
        end



    end)


    local Label = Section:CreateLabel('Uses your Q Hit to kill those around you')



    local Whitelist = {}
    local Toggle = Section:CreateToggle('Kill Aura Invisible [ALL]', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
        if Value == true then
            KillAura = true
        else
            KillAura = false
        end

        while KillAura do

            a, b = pcall(function()
                local friendlies = {}

                local Team
                local Teams = game.Workspace.Teams
                for i,v in pairs(Teams:GetDescendants()) do
                    if v:IsA("StringValue") then
                        if v.Value == game.Players.LocalPlayer.Name then
                            Team = tostring(v.Parent.Name)
                        end
                    end
                end

                if Team ~= nil then
                    print(Teams[Team])
                    for i,v in pairs(Teams:FindFirstChild(Team):GetChildren()) do
                        if v:IsA("StringValue") then
                            table.insert(friendlies, v.Value)
                        end
                    end
                end



                local PlayerList = {}
                local Min = math.huge
                for i,SearchPlayer in pairs(game.Players:GetChildren()) do
                    if SearchPlayer.Name == game.Players.LocalPlayer.Name then
                        continue
                    end

                    if table.find(PlayersInSafeZone, SearchPlayer.Name) then
                        print("Nope", SearchPlayer.Name,  "is in Safezone")
                    --    continue
                    end

                    if table.find(friendlies, SearchPlayer.Name) then
                        --print("Nope", SearchPlayer.Name,  "Friendly")
                        continue
                    end

                    if SearchPlayer.Character and SearchPlayer.Character:FindFirstChild("Humanoid") and SearchPlayer.Character:FindFirstChild("Humanoid").Health > 0 then
                        local Mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - SearchPlayer.Character.HumanoidRootPart.Position).Magnitude
                        table.insert(PlayerList, {Player = SearchPlayer, Magnitude = Mag})
                        if Min > Mag then
                            Min = Mag
                        end
                    end
                end

                table.sort(PlayerList, function(a, b)
                    return a.Magnitude < b.Magnitude
                end)

                if PlayerList[1].Magnitude < 20 and PlayerList[1].Player and PlayerList[1].Player.Character.Humanoid.Health > 0 then
                    game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(PlayerList[1].Player.Character.Humanoid, "1")
                    print(PlayerList[1].Player.Character.Humanoid.Health .. "/" .. PlayerList[1].Player.Character.Humanoid.MaxHealth)
                end
            end)
            wait(.2)

            if b then
                print(a , b)
            end
        end
    end)


    local PlayerKill = ""
    local Textbox = Section:CreateTextbox('Player', '', function(Value)
        PlayerKill = Value
    end)

    local Toggle = Section:CreateToggle('Kill Aura Invisible [SINGLE]', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
        if Value == true then
            SingleKillAura = true
        else
            SingleKillAura = false
        end

        while SingleKillAura do

            a, b = pcall(function()
                local PlayerList = {}
                local Min = math.huge
                local LocalPlay = game.Players.LocalPlayer.Character.PrimaryPart.Position
                local Target = game.Players[PlayerKill].Character
                if (LocalPlay - Target.PrimaryPart.Position).Magnitude < 20 and Target.Humanoid.Health > 0 then
                    game:GetService("ReplicatedStorage").jdskhfsIIIllliiIIIdchgdIiIIIlIlIli:FireServer(Target.Humanoid, "1")
                    print(Target.Humanoid.Health .. "/" .. Target.Humanoid.MaxHealth)
                end
            end)

            if b then
                print(a , b)
            end
            wait(.2)
        end
    end)
end



-- [[ UI Section FPS ]] --
TabFPS = Window:CreateTab('FPS Settings', false, 'rbxassetid://3926305904', Vector2.new(524, 44), Vector2.new(36, 36))
Section = TabFPS:CreateSection('FPS Settings')

Button = Section:CreateButton('FPS + Ping Counter', function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/littlegui/main/FPS-Counter'))()
end)

Toggle = Section:CreateToggle('Render Toggle', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        Render = true
    else
        Render = false
    end

    if Render then
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    else
        game:GetService("RunService"):Set3dRenderingEnabled(true)
    end
end)


local function getDir(v)
	return (
		((v.Y == 0) and Vector3.new()) or
		((v.Y > 0) and -v) or
		v
	)
end

local function computeLowestPoint(part)
	local cf = part.CFrame
	local dist = part.Size/2
	local xVec = getDir(cf.RightVector) * dist.X
	local yVec = getDir(cf.UpVector) * dist.Y
	local zVec = getDir(cf.LookVector) * dist.Z
	return (cf + xVec + yVec + zVec).p
end

local folder = Instance.new("Folder")
folder.Name = "Platforms"
folder.Parent = workspace


function createBaseplate(Part, Size, Offset)
    local baseplate = Instance.new("Part")
    baseplate.Name = "Platform"
    baseplate.Anchored = true
    baseplate.Size = Vector3.new(Size, 0.5, Size)
    baseplate.TopSurface = "Smooth"
    baseplate.BottomSurface = "Smooth"
    baseplate.Material = "Glass"
    baseplate.Transparency = 0.75

    baseplate.CFrame = CFrame.new(computeLowestPoint(Part)) * Offset

    baseplate.Parent = folder
end

Button = Section:CreateButton('Delete Map v2', function()

    local success, error = pcall(function()
        local keepListDirect = {
            game:GetService("Workspace").Camera,
            game:GetService("Players").LocalPlayer.Character,
            game:GetService("Workspace").LBFolder,
            game:GetService("Workspace").SpawnPoints
        }


        local keepListName = {
            "Terrain",
            "Platform"
        }

        local listSearch = {
            "Dummy2",
            "Training Dummy",
            "spawnPoint",
        }


        local SpawnList = game:GetService("Workspace"):FindFirstChild("SpawnPoints")
        local SpawnLocation = game:GetService("Workspace"):FindFirstChild("SpawnLocation")
        local Dummy0kList = game:GetService("Workspace"):FindFirstChild("MAP"):FindFirstChild("dummies")
        local Dummy5kList = game:GetService("Workspace"):FindFirstChild("MAP"):FindFirstChild("5k_dummies")

        local addTable = {SpawnList, Dummy0kList, Dummy5kList}


        for _,Players in pairs(game.Players:GetPlayers()) do
            table.insert(keepListDirect, Players.Character)
        end



        local Part
        for _,List in pairs(addTable) do
            for i,v in pairs(List:GetChildren()) do
                if not table.find(listSearch, v.Name) then
                    continue
                end


                if v:FindFirstChild("HumanoidRootPart") then
                    table.insert(keepListDirect, v)
                    Part = v:FindFirstChild("HumanoidRootPart")
                elseif v:IsA("Part") then
                    table.insert(keepListDirect, v)
                    Part = v
                else
                    --print("Something went wrong -- [Map Delete]")
                    continue
                end

                print(List.Name, Part)
                if List.Name == "SpawnPoints" then
                    print("HERE", List, Part)
                    createBaseplate(Part, 20, CFrame.new(0,-5.655,0))
                    -- NORMAL == (-89)
                    -- -10 == (-84)
                else
                    --print(List)
                    createBaseplate(Part, 20, CFrame.new(0,0,0))
                end

            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = SpawnList:FindFirstChild("spawnPoint").CFrame * CFrame.new(0,3,0)
        end

        for i,v in pairs(keepListDirect) do
            --print(v)
            if not table.find(keepListName, v.Name) then
                table.insert(keepListName, v.Name)
            end
        end




        for _, object in pairs(game.Workspace:GetDescendants()) do

            if object:IsA("Folder") then
                continue
            end

            if table.find(keepListName, object.Name) then
                continue
            end

            local skip = false
            for i,v in pairs(keepListDirect) do
                if object:IsDescendantOf(v) then
                    --[[if v.Name == "Dummy2" or v.Name == "Training Dummy" then
                        if object.Name == "HumanoidRootPart" or object.Name == "Humanoid" then
                            ----print("IN: ",object.Name)
                            skip = true
                            continue
                        else
                            object:Destroy()
                        end
                   end

                    if v.Name == game:GetService("Players").LocalPlayer.Name then
                        if object:IsA("Accessory") then
                            object:Destroy()
                        end
                        pcall(function()
                            object.Transparency = 1
                        end)
                    end]]

                   skip = true
                end
            end

            if skip == true then
                continue
            end
            object:Destroy()
        end
    end)

    if not success then
        print(success, error)
    end
end)

-- [[ UI Section Misc ]]
TabMisc = Window:CreateTab('Pack Settings', false, 'rbxassetid://3926305904', Vector2.new(524, 44), Vector2.new(36, 36))
Section = TabMisc:CreateSection('Pack Settings')

Button = Section:CreateButton('Create UK Pack', function()
    game:GetService("Players").LocalPlayer.PlayerGui.TeamGUI.createFrame.bodyFrame.createButton.createTeamEvent:FireServer('🇬🇧')
end)

Button = Section:CreateButton('Create ONI Pack', function()
    game:GetService("Players").LocalPlayer.PlayerGui.TeamGUI.createFrame.bodyFrame.createButton.createTeamEvent:FireServer('-👹ONI👹-')
end)

local Invitedelay = 0.3
Toggle = Section:CreateToggle('Spam Invite', false, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    if Value == true then
        Spam = true
    else
        Spam = false
    end


    local Player = game.Players.LocalPlayer
    local TeamGUI = Player.PlayerGui.TeamGUI
    local playersFrame = TeamGUI.playersFrame
    local clanFrame = TeamGUI.clanFrame
    local playerInfo = playersFrame.bodyFrame


    if Spam == false then
        warn("Spam Off")
        Value = false

        playerInfo.Position = UDim2.new(0, 0, 0, 0)
        TeamGUI.Enabled = false
        clanFrame.Visible = true
        playersFrame.Visible = false
        playerInfo.Visible = false
    end

    leader = false
    for i,v in pairs(game.Workspace.Teams:GetChildren()) do
        if v.leader.Value == Player.Name then
            leader = true
        end
    end

    if leader and Spam then
        warn("Enabled GUI")

        TeamGUI.Enabled = true
        clanFrame.Visible = false
        playersFrame.Visible = true
        playerInfo.Visible = true
    else
        print("Spam is off or you are not leader")
        Value = false
        return
    end

    local function click(a)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+50,0,true,a,1)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(a.AbsolutePosition.X+a.AbsoluteSize.X/2,a.AbsolutePosition.Y+50,0,false,a,1)
    end

    a = 0
    playerInfo.Position = UDim2.new(1, 0, 0, 0)


    print("HERE")
    while Spam do
        if not Character and not Character:FindFirstChild("HumanoidRootPart") then
            break
        end
        print("HERE", a)
        wait()

        a += 1

         --print(a)

        for i,v in pairs(playerInfo.body2Frame.scrollingFrame:GetChildren()) do
            if v.Name == "playerFrame" then
                if v:FindFirstChild("invite") then
                    click(v.invite)

                    wait(Invitedelay)

                    v:Destroy()
                end

            end
        end

        wait()

        click(playerInfo.refreshButton)

        wait(.3)
    end
end)

-- [[Server Settings]]
TabServer = Window:CreateTab('Server Stuff', false, 'rbxassetid://3926305904', Vector2.new(524, 44), Vector2.new(36, 36))
Section = TabServer:CreateSection('Server Settings:')

Button = Section:CreateButton('Rejoin Server(Same)', function()
    Library:CreateNotification("OniHub | Notifications", "Rejoin Server...", 4)
	wait(4)
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer

    ts:Teleport(game.PlaceId, p)
end)

Button = Section:CreateButton('Rejoin Server(Diff) Less Player', function()
    Library:CreateNotification("OniHub | Notifications", "Joinning Diff Server | Less Player", 4)
	wait(4)
    loadstring(game:HttpGet(('https://gist.githubusercontent.com/MrbaconXD/43a5636f4eac57b7da78fb61b469bd85/raw/ea794c96c78e328a0a51102997bdd6f6caa679cb/ServerHopDiff.lua'),true))()
end)

Section = TabServer:CreateSection('Roblox Client')
Button = Section:CreateButton('Close Roblox Client (If U Want :/)', function()
    game:Shutdown()
end)
Button = Section:CreateButton('Freeze Roblox Client (If U Want :/)', function()
    while true do
    end
end)

-- [[ UI Section Settings ]]

TabSettings = Window:CreateTab('UI Settings', false, 'rbxassetid://3926305904', Vector2.new(524, 44), Vector2.new(36, 36)) -- Icons: rbxassetid://6022668883 rbxassetid://3926305904
UIFunctions = TabSettings:CreateSection('UI Settings:')

DestroyButton = UIFunctions:CreateButton('Destroy UI', function()   
    Library:DestroyUI()
end)

ToggleKeybind = UIFunctions:CreateKeybind('Toggle UI', 'E', function()
    Library:ToggleUI()
end)

local TransparencySlider = UIFunctions:CreateSlider('Transparency', 0, 100, 50, Color3.fromRGB(0, 125, 255), function(Value)
    Library:SetTransparency(Value / 100, true)
end)

-- [[ UI Section Credits ]]

TabCredits = Window:CreateTab('Credits', false, 'rbxassetid://3926305904', Vector2.new(524, 44), Vector2.new(36, 36))
Section = TabCredits:CreateSection('Credits')
Paragraph = Section:CreateParagraph('Updated By', 'Hisako [irritably] ')

--Expirimental
--[[
while wait() do
    local Event = game:GetService("ReplicatedStorage").Events.CoinEvent
    Event:FireServer()
end
]]