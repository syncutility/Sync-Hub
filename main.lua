-------------------------------------------------------------------------------------------------------
--PRISON LIFE


if game.placeId == 155615604 then
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "Sync Hub | Prison Life",
	LoadingTitle = "Sync Hub",
	LoadingSubtitle = "by rakheem46",
	KeySystem = false,
	KeySettings = {
		Title = "Sync Hub",
		Subtitle = "Key System",
		Note = "Get a key here https://mboost.me/a/8i2",
		Key = "21Nbhjnkask768bsIUHA8Y"
	}
})

-- VALUES

getgenv().changeOrange = true
getgenv().changeBlue = true
getgenv().changeGrey = true
getgenv().changeRed = true
getgenv().gunRemington = true
getgenv().gunM9 = true
getgenv().gunAK47 = true
getgenv().inmateHammer = true
getgenv().policeKeycard = true
getgenv().garageDoors = true
getgenv().walkSpeed = true
getgenv().jumpPower = true
getgenv().inmateKnife = true
getgenv().changeRed = true


-- FUNCTIONS

function changeOrange()
    workspace.Remote.TeamEvent:FireServer("Bright orange")
    end

function changeBlue()
    workspace.Remote.TeamEvent:FireServer("Bright blue")
    end

function changeGrey()
    workspace.Remote.TeamEvent:FireServer("Medium stone grey")
    end

function changeRed()
	workspace.Remote.TeamEvent:FireServer("Really Red")
	end

function gunRemington()
    workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
    end

function gunM9()
    workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
    end

function gunAK47()
    workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
    end

function policeKeycard()
    workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single["Key card"].ITEMPICKUP)
    end

function inmateKnife()
	workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single["Crude Knife"].ITEMPICKUP)
	end

function inmateHammer()
    workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
    end

function garageDoors()
    workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.buttons["Garage Buttons"].open)
    workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.buttons["Garage Buttons"].close)
    end


-- TABS
local HomeTab = Window:CreateTab("Home")

local itemTab = Window:CreateTab("Get Items")

local ChangeTab = Window:CreateTab("Change Teams")

local GunTab = Window:CreateTab("Gun Mods")

local PlayerTab = Window:CreateTab("Player")

local TeleportTab = Window:CreateTab("Teleport")

local ControllerTab = Window:CreateTab("Controller")

local SettingsTab = Window:CreateTab("Settings")

-- SECTIONS

local itemSection = itemTab:CreateSection("Guns")


-- LABELS

HomeTab:CreateParagraph({Title = "Syncster", Content = "rakheem46#0646"})

-- TOGGLES

HomeTab:CreateButton({
	Name = "rakheem46#0646",
	Callback = function()
	end,
})

HomeTab:CreateButton({
	Name = "Report any bugs into my DM's",
	Callback = function()
	end,
})

ChangeTab:CreateButton({
	Name = "Change to Guards",
	Callback = function()
		changeBlue()
	end,
})

ChangeTab:CreateButton({
	Name = "Change to Neutral",
	Callback = function()
		changeGrey()
	end,
})

ChangeTab:CreateButton({
	Name = "Change to Prisoners",
	Callback = function()
		changeOrange()
	end,
})

itemTab:CreateButton({
	Name = "Give Remington 870",
	Callback = function()
        gunRemington()
  	end,    
})

itemTab:CreateButton({
	Name = "Give Pistol M9",
	Callback = function()
        gunM9()
  	end,
})

itemTab:CreateButton({
	Name = "Give AK-47",
	Callback = function()
        gunAK47()
  	end,    
})

local itemSection = itemTab:CreateSection("Non-Guns")

itemTab:CreateButton({
	Name = "Give Hammer",
	Callback = function()
        inmateHammer()
  	end,
})

itemTab:CreateButton({
	Name = "Give Keycard",
	Callback = function()
        policeKeycard()
  	end,    
})

itemTab:CreateButton({
	Name = "Give Crude Knife",
	Callback = function()
        inmateKnife()
  	end,    
})

