local Player = game:GetService("Players").LocalPlayer
local chara = Player.Character or Player.CharacterAdded:Wait()
local Mouse = Player:GetMouse()

local function New(Object, Parent, Name, Data)
	local obj = Instance.new(Object)
	for k, v in pairs(Data or {}) do
		obj[k] = v
	end
	obj.Parent = Parent
	obj.Name = Name
	return obj
end
-- teleport me
function Teleport(pos)
	local snd = New("Sound", chara.Torso, "Tele", {
		SoundId = "rbxassetid://2767090",
		PlaybackSpeed = 0.7,
		Volume = 5
	})
	snd:Play()
	game:GetService("Debris"):AddItem(snd, 2)

	for _, child in ipairs(chara:GetChildren()) do
		if child:IsA("BasePart") and child.Name ~= "HumanoidRootPart" then
			local trace = Instance.new("Part", workspace)
			trace.Size = child.Size
			trace.Material = Enum.Material.Neon
			trace.BrickColor = BrickColor.new("Really black")
			trace.Transparency = 0.3
			trace.CanCollide = false
			trace.Anchored = true
			trace.CFrame = child.CFrame
			if child.Name == "Head" then
				local mesh = Instance.new("CylinderMesh", trace)
				mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
			end
			game:GetService("Debris"):AddItem(trace, 1.7)
			coroutine.wrap(function()
				wait(0.5)
				for _ = 1, 7 do
					wait(0.05)
					trace.Transparency = trace.Transparency + 0.1
				end
				trace:Destroy()
			end)()
		end
	end
	chara.Torso.CFrame = CFrame.new(pos.X, pos.Y, pos.Z)
end

-- Sslaaaaaaaaap
local swingAnimTrack
local function loadSwingAnimation()
	local anim = New("Animation", chara, "Swing", {
		AnimationId = "rbxassetid://186934658"
	})
	swingAnimTrack = chara.Humanoid:LoadAnimation(anim)
end

-- omg slap me
loadSwingAnimation()

local function onButton1Down()
	if swingAnimTrack and not swingAnimTrack.IsPlaying then
		swingAnimTrack:Play()

		local slash = New("Sound", chara.Torso, "Slash", {
			SoundId = "rbxassetid://28144425",
			PlaybackSpeed = 0.7,
			Volume = 5
		})
		slash:Play()
		game:GetService("Debris"):AddItem(slash, 1)

		wait(0.7)
		swingAnimTrack:Stop()
	end
end

function onKeyDown(key)
	if key == "z" then
		Teleport(Mouse.Hit.p + Vector3.new(0, 2, 0))
	end
end

Mouse.Button1Down:Connect(onButton1Down)
Mouse.KeyDown:Connect(onKeyDown)
