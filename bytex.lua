--[[

    //  SETTINGS  \\

]]--

local Bytex = {
    R6FlingPart = "Left Arm",
    R15FlingPart = "LeftFoot",
    R6FakeLimb = 63690008,
    GiveHatPrefix = "-gh",
    Permadeath = true,
    UseHats = true,
    ExtraHats = true,
    FlingEnabled = true,
    FlingPartRestingOffset = -10
}

--[[

    //  UI LIBRARY  \\

]]--

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bytexlol/bytexreanimation/refs/heads/main/lib.lua"))()

local bytexgui = Library:create{
    Theme = Library.Themes.Dark,
}

--[[

    //  FUNCTIONS  \\

]]--

function sendMessage(message)
    if game:GetService("TextChatService") then
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(message)
    elseif ChatService then
        game:GetService("Chat"):Chat(Character, message)
    end
end

r6fakelimbplaceholderwoooo = Bytex.R6FakeLimb
Bytex.R6FakeLimb = game:GetObjects("rbxassetid://"..tostring(Bytex.R6FakeLimb))[1].Name

function Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld, isMeleeScript, MeleeOffsetZ, MeleeOffsetX, ExtraHatIDs)
            local Global = (getgenv and getgenv()) or shared
            Global.GelatekReanimateConfig = {
            -- [[ Rig Settings ]] --
            ["AnimationsDisabled"] = false,
            ["R15ToR6"] = true,
            ["DontBreakHairWelds"] = false,
            ["PermanentDeath"] = Bytex.Permadeath,
            ["Headless"] = false,
            ["TeleportBackWhenVoided"] = false,
            
            -- [[ Reanimation Settings ]] --
            ["AlignReanimate"] = true,
            ["FullForceAlign"] = false,
            ["FasterHeartbeat"] = true,
            ["DynamicalVelocity"] = false,
            ["DisableTweaks"] = true,
            
            -- [[ Optimization ]] --
            ["OptimizeGame"] = false,

            -- [[ Miscellacious ]] --
            ["LoadLibrary"] = true,
            ["DetailedCredits"] = false,
            
            -- [[ Flinging Methods ]] --
            ["TorsoFling"] = true,
            ["R6FlingPart"] = Bytex.R6FlingPart,
            ["R15FlingPart"] = Bytex.R15FlingPart,
	        ["R6FakeLimb"] = Bytex.R6FakeLimb,
            ["FlingPartRestingOffset"] = Bytex.FlingPartRestingOffset,
            ["BulletEnabled"] = Bytex.FlingEnabled,
            ["MeleeScript"] = isMeleeScript or false,
            ["MeleeOffsetZ"] = MeleeOffsetZ or -2.5,
            ["MeleeOffsetX"] = MeleeOffsetX or 0,
            ["BulletConfig"] = {
                ["RunAfterReanimate"] = true,
                ["LockBulletOnTorso"] = true
            }
        }
        
        if Bytex.UseHats then
            local Players = game:GetService("Players")
            local player = Players.LocalPlayer
            local Character = player.Character

            local HAT_NAME = game:GetObjects("rbxassetid://"..tostring(BytexConvert_HatID))[1].Name
            local accessory = Character:FindFirstChild(HAT_NAME)
            if not accessory then
                bytexgui:Notification{
                    Title = "Error!",
                    Text = "You didn't have the hat equipped!, Run script again.",
                    Duration = 5,
                }
                wait()
                if Bytex.ExtraHats and ExtraHatIDs ~= nil then
                    sendMessage("/e "..Bytex.GiveHatPrefix.." "..tostring(BytexConvert_HatID)..", "..ExtraHatIDs)                    
                else
                    sendMessage("/e "..Bytex.GiveHatPrefix.." "..tostring(BytexConvert_HatID))
                end
                return
            end
        end

        loadstring(game:HttpGet("https://raw.githubusercontent.com/farouq07/Bytex-BackUp/refs/heads/main/ReanimaTion.lua"))()
        
        wait(0.5)
        if Bytex.UseHats then
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local Character = player.Character

        local RightArm = Character:WaitForChild(BytexConvert_HatLimbWeld)

        local HAT_NAME = game:GetObjects("rbxassetid://"..tostring(BytexConvert_HatID))[1].Name
        local accessory = Character:FindFirstChild(HAT_NAME)

        local handle = accessory:FindFirstChild("Handle")

        for _, v in ipairs(handle:GetChildren()) do
            if v:IsA("Weld") or v:IsA("Motor6D") or v:IsA("WeldConstraint") --[[or v:IsA("Mesh") or v:IsA("SpecialMesh")]] then
                v:Destroy()
            end
        end

        local grip = Instance.new("Part")
        grip.Name = "AccessoryGrip"
        grip.Size = Vector3.new(0.2, 0.2, 0.2)
        grip.Transparency = 1
        grip.CanCollide = false
        grip.Anchored = false
        grip.Parent = Character

        local gripWeld = Instance.new("Motor6D")
        gripWeld.Name = "GripWeld"
        gripWeld.Part0 = RightArm
        gripWeld.Part1 = grip
        gripWeld.C0 = BytexConvert_HatCFrame
        gripWeld.Parent = grip

        local alignPos = Instance.new("AlignPosition")
        alignPos.Attachment0 = Instance.new("Attachment", handle)
        alignPos.Attachment1 = Instance.new("Attachment", grip)
        alignPos.RigidityEnabled = false
        alignPos.Responsiveness = 200
        alignPos.MaxForce = 100000
        alignPos.Parent = handle

        local alignOri = Instance.new("AlignOrientation")
        alignOri.Attachment0 = alignPos.Attachment0
        alignOri.Attachment1 = alignPos.Attachment1
        alignOri.MaxTorque = 100000
        alignOri.Responsiveness = 200
        alignOri.Parent = handle

        handle.Parent = workspace
        task.wait()
        handle.Parent = accessory

        bytexgui:Notification{
            Title = "Success!",
            Text = "Player reanimated successfully.",
            Duration = 5,
        }
        end
