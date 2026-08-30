function clerp(c1,c2,al)
    local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
    local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
    for i,v in pairs(com1) do 
        com1[i] = v+(com2[i]-v)*al
    end
    return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

plr = game:service'Players'.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
anim = char:findFirstChild("Animate")

do
    local function rec(x)
        for i,v in pairs(x:children()) do
            if v:IsA'Animation' then
                v.AnimationId = 'rbxassetid://28159255'
            end
            rec(v)
        end
    end
    rec(anim)
end

humanoid.Jump = true
wait(.4)

if anim then
    anim:Destroy()
end

rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera
modelforparts = char:findFirstChild("ModelForParts") or Instance.new("Model", char)
modelforparts.Name = "ModelForParts"

function trailconnect(obj, wat)
    local trail = {}
    for i = 1, 4 do 
        local p = Instance.new("Part") 
        p.BrickColor = obj.BrickColor
        p.formFactor = "Custom" 
        p.Size = Vector3.new(1,1,1)
        p.Locked = true 
        p.Anchored = true 
        p.CanCollide = false 
        local mesh = Instance.new("CylinderMesh", p) 
        mesh.Name = "Mesh" 
        table.insert(trail,{p,0}) 
    end
    local lastpos = obj.Position 
    local updatethis = 0 
    local dontdothis = false
    game:service'RunService'.Stepped:connect(function()
        if wat == true then if dontdothis then return end
            for i,v in pairs(trail) do
                game:service'Debris':AddItem(obj, 0)
                table.remove(v, i)
            end
            dontdothis = true
            return 
        end
        updatethis = ((updatethis) % 4) + 1
        local dstnc = (obj.Position - lastpos).magnitude 
        trail[updatethis][1].Mesh.Scale = Vector3.new(.2,dstnc,.2)
        trail[updatethis][1].Parent = obj.Parent
        trail[updatethis][1].CFrame = CFrame.new((obj.Position + lastpos)/2,obj.Position) * CFrame.Angles(math.pi/2, 0, 0)
        trail[updatethis][2] = 0 
        for i,v in pairs(trail) do 
            v[2] = v[2] + .15
            v[1].Transparency = v[2] 
        end 
        lastpos = obj.Position
    end)
end 