local Section = itemTab:CreateSection("Other")

itemTab:CreateButton({
	Name = "Give BTOOLS",
	Callback = function()
local Backpack = game.Players.LocalPlayer.Backpack
local Character = game.Players.LocalPlayer.Character
if not Backpack:FindFirstChild("Bin_1") and not Character:FindFirstChild("Bin_1") then
	local HopperBin_1 = Instance.new("HopperBin", Backpack)
	HopperBin_1.BinType = 1
	HopperBin_1.Name = "Bin_1"
end
if not Backpack:FindFirstChild("Bin_2") and not Character:FindFirstChild("Bin_2") then
	local HopperBin_2 = Instance.new("HopperBin", Backpack)
	HopperBin_2.BinType = 2
	HopperBin_2.Name = "Bin_2"
end
if not Backpack:FindFirstChild("Bin_3") and not Character:FindFirstChild("Bin_3") then
	local HopperBin_3 = Instance.new("HopperBin", Backpack)
	HopperBin_3.BinType = 3
	HopperBin_3.Name = "Bin_3"
end
if not Backpack:FindFirstChild("Bin_4") and not Character:FindFirstChild("Bin_4") then
	local HopperBin_4 = Instance.new("HopperBin", Backpack)
	HopperBin_4.BinType = 4
	HopperBin_4.Name = "Bin_4"
    end
end
})

local Label = GunTab:CreateLabel("WARNING: Only use the Gun Mod for the AK-47 & M9")

GunTab:CreateToggle(
    {
        Name = "Gun Mods",
        CurrentValue = false,
        Callback = function(Value)
            Auto_GunMods = Value
            while Auto_GunMods do
                task.wait()
                for _,v in ipairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do 
                    if v.Name == "GunStates" then 
                        a = require(v)
                
                        a.AutoFire = true
                        a.Bullets = math.huge
                        a.Range = math.huge
                        a.FireRate = 0.1
                        a.MaxAmmo = math.huge
                        a.Spread = math.huge
                        a.Damage = math.huge
                        a.CurrentAmmo = math.huge
                        a.StoredAmmo = math.huge
                        a.ReloadTime = -math.huge
                    end
                end
            end
        end
    }
)

local Section = PlayerTab:CreateSection("Humanoid I")

PlayerTab:CreateSlider({
    Name = "Change Walkspeed",
    Range = {16, 500},
    Increment = 1,
    Suffix = "walkspeed",
    CurrentValue = 16,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
})

PlayerTab:CreateSlider({
    Name = "Change JumpPower",
    Range = {50, 300},
    Increment = 1,
    Suffix = "jumppower",
    CurrentValue = 16,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end,
})

local Section = PlayerTab:CreateSection("Humanoid II")

PlayerTab:CreateButton({
	Name = "Bypass Taser",
	Callback = function()
	game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
	game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
	game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
	end
})


PlayerTab:CreateButton({
	Name = "Infinite Health",
	Callback = function()
			game.Players.LocalPlayer.Character.Humanoid.Name = 1
			local l = game.Players.LocalPlayer.Character["1"]:Clone()
			l.Parent = game.Players.LocalPlayer.Character
			l.Name = "Humanoid"
			game.Players.LocalPlayer.Character.Animate.Disabled = true
			wait()
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			game.Players.LocalPlayer.Character["1"]:Destroy()
			game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		end
})

local Section = PlayerTab:CreateSection("Humanoid III")

PlayerTab:CreateButton({
	Name = "Arrest All",
	Callback = function()
			wait(0.1)
			Player = game.Players.LocalPlayer
			Pcf = Player.Character.HumanoidRootPart.CFrame
			for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
			if v.Name ~= Player.Name then
			local i = 10
			repeat
			wait()
			i = i-1
			game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
			Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
			until i == 0
		    end
		end
	end
  }
)