end

function Reanimate2(BytexConvert_HatID, BytexConvert_HatCFrame, isMeleeScript, MeleeOffsetZ, MeleeOffsetX)
local Global = (getgenv and getgenv()) or shared
            Global.GelatekReanimateConfig = {
            -- [[ Rig Settings ]] --
            ["AnimationsDisabled"] = false,
            ["R15ToR6"] = true,
            ["DontBreakHairWelds"] = not Bytex.FlingEnabled,
            ["PermanentDeath"] = Bytex.Permadeath,
            ["Headless"] = false,
            ["TeleportBackWhenVoided"] = false,
            
            -- [[ Reanimation Settings ]] --
            ["AlignReanimate"] = true,
            ["FullForceAlign"] = false,
            ["FasterHeartbeat"] = true,
            ["DynamicalVelocity"] = false,
            ["DisableTweaks"] = true,
            
            -- [[ Optimization ]] --
            ["OptimizeGame"] = false,

            -- [[ Miscellacious ]] --
            ["LoadLibrary"] = false,
            ["DetailedCredits"] = false,
            
            -- [[ Flinging Methods ]] --
            ["TorsoFling"] = false,
            ["R6FlingPart"] = Bytex.R6FlingPart,
            ["R15FlingPart"] = Bytex.R15FlingPart,
	        ["R6FakeLimb"] = Bytex.R6FakeLimb,
            ["FlingPartRestingOffset"] = Bytex.FlingPartRestingOffset,
            ["BulletEnabled"] = Bytex.FlingEnabled,
            ["MeleeScript"] = isMeleeScript or false,
            ["MeleeOffsetZ"] = MeleeOffsetZ or -2.5,
            ["MeleeOffsetX"] = MeleeOffsetX or 0,
            ["BulletConfig"] = {
                ["RunAfterReanimate"] = false,
                ["LockBulletOnTorso"] = true
            }
        }
        
        if Bytex.UseHats then
            local Players = game:GetService("Players")
            local player = Players.LocalPlayer
            local Character = player.Character

            local HAT_NAME = game:GetObjects("rbxassetid://"..tostring(BytexConvert_HatID))[1].Name
            local accessory = Character:FindFirstChild(HAT_NAME)
            if not accessory then
                bytexgui:Notification{
                    Title = "Error!",
                    Text = "You didn't have the hat equipped!, Run script again.",
                    Duration = 5,
                }
                wait()
                sendMessage("/e "..Bytex.GiveHatPrefix.." "..tostring(BytexConvert_HatID))
                return
            end
        end

        loadstring(game:HttpGet("https://raw.githubusercontent.com/farouq07/Bytex-BackUp/refs/heads/main/ReanimaTion.lua"))()
        
        wait(0.5)
        bytexgui:Notification{
            Title = "Success!",
            Text = "Player reanimated successfully.",
            Duration = 5,
        }
end

function runScript(scr)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/farouq07/Bytex-BackUp/refs/heads/main/scripts/"..scr..".lua"))()
end

