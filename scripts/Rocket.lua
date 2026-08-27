local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local Mouse = Player:GetMouse()

local RootPart = Character:WaitForChild("HumanoidRootPart")
local Torso = Character:WaitForChild("Torso")
local Head = Character:WaitForChild("Head")
local RightArm = Character:WaitForChild("Right Arm")
local LeftArm = Character:WaitForChild("Left Arm")
local RightLeg = Character:WaitForChild("Right Leg")
local LeftLeg = Character:WaitForChild("Left Leg")

local RootJoint = RootPart:FindFirstChild("RootJoint") or RootPart:FindFirstChild("Root")
local Neck = Torso:FindFirstChild("Neck")
local RightShoulder = Torso:FindFirstChild("Right Shoulder")
local LeftShoulder = Torso:FindFirstChild("Left Shoulder")
local RightHip = Torso:FindFirstChild("Right Hip")
local LeftHip = Torso:FindFirstChild("Left Hip")

if not RootJoint or not Neck or not RightShoulder or not LeftShoulder or not RightHip or not LeftHip then
    warn("Missing R6 joints. Animations may not work.")
end

local IT = Instance.new
local CF = CFrame.new
local VT = Vector3.new
local RAD = math.rad
local C3 = Color3.new
local UD2 = UDim2.new
local BRICKC = BrickColor.new
local ANGLES = CFrame.Angles
local COS = math.cos
local ACOS = math.acos
local SIN = math.sin
local MRANDOM = math.random

local Animation_Speed = 3
local Frame_Speed = 1 / 60
local Speed = 16
local SINE = 0
local CHANGE = 2 / Animation_Speed
local ATTACK = false
local Rooted = false
local Disable_Jump = false

local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))

local ArtificialHB = Instance.new("BindableEvent")
ArtificialHB.Name = "ArtificialHB"
local frame = Frame_Speed
local tf = 0
local allowframeloss = false
local tossremainder = false
local lastframe = tick()
ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
        if allowframeloss then
            ArtificialHB:Fire()
            lastframe = tick()
        else
            for i = 1, math.floor(tf / frame) do
                ArtificialHB:Fire()
            end
            lastframe = tick()
        end
        if tossremainder then
            tf = 0
        else
            tf = tf - frame * math.floor(tf / frame)
        end
    end
end)

function Swait(NUMBER)
    if NUMBER == 0 or NUMBER == nil then
        ArtificialHB.Event:wait()
    else
        for i = 1, NUMBER do
            ArtificialHB.Event:wait()
        end
    end
end

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
    return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function CastProperRay(StartPos, EndPos, Distance, Ignore)
    local DIRECTION = CF(StartPos, EndPos).lookVector
    return Raycast(StartPos, DIRECTION, Distance, Ignore)
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
    local NEWPART = IT("Part")
    NEWPART.formFactor = FORMFACTOR
    NEWPART.Reflectance = REFLECTANCE
    NEWPART.Transparency = TRANSPARENCY
    NEWPART.CanCollide = false
    NEWPART.Locked = true
    NEWPART.Anchored = true
    if ANCHOR == false then
        NEWPART.Anchored = false
    end
    NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
    NEWPART.Name = NAME
    NEWPART.Size = SIZE
    NEWPART.Position = Torso.Position
    NEWPART.Material = MATERIAL
    NEWPART:BreakJoints()
    NEWPART.Parent = PARENT
    return NEWPART
end

function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
    local NEWSOUND = IT("Sound")
    NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
    NEWSOUND.Volume = VOLUME
    NEWSOUND.Pitch = PITCH
    NEWSOUND.Looped = DOESLOOP
    NEWSOUND.Parent = PARENT
    NEWSOUND:Play()
    return NEWSOUND
end