PlayerTab:CreateButton({
	Name = "Press to Fly (E)",
	Callback = function()
		repeat wait()
		until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
	 local mouse = game.Players.LocalPlayer:GetMouse()
	 repeat wait() until mouse
	 local plr = game.Players.LocalPlayer
	 local torso = plr.Character.Torso
	 local flying = true
	 local deb = true
	 local ctrl = {f = 0, b = 0, l = 0, r = 0}
	 local lastctrl = {f = 0, b = 0, l = 0, r = 0}
	 local maxspeed = 50
	 local speed = 0
	 
	 function Fly()
	 local bg = Instance.new("BodyGyro", torso)
	 bg.P = 9e4
	 bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
	 bg.cframe = torso.CFrame
	 local bv = Instance.new("BodyVelocity", torso)
	 bv.velocity = Vector3.new(0,0.1,0)
	 bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
	 repeat wait()
	 plr.Character.Humanoid.PlatformStand = true
	 if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
	 speed = speed+.5+(speed/maxspeed)
	 if speed > maxspeed then
	 speed = maxspeed
	 end
	 elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
	 speed = speed-1
	 if speed < 0 then
	 speed = 0
	 end
	 end
	 if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
	 bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
	 lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
	 elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
	 bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
	 else
	 bv.velocity = Vector3.new(0,0.1,0)
	 end
	 bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
	 until not flying
	 ctrl = {f = 0, b = 0, l = 0, r = 0}
	 lastctrl = {f = 0, b = 0, l = 0, r = 0}
	 speed = 0
	 bg:Destroy()
	 bv:Destroy()
	 plr.Character.Humanoid.PlatformStand = false
	 end
	 mouse.KeyDown:connect(function(key)
	 if key:lower() == "e" then
	 if flying then flying = false
	 else
	 flying = true
	 Fly()
	 end
	 elseif key:lower() == "w" then
	 ctrl.f = 1
	 elseif key:lower() == "s" then
	 ctrl.b = -1
	 elseif key:lower() == "a" then
	 ctrl.l = -1
	 elseif key:lower() == "d" then
	 ctrl.r = 1
	 end
	 end)
	 mouse.KeyUp:connect(function(key)
	 if key:lower() == "w" then
	 ctrl.f = 0
	 elseif key:lower() == "s" then
	 ctrl.b = 0
	 elseif key:lower() == "a" then
	 ctrl.l = 0
	 elseif key:lower() == "d" then
	 ctrl.r = 0
	 end
	 end)
	 Fly()
	 end
	})


local Section = TeleportTab:CreateSection("Inside Prison")

TeleportTab:CreateButton({
	Name = "Teleport to the Yard",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(791, 98, 2498)
  	end,    
})


TeleportTab:CreateButton({
	Name = "Teleport to the Canteen",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(877, 100, 2256)
  	end,    
})

TeleportTab:CreateButton({
	Name = "Teleport to the Guard Room",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(789, 100, 2260)
  	end,    
})

local Section = TeleportTab:CreateSection("Outside Prison")

TeleportTab:CreateButton({
	Name = "Teleport to the Criminal Base",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943, 95, 2055)
  	end,    
})

TeleportTab:CreateButton({
	Name = "Teleport to the Sewer",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(916, 79, 2311)
  	end,    
})

TeleportTab:CreateButton({
	Name = "Teleport to the Gate",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(505, 103, 2250)
  	end,    
})

TeleportTab:CreateButton({
	Name = "Teleport to the Tower",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(822, 131, 2588)
  	end,    
})

local Section = ControllerTab:CreateSection("Gate Controls")

ControllerTab:CreateButton({
	Name = "Open/Close Criminal Garage Doors",
	Callback = function()
        garageDoors()
  	end,    
})

ControllerTab:CreateButton({
	Name = "Open/Close Prison Gates",
	Callback = function()
    workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.buttons["Prison Gate"]["Prison Gate"])
    end,
})

local Section = ControllerTab:CreateSection("Door Controls")

ControllerTab:CreateButton(
    {
        Name = "Remove All Doors",
        Callback = function()
            for _,v in ipairs(workspace:GetChildren()) do
                if v.Name == "Doors" then
                    v:Destroy()
                end
            end
        end
    }
)