function runScript2(scr, id, cframe, id2, cframe2, id3, cframe3)
    local fortnite = (getgenv and getgenv()) or shared

    fortnite.neptunian = {
        usinghats = Bytex.UseHats,
        bhatid = id,
        bcframele = cframe,
        bhatid2 = id2,
        bcframele2 = cframe2,
        bhatid3 = id3,
        bcframele3 = cframe3,
        
    }

    loadstring(game:HttpGet("https://raw.githubusercontent.com/farouq07/Bytex-BackUp/refs/heads/main/scripts/"..scr..".lua"))()
end

--[[

    //  INIT TABS  \\

]]--

local reanim = bytexgui:tab{
    Icon = "rbxassetid://92920576968733",
    Name = "Reanimation"
}

local scr = bytexgui:tab{
    Icon = "rbxassetid://4227397352",
    Name = "Scripts"
}

--[[

    //  REANIMATION TAB  \\

]]--

reanim:button({
    Name = "Respawn",
    Desc = "recommended for just a baseplate",
    Callback = function()
        player = game.Players.LocalPlayer
        local character = player.Character
        hrp = character:WaitForChild("HumanoidRootPart").CFrame
        sendMessage("/e -rs")
        player.CharacterAdded:Wait()
        local character = player.Character
        character:WaitForChild("Humanoid").Health = 0
        player.CharacterAdded:Wait()
        local character = player.Character
        character:WaitForChild("HumanoidRootPart"):MoveTo(hrp.Position)
    end,
})

reanim:Toggle{
	Name = "Permadeath",
	StartingState = Bytex.Permadeath,
	Description = nil,
	Callback = function(state) Bytex.Permadeath = state return Bytex.Permadeath end
}

reanim:Toggle{
	Name = "Use Hats",
	StartingState = Bytex.UseHats,
	Description = nil,
	Callback = function(state) Bytex.UseHats = state return Bytex.UseHats end
}

reanim:Toggle{
	Name = "Use Extra Hats",
	StartingState = Bytex.ExtraHats,
	Description = nil,
	Callback = function(state) Bytex.ExtraHats = state return Bytex.ExtraHats end
}

reanim:Toggle{
	Name = "Fling Enabled",
	StartingState = Bytex.FlingEnabled,
	Description = nil,
	Callback = function(state) Bytex.FlingEnabled = state return Bytex.FlingEnabled end
}

reanim:Slider{
	Name = "Fling Part Resting Offset",
	Default = Bytex.FlingPartRestingOffset,
	Min = -20,
	Max = 20,
	Callback = function(amount) Bytex.FlingPartRestingOffset = amount return Bytex.FlingPartRestingOffset end
}

reanim:dropdown({
    Name = "Fling Part (R15)",
    Description = "Sets the R15 fling part.",
    StartingText = Bytex.R15FlingPart,
    Items = {
        "RightHand",
        "LeftHand",
        "RightFoot",
        "LeftFoot",
        "RightUpperArm",
        "LeftUpperArm",
        "RightLowerArm",
        "LeftLowerArm",
        "RightLowerLeg",
        "LeftLowerLeg",
        "RightUpperLeg",
        "LeftUpperLeg",
    },
    Callback = function(item) Bytex.R15FlingPart = item return Bytex.R15FlingPart end
})

reanim:dropdown({
    Name = "Fling Part (R6)",
    Description = "Sets the R6 fling part.",
    StartingText = Bytex.R6FlingPart,
    Items = {
        "Left Leg",
        "Right Leg",
        "Left Arm",
        "Right Arm",
    },
    Callback = function(item) Bytex.R6FlingPart = item return Bytex.R6FlingPart end
})

reanim:textbox({
    Name = "R6 Fake Limb Hat ID",
    Placeholder = r6fakelimbplaceholderwoooo,
    Callback = function(item) if item == "" then item = "63690008" end Bytex.R6FakeLimb = game:GetObjects("rbxassetid://"..tostring(item))[1].Name return Bytex.R6FakeLimb end
})

reanim:textbox({
    Name = "Give Hat Prefix",
    Placeholder = Bytex.GiveHatPrefix,
    Callback = function(item) if item == "" then item = "-gh" end Bytex.GiveHatPrefix = item return Bytex.GiveHatPrefix end
})

--[[

    //  SCRIPTS  \\

]]--

scr:button({
    Name = "Sniper",
    Callback = function()
        local BytexConvert_HatID = 133000590731897
        local BytexConvert_HatCFrame = CFrame.new(0, -1.5, -0.6) * CFrame.Angles(math.rad(-90), math.rad(90) , 0)
        local BytexConvert_HatLimbWeld = "Right Arm"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld)
        runScript('sniper')
    end,
})