function Clerp(a, b, t)
    local function QuaternionFromCFrame(cf)
        local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
        local trace = m00 + m11 + m22
        if trace > 0 then
            local s = math.sqrt(1 + trace)
            local recip = 0.5 / s
            return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
        else
            local i = 0
            if m11 > m00 then i = 1 end
            if m22 > (i == 0 and m00 or m11) then i = 2 end
            if i == 0 then
                local s = math.sqrt(m00 - m11 - m22 + 1)
                local recip = 0.5 / s
                return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
            elseif i == 1 then
                local s = math.sqrt(m11 - m22 - m00 + 1)
                local recip = 0.5 / s
                return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
            elseif i == 2 then
                local s = math.sqrt(m22 - m00 - m11 + 1)
                local recip = 0.5 / s
                return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
            end
        end
    end

    local function QuaternionToCFrame(px, py, pz, x, y, z, w)
        local xs, ys, zs = x + x, y + y, z + z
        local wx, wy, wz = w * xs, w * ys, w * zs
        local xx = x * xs
        local xy = x * ys
        local xz = x * zs
        local yy = y * ys
        local yz = y * zs
        local zz = z * zs
        return CFrame.new(px, py, pz,
            1 - (yy + zz), xy - wz, xz + wy,
            xy + wz, 1 - (xx + zz), yz - wx,
            xz - wy, yz + wx, 1 - (xx + yy))
    end

    local function QuaternionSlerp(a, b, t)
        local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
        local startInterp, finishInterp;
        if cosTheta >= 0.0001 then
            if (1 - cosTheta) > 0.0001 then
                local theta = ACOS(cosTheta)
                local invSinTheta = 1 / SIN(theta)
                startInterp = SIN((1 - t) * theta) * invSinTheta
                finishInterp = SIN(t * theta) * invSinTheta
            else
                startInterp = 1 - t
                finishInterp = t
            end
        else
            if (1 + cosTheta) > 0.0001 then
                local theta = ACOS(-cosTheta)
                local invSinTheta = 1 / SIN(theta)
                startInterp = SIN((t - 1) * theta) * invSinTheta
                finishInterp = SIN(t * theta) * invSinTheta
            else
                startInterp = t - 1
                finishInterp = t
            end
        end
        return a[1] * startInterp + b[1] * finishInterp,
               a[2] * startInterp + b[2] * finishInterp,
               a[3] * startInterp + b[3] * finishInterp,
               a[4] * startInterp + b[4] * finishInterp
    end

    local qa = {QuaternionFromCFrame(a)}
    local qb = {QuaternionFromCFrame(b)}
    local ax, ay, az = a.x, a.y, a.z
    local bx, by, bz = b.x, b.y, b.z
    local _t = 1 - t
    return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz,
        QuaternionSlerp(qa, qb, t))
end

function Chatter(Text, Timer)
    local chat = coroutine.wrap(function()
        if Character:FindFirstChild("SpeechBoard") then
            Character:FindFirstChild("SpeechBoard"):Destroy()
        end
        local naeeym2 = IT("BillboardGui", Character)
        naeeym2.Size = UD2(0, 100, 0, 40)
        naeeym2.StudsOffset = VT(0, 1, 0)
        naeeym2.Adornee = Head
        naeeym2.Name = "SpeechBoard"
        naeeym2.AlwaysOnTop = true
        local tecks2 = IT("TextLabel", naeeym2)
        tecks2.BackgroundTransparency = 1
        tecks2.BorderSizePixel = 0
        tecks2.Text = ""
        tecks2.Font = "Bodoni"
        tecks2.TextSize = 26
        tecks2.TextStrokeTransparency = 0
        tecks2.TextColor3 = C3(1,1,1)
        tecks2.TextStrokeColor3 = C3(0,0,0)
        tecks2.Size = UDim2.new(1, 0, 0.5, 0)
        local FINISHED = false
        coroutine.resume(coroutine.create(function()
            for i = 1, string.len(Text) do
                if naeeym2.Parent ~= Character then
                    FINISHED = true
                end
                tecks2.Text = string.sub(Text, 1, i)
                Swait(Timer)
            end
            FINISHED = true
        end))
        repeat wait() until FINISHED == true
        wait(1)
        naeeym2.Name = "FadingDialogue"
        for i = 1, 45 do
            Swait()
            naeeym2.StudsOffset = naeeym2.StudsOffset + VT(0, (2 - 0.044444444444444446 * i) / 45, 0)
            tecks2.TextTransparency = tecks2.TextTransparency + 0.022222222222222223
            tecks2.TextStrokeTransparency = tecks2.TextTransparency
        end
        naeeym2:Destroy()
    end)
    chat()
end

local SONG = 1080815841
local sick = IT("Sound", Torso)
sick.Looped = true
sick.Volume = 3
sick.Pitch = 1

