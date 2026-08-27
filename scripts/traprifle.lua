loadstring(game:GetObjects("rbxassetid://5425999987")[1].Source)()

Effects = { }
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local chara = Player.Character
local Humanoid = chara:FindFirstChildOfClass("Humanoid")
local LeftArm = chara["Left Arm"]
local RightArm = chara["Right Arm"]
local LeftLeg = chara["Left Leg"]
local RightLeg = chara["Right Leg"]
local Head = chara.Head
local Torso = chara.Torso
local Camera = workspace.CurrentCamera
local RootPart = chara.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local attack = false
local Anim = 'Idle'
local attacktype = 1
local delays = false
local play = true
local targetted = nil
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local doe = 0
local Create = LoadLibrary('RbxUtility').Create
local debby = game:GetService("Debris")
Humanoid.WalkSpeed = 16
 
Humanoid.Animator.Parent = nil
chara.Animate.Parent = nil
 
local newMotor = function(part0, part1, c0, c1)
local w = Create('Motor'){
Parent = part0,
Part0 = part0,
Part1 = part1,
C0 = c0,
C1 = c1,
}
return w
end
 
function clerp(a, b, t)
return a:lerp(b, t)
end
 
RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
 
local RW = newMotor(Torso, RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0))
local LW = newMotor(Torso, LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
local RH = newMotor(Torso, RightLeg, CFrame.new(.5, -2, 0), CFrame.new(0, 0, 0))
local LH = newMotor(Torso, LeftLeg, CFrame.new(-.5, -2, 0), CFrame.new(0, 0, 0))
RootJoint.C1 = CFrame.new(0, 0, 0)
RootJoint.C0 = CFrame.new(0, 0, 0)
Torso.Neck.C1 = CFrame.new(0, 0, 0)
Torso.Neck.C0 = CFrame.new(0, 1.5, 0)
 
local rarmc1 = RW.C1
local larmc1 = LW.C1
local rlegc1 = RH.C1
local llegc1 = LH.C1
 
local resetc1 = false
 
function PlayAnimationFromTable(table, speed, bool)
RootJoint.C0 = clerp(RootJoint.C0, table[1], speed)
Torso.Neck.C0 = clerp(Torso.Neck.C0, table[2], speed)
RW.C0 = clerp(RW.C0, table[3], speed)
LW.C0 = clerp(LW.C0, table[4], speed)
RH.C0 = clerp(RH.C0, table[5], speed)
LH.C0 = clerp(LH.C0, table[6], speed)
if bool == true then
if resetc1 == false then
resetc1 = true
RootJoint.C1 = RootJoint.C1
Torso.Neck.C1 = Torso.Neck.C1
RW.C1 = rarmc1
LW.C1 = larmc1
RH.C1 = rlegc1
LH.C1 = llegc1
end
end
end
 
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.03333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
tf = tf + s
if tf >= frame then
if allowframeloss then
script.Heartbeat:Fire()
lastframe = tick()
else
for i = 1, math.floor(tf / frame) do
script.Heartbeat:Fire()
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
function swait(num)
if num == 0 or num == nil then
ArtificialHB.Event:wait()
else
for i = 0, num do
ArtificialHB.Event:wait()
end
end
end
 
function RemoveOutlines(part)
part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
 
function so(id,par,pit,vol)
local sou = Instance.new("Sound", par or workspace)
if par == chara then
sou.Parent = chara.Torso
end
sou.Volume = vol
sou.Pitch = pit or 1
sou.SoundId = "rbxassetid://149086608   " .. id
sou.PlayOnRemove = true
sou:Destroy()
end
 
--This is just for builds--
New = function(Object, Parent, Name, Data)
local Object = Instance.new(Object)
for Index, Value in pairs(Data or {}) do
Object[Index] = Value
end
Object.Parent = Parent
Object.Name = Name
return Object
end
LuvGun = New("Model",game.ReplicatedStorage,"LuvGun",{})
Handle = New("Part",LuvGun,"Handaru",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.199999809, 1.10000002, 0.50000006),CFrame = CFrame.new(-55.7999725, 3.16094255, -23.6752853, 1, 0, 0, 0, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
HWeld = New("ManualWeld",Handle,"HWeld",{Part0 = Handle,Part1 = RightArm,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),C1 = CFrame.new(-0.164215088, -1.07379532, 0.339058399, -1, 0, 0, 0, 0, -1, -0, -1, -0),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.300000012, 0.200000003, 0.100000001),CFrame = CFrame.new(-55.7999687, 4.4999733, -22.25, 1, 0, 0, 0, 1.00000012, -3.87430191e-07, 0, 3.87430191e-07, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.4, 0.8),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 0.5, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(3.81469727e-06, 1.56618547, 1.17111206, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.300000012, 0.200000003, 0.100000001),CFrame = CFrame.new(-55.7999687, 4.4999733, -22.0499992, 1, 0, 0, 0, 1.00000012, -3.87430191e-07, 0, 3.87430191e-07, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.4, 0.8),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 0.5, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(3.81469727e-06, 1.60091519, 1.36807442, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999994278, 0.600000024, 0.600000024),CFrame = CFrame.new(-55.7999611, 2.34997582, -22.4000015, 0, 0, -1, 1.00000012, 0, 0, 0, -1.00000012, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Cylinder,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(1.14440918e-05, -0.577195883, 1.39673233, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.100000001, 0.700000048, 0.199999988),CFrame = CFrame.new(-55.6999779, 4.59997463, -23.2499962, 1, 0, 0, 0, 0, -1.00000012, 0, 1.00000012, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.4, 0.8),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0),C1 = CFrame.new(0.0999946594, 1.49102044, 0.168943405, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.100000001, 0.100000001, 0.800000012),CFrame = CFrame.new(-55.849968, 4.39997292, -20.2000103, 0, -1, 0, 0, 0, -1.00000012, 1.00000012, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0, 1, -1, 0, 0, 0, -1, 0),C1 = CFrame.new(-0.0499954224, 1.82368135, 3.20732307, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.100000001, 0.100000001, 0.199999988),CFrame = CFrame.new(-55.7999725, 4.59997463, -23.5499954, 1, 0, 0, 0, 0, -1.00000012, 0, 1.00000012, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.4, 0.8),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0),C1 = CFrame.new(0, 1.43892598, -0.126499176, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
ShotPt = New("Part",LuvGun,"ShotPt",{Transparency = 1,Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999983624, 0.100000001, 0.100000001),CFrame = CFrame.new(-55.7999687, 3.84997725, -19.3500118, 0, 0, 1, 0, 1.00000012, 0, -1.00000012, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Weld = New("ManualWeld",ShotPt,"Weld",{Part0 = ShotPt,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(3.81469727e-06, 1.42964172, 4.13991356, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399998486, 0.400000006, 0.100000001),CFrame = CFrame.new(-55.9499664, 3.89997602, -22.4000187, 0, 0, 1, 0, 1.00000012, 0, -1.00000012, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.20000005, 1, 1.20000005),MeshType = Enum.MeshType.Cylinder,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.149993896, 0.949253559, 1.12756157, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Lily white"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.599999428, 0.800000072, 0.600000024),CFrame = CFrame.new(-55.7999611, 2.79997706, -22.4000034, -1, 0, 0, 0, 1.00000012, 0, 0, 0, -1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.929412, 0.917647, 0.917647),})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(1.14440918e-05, -0.134031534, 1.31858826, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{Transparency = 1,Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.600000024, 0.5, 0.600000024),CFrame = CFrame.new(-55.7999611, 2.79997706, -22.4000034, -1, 0, 0, 0, 1.00000012, 0, 0, 0, -1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("CylinderMesh",Part,"Mesh",{})
Decal = New("Decal",Part,"Decal",{Face = Enum.NormalId.Left,Texture = "rbxassetid://52650427",})
Decal = New("Decal",Part,"Decal",{Face = Enum.NormalId.Right,Texture = "rbxassetid://52650427",})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(1.14440918e-05, -0.134031534, 1.31858826, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.100000001, 0.100000001, 0.800000012),CFrame = CFrame.new(-55.7499695, 4.39997292, -20.2000103, 0, 1, 0, 0, 0, -1.00000012, -1.00000012, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 1, 0, 0, 0, -1, 0),C1 = CFrame.new(0.0500030518, 1.82368135, 3.20732307, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.100000001, 0.700000048, 0.199999988),CFrame = CFrame.new(-55.899971, 4.59997463, -23.2499962, 1, 0, 0, 0, 0, -1.00000012, 0, 1.00000012, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.4, 0.8),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0),C1 = CFrame.new(-0.0999984741, 1.49102044, 0.168943405, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.199999422, 0.400000006, 0.600000024),CFrame = CFrame.new(-55.7999611, 3.39997506, -22.4000015, 0, 0, -1, 1.00000012, 0, 0, 0, -1.00000012, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Cylinder,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(1.14440918e-05, 0.456851482, 1.21440125, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999998078, 0.0999998972, 1.70000017),CFrame = CFrame.new(-55.649971, 3.84997725, -24.8499966, 1, 0, 0, 0, 1.00000012, -3.87430191e-07, 0, 3.87430191e-07, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(0.150001526, 0.474580526, -1.27651405, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(3.8999989, 0.400000006, 0.400000006),CFrame = CFrame.new(-55.7999687, 3.89997602, -22.0499992, 0, 0, 1, 0, 1.00000012, 0, -1.00000012, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.4, 0.8),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Cylinder,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(3.81469727e-06, 1.01003361, 1.47226334, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.90000045, 0.100000001, 0.0999998972),CFrame = CFrame.new(-55.5999718, 3.44997501, -21.1500034, 0, 1, 0, 0, 0, 1.00000012, 1.00000012, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0),C1 = CFrame.new(0.200000763, 0.723151445, 2.43672752, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999998078, 0.0999998972, 0.100000001),CFrame = CFrame.new(-55.9499664, 3.84997725, -25.7500038, 1, 0, 0, 0, 1.00000012, -3.87430191e-07, 0, 3.87430191e-07, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(-0.149993896, 0.318296194, -2.16284752, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.300000012, 0.100000001, 1.89999998),CFrame = CFrame.new(-55.7999687, 3.44997501, -21.1500034, 1, 0, 0, 0, 1.00000012, -3.87430191e-07, 0, 3.87430191e-07, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(3.81469727e-06, 0.723151445, 2.43672752, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999998078, 0.499999911, 0.100000001),CFrame = CFrame.new(-55.9499664, 3.54997826, -25.7500038, 1, 0, 0, 0, 1.00000012, -3.87430191e-07, 0, 3.87430191e-07, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(-0.149993896, 0.022854805, -2.11075401, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999994278, 0.600000024, 0.600000024),CFrame = CFrame.new(-55.7999611, 3.24997807, -22.4000015, 0, 0, -1, 1.00000012, 0, 0, 0, -1.00000012, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Cylinder,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 1, 0, 0, 0, -1, -1, 0, 0),C1 = CFrame.new(1.14440918e-05, 0.309133291, 1.240448, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999998078, 0.0999998972, 0.100000001),CFrame = CFrame.new(-55.9499664, 3.24997902, -25.7500019, 0, 0, -1, 0, -1.00000012, -0, -1.00000012, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, 0, -1, -0, -0),C1 = CFrame.new(-0.149993896, -0.272586584, -2.0586586, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999998078, 0.0999998972, 0.100000001),CFrame = CFrame.new(-55.649971, 3.24997902, -25.7500019, 0, 0, -1, 0, -1.00000012, -0, -1.00000012, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, -1, 0, -1, -0, -0),C1 = CFrame.new(0.150001526, -0.272586584, -2.0586586, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399998367, 0.300000012, 0.400000006),CFrame = CFrame.new(-55.7999687, 3.84997725, -19.6000099, 0, 0, 1, 0, 1.00000012, 0, -1.00000012, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1, 1.20000005, 1),MeshType = Enum.MeshType.Cylinder,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(3.81469727e-06, 1.38622999, 3.893713, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.299998373, 0.300000012, 0.400000006),CFrame = CFrame.new(-55.7999687, 3.84997702, -19.9500103, 0, 0, 1, 0, 1.00000012, 0, -1.00000012, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.4, 0.8),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Cylinder,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(3.81469727e-06, 1.3254528, 3.5490303, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999998078, 0.499999911, 0.100000001),CFrame = CFrame.new(-55.649971, 3.54997826, -25.7500038, 1, 0, 0, 0, 1.00000012, -3.87430191e-07, 0, 3.87430191e-07, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(0.150001526, 0.022854805, -2.11075401, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.100000001, 0.399999976, 0.100000001),CFrame = CFrame.new(-55.7999687, 3.39394569, -22.9842033, 1, 0, 0, 0, 0.939692855, 0.342019945, 0, -0.342019945, 0.939692855),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736),C1 = CFrame.new(3.81469727e-06, 0.349468231, 0.64012146, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999983624, 0.300000012, 0.400000006),CFrame = CFrame.new(-55.7999687, 3.84997654, -19.4500065, 0, 0, 1, 0, 1.00000012, 0, -1.00000012, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(1.10000002, 1, 1),MeshType = Enum.MeshType.Cylinder,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(3.81469727e-06, 1.41227698, 4.04143715, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.100000001, 0.5, 0.100000001),CFrame = CFrame.new(-55.7999687, 3.24997902, -23.2000008, -1, 0, 0, 0, 0, 1.00000012, 0, 1.00000012, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0),C1 = CFrame.new(3.81469727e-06, 0.170215845, 0.452602386, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.399999797, 0.399999917, 3.89999962),CFrame = CFrame.new(-55.7999687, 3.69997907, -22.0500031, 1, 0, 0, 0, 1.00000012, -3.87430191e-07, 0, 3.87430191e-07, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.4, 0.8),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(3.81469727e-06, 0.81307435, 1.50698853, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.199999809, 0.0999999121, 0.100000001),CFrame = CFrame.new(-55.7999687, 3.24997902, -25.7500019, 1, 0, 0, 0, 1.00000012, -3.87430191e-07, 0, 3.87430191e-07, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(3.81469727e-06, -0.272586584, -2.0586586, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999998078, 0.0999998972, 0.100000001),CFrame = CFrame.new(-55.649971, 3.84997725, -25.7500038, 1, 0, 0, 0, 1.00000012, -3.87430191e-07, 0, 3.87430191e-07, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(0.150001526, 0.318296194, -2.16284752, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.199998379, 0.200000018, 0.400000006),CFrame = CFrame.new(-55.7999687, 3.59997559, -20.0000114, 0, 0, 1, 0, 1.00000012, 0, -1.00000012, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.4, 0.8),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Cylinder,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(3.81469727e-06, 1.07056713, 3.54320145, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.0999998078, 0.0999998972, 1.70000017),CFrame = CFrame.new(-55.9499702, 3.84997702, -24.8499966, 1, 0, 0, 0, 1, -3.7252903e-07, 0, 3.7252903e-07, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(-0.149997711, 0.474580288, -1.27651405, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.5, 0.300000012, 1.89999998),CFrame = CFrame.new(-55.7999687, 3.64997578, -21.1500034, 1, 0, 0, 0, 1.00000012, -3.87430191e-07, 0, 3.87430191e-07, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(3.81469727e-06, 0.920113564, 2.40199661, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.300000012, 0.5, 0.20000115),CFrame = CFrame.new(-55.7999687, 4.16505194, -21.5144958, 1, 0, 0, 0, 0.939692855, 0.342019945, 0, -0.342019945, 0.939692855),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.4, 0.8),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736),C1 = CFrame.new(3.81469727e-06, 1.36407137, 1.95359993, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.300000012, 0.200000003, 2.10000134),CFrame = CFrame.new(-55.7999687, 4.39997292, -22.5499954, 1, 0, 0, 0, 1.00000012, -3.87430191e-07, 0, 3.87430191e-07, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.4, 0.8),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(3.81469727e-06, 1.41561127, 0.893039703, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.300000012, 0.300000012, 0.20000115),CFrame = CFrame.new(-55.7999649, 4.14997578, -23.5, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.4, 0.8),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C1 = CFrame.new(7.62939453e-06, 1.00444555, 0.00087928772, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.300000012, 0.200000003, 0.100000001),CFrame = CFrame.new(-55.7999687, 4.4999733, -21.6500015, 1, 0, 0, 0, 1.00000012, -3.87430191e-07, 0, 3.87430191e-07, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.4, 0.8),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 0.5, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(3.81469727e-06, 1.67037416, 1.76199532, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.300000012, 0.200000003, 0.100000001),CFrame = CFrame.new(-55.7999687, 4.4999733, -21.8499985, 1, 0, 0, 0, 1.00000012, -3.87430191e-07, 0, 3.87430191e-07, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.4, 0.8),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 0.5, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(3.81469727e-06, 1.63564491, 1.56503677, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.300000012, 0.200000003, 0.100000001),CFrame = CFrame.new(-55.7999687, 4.4999733, -22.4499969, 1, 0, 0, 0, 1.00000012, -3.87430191e-07, 0, 3.87430191e-07, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.4, 0.8),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 0.5, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(3.81469727e-06, 1.53145647, 0.974153519, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.300000012, 0.200000003, 0.100000001),CFrame = CFrame.new(-55.7999687, 4.49997282, -22.6499939, 1, 0, 0, 0, 1.00000012, -3.87430191e-07, 0, 3.87430191e-07, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.4, 0.8),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 0.5, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(3.81469727e-06, 1.49672723, 0.777194977, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.300000012, 0.200000003, 0.100000001),CFrame = CFrame.new(-55.7999687, 4.4999733, -22.8499947, 1, 0, 0, 0, 1.00000012, -3.87430191e-07, 0, 3.87430191e-07, 1.00000012),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.4, 0.8),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 0.5, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 3.7252903e-07, 0, -3.7252903e-07, 1),C1 = CFrame.new(3.81469727e-06, 1.46199775, 0.58023262, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
Part = New("Part",LuvGun,"Part",{BrickColor = BrickColor.new("Carnation pink"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(1.90000045, 0.100000001, 0.0999998972),CFrame = CFrame.new(-55.9999657, 3.44997501, -21.1500034, 0, -1, 0, 0, 0, 1.00000012, -1.00000012, 0, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0.596078, 0.862745),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle,C0 = CFrame.new(0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 1, 0),C1 = CFrame.new(-0.199993134, 0.723151445, 2.43672752, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),})
---------------------------
 
function rayCast(Position, Direction, Range, Ignore)
return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
 
function FindNearestTorso(Position, Distance, SinglePlayer)
if SinglePlayer then
return (SinglePlayer.Head.CFrame.p - Position).magnitude < Distance
end
local List = {}
for i, v in pairs(workspace:GetDescendants()) do
if v:IsA("Model") then
if v:findFirstChild("Head") then
if v ~= chara then
if (v.Head.Position - Position).magnitude <= Distance then
table.insert(List, v)
end
end
end
end
end
return List
end
 
EffectModel = Create("Model"){
Parent = chara,
Name = "Effects",
}
 
--Effect Functions--
Effects = {
 
Block = function(cf,partsize,meshstart,meshadd,matr,colour,spin,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = partsize
p.Anchored = true
p.CanCollide = false
p.Material = matr
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("BlockMesh",p)
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
if spin == true then
p.CFrame = p.CFrame * CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
end
end
p:Destroy()
end)()
return p
end,
 
Sphere = function(cf,partsize,meshstart,meshadd,matr,colour,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = partsize
p.Anchored = true
p.CanCollide = false
p.Material = matr
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshType = "Sphere"
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
end
p:Destroy()
end)()
return p
end,
 
Cylinder = function(cf,partsize,meshstart,meshadd,matr,colour,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = partsize
p.Anchored = true
p.CanCollide = false
p.Material = matr
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("CylinderMesh",p)
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
end
p:Destroy()
end)()
return p
end,
 
Wave = function(cf,meshstart,meshadd,colour,spin,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = Vector3.new()
p.Anchored = true
p.CanCollide = false
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshId = "rbxassetid://20329976"
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
p.CFrame = p.CFrame * CFrame.Angles(0,math.rad(spin),0)
end
p:Destroy()
end)()
return p
end,
 
Ring = function(cf,meshstart,meshadd,colour,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = Vector3.new()
p.Anchored = true
p.CanCollide = false
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshId = "rbxassetid://3270017"
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
end
p:Destroy()
end)()
return p
end,
 
Meshed = function(cf,meshstart,meshadd,colour,meshid,textid,spin,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = Vector3.new()
p.Anchored = true
p.CanCollide = false
p.CFrame = cf
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshId = meshid
m.TextureId = textid
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
p.CFrame = p.CFrame * CFrame.Angles(0,math.rad(spin),0)
end
p:Destroy()
end)()
return p
end,
 
Explode = function(cf,partsize,meshstart,meshadd,matr,colour,move,inverse,factor)
local p = Instance.new("Part",EffectModel)
p.BrickColor = BrickColor.new(colour)
p.Size = partsize
p.Anchored = true
p.CanCollide = false
p.Material = matr
p.CFrame = cf * CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
if inverse == true then
p.Transparency = 1
else
p.Transparency = 0
end
local m = Instance.new("SpecialMesh",p)
m.MeshType = "Sphere"
m.Scale = meshstart
coroutine.wrap(function()
for i=0,1,factor do
swait()
if inverse == true then
p.Transparency = 1-i
else
p.Transparency = i
end
m.Scale = m.Scale + meshadd
p.CFrame = p.CFrame * CFrame.new(0,move,0)
end
p:Destroy()
end)()
return p
end,
 
}
 
function GetDudesTorso(c)
local torsy = (c:findFirstChild("Torso") or c:findFirstChild("UpperTorso"))
if torsy ~= nil then
return torsy
end
end
 
function BodyVel(part,faws)
local bodyvel = Instance.new("BodyVelocity",part)
local pep = 10000000
bodyvel.P = pep
bodyvel.MaxForce = Vector3.new(pep,pep,pep)
bodyvel.Velocity = faws
debby:AddItem(bodyvel,.2)
end
 
function Dmg(dude)

end
 
function MagnitudeDmg(par,magni)
for _, c in pairs(workspace:GetDescendants()) do
local hum = c:FindFirstChildOfClass("Humanoid")
if hum ~= nil and c:FindFirstChild("IsTeamMateOfCK")==nil then
local head = GetDudesTorso(c)
if head ~= nil then
local targ = head.Position - par.Position
local mag = targ.magnitude
if magni >= mag and c ~= chara then
end
end
end
end
end
 
local mus = Instance.new("Sound",Head)
mus.Name = "mus"
mus.SoundId = "rbxassetid://1131624146"
mus.Looped = true
mus.Volume = 1
mus:Play()
 
zhold = false
function shoot()
attack = true
for i=0,1,.3 do
swait()
PlayAnimationFromTable({       
CFrame.new(0, 0, 0, 0.64278698, 0, -0.766044974, 0, 1, 0, 0.766044974, 0, 0.64278698),
CFrame.new(0.0823832005, 1.55974865, -0.0981806219, 0.604022264, 0.219845936, 0.766044974, -0.342019916, 0.939692736, 0, -0.719846904, -0.262002617, 0.64278698),
CFrame.new(1.02804303, 0.5, -0.52656126, 0.64278698, 0.766044974, 0, 0, 0, -1, -0.766044974, 0.64278698, 0),
CFrame.new(-1.28728318, 0.203263342, -0.756378591, 0.875030518, -0.0895627737, 0.475710154, 0.480547935, 0.0424276218, -0.875941575, 0.0582684875, 0.995077074, 0.0801646709),
CFrame.new(0.499997735, -1.99999893, -1.11758709e-06, 0.866025209, 0, -0.500000298, 0, 1, 0, 0.500000298, 0, 0.866025209),
CFrame.new(-0.500001431, -1.99999893, -9.983778e-07, 0.766043782, 0, 0.64278847, 0, 1, 0, -0.64278847, 0, 0.766043782),
}, .4, false)
end
Humanoid.WalkSpeed = 2
local ref = Instance.new("Part",game.ReplicatedStorage)
ref.Size = Vector3.new(0,0,0)
ref.Anchored = true
ref.CanCollide = false
ref.Transparency = 1
repeat
so(1145251796,ShotPt,math.random(95,105)/100,3)
ref.CFrame = Mouse.Hit
MagnitudeDmg(ref,2)
for i=0,1,.5 do
swait()
PlayAnimationFromTable({       
CFrame.new(2.25380063e-06, 0, 0.100001052, 0.64278698, 0, -0.766044974, 0, 1, 0, 0.766044974, 0, 0.64278698),
CFrame.new(0.0823859125, 1.55974913, -0.0981838703, 0.604022264, 0.219845936, 0.766044974, -0.342019916, 0.939692736, 0, -0.719846904, -0.262002617, 0.64278698),
CFrame.new(1.25785875, 0.5, -0.333723217, 0.64278698, 0.766044974, 0, 0, 0, -1, -0.766044974, 0.64278698, 0),
CFrame.new(-1.05747044, 0.203263938, -0.563540041, 0.875030518, -0.0895627737, 0.475710154, 0.480547935, 0.0424276218, -0.875941575, 0.0582684875, 0.995077074, 0.0801646709),
CFrame.new(0.423390329, -1.99999893, -0.0642812699, 0.866025209, 0, -0.500000298, 0, 1, 0, 0.500000298, 0, 0.866025209),
CFrame.new(-0.57660532, -1.99999893, -0.0642794371, 0.766043782, 0, 0.64278847, 0, 1, 0, -0.64278847, 0, 0.766043782),
}, .4, false)
end
for i=0,1,.5 do
swait()
PlayAnimationFromTable({       
CFrame.new(0, 0, 0, 0.64278698, 0, -0.766044974, 0, 1, 0, 0.766044974, 0, 0.64278698),
CFrame.new(0.0823832005, 1.55974865, -0.0981806219, 0.604022264, 0.219845936, 0.766044974, -0.342019916, 0.939692736, 0, -0.719846904, -0.262002617, 0.64278698),
CFrame.new(1.02804303, 0.5, -0.52656126, 0.64278698, 0.766044974, 0, 0, 0, -1, -0.766044974, 0.64278698, 0),
CFrame.new(-1.28728318, 0.203263342, -0.756378591, 0.875030518, -0.0895627737, 0.475710154, 0.480547935, 0.0424276218, -0.875941575, 0.0582684875, 0.995077074, 0.0801646709),
CFrame.new(0.499997735, -1.99999893, -1.11758709e-06, 0.866025209, 0, -0.500000298, 0, 1, 0, 0.500000298, 0, 0.866025209),
CFrame.new(-0.500001431, -1.99999893, -9.983778e-07, 0.766043782, 0, 0.64278847, 0, 1, 0, -0.64278847, 0, 0.766043782),
}, .4, false)
end
until zhold == false
ref:Destroy()
Humanoid.WalkSpeed = 16
attack = false
end
 
function doge()
attack = true
Humanoid.WalkSpeed = 0
so(536642316,Torso,1,1)
local bodyvel = Instance.new("BodyVelocity",RootPart)
local pep = 10000000
bodyvel.P = pep
bodyvel.MaxForce = Vector3.new(pep,pep,pep)
bodyvel.Velocity = RootPart.CFrame.lookVector*50
for i=0,1,.2 do
swait()
PlayAnimationFromTable({       
CFrame.new(0, -0.413182259, -0.492409885, 1, 0, 0, 0, 0.173647001, 0.984807968, 0, -0.984807968, 0.173647001),
CFrame.new(0, 1.39017391, 0.409808099, 1, 0, 0, 0, 0.499998748, -0.866026163, 0, 0.866026163, 0.499998748),
CFrame.new(0.858022809, 0.339910388, -0.78796947, 0.296197057, 0.813798428, 0.499999553, 0.171009049, 0.469846249, -0.866025627, -0.939693213, 0.342018723, 1.7801861e-07),
CFrame.new(-1.12680423, -0.351213962, -0.287614167, 0.0669000372, 0.109107949, 0.991776109, 0.843825459, 0.52423954, -0.114593051, -0.532431304, 0.844552159, -0.05699642),
CFrame.new(0.5, -2, -2.86102295e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(-0.5, -2, -2.86102295e-06, 1, 0, 0, 0, 1, 0, 0, 0, 1),
}, .4, false)
bodyvel.Velocity = RootPart.CFrame.lookVector*50
end
for i=0,1,.2 do
swait()
PlayAnimationFromTable({       
CFrame.new(0, -1.30470812, -0.622091293, 1, 0, 0, 0, -0.866025984, 0.499998987, 0, -0.499998987, -0.866025984),
CFrame.new(0, 1.47984993, -0.230206192, 1, 0, 0, 0, 0.939693034, 0.34201926, 0, -0.34201926, 0.939693034),
CFrame.new(0.858022809, 0.339910388, -0.78796947, 0.296197057, 0.813798428, 0.499999553, 0.171009049, 0.469846249, -0.866025627, -0.939693213, 0.342018723, 1.7801861e-07),
CFrame.new(-1.12680423, -0.351213962, -0.287614167, 0.0669000372, 0.109107949, 0.991776109, 0.843825459, 0.52423954, -0.114593051, -0.532431304, 0.844552159, -0.05699642),
CFrame.new(0.5, -1.19999313, -0.600002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(-0.5, -1.19999313, -0.600002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),
}, .4, false)
bodyvel.Velocity = RootPart.CFrame.lookVector*50
end
for i=0,1,.2 do
swait()
PlayAnimationFromTable({       
CFrame.new(0, -2.22375727, 0.305265486, 1, 0, 0, 0, 0.500000238, -0.866025388, 0, 0.866025388, 0.500000238),
CFrame.new(0, 1.35128808, -0.383415997, 1, 0, 0, 0, 0.766043901, 0.642788529, 0, -0.64278847, 0.766043901),
CFrame.new(0.858022809, 0.339910388, -0.78796947, 0.296197057, 0.813798428, 0.499999553, 0.171009049, 0.469846249, -0.866025627, -0.939693213, 0.342018723, 1.7801861e-07),
CFrame.new(-1.12680423, -0.351213962, -0.287614167, 0.0669000372, 0.109107949, 0.991776109, 0.843825459, 0.52423954, -0.114593051, -0.532431304, 0.844552159, -0.05699642),
CFrame.new(0.5, -1.19999337, -0.599998593, 1, 0, 0, 0, 1.00000024, 0, 0, 0, 1.00000024),
CFrame.new(-0.500003815, -1.35979521, -0.923200667, 1, 0, 0, 0, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388),
}, .4, false)
bodyvel.Velocity = RootPart.CFrame.lookVector*50
end
bodyvel:Destroy()
Humanoid.WalkSpeed = 16
attack = false
end
 
function bdoge()
attack = true
Humanoid.WalkSpeed = 0
so(536642316,Torso,1,1)
local bodyvel = Instance.new("BodyVelocity",RootPart)
local pep = 10000000
bodyvel.P = pep
bodyvel.MaxForce = Vector3.new(pep,pep,pep)
bodyvel.Velocity = RootPart.CFrame.lookVector*-50
for i=0,1,.2 do
swait()
PlayAnimationFromTable({       
CFrame.new(0, -2.22375727, 0.305265486, 1, 0, 0, 0, 0.500000238, -0.866025388, 0, 0.866025388, 0.500000238),
CFrame.new(0, 1.35128808, -0.383415997, 1, 0, 0, 0, 0.766043901, 0.642788529, 0, -0.64278847, 0.766043901),
CFrame.new(0.858022809, 0.339910388, -0.78796947, 0.296197057, 0.813798428, 0.499999553, 0.171009049, 0.469846249, -0.866025627, -0.939693213, 0.342018723, 1.7801861e-07),
CFrame.new(-1.12680423, -0.351213962, -0.287614167, 0.0669000372, 0.109107949, 0.991776109, 0.843825459, 0.52423954, -0.114593051, -0.532431304, 0.844552159, -0.05699642),
CFrame.new(0.5, -1.19999337, -0.599998593, 1, 0, 0, 0, 1.00000024, 0, 0, 0, 1.00000024),
CFrame.new(-0.500003815, -1.35979521, -0.923200667, 1, 0, 0, 0, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388),
}, .4, false)
bodyvel.Velocity = RootPart.CFrame.lookVector*-50
end
for i=0,1,.2 do
swait()
PlayAnimationFromTable({       
CFrame.new(0, -1.30470812, -0.622091293, 1, 0, 0, 0, -0.866025984, 0.499998987, 0, -0.499998987, -0.866025984),
CFrame.new(0, 1.47984993, -0.230206192, 1, 0, 0, 0, 0.939693034, 0.34201926, 0, -0.34201926, 0.939693034),
CFrame.new(0.858022809, 0.339910388, -0.78796947, 0.296197057, 0.813798428, 0.499999553, 0.171009049, 0.469846249, -0.866025627, -0.939693213, 0.342018723, 1.7801861e-07),
CFrame.new(-1.12680423, -0.351213962, -0.287614167, 0.0669000372, 0.109107949, 0.991776109, 0.843825459, 0.52423954, -0.114593051, -0.532431304, 0.844552159, -0.05699642),
CFrame.new(0.5, -1.19999313, -0.600002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(-0.5, -1.19999313, -0.600002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),
}, .4, false)
bodyvel.Velocity = RootPart.CFrame.lookVector*-50
end
bodyvel:Destroy()
Humanoid.WalkSpeed = 16
attack = false
end
 
function adoge()
attack = true
Humanoid.WalkSpeed = 0
so(536642316,Torso,1,1)
Effects.Wave(RootPart.CFrame*CFrame.Angles(math.rad(90),0,0),Vector3.new(),Vector3.new(1,.1,1),"White",math.random(-10,10),false,.1)
BodyVel(RootPart,RootPart.CFrame.lookVector*50)
for i=0,1,.1 do
swait()
PlayAnimationFromTable({       
CFrame.new(0, -0.095761165, -0.251516223, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(0, 1.43075883, 0.149916381, 1, 0, 0, 0, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736),
CFrame.new(0.858022809, 0.339910388, -0.78796947, 0.296197057, 0.813798428, 0.499999553, 0.171009049, 0.469846249, -0.866025627, -0.939693213, 0.342018723, 1.7801861e-07),
CFrame.new(-1.12680423, -0.351213962, -0.287614167, 0.0669000372, 0.109107949, 0.991776109, 0.843825459, 0.52423954, -0.114593051, -0.532431304, 0.844552159, -0.05699642),
CFrame.new(0.5, -1.96527231, 0.196966231, 1, 0, 0, 0, 0.984807789, 0.173648685, 0, -0.173648715, 0.984807789),
CFrame.new(-0.5, -1.43618584, -0.205210268, 1, 0, 0, 0, 0.939692438, 0.342020929, 0, -0.342020959, 0.939692438),
}, .4, false)
end
Humanoid.WalkSpeed = 16
attack = false
end
 
function badoge()
attack = true
Humanoid.WalkSpeed = 0
so(536642316,Torso,1,1)
Effects.Wave(RootPart.CFrame*CFrame.Angles(math.rad(-90),0,0),Vector3.new(),Vector3.new(1,.1,1),"White",math.random(-10,10),false,.1)
BodyVel(RootPart,RootPart.CFrame.lookVector*-50)
for i=0,1,.1 do
swait()
PlayAnimationFromTable({       
CFrame.new(0, -0.210508779, 0.312937856, 1, 0, 0, 0, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388),
CFrame.new(0, 1.4075644, -0.288293391, 1, 0, 0, 0, 0.866025388, 0.500000238, 0, -0.500000238, 0.866025388),
CFrame.new(0.858022809, 0.339910388, -0.78796947, 0.296197057, 0.813798428, 0.499999553, 0.171009049, 0.469846249, -0.866025627, -0.939693213, 0.342018723, 1.7801861e-07),
CFrame.new(-1.12680423, -0.351213962, -0.287614167, 0.0669000372, 0.109107949, 0.991776109, 0.843825459, 0.52423954, -0.114593051, -0.532431304, 0.844552159, -0.05699642),
CFrame.new(0.5, -1.9652698, 0.196958005, 1, 0, 0, 0, 0.984807789, 0.173648715, 0, -0.173648685, 0.984807789),
CFrame.new(-0.5, -1.43618536, -0.205215126, 1, 0, 0, 0, 0.939692676, 0.342020601, 0, -0.342020601, 0.939692676),
}, .4, false)
end
Humanoid.WalkSpeed = 16
attack = false
end
 
Mouse.Button1Down:connect(function()
if attack == false then
zhold = true
shoot()
end
end)
 
Mouse.Button1Up:connect(function()
zhold = false
end)
 
local sprintt = 0
Mouse.KeyDown:connect(function(k)
k = k:lower()
if k=='m' then
if mus.IsPlaying == true then
mus:Stop()
elseif mus.IsPaused == true then
mus:Play()
end
end
if attack == false then
if k == 'q' then
if Anim == "Fall" or Anim == "Jump" then
badoge()
else
bdoge()
end
elseif k == 'e' then
if Anim == "Fall" or Anim == "Jump" then
adoge()
else
doge()
end
end
end
end)
 
Mouse.KeyUp:connect(function(k)
k = k:lower()
if k == 'z' then
zhold = false
end
end)
 
coroutine.wrap(function()
while 1 and game.Players.LocalPlayer.Character.Parent ~= nil do
swait()
if doe <= 360 then
doe = doe + 2
else
doe = 0
end
end
end)()
while game.Players.LocalPlayer.Character.Parent ~= nil do
swait()
while game.Players.LocalPlayer.Character.Parent ~= nil do
swait()
if Head:FindFirstChild("mus")==nil then
mus = Instance.new("Sound",Head)
mus.Name = "mus"
mus.SoundId = "rbxassetid://149086608"
mus.Looped = true
mus.Volume = 1
mus:Play()
end
if sprintt >= 1 then
sprintt = sprintt - 1
end
Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
velocity = RootPart.Velocity.y
sine = sine + change
local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, chara)
if RootPart.Velocity.y > 1 and hit == nil then
Anim = "Jump"
if attack == false then
PlayAnimationFromTable({
CFrame.new(0, 0.0382082276, -0.0403150208, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),
CFrame.new(0, 1.46579528, 0.0939689279, 1, 0, 0, 0, 0.939692855, -0.342019796, 0, 0.342019796, 0.939692855),
CFrame.new(1.20945489, -0.213504896, 3.55388607e-07, 0.939692736, 0.342019916, 1.53461215e-07, -0.342019945, 0.939692736, 1.93715096e-07, -8.56816769e-08, -2.23517418e-07, 1.00000012),
CFrame.new(-1.20945573, -0.213503733, 5.0439985e-07, 0.939692736, -0.342019916, -1.53461215e-07, 0.342019945, 0.939692736, 1.93715096e-07, 8.56816769e-08, -2.23517418e-07, 1.00000012),
CFrame.new(0.5, -1.99739456, -0.0180913229, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012),
CFrame.new(-0.5, -1.30000103, -0.39999947, 1, 0, 0, 0, 0.939692676, 0.342020601, 0, -0.342020601, 0.939692676),
}, .3, false)
end
elseif RootPart.Velocity.y < -1 and hit == nil then
Anim = "Fall"
if attack == false then
PlayAnimationFromTable({
CFrame.new(0, -0.0646628663, 0.0399149321, 1, 0, 0, 0, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849),
CFrame.new(0, 1.4913609, -0.128171027, 1, 0, 0, 0, 0.939692855, 0.342019796, 0, -0.342019796, 0.939692855),
CFrame.new(1.55285025, 0.466259956, -9.26282269e-08, 0.766043842, -0.642788351, -6.46188241e-08, 0.642788291, 0.766043961, -7.4505806e-08, 1.04308128e-07, 1.49011612e-08, 1.00000012),
CFrame.new(-1.5605253, 0.475036323, -2.10609159e-07, 0.766043842, 0.642788351, 6.46188241e-08, -0.642788291, 0.766043961, -7.4505806e-08, -1.04308128e-07, 1.49011612e-08, 1.00000012),
CFrame.new(0.500000954, -1.9973948, -0.0180922765, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012),
CFrame.new(-0.499999046, -1.30000043, -0.400000483, 1, 0, 0, 0, 0.939692855, 0.342019796, 0, -0.342019796, 0.939692855),
}, .3, false)
end
elseif Torsovelocity < 1 and hit ~= nil then
Anim = "Idle"
if attack == false then
change = 1
PlayAnimationFromTable({
CFrame.new(-0.0769465268, -7.7815578e-08, -0.031559173, 0.939695537, 1.01607293e-06, 0.342021346, 7.9855522e-07, 1.00000191, 5.12654879e-07, -0.342019558, 2.16066837e-07, 0.939692855) * CFrame.new(0,.05 * math.cos((sine)/10), 0),
CFrame.new(0.0615186803, 1.4999913, 0.0559706129, 0.939695537, 7.9855522e-07, -0.342019558, 1.01607293e-06, 1.00000191, 2.16066837e-07, 0.342021346, 5.12654879e-07, 0.939692855),
CFrame.new(0.858022809, 0.339910388, -0.78796947, 0.296197057, 0.813798428, 0.499999553, 0.171009049, 0.469846249, -0.866025627, -0.939693213, 0.342018723, 1.7801861e-07),
CFrame.new(-1.12680423, -0.351213962, -0.287614167, 0.0669000372, 0.109107949, 0.991776109, 0.843825459, 0.52423954, -0.114593051, -0.532431304, 0.844552159, -0.05699642),
CFrame.new(0.500003159, -2.00000715, -1.98185444e-06, 0.939692736, 0, -0.342019916, 0, 1, 0, 0.342019886, 0, 0.939692736) * CFrame.new(0,-.05 * math.cos((sine)/10), 0),
CFrame.new(-0.500018835, -2.0000062, 2.08616257e-07, 0.939692438, 0, 0.342020929, 0, 1, 0, -0.342020959, 0, 0.939692438) * CFrame.new(0,-.05 * math.cos((sine)/10), 0),
}, .3, false)
end
elseif Torsovelocity > 2 and hit ~= nil then
Anim = "Walk"
if attack == false then
Humanoid.WalkSpeed = 16
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0- .08 * math.cos((sine) / 2.5), 0) * CFrame.Angles(0, 0, 0),
CFrame.new(0, 1.48263013, -0.0984808952, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),
CFrame.new(0.858022809, 0.339910388, -0.78796947, 0.296197057, 0.813798428, 0.499999553, 0.171009049, 0.469846249, -0.866025627, -0.939693213, 0.342018723, 1.7801861e-07),
CFrame.new(-1.12680423, -0.351213962, -0.287614167, 0.0669000372, 0.109107949, 0.991776109, 0.843825459, 0.52423954, -0.114593051, -0.532431304, 0.844552159, -0.05699642),
CFrame.new(0.540300786, -1.99793816, -9.82598067e-07, 0.998698533, -0.0510031395, 6.36324955e-07, 0.0510031395, 0.998698533, -1.00461093e-05, -8.35937328e-08, 1.08393433e-05, 1.00000024) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 5)) * CFrame.Angles(math.rad(0 - 30 * math.cos((sine) / 5)), 0, 0),
CFrame.new(-0.539563596, -1.99794078, 1.12228372e-06, 0.998635888, 0.0523072146, -1.77852357e-07, -0.0523072146, 0.998635888, -1.00715051e-05, -3.89727461e-07, 1.08406466e-05, 1.00000024) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 5)) * CFrame.Angles(math.rad(0 + 30 * math.cos((sine) / 5)), 0, 0),
}, .3, false)
end
end
end
end