scr:button({
    Name = "Elio Blasio",
    Callback = function()
        local BytexConvert_HatID = 100171532179089
        local BytexConvert_HatCFrame = CFrame.new(0, -1.2, -0.6) * CFrame.Angles(math.rad(-90), math.rad(-360) , 0)
        local BytexConvert_HatLimbWeld = "Right Arm"

        local Bytex_ExtraHats = "181354245, 14463095"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld, false, nil, nil, Bytex_ExtraHats)
        runScript('elioblasio')
    end,
})

scr:button({
    Name = "Trap Rifle (broken too)",
    Callback = function()
        local BytexConvert_HatID = 97794328990149
        local BytexConvert_HatCFrame = CFrame.new(0, -1.5, -0.6) * CFrame.Angles(math.rad(-50), math.rad(90) , 0)
        local BytexConvert_HatLimbWeld = "Right Arm"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld)
        runScript('traprifle')
    end,
})

scr:button({
    Name = "Minigun",
    Callback = function()
        local BytexConvert_HatID = 18577802391
        local BytexConvert_HatCFrame = CFrame.new(0.4, -1.2, -1) * CFrame.Angles(math.rad(50), math.rad(90) , 0)
        local BytexConvert_HatLimbWeld = "Right Arm"

        local Bytex_ExtraHats = "17115017000, 17688184206, 17688170079, 17688167550"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld, false, nil, nil, Bytex_ExtraHats)
        runScript('minigun')
    end,
})

scr:button({
    Name = "Shotgun",
    Callback = function()
        local BytexConvert_HatID = 95395812026004
        local BytexConvert_HatCFrame = CFrame.new(0, -1.9, -0.4) * CFrame.Angles(math.rad(-33), math.rad(-90) , 0)
        local BytexConvert_HatLimbWeld = "Right Arm"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld)
        runScript('shotgun')
    end,
})

scr:button({
    Name = "Flamethrower",
    Callback = function()
        local BytexConvert_HatID = 6201702979
        local BytexConvert_HatCFrame = CFrame.new(-1.2, -1.8, -0.9) * CFrame.Angles(math.rad(-45), math.rad(-90), 0)
        local BytexConvert_HatLimbWeld = "Right Arm"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld, true, -3.4, 1.2)
        runScript('flamethrower')
    end,
})

scr:button({
    Name = "Raygun",
    Callback = function()
        local BytexConvert_HatID = 18492888971
        local BytexConvert_HatCFrame = CFrame.new(0, -1.2, -0.55) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90))
        local BytexConvert_HatLimbWeld = "Right Arm"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld)
        runScript('raygun')
    end,
})

scr:button({
    Name = "Lightning Cannon",
    Callback = function()
        local BytexConvert_HatID = 4623059912
        local BytexConvert_HatCFrame = CFrame.new(0, -1.2, -0.55) * CFrame.Angles(math.rad(-45), math.rad(90), math.rad(0))
        local BytexConvert_HatLimbWeld = "Right Arm"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld)

        runScript('lightningcannon')
    end,
})

scr:button({
    Name = "Abyss Eye",
    Callback = function()
        local BytexConvert_HatID = 16638328893
        local BytexConvert_HatCFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-70), math.rad(-90), math.rad(0))

        Reanimate2(BytexConvert_HatID, BytexConvert_HatCFrame, true)

        runScript2('abysseye', BytexConvert_HatID, BytexConvert_HatCFrame)
    end,
})

scr:button({
    Name = "Neptunian V",
    Callback = function()
        local BytexConvert_HatID = 112934510372081
        local BytexConvert_HatCFrame = CFrame.new(0, -0.8, 0) * CFrame.Angles(math.rad(-70), math.rad(-90), math.rad(0))

        Reanimate2(BytexConvert_HatID, BytexConvert_HatCFrame, true)

        runScript2('neptunian', BytexConvert_HatID, BytexConvert_HatCFrame)
    end,
})

scr:button({
    Name = "Goner",
    Callback = function()
        local BytexConvert_HatID = 17835236579
        local BytexConvert_HatCFrame = CFrame.new(0, -0.5, 1.7) * CFrame.Angles(math.rad(-40), math.rad(-90), math.rad(0))
        local BytexConvert_HatLimbWeld = "Right Arm"

        local Bytex_ExtraHats = "17770317484, 17822722698, 17822749561, 17772174303"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld, true, -3.15, nil, Bytex_ExtraHats)

        runScript('goner')
    end,
})