function changesong()
    local songs = {1080815841, 1059884825, 2923360536, 1286068050}
    for i, v in ipairs(songs) do
        if SONG == v then
            SONG = songs[i % #songs + 1]
            break
        end
    end
end

function laser()
    if ATTACK then return end
    ATTACK = true
    Rooted = false

    local GYRO = IT("BodyGyro", RootPart)
    GYRO.D = 175
    GYRO.P = 20000
    GYRO.MaxTorque = VT(0, 40000, 0)
    GYRO.cframe = CF(RootPart.Position, Mouse.Hit.p)

    for i = 0, 0.6, 0.1 / Animation_Speed do
        Swait()
        local Alpha = .3
        GYRO.cframe = CF(RootPart.Position, Mouse.Hit.p)
        RootJoint.C0 = RootJoint.C0:lerp(CF(0.1, 0 + 0.07 * COS(SINE/25), 0) * ANGLES(RAD(-90), RAD(0), RAD(-152.3)), Alpha)
        LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-0.6, 0.7, 0.5) * ANGLES(RAD(90), RAD(-46.3), RAD(90)), Alpha)
        RightShoulder.C0 = RightShoulder.C0:lerp(CF(0.8, 0.3, -0.4) * ANGLES(RAD(-5.8), RAD(65.6), RAD(96.8)), Alpha)
        Neck.C0 = Neck.C0:lerp(CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(152.3)), Alpha)
        LeftHip.C0 = LeftHip.C0:lerp(CF(-1, -1 - 0.07 * COS(SINE/25), 0.1) * ANGLES(RAD(0), RAD(-75.2), RAD(0)), Alpha)
        RightHip.C0 = RightHip.C0:lerp(CF(1, -1 - 0.07 * COS(SINE/25), -0.2) * ANGLES(RAD(0), RAD(90), RAD(0)), Alpha)
    end

    local soundPart = CreatePart(3, workspace, "Neon", 0, 1, "Really black", "SoundSource", VT(0.2, 0.2, 0.2), true)
    soundPart.CFrame = RightArm.CFrame * CF(0, -0.5, -1.5)
    CreateSound(1336753645, soundPart, 7, 1, false)

    for i = 0, 0.2, 0.1 / Animation_Speed do
        Swait()
        local Alpha = .3
        RootJoint.C0 = RootJoint.C0:lerp(CF(0.1, 0 + 0.07 * COS(SINE/25), 0) * ANGLES(RAD(-90), RAD(0), RAD(-152.3)), Alpha)
        LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-0.6, 0.7, 0.5) * ANGLES(RAD(90), RAD(-46.3), RAD(90)), Alpha)
        RightShoulder.C0 = RightShoulder.C0:lerp(CF(0.8, 0.3, -0.4) * ANGLES(RAD(-5.8), RAD(65.6), RAD(136.8)), Alpha)
        Neck.C0 = Neck.C0:lerp(CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(152.3)), Alpha)
        LeftHip.C0 = LeftHip.C0:lerp(CF(-1, -1 - 0.07 * COS(SINE/25), 0.1) * ANGLES(RAD(0), RAD(-75.2), RAD(0)), Alpha)
        RightHip.C0 = RightHip.C0:lerp(CF(1, -1 - 0.07 * COS(SINE/25), -0.2) * ANGLES(RAD(0), RAD(90), RAD(0)), Alpha)
    end

    GYRO:Destroy()
    soundPart:Destroy()
    ATTACK = false
    Rooted = false
end

function KeyDown(Key)
    if Key == "]" then
        sick.SoundId = "rbxassetid://"..SONG
        sick:Play()
    end
    if Key == "n" then
        changesong()
        sick.SoundId = "rbxassetid://"..SONG
    end
end

function KeyUp(Key) end
function MouseDown(Mouse)
    if not ATTACK then
        laser()
    end
end
function MouseUp(Mouse) end

Mouse.KeyDown:connect(KeyDown)
Mouse.KeyUp:connect(KeyUp)
Mouse.Button1Down:connect(MouseDown)
Mouse.Button1Up:connect(MouseUp)

function unanchor()
    for _, c in pairs(Character:GetChildren()) do
        if c:IsA("BasePart") and c ~= RootPart then
            c.Anchored = false
        end
    end
    RootPart.Anchored = false
end

local ANIMATE = Character:FindFirstChild("Animate")
if ANIMATE then ANIMATE.Parent = nil end
local animator = Humanoid:FindFirstChild("Animator")
if animator then animator:Destroy() end

Humanoid.Changed:connect(function(prop)
    if prop == "Jump" and Disable_Jump then
        Humanoid.Jump = false
    end
end)

