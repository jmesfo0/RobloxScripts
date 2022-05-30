    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/laderite/siernlib/main/library.lua"))()

    local win = Library:Create({
        Name = "James' Collect All Pets! Menu",
    })

    local maintab = win:Tab('Main')
    local menutab = win:Tab('Favorite Menus')

    local main = maintab:Section('MAIN')
    local character = menutab:Section('FAVORITES')
    main:Button('Auto Collect',function(v)
		local constantMod = require(game:GetService("ReplicatedStorage").Constants) constantMod.BaseDropCollectionRange = math.huge
		print('Auto Collect Enabled!')
    end)
    main:Button('Anti AFK',function(v)
        wait(3)
		local VirtualUser=game:service'VirtualUser'
		game:service('Players').LocalPlayer.Idled:connect(function()
		VirtualUser:CaptureController()
		VirtualUser:ClickButton2(Vector2.new())
		end)
		print('Anti-AFK Enabled!')
    end)
    main:Button ('Infinate Jump',function(v)
		local Player = game:GetService'Players'.LocalPlayer;
		local UIS = game:GetService'UserInputService';

		_G.JumpHeight = 50;

		function Action(Object, Function) if Object ~= nil then Function(Object); end end

		UIS.InputBegan:connect(function(UserInput)
			if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
				Action(Player.Character.Humanoid, function(self)
					if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
						Action(self.Parent.HumanoidRootPart, function(self)
							self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
						end)
					end
				end)
			end
		end)
    end)
	main:Button('Auto Fusion')
    main:Textbox('# of times? (filter 1 type of pet)',function(v)
	local petFrame = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Main.Pets.PetsContainer.ScrollingFrame
	local fuseButton = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Main.Pets.FuseFrame.FuseButton


	local function addPets()-- had to do it like this cause every time you clicked it would refresh all pets
	local added = {}
	for i=1, 5 do
	for i2, inst in pairs(petFrame:GetChildren()) do
	if inst:FindFirstChild("NameLabel") and not added[i2] then
	added[i2] = true
	firesignal(inst.Activated, inst, 1)
	break
	end
	end
	end
	end
	for i=1, (v) do --how many times do you want to fuse?
	addPets()
	firesignal(fuseButton.Activated, fuseButton, 1)
	wait(1)
	end
    end)
    character:Button ('KodaLINEN GUI',function(v)
		loadstring(game:HttpGet('https://raw.githubusercontent.com/KodaLINEN/Collect-All-Pets/main/main'))()
    end)
    character:Button ('CasperFlyModz GUI',function(v)
		_G.RedGUI = false
		_G.Theme = "Dark" -- Must disable or remove _G.RedGUI to use
		--Themes: Light, Dark, Mocha, Aqua and Jester
		_G.V3rmillion = true
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/CollectAllPets.lua"))()
    end)
    character:Button ('KodaLINEN Spoof GUI',function(v)
		loadstring(game:HttpGet('https://raw.githubusercontent.com/KodaLINEN/spoof/main/main'))()
    end)	
	
	