scr:button({
    Name = "Minecraft Sword",
    Callback = function()
        local BytexConvert_HatID = 76150994705890
        local BytexConvert_HatCFrame = CFrame.new(0, -0.6, -1.3) * CFrame.Angles(math.rad(135), math.rad(-90), math.rad(0))
        local BytexConvert_HatLimbWeld = "Right Arm"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld, true)

        runScript('minecraftsword')
    end,
})

scr:button({
    Name = "Hammer",
    Callback = function()
        local BytexConvert_HatID = 17582812822
        local BytexConvert_HatCFrame = CFrame.new(0, -0.6, -1.3) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0))
        local BytexConvert_HatLimbWeld = "Right Arm"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld, true)

        runScript('hammer')
    end,
})

scr:button({
    Name = "Gale Fighter(turn on extra hats)",
    Callback = function()
        local BytexConvert_HatID = 121629329212819
        local BytexConvert_HatCFrame = CFrame.new(0, -0.5, 1.7) * CFrame.Angles(math.rad(-40), math.rad(-90), math.rad(0))
        local BytexConvert_HatLimbWeld = "Right Arm"

        local Bytex_ExtraHats = "78327599218076"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld, true, -3.15, nil, Bytex_ExtraHats)

        runScript('goner')
    end,
})

scr:button({

    Name = "Knife",

    Callback = function()
        local BytexConvert_HatID = 76987834134194
        local BytexConvert_HatCFrame = CFrame.new(0, -1, -0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
        local BytexConvert_HatLimbWeld = "Right Arm"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld, true)

        runScript('knife')
    end,
})

scr:button({

    Name = "Rocket Launcher",

    Callback = function()
        local BytexConvert_HatID = 86195639625389
        local BytexConvert_HatCFrame = CFrame.new(0, -1.5, -0.7) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0))
        local BytexConvert_HatLimbWeld = "Right Arm"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld, true)

        runScript('Rocket')
    end,
})

scr:button({
    Name = "john doe",
    Callback = function()
        local BytexConvert_HatID = 122293866267553
        local BytexConvert_HatCFrame = CFrame.new(0.3, -0.5, -0) * CFrame.Angles(math.rad(0), math.rad(0) , 0)
        local BytexConvert_HatLimbWeld = "Right Arm"

        local Bytex_ExtraHats = "88189987572253, 102093976550242, 18196403126"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld, false, nil, nil, Bytex_ExtraHats)
        runScript('Johny')
    end,
})

scr:button({
    Name = "Lua Hammer",
    Callback = function()
        local BytexConvert_HatID = 93248624842643
        local BytexConvert_HatCFrame = CFrame.new(0, -0.6, -1.3) * CFrame.Angles(math.rad(-90), math.rad(-90), math.rad(0))
        local BytexConvert_HatLimbWeld = "Right Arm"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld, true)

        runScript('LuaHammer')
    end,
})

scr:button({
    Name = "HyperLaser",
    Callback = function()
        local BytexConvert_HatID = 132075823905007
        local BytexConvert_HatCFrame = CFrame.new(0, -1.2, -0.5) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(-90))
        local BytexConvert_HatLimbWeld = "Right Arm"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld, true)

        runScript('HyperLaser')
    end,
})

scr:button({
    Name = "AnimationMan",
    Callback = function()
        local BytexConvert_HatID = 376524487
        local BytexConvert_HatCFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
        local BytexConvert_HatLimbWeld = "Right Arm"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld, true)

        runScript('AnimationMan')
    end,
})

scr:button({
    Name = "DubStep",
    Callback = function()
        local BytexConvert_HatID = 137063455124987
        local BytexConvert_HatCFrame = CFrame.new(0.5, 0.3, -1) * CFrame.Angles(math.rad(-120), math.rad(90), math.rad(0))
        local BytexConvert_HatLimbWeld = "Right Arm"

        Reanimate(BytexConvert_HatID, BytexConvert_HatCFrame, BytexConvert_HatLimbWeld, true)

        runScript('DubStep')
    end,
})
--[[

    //  EXTRA  \\

]]--

bytexgui:Notification{
    Title = "Welcome to Bytex!",
    Text = "Made By Coilis,GGcocacola,2fiant",
    Duration = 5,
}

bytexgui:set_status("version 1.20")

wait(1)

if game.GameId ~= 123974602339071 then
    bytexgui:Prompt{
        Followup = false,
        Title = "reminder",
        Text = "say -net everytime you execute bytex scripts",
        Buttons = {
            ok = function()
                
            end,
            no. = function()
            end
        }
    }
    else

end