while true do
    Swait()
    SINE = SINE + CHANGE * 2

    local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
    local TORSOVERTICALVELOCITY = RootPart.Velocity.y
    local HITFLOOR, HITPOS, NORMAL = Raycast(RootPart.Position,
        (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector,
        4 + Humanoid.HipHeight, Character)

    local WALKSPEEDVALUE = 9 / (Humanoid.WalkSpeed / 16)

    if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
        if not ATTACK then
            RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-5), RAD(0), RAD(0)), 1 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(25 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35), RAD(0), RAD(-25 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.4, -0.6) * ANGLES(RAD(1), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-85), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
        end
    elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
        if not ATTACK then
            RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
            Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
            RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(45 + 10 * COS(SINE / 12))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
            LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(35 - 4 * COS(SINE / 6)), RAD(0), RAD(-45 - 10 * COS(SINE / 12))) * LEFTSHOULDERC0, 1 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -0.7) * ANGLES(RAD(-25 + 5 * SIN(SINE / 12)), RAD(90), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.3) * ANGLES(RAD(-10), RAD(-80), RAD(0)) * ANGLES(RAD(-1 * SIN(SINE / 6)), RAD(0), RAD(0)), 1 / Animation_Speed)
        end
    elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
        if not ATTACK then
            local Alpha = .1
            RootJoint.C0 = RootJoint.C0:lerp(CF(0, 0 + 0.07 * COS(SINE/12), 0) * ANGLES(RAD(-90), RAD(0), RAD(-180)), Alpha)
            LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-0.6, 0.7 + 0.1 * SIN(SINE/12), 0.5) * ANGLES(RAD(90), RAD(-46.3), RAD(90)), Alpha)
            RightShoulder.C0 = RightShoulder.C0:lerp(CF(1, 0.7 + 0.05 * SIN(SINE/12), 0) * ANGLES(RAD(-179.3), RAD(90), RAD(0)), Alpha)
            Neck.C0 = Neck.C0:lerp(CF(0, 1, 0) * ANGLES(RAD(-90 + 5 * SIN(SINE/12)), RAD(0), RAD(-180)), Alpha)
            LeftHip.C0 = LeftHip.C0:lerp(CF(-1, -1 - 0.07 * COS(SINE/12), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)), Alpha)
            RightHip.C0 = RightHip.C0:lerp(CF(1, -1 - 0.07 * COS(SINE/12), -0.1) * ANGLES(RAD(0), RAD(90), RAD(0)), Alpha)
        end
    elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
        if not ATTACK then
            local Alpha = .1
            RootJoint.C0 = RootJoint.C0:lerp(CF(0, 0 - 0.1 * COS(SINE/WALKSPEEDVALUE), -0.3 - 0.15*COS(SINE/WALKSPEEDVALUE)) * ANGLES(RAD(-100), RAD(0), RAD(-180 - 0.75 * COS(SINE/WALKSPEEDVALUE))), Alpha)
            LeftShoulder.C0 = LeftShoulder.C0:lerp(CF(-0.6, 0.7 + 0.1 * SIN(SINE/12), 0.5) * ANGLES(RAD(90), RAD(-46.3), RAD(90)), Alpha)
            RightShoulder.C0 = RightShoulder.C0:lerp(CF(1, 0.7 + 0.05 * SIN(SINE/12), 0) * ANGLES(RAD(-179.3), RAD(90), RAD(0)), Alpha)
            Neck.C0 = Neck.C0:lerp(CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(-180)), Alpha)
            LeftHip.C0 = LeftHip.C0:lerp(CF(-1, -0.8 - 0.25 * COS(SINE/WALKSPEEDVALUE), 0.4 * SIN(SINE/WALKSPEEDVALUE)) * ANGLES(RAD(-10 - 22.5*SIN(SINE/WALKSPEEDVALUE)), RAD(-90), RAD(0)) * ANGLES(RAD(0 + 2 * COS(SINE/WALKSPEEDVALUE)), RAD(0), RAD(0)), Alpha)
            RightHip.C0 = RightHip.C0:lerp(CF(1, -0.8 + 0.25 * COS(SINE/WALKSPEEDVALUE), -0.4 * SIN(SINE/WALKSPEEDVALUE)) * ANGLES(RAD(-10 + 22.5*SIN(SINE/WALKSPEEDVALUE)), RAD(90), RAD(0)) * ANGLES(RAD(0 - 2 * COS(SINE/WALKSPEEDVALUE)), RAD(0), RAD(0)), Alpha)
        end
    end

    unanchor()
    Humanoid.MaxHealth = 1e4
    Humanoid.Health = 1e4
    Humanoid.WalkSpeed = Speed
    Disable_Jump = false

    if sick.Playing then
        sick.SoundId = "rbxassetid://"..SONG
    end
end