SettingsTab:CreateButton({
	Name = "Server Hop",
	Callback = function()
		wait(.1)
		game:GetService("TeleportService"):Teleport(game.PlaceId)
	end
})

SettingsTab:CreateButton({
	Name = "Rejoin",
	Callback = function()
		wait(.1)
		game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
	end
})

SettingsTab:CreateButton({
	Name = "Leave",
	Callback = function()
    wait(.1)
    game:Shutdown()
  end
})








-------------------------------------------------------------------------------------------------------
--SHARKBITE 2






elseif game.placeId == 8908228901 then
	local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
	local Window = Rayfield:CreateWindow({
		Name = "Sync Hub | Sharkbite 2",
		LoadingTitle = "Sync Hub",
		LoadingSubtitle = "by rakheem46",
		KeySystem = false,
		KeySettings = {
			Title = "Sync Hub",
			Subtitle = "Key System",
			Note = "Get a key here https://mboost.me/a/8i2",
			Key = "21Nbhjnkask768bsIUHA8Y"
		}
	})
	
	-- TABS
	
	local HomeTab = Window:CreateTab("Home")
	
	local ChangeTab = Window:CreateTab("Change Boat")
	
	-- LABELS
	
	HomeTab:CreateParagraph({Title = "Syncster", Content = "rakheem46#0646"})
	
	-- TOGGLES
	
	HomeTab:CreateButton({
		Name = "rakheem46#0646",
		Callback = function()
		end,
	})
	
	HomeTab:CreateButton({
		Name = "Report any bugs into my DM's",
		Callback = function()
		end,
	})
	
	local Section = ChangeTab:CreateSection("Big Boats")
	
	ChangeTab:CreateButton({
		Name = "Change Boat to Catamaran",
		Callback = function()
		game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer("Catamaran")
		end,
	})
	
	ChangeTab:CreateButton({
		Name = "Change Boat to Small Viking Longship",
		Callback = function()
		game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer("VikingLongship")
		end,
	})
	
	local Section = ChangeTab:CreateSection("Medium Boats")
	
	ChangeTab:CreateButton({
		Name = "Change Boat to Sloop",
		Callback = function()
		game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer("Sloop")
		end,
	})
	
	ChangeTab:CreateButton({
		Name = "Change Boat to Tug Boat",
		Callback = function()
		game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer("TugBoat")
		end,
	})
	
	ChangeTab:CreateButton({
		Name = "Change Boat to Canopy Motorboat",
		Callback = function()
		game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer("CanopyMotorboat")
		end,
	})
	
	ChangeTab:CreateButton({
		Name = "Change Boat to Golden Ducky Boat",
		Callback = function()
		game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer("DuckyBoatBeta")
		end,
	})
	
	ChangeTab:CreateButton({
		Name = "Change Boat to Unicorn Boat",
		Callback = function()
		game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer("UnicornBoat")
		end,
	})
	
	
	local Section = ChangeTab:CreateSection("Small Boats")
	
	ChangeTab:CreateButton({
		Name = "Change Boat to Marlin",
		Callback = function()
		game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer("Marlin")
		end,
	})
	
	ChangeTab:CreateButton({
		Name = "Change Boat to Jet Ski",
		Callback = function()
		game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer("JetSkiBeta")
		end,
	})
	
	ChangeTab:CreateButton({
		Name = "Change Boat to Small Dinghy Motorboat",
		Callback = function()
		game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer("SmallDinghyMotorboat")
		end,
	})
	
	ChangeTab:CreateButton({
		Name = "Change Boat to Double Doughnut Tube Boat",
		Callback = function()
		game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer("DoubleDoughnutTubeBoat")
		end,
	})
	
	ChangeTab:CreateButton({
		Name = "Change Boat to Blue Wooden Motorboat",
		Callback = function()
		game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer("BlueWoodenMotorboat")
		end,
	})


end
OrionLib:Init()