do
    function rayCast(startpos, Speed, Gravity, Dmg, color)
        local ran,err = ypcall(function()
            local rayPart         = Instance.new("Part")
            rayPart.Name          = "RayPart"
            rayPart.BrickColor    = BrickColor.new(color)
            rayPart.Anchored      = true
            rayPart.CanCollide    = false
            rayPart.Locked        = true
            rayPart.FormFactor    = "Custom"
            rayPart.TopSurface    = Enum.SurfaceType.Smooth
            rayPart.BottomSurface = Enum.SurfaceType.Smooth
            rayPart.Size          = Vector3.new(.2, 50, .2)
            rayPart:breakJoints()
            Instance.new("CylinderMesh", rayPart)
            local fire = Instance.new("Fire", rayPart)
            fire.Color = rayPart.BrickColor.Color
            fire.SecondaryColor = rayPart.BrickColor.Color
            fire.Heat = 0
            fire.Size = 10
            local pl = Instance.new("PointLight", rayPart)
            pl.Color = Color3.new(rayPart.BrickColor.r/1.5, rayPart.BrickColor.g/1.5, rayPart.BrickColor.b/1.5)
            pl.Range = 18

            local hitobj = false
            local bulletposition = startpos.Position
            rayPart.CFrame = startpos.CFrame
            trailconnect(rayPart, hitobj)

            local bulletvelocity = (Vector3.new(math.random(-2,2), math.random(-2,2), math.random(-2,2)))+( mouse.Hit.p - bulletposition).unit*Speed
            local bulletlastposition = bulletposition
            
            coroutine.resume(coroutine.create(function()
                while true do
                    local dt = wait()
                    bulletlastposition = bulletposition
                    bulletvelocity = bulletvelocity + (Vector3.new(0, -3.81*Gravity, 0)*dt)
                    bulletposition = bulletposition + (bulletvelocity*dt)
                    local ray = Ray.new(bulletlastposition,  (bulletposition - bulletlastposition))
                    local hit, hitposition = workspace:FindPartOnRayWithIgnoreList( ray, {char, modelforparts} )
                        
                    if (torso.Position - rayPart.Position).magnitude > 840 then
                        rayPart:Destroy()
                        hitobj = true
                        break
                    end

                    if hit then
                        hitobj = true
                        local boom = Instance.new("Part", modelforparts)
                        boom.BrickColor = rayPart.BrickColor
                        boom.Anchored = true
                        boom.FormFactor = "Custom"
                        boom.Size = Vector3.new(1,1,1)
                        boom.CanCollide = false
                        boom.Transparency = 0.25
                        boom.CFrame = CFrame.new(hitposition.x, hitposition.y, hitposition.z)
                        boom.TopSurface = 0
                        boom.BottomSurface = 0
                        local sphere = Instance.new("SpecialMesh", boom)
                        sphere.MeshType = "Sphere"
                        local pl = Instance.new("PointLight", boom)
                        pl.Color = Color3.new(boom.BrickColor.r/1.5, boom.BrickColor.g/1.5, boom.BrickColor.b/1.5)
                        pl.Range = 20
                        for ye = 0, 8 do
                            local lite = Instance.new("Part", boom)
                            lite.FormFactor = "Custom"
                            lite.Size = Vector3.new(.2, 1.5, .2)
                            lite.BrickColor = boom.BrickColor
                            lite.CanCollide = false
                            lite.TopSurface = 0
                            lite.Anchored = false
                            lite.BottomSurface = 0
                            lite.Position = boom.Position + Vector3.new(math.random(-10, 10), math.random(6,15), math.random(-10, 10))
                        end
                            
                        for i = 0, 20, 2.5 do
                            sphere.Scale = sphere.Scale + Vector3.new(i,i,i)
                            boom.Transparency = boom.Transparency + i/60
                            pl.Range = pl.Range + i/15
                            wait()
                        end
                        boom:Destroy()
                        pcall(function()
                            bulletposition = hitposition
                            rayPart.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity) * CFrame.Angles(math.pi/2, 0, 0)
                            rayPart:Destroy()
                        end)
                        break
                    end
                    rayPart.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity) * CFrame.Angles(math.pi/2, 0, 0)
                    rayPart.Parent = modelforparts
                end
            end))
        for i = 70, 65, -1.5 do
            firing = true
            wait()
        end
        for i = 65, 70, 2.5 do
            firing = false
            wait()
        end
        end)
        if err then
            print(err)
        end
    end
end

charge = 100

plrgui = game:service'Players'.LocalPlayer:findFirstChild("PlayerGui")

local statusgui = Instance.new("ScreenGui", plrgui)
local mainframe = Instance.new("Frame", statusgui)
    mainframe.Size = UDim2.new(0, 200, 0, 200)
    mainframe.Position = UDim2.new(.75, 0, .75, 0)
    mainframe.Style = 3
    local image = Instance.new("ImageLabel", mainframe)
    image.Size = UDim2.new(1, 0, .47, 0)
    image.Position = UDim2.new(0, 0, .235, 0)
    image.BackgroundTransparency = 1
    image.Image = "rbxassetid://145057975"
    local chargetext = Instance.new("TextLabel", mainframe)
    chargetext.FontSize = "Size18"
    chargetext.Size = UDim2.new(1, 0, .95, 0)
    chargetext.TextYAlignment = "Bottom"
    chargetext.BackgroundTransparency = 1
    chargetext.TextColor3 = Color3.new(1,1,1)
    game:service'RunService'.Stepped:connect(function()
        chargetext.Text = math.floor(charge).."%"
    end)

