-- settings
_G.Version = "1.0.0" -- VERSION (if you plan to update)

-- locals
local discord = "https://discord.gg/UTWMshSKzy"
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
local GUI = Mercury:Create{
    Name = "Pkw's U.G",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Legacy,
    Link = "https://github.com/wowpkw/PkwsUniversalFreeGamepass/tree"
}

local Tab = GUI:Tab{
	Name = "Universal Free Gamepass".._G.Version,
	Icon = "rbxassetid://3173271667"
}
-- credits, Discord, etc.
GUI:Credit{
	Name = "pkw",
	Description = "Scripter",
	Discord = "wowpkw",
}

Tab:prompt{
            Title = "Join discord?",
            Text = "Acess to update logs, script announcements, community-shared scripts, etc.",
            Buttons = {
            Yes = function()
            GUI:Notification{
	Title = "Discord information",
	Text = (discord),
	Duration = 25,
	Callback = function() end
}
            end,
            No = function()
            end
            }}

-- code;


-- Method 1


Tab:Button{
	Name = "Universal - Method 1",
	Description = "Copies tools from Storage, sometimes games might store gamepass tool here",
	Callback = function() 
	-- notif
GUI:Notification{
	Title = "Success!",
	Text = "Successfully executed. Didn't work? Try another method.",
	Duration = 3,
	Callback = function() end
}
-- script
local player = game.Players.LocalPlayer
        for i,c in pairs(game.Lighting:GetChildren()) do
        print("Found")
         if c:IsA('Tool') or c:IsA('HopperBin') then
          print("Copying")
          c:Clone().Parent = player:FindFirstChildOfClass("Backpack")
          end
       end
    for i,c in pairs(game.ReplicatedStorage:GetChildren()) do
        print("Found")
         if c:IsA('Tool') or c:IsA('HopperBin') then
          print("Copying")
          c:Clone().Parent = player:FindFirstChildOfClass("Backpack")
          end
     end
end
}


-- Method 2


Tab:Button{
	Name = "Universal - Method 2",
	Description = "Spoofs gamepass as true",
	Callback = function() 
	-- notif
GUI:Notification{
	Title = "Success!",
	Text = "Successfully executed. Didn't work? Try another method.",
	Duration = 3,
	Callback = function() end
}
-- script
game.Players.LocalPlayer.Character.Head:Destroy()
        local mt = getrawmetatable(game);
        local old = mt.__namecall
        local readonly = setreadonly or make_writeable

        local MarketplaceService = game:GetService("MarketplaceService");

        readonly(mt, false);

        mt.__namecall = function(self, ...)
        local args = {...}
        local method = table.remove(args)

        if (self == MarketplaceService and method:find("UserOwnsGamePassAsync")) then
          return true and 1
        end

   return old(self, ...)
end
    end
}

-- Method 3


Tab:Button{
	Name = "Universal - Method 3",
	Description = "Spoofs your player ID to the creator's ID",
	Callback = function() 
	-- notif
GUI:Notification{
	Title = "Success!",
	Text = "Successfully executed. Didn't work? Try another method.",
	Duration = 3,
	Callback = function() end
}
-- script
game.Players.LocalPlayer.Character.Head:Destroy()
        if game.CreatorType == Enum.CreatorType.User then
            game.Players.LocalPlayer.UserId = game.CreatorId
            end
            
            if game.CreatorType == Enum.CreatorType.Group then
            game.Players.LocalPlayer.UserId = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Id
            end
    
    end
}

Tab:Button{
	Name = "Universal - Method 4",
	Description = "If you're in a game which uses VIP doors, try this.",
	Callback = function() 
    for i = 1, 5 do
	 wait()
    pcall(function()
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "Gamepass Door" then
                if v:IsA("Part") then
                workspace["GP Door"]:Destroy()
                end
            end
        end
    end)

    pcall(function()
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "VIP Door" then
                if v:IsA("Part") then
                workspace["VIP Door"]:Destroy()
            end
            end
        end
    end)
    for i = 1, 5 do
    pcall(function()
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "GP Door" then
                if v:IsA("Part") then
                workspace["Gamepass Door"]:Destroy()
            end
            end
        end
		end)
    end
        
    for i = 1, 5 do
        pcall(function()
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == "Gamepass" then
                if v:IsA("Part") then
                workspace["Gamepass"]:Destroy()
            end
            end
        end
		end)
    end

    for i = 1, 5 do
        pcall(function()
            for i,v in pairs(game.Workspace:GetDescendants()) do
                if v.Name == "Door" then
                    if v:IsA("Part") then
                    workspace["Door"]:Destroy()
                end
                end
            end
			end)
        end

		end
    end
}

Tab:Button{
	Name = "Universal - Method 5",
	Description = "If all else fails, use some universal tools in all games",
	Callback = function() 
        loadstring(game:HttpGet("https://gist.githubusercontent.com/dark-modz/b04e28198c8eeb1408921a1560792152/raw/67739a2bc571093976e6cd7e51fb526dedd75861/tools",true))()
    end
}