local rm = Instance.new("Weld", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
local lm = Instance.new("Weld", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la

sound = Instance.new("Sound", head)
sound.Volume = 1
sound.SoundId = "rbxassetid://144834276"
sound.Looped = true

dancemode = true
debounceofsprint = false

function part(parent, size, color, formfactor, collide, transparency)
    if transparency == nil then transparency=0 end
    if collide == nil then collide=false end
    if formfactor == nil then formfactor="Custom" end
    local p = Instance.new("Part", parent)
    p.FormFactor = formfactor
    p.CanCollide = collide
    p.Size = size
    p.Locked = true
    p.Transparency = transparency
    p.Position = torso.Position + Vector3.new(0, 1, 0)
    p.BrickColor = color
    p.FrontSurface = "SmoothNoOutlines" 
    p.BackSurface = "SmoothNoOutlines"         
    p.LeftSurface = "SmoothNoOutlines" 
    p.BottomSurface = "SmoothNoOutlines" 
    p.TopSurface = "SmoothNoOutlines"  
    p.RightSurface = "SmoothNoOutlines"
    return p
end
function wedge(parent, size, color, formfactor, collide, transparency)
    if transparency==nil then transparency=0 end
    if collide==nil then collide=false end
    if formfactor==nil then formfactor="Custom" end
    local p = Instance.new("WedgePart", parent)
    p.FormFactor = formfactor
    p.CanCollide = collide
    p.Size = size
    p.Locked = true
    p.Position = torso.Position
    p.BrickColor = color
    p.FrontSurface = "SmoothNoOutlines" 
    p.BackSurface = "SmoothNoOutlines"         
    p.LeftSurface = "SmoothNoOutlines" 
    p.BottomSurface = "SmoothNoOutlines" 
    p.TopSurface = "SmoothNoOutlines"  
    p.RightSurface = "SmoothNoOutlines"
    return p
end 
function weld(part0, part1, c0, parent, c1)
    if parent == nil then parent=char end
    if c1 == nil then c1=CFrame.new() end
    local wel = Instance.new("Weld", parent)
    wel.Part0 = part0
    wel.Part1 = part1
    wel.C0 = c0
    wel.C1 = c1
    return wel
end
function specialmesh(parent, meshType, scale, meshId)
    if meshId==nil then meshId="" end
    local mesh = Instance.new("SpecialMesh", parent)
    mesh.Scale = scale
    mesh.MeshType = meshType
    mesh.MeshId = meshId
    return mesh
end

function animatehuman(animationid, object)
    local animation = object:findFirstChild("Humanoid"):LoadAnimation(animationid)
    animation:Play()
end
local danceAnim = Instance.new("Animation", char)
danceAnim.AnimationId = "http://www.roblox.com/asset/?id=130018893"
danceAnim.Name = "DancingAnimation"

debounce = false

local targetFOV = 70
local smoothFactor = 0.12

function stopsound()
    if debounce then return end
    if not sound or not sound.IsPlaying then return end
    sound:stop()
    debounce = true
    targetFOV = 70
    local dancebro = Instance.new("StringValue", game:service'Lighting')
    dancebro.Name = ('STOPDANCING'..plr.Name)
    game:service'Debris':AddItem(dancebro, 1)
    coroutine.wrap(function()
        while not sound.IsPlaying do
            if charge <= 100 then
                charge = charge + .1
                wait()
            elseif charge > 100 then
                charge = 100
                break
            end
        end
    end)()
    wait(.1)
    debounce = false
end

mouse.Button1Down:connect(function(mous)
    if not humanoid or humanoid.Health <= 0 or not char.Parent then return end
    if debounceofsprint then return end
    if sound.IsPlaying then return end
    if debounce then return end
    targetFOV = 55
    sound:play()
    if dancemode then
        for i,v in pairs(workspace:children()) do
            if not sound.IsPlaying then break end
            coroutine.wrap(function()
                if v:IsA("Model") and v:findFirstChild("Humanoid") and v.Name ~= char.Name and v:findFirstChild("ModelForParts") == nil and v:findFirstChild("Torso") and (v:findFirstChild("Torso").Position - head.Position).magnitude < 30 then
                    danceAnimClone = danceAnim:clone()
                    danceAnimClone.Parent = v
                    danceAnimClone.AnimationId = "http://www.roblox.com/asset/?id=130018893"
                    wait()
                    NLS([[
                        function animatehuman(animationid, object)
                            local animation = object:findFirstChild("Humanoid"):LoadAnimation(animationid)
                            animation:Play()
                        end
                        while wait(.5) do
                            if game:service'Lighting':findFirstChild("STOPDANCING]]..plr.Name..[[") and game:service'Lighting':findFirstChild("STOPDANCING]]..plr.Name..[["):IsA("StringValue") then game:service'Debris':AddItem(script.Parent:findFirstChild("DancingAnimation"), 5) break end
                            animatehuman(script.Parent:findFirstChild("DancingAnimation"), script.Parent)
                        end
                    ]], v)
                end
            end)()
        end
    end
    coroutine.wrap(function()
        while sound.IsPlaying do
            if charge <= 1 then 
                if debounce then break end
                if not sound.IsPlaying then break end
                sound:stop()
                debounce = true
                targetFOV = 70
                chargetext.TextColor3 = Color3.new(1,0,0)
                dancebro = Instance.new("StringValue", game:service'Lighting')
                dancebro.Name = ('STOPDANCING'..plr.Name)
                game:service'Debris':AddItem(dancebro, 1)
                coroutine.wrap(function()
                    repeat wait() until charge >= 10
                    debounce = false
                    chargetext.TextColor3 = Color3.new(1,1,1)
                end)()
                coroutine.wrap(function()
                    while not sound.IsPlaying do
                        if charge <= 100 then
                            charge = charge + .1
                            wait()
                        elseif charge > 100 then
                            charge = 100
                            break
                        end
                    end
                end)() 
            else
                charge = charge - .08
                wait()
            end
        end
    end)()
    coroutine.wrap(function()
        local ran,err = ypcall(function()
            while sound.IsPlaying and Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 20 do
                if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
                if not sound.IsPlaying then break end
                rayCast(head, 1250, 0, 5, "Lavender")
                wait(.35)
                if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
                if not sound.IsPlaying then break end
                rayCast(head, 1250, 0, 5, "Pink")
                wait(.95)
                if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
                if not sound.IsPlaying then break end
                rayCast(head, 1250, 0, 5, "Bright bluish green")
                wait(.55)
                if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
                if not sound.IsPlaying then break end
                rayCast(head, 1250, 0, 5, "Pink")
                wait(.4)
                if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
                if not sound.IsPlaying then break end
                rayCast(head, 1250, 0, 5, "Bright bluish green")
                local pl = Instance.new("PointLight", torso)
                pl.Color = Color3.new(153/255/1.25, 102/255/1.25, 204/255/1.25)
                pl.Range = 30
                pl.Brightness = 0.7
                game:service'Debris':AddItem(pl, .3)
                wait(.45)
                if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 20 then stopsound() break end
                if not sound.IsPlaying then break end
                rayCast(head, 1250, 0, 5, "Lavender")
                wait(.75)
            end
        end) if err then print(err) end
    end)()
end)

mouse.Button1Up:connect(function(mous)
    if not humanoid or humanoid.Health <= 0 then return end
    stopsound()
    targetFOV = 70
end)

ctrl = false
mouse.KeyDown:connect(function(k)
    if string.byte(k) == 50 then
        ctrl = true
        humanoid.WalkSpeed = 8
    end
    if string.byte(k) == 48 then
        humanoid.WalkSpeed = 28
    end
end)

mouse.KeyUp:connect(function(k)
    if string.byte(k) == 50 then
        ctrl = false
        humanoid.WalkSpeed = 16
    end
    if string.byte(k) == 48 then
        humanoid.WalkSpeed = 16
        if ctrl then
            humanoid.WalkSpeed = 8
        end
    end
end)

humanoid.Died:connect(function()
    if modelforparts then modelforparts:Destroy() end
    if sound and sound.IsPlaying then sound:stop() end
    targetFOV = 70
    deathpos = torso.Position
    WorkModel = Instance.new("Model", workspace)
    WorkModel.Name = " "
    wait(1/60)
    humanoid.Parent = nil
    if torso then
        local Head = char:FindFirstChild("Head")
        if Head then
            local Neck = Instance.new("Weld")
            Neck.Name = "Neck"
            Neck.Part0 = torso
            Neck.Part1 = Head
            Neck.C0 = CFrame.new(0, 1.5, 0)
            Neck.C1 = CFrame.new()
            Neck.Parent = torso
        end
        local Limb = char:FindFirstChild("Right Arm")
        if Limb then
            Limb.CFrame = torso.CFrame * CFrame.new(1.5, 0, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "RightShoulder"
            Joint.Part0 = torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.Parent = torso
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = char
            B.CanCollide = false
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        local Limb = char:FindFirstChild("Left Arm")
        if Limb then
            Limb.CFrame = torso.CFrame * CFrame.new(-1.5, 0, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "LeftShoulder"
            Joint.Part0 = torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.Parent = torso
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = char
            B.CanCollide = false
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        local Limb = char:FindFirstChild("Right Leg")
        if Limb then
            Limb.CFrame = torso.CFrame * CFrame.new(0.5, -2, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "RightHip"
            Joint.Part0 = torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
            Joint.Parent = torso
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = char
            B.CanCollide = false
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        local Limb = char:FindFirstChild("Left Leg")
        if Limb then
            Limb.CFrame = torso.CFrame * CFrame.new(-0.5, -2, 0)
            local Joint = Instance.new("Glue")
            Joint.Name = "LeftHip"
            Joint.Part0 = torso
            Joint.Part1 = Limb
            Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
            Joint.Parent = torso
            local B = Instance.new("Part")
            B.TopSurface = 0
            B.BottomSurface = 0
            B.formFactor = "Symmetric"
            B.Size = Vector3.new(1, 1, 1)
            B.Transparency = 1
            B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
            B.Parent = char
            B.CanCollide = false
            local W = Instance.new("Weld")
            W.Part0 = Limb
            W.Part1 = B
            W.C0 = CFrame.new(0, -0.5, 0)
            W.Parent = Limb
        end
        for blood = 0, 3 do
            local blood = Instance.new("Part", workspace)
            blood.BrickColor = BrickColor.Red()
            blood.FormFactor = "Custom"
            blood.Size = Vector3.new(.2,.2,.2)
            blood.Anchored = true
            blood.TopSurface = "Smooth"
            blood.BackSurface = "Smooth"
            local bloodmesh = Instance.new("CylinderMesh", blood)
            bloodmesh.Scale = Vector3.new(3, 0, 3)
            local rayzb = Ray.new(torso.Position, Vector3.new(0, -20, 0) + Vector3.new(math.random(-2, 2), 0, math.random(-2, 2)))
            local hitzb, hitposb = workspace:findPartOnRay(rayzb, char)
            if hitzb then
                blood.CFrame = CFrame.new(hitposb.x,hitposb.y,hitposb.z)
                blood.CFrame = blood.CFrame * CFrame.new(0, .05, 0)
                coroutine.wrap(function()
                    for cframe = 0, math.random(16, 24) do
                        bloodmesh.Scale = bloodmesh.Scale + Vector3.new(.45, 0, .45)
                        wait()
                    end
                end)()
            elseif not hitzb then
                blood:Destroy()
            end
        end
        local BP = Instance.new("BodyPosition", torso)
        BP.maxForce = Vector3.new(1,1,1)/0
        BP.position = deathpos
        for i,v in pairs(char:children()) do
            if v:IsA("Part") then v.Parent = WorkModel end
        end
        wait(.3)
        BP:Destroy()
    end
end)

local rlegm = Instance.new("Motor", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
rlegm.Name = "Right Hip"
local llegm = Instance.new("Motor", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll
llegm.Name = "Left Hip"
neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)
rj.C0 = CFrame.new(0, -1, 0)
rj.C1 = CFrame.new(0, -1, 0)
rsc0 = rm.C0
lsc0 = lm.C0
neckc0 = neck.C0
rootc0 = rj.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
speed = 0.4
angle = 0
anglespeed = 0
sine = 0
change = 1

game:service'RunService'.RenderStepped:connect(function()
    angle = (angle % 100) + anglespeed/10
    sine = sine + change

    local rscf = rsc0
    local lscf = lsc0
    local rlcf = rlc0
    local llcf = llc0
    local rjcf = rootc0
    local ncf = neckc0

    local rayz = Ray.new(rootpart.Position, Vector3.new(0, -4.1, 0))
    local hitz, enz = workspace:findPartOnRay(rayz, char)

    local dir = humanoid.MoveDirection
    if dir.Magnitude == 0 then dir = rootpart.Velocity/10 end
    local Ccf = rootpart.CFrame
    local Walktest1 = dir*Ccf.LookVector
    local Walktest2 = dir*Ccf.RightVector
    local rotfb = Walktest1.X+Walktest1.Z
    local rotrl = Walktest2.X+Walktest2.Z
    if rotfb > 1 then rotfb = 1 elseif rotfb < -1 then rotfb = -1 end
    if rotrl > 1 then rotrl = 1 elseif rotrl < -1 then rotrl = -1 end
    local horVel = (rootpart.Velocity * Vector3.new(1,0,1)).Magnitude
    local verVel = rootpart.Velocity.y

    ncf = neckc0 * CFrame.Angles(camera.CoordinateFrame.lookVector.y, 0, 0)
    rscf = rsc0 * CFrame.new(-.55, 0, .35) * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2, 0, 0)
    lscf = lsc0 * CFrame.new(.85, 0, -.65) * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2, 0, math.rad(45))
    if firing then
        rscf = rsc0 * CFrame.new(-.55, .15, .65) * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2, 0, 0)
        lscf = lsc0 * CFrame.new(.85, .15, -.35) * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2, 0, math.rad(45))
    end

    if not hitz then
        change = 1
        ncf = neckc0 * CFrame.Angles(math.pi/18, 0, 0)
        rscf = rsc0 * CFrame.new(-.45, 0, -.75) * CFrame.Angles(math.pi/5+math.pi/18, 0, math.rad(-70))
        lscf = lsc0 * CFrame.new(.35, 0, 0) * CFrame.Angles(math.pi/3.5+math.pi/18, 0, 0)
        rjcf = rootc0 * CFrame.Angles(-math.pi/32, 0, 0)
        rlcf = rlc0 * CFrame.new(0, 0.7, -0.5) * CFrame.Angles(-math.pi/14, 0, 0)
        llcf = llc0 * CFrame.Angles(-math.pi/20, 0, 0)
    elseif humanoid.Sit then
        change = 1
        ncf = neckc0 * CFrame.Angles(0, 0, 0)
        rjcf = rootc0 * CFrame.new(0, -.2, 0)
        rlcf = rlc0 * CFrame.Angles(math.pi/2, 0, math.rad(7.5))
        llcf = llc0 * CFrame.Angles(math.pi/2, 0, -math.rad(7.5))
        if sprinting then debounceofsprint = false; sprinting = false end
    elseif horVel <= 2 then
        change = 1
        speed = 0.3
        if ctrl then
            rjcf = rootc0 * CFrame.new(0, -1.25, 0)
            llcf = llc0 * CFrame.new(0, 0, -.45) * CFrame.Angles(-math.pi/2.2, 0, 0)
            rlcf = rlcf * CFrame.new(0, 1.25, -.85)
        else
            rjcf = rootc0
            rlcf = rlc0 * CFrame.Angles(-math.rad(.5), 0, math.rad(1.5))
            llcf = llc0 * CFrame.Angles(math.rad(1.5), 0, -math.rad(1.5))
        end
    elseif horVel <= 20 then
        if not humanoid.Sit then
            if not ctrl then
                change = 0.6
                rjcf = rootc0
                local rLegAngle = math.rad((7.5 * math.abs(rotfb)) + math.sin(sine/6) * 40 * rotfb)
                local rSide = math.rad(math.sin(sine/6) * 40 * rotrl)
                local lLegAngle = math.rad((7.5 * math.abs(rotfb)) - math.sin(sine/6) * 40 * rotfb)
                local lSide = math.rad(-math.sin(sine/6) * 40 * rotrl)
                rlcf = rlc0 * CFrame.new(0, 0.2 * math.cos(sine/6), -0.3 * math.cos(sine/6)) * CFrame.Angles(rLegAngle, math.rad(math.sin(sine/6) * 5), rSide)
                llcf = llc0 * CFrame.new(0, -0.2 * math.cos(sine/6), 0.3 * math.cos(sine/6)) * CFrame.Angles(lLegAngle, math.rad(math.sin(sine/6) * 5), lSide)
            else
                change = 0.9
                rjcf = rootc0 * CFrame.new(0, -.35, 0) * CFrame.Angles(-math.pi/18, 0, 0)
                ncf = neckc0 * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/18, 0, 0)
                rscf = rsc0 * CFrame.new(-.55, 0, .35) * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2+math.pi/18, 0, 0)
                lscf = lsc0 * CFrame.new(.85, 0, -.65) * CFrame.Angles(camera.CoordinateFrame.lookVector.y+math.pi/2+math.pi/18, 0, math.rad(45))
                local legSwing = math.sin(sine/6) * 30 * rotfb
                rlcf = rlc0 * CFrame.new(0, .45, -.35) * CFrame.Angles(math.pi/18 + math.rad(legSwing), 0, math.rad(math.sin(sine/6) * 30 * rotrl))
                llcf = llc0 * CFrame.new(0, .45, -.35) * CFrame.Angles(math.pi/18 - math.rad(legSwing), 0, -math.rad(math.sin(sine/6) * 30 * rotrl))
            end
            if sprinting then debounceofsprint = false; sprinting = false end
        end
    elseif horVel > 20 then
        if not humanoid.Sit then
            change = 0.9
            ncf = neckc0 * CFrame.Angles(math.pi/18, 0, 0)
            rscf = rsc0 * CFrame.new(-.45, 0, -.75) * CFrame.Angles(math.pi/5+math.pi/18, 0, math.rad(-70))
            lscf = lsc0 * CFrame.new(.35, 0, 0) * CFrame.Angles(math.pi/3.5+math.pi/18, 0, 0)
            rjcf = rootc0 * CFrame.new(0, 0, 0) * CFrame.Angles(-math.pi/18, math.sin(angle)*.1, math.sin(angle)*.045)
            local rLegAngle = math.rad(math.sin(sine/3) * 80 * rotfb)
            local rSide = math.rad(math.sin(sine/3) * 60 * rotrl)
            local lLegAngle = math.rad(-math.sin(sine/3) * 80 * rotfb)
            local lSide = math.rad(-math.sin(sine/3) * 60 * rotrl)
            rlcf = rlc0 * CFrame.new(0, .3 + -math.cos(-angle)*.3, -.2+math.sin(angle)*0.25) * CFrame.Angles(-math.pi/18+math.sin(-angle)*1.3 + rLegAngle, 0, math.rad(.5) + rSide)
            llcf = llc0 * CFrame.new(0, .3 - -math.cos(angle)*.3, -.05-math.sin(angle)*0.25) * CFrame.Angles(-math.pi/18+math.sin(angle)*1.3 + lLegAngle, 0, -math.rad(.5) + lSide)
            sprinting = true
            debounceofsprint = true
        end
    end

    rm.C0 = clerp(rm.C0, rscf, speed)
    lm.C0 = clerp(lm.C0, lscf, speed)
    rj.C0 = clerp(rj.C0, rjcf, speed)
    rlegm.C0 = clerp(rlegm.C0, rlcf, speed)
    llegm.C0 = clerp(llegm.C0, llcf, speed)
    neck.C0 = clerp(neck.C0, ncf, speed)

    camera.FieldOfView = camera.FieldOfView + (targetFOV - camera.FieldOfView) * smoothFactor
end)
