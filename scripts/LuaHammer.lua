local oc = oc or function(...) return ... end

function weld(p0,p1,c0,c1,par)
local w = Instance.new("Weld",p0 or par)
w.Part0 = p0
w.Part1 = p1
w.C0 = c0 or CFrame.new()
w.C1 = c1 or CFrame.new()
return w
end

function lerp(a, b, t)
    return a + (b - a)*t
end

do
        local function QuaternionFromCFrame(cf) local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() local trace = m00 + m11 + m22 if trace > 0 then local s = math.sqrt(1 + trace) local recip = 0.5/s return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 else local i = 0 if m11 > m00 then i = 1 end if m22 > (i == 0 and m00 or m11) then i = 2 end if i == 0 then local s = math.sqrt(m00-m11-m22+1) local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip elseif i == 1 then local s = math.sqrt(m11-m22-m00+1) local recip = 0.5/s return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip elseif i == 2 then local s = math.sqrt(m22-m00-m11+1) local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip end end end
         
        local function QuaternionToCFrame(px, py, pz, x, y, z, w) local xs, ys, zs = x + x, y + y, z + z local wx, wy, wz = w*xs, w*ys, w*zs local xx = x*xs local xy = x*ys local xz = x*zs local yy = y*ys local yz = y*zs local zz = z*zs return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) end
         
        local function QuaternionSlerp(a, b, t) local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] local startInterp, finishInterp; if cosTheta >= 0.0001 then if (1 - cosTheta) > 0.0001 then local theta = math.acos(cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((1-t)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta  else startInterp = 1-t finishInterp = t end else if (1+cosTheta) > 0.0001 then local theta = math.acos(-cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((t-1)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = t-1 finishInterp = t end end return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp        end

        function clerp(a,b,t)
                local qa = {QuaternionFromCFrame(a)}
                local qb = {QuaternionFromCFrame(b)}
                local ax, ay, az = a.x, a.y, a.z
                local bx, by, bz = b.x, b.y, b.z

                local _t = 1-t
                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
        end
end
local his = {}

function ctween(tar,prop,c2,t,b)
        local function doIt()
        local now = tick()
        his[tar] = now
        local c1 = tar[prop]
        for i=1,t do
                if his[tar] ~= now then return end
                tar[prop] = clerp(c1,c2,1/t*i)
                wait(1/60)
        end
        end
        if b then coroutine.wrap(doIt)() else doIt() end
end

function tickwave(time,length,offset)
        return (math.abs((tick()+(offset or 0))%time-time/2)*2-time/2)/time/2*length
end

local plr = game.Players.LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse()
local hum = char.Humanoid

local nk = char.Torso.Neck
local nk0 = CFrame.new(0,1,0) * CFrame.Angles(-math.pi/2,0,math.pi)
local ra,la = char["Right Arm"], char["Left Arm"]

local rs = weld(char.Torso,ra,CFrame.new(1.25,.5,0), CFrame.new(-.25,.5,0))
local ls = weld(char.Torso,la,CFrame.new(-1.25,.5,0), CFrame.new(.25,.5,0))
ls.Part1.FrontSurface = "Hinge"
rs.Part1.FrontSurface = "Hinge"
local rs0 = rs.C0
local ls0 = ls.C0

rs.C0 = rs0 * CFrame.Angles(math.rad(70),math.rad(50),math.rad(-20))
ls.C0 = ls0 * CFrame.new(.4,.2,-.3) * CFrame.Angles(math.rad(110),math.rad(0),math.rad(00)) * CFrame.Angles(0,math.rad(60),0)

local atdeb = false
local basiccombo = 0
local basiccombotimer = 0
local sprint = false
local walking = false
local bg = Instance.new("BodyGyro",char.Torso)
bg.maxTorque = Vector3.new(1,0,1)*9e10
bg.P = 10000
bg.D = 500
local bv = Instance.new("BodyVelocity",char.Torso)
bv.maxForce = Vector3.new()
bv.P = 50000

local runcon
local kdcon
local kucon

function endScript()
        pcall(function() runcon:disconnect() end)
        pcall(function() kdcon:disconnect() end)
        pcall(function() kucon:disconnect() end)
        pcall(game.Destroy,bg)
        pcall(game.Destroy,bv)
end

local idling = true

runcon = game:GetService("RunService").Stepped:connect(oc(function()
        if idling then
                rs.C0 = clerp(rs.C0,rs0 * CFrame.Angles(math.rad(70+tickwave(3,5)),math.rad(50),math.rad(-20)),.4)
                ls.C0 = clerp(ls.C0,ls0 * CFrame.new(.4,.2,-.3) * CFrame.Angles(math.rad(115+tickwave(3,5)),math.rad(0),math.rad(-5)) * CFrame.Angles(0,math.rad(60),0),.4)
                nk.C0 = clerp(nk.C0,nk0 * CFrame.Angles(tickwave(4,-.1),0,0),.4)
        end
        if hum.MoveDirection.Magnitude > 0 and not atdeb then
                walking = true
                idling = false
                local walkCycle = tickwave(0.8,15)
                rs.C0 = clerp(rs.C0,rs0 * CFrame.Angles(math.rad(70 + walkCycle),math.rad(50 + walkCycle/2),math.rad(-20 - walkCycle)),.6)
                ls.C0 = clerp(ls.C0,ls0 * CFrame.new(.4 + walkCycle/30,.2,-.3) * CFrame.Angles(math.rad(115 - walkCycle),math.rad(0),math.rad(-5 + walkCycle/4)) * CFrame.Angles(0,math.rad(60),0),.6)
        elseif not atdeb then
                walking = false
                idling = true
        end
end))

kucon = mouse.KeyUp:connect(oc(function(k)
        if k == "0" and sprint then
                pcall(function() char.Humanoid.WalkSpeed = char.Humanoid.WalkSpeed / 1.5 end)
                sprint = false
        end
end))

kdcon = mouse.KeyDown:connect(oc(function(k)
        if k == "0" and not sprint then
                pcall(function() char.Humanoid.WalkSpeed = char.Humanoid.WalkSpeed * 1.5 end)
                sprint = true
        end
        if k == "f" then
                if atdeb then return end
                atdeb = true
                idling = false
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(150),math.rad(0),math.rad(-90)),7)
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(30)),13,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(-35),0,0),13,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(60)),13)
                bg.maxTorque = Vector3.new(1,1,1)*9e10
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(35),math.rad(0),math.rad(30)),4,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(35),0,0),4,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(35),math.rad(0),math.rad(-30)),4)
                wait(.2)
                bg.maxTorque = Vector3.new(1,0,1)*9e10
                atdeb = false
                idling = true
        end
        if k == "q" then
                if atdeb then return end
                atdeb = true
                idling = false
                bg.cframe = char.Torso.CFrame * CFrame.Angles(math.rad(7),0,0)
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(150),math.rad(0),math.rad(30)),7,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(-20),0,0),7,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(150),math.rad(0),math.rad(-30)),7)
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(30)),13,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(-35),0,0),13,true)
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(-30)),13)
                bg.cframe = char.Torso.CFrame * CFrame.Angles(math.rad(7),0,0)
                wait(.05)
                bg.cframe = char.Torso.CFrame * CFrame.Angles(math.rad(-20),0,0)
                bg.maxTorque = Vector3.new(1,1,1)*9e10
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(55),math.rad(5),math.rad(50)),7,true)
                ctween(nk,"C0",nk0 * CFrame.Angles(math.rad(5),0,0),4,true)
                ctween(rs,"C0",rs0*CFrame.new(-.9,0,-.9) * CFrame.Angles(math.rad(50),math.rad(5),math.rad(-50)),7)
                wait(.2)
                bg.maxTorque = Vector3.new(1,0,1)*9e10
                atdeb = false
                idling = true
        end
        if k == "r" then
                if atdeb then return end
                atdeb = true
                idling = false
                ctween(ls,"C0",ls0*CFrame.new(.7,0,-.7) * CFrame.Angles(math.rad(70),math.rad(0),math.rad(30)),7,true)
                bg.maxTorque = Vector3.new(1,1,1)*9e10
                bg.cframe = char.Torso.CFrame
                ctween(rs,"C0",rs0*CFrame.new(-.7,0,-.7) * CFrame.Angles(math.rad(70),math.rad(0),math.rad(-30)),7,true)
                for i=1,20 do
                        bg.cframe = bg.cframe * CFrame.Angles(0,math.rad(-1440/20),0)
                        wait(.1)
                end
                bg.maxTorque = Vector3.new(1,0,1)*9e10
                atdeb = false
                idling = true
        end
        if k == "e" then
                if atdeb then return end
                basiccombo = (tick()-basiccombotimer > .5 or basiccombo == 2) and 1 or basiccombo + 1
                idling = false
                atdeb = true
                if basiccombo == 1 then
                        ctween(ls,"C0",ls0 * CFrame.new(.2,.2,-.1) * CFrame.Angles(math.rad(120),math.rad(0),math.rad(5)) * CFrame.Angles(0,math.rad(60),0),7,true)
                        ctween(rs,"C0",rs0*CFrame.new(0,0,-.3) * CFrame.Angles(math.rad(120),math.rad(70),math.rad(-30)),7)
                        bg.maxTorque = Vector3.new(1,1,1)*9e10
                        bg.cframe = char.Torso.CFrame * CFrame.Angles(0,math.rad(-40),0)
                        ctween(ls,"C0",ls0 * CFrame.new(1,.2,-1) * CFrame.Angles(math.rad(115),math.rad(0),math.rad(40)) * CFrame.Angles(0,math.rad(60),0),6,true)
                        ctween(rs,"C0",rs0*CFrame.new(0,0,-.3) * CFrame.Angles(math.rad(120),math.rad(80),math.rad(-30))* CFrame.Angles(math.rad(-50),0,0),6,true)
                        wait(.1)
                        bg.cframe = char.Torso.CFrame * CFrame.Angles(0,math.rad(40),0)
                elseif basiccombo == 2 then
                        ctween(ls,"C0",ls0*CFrame.new(1,0,-1) * CFrame.Angles(math.rad(5),math.rad(0),math.rad(70)),10,true)
                        ctween(rs,"C0",rs0*CFrame.new(0,0,0) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),10,true)
                        wait(.2)
                        wait(.1)
                        bg.maxTorque = Vector3.new(1,1,1)*9e10
                        bg.cframe = char.Torso.CFrame
                        bv.maxForce = Vector3.new(1,0,1)*9e5
                        bv.velocity = bg.cframe.lookVector * 70
                        coroutine.wrap(function() for i=1,25 do bv.velocity = bv.velocity*.9 wait(1/30) end bv.maxForce = Vector3.new() end)()
                        ctween(ls,"C0",ls0*CFrame.new(1,0,-1) * CFrame.Angles(math.rad(80),math.rad(0),math.rad(50)),12,true)
                        ctween(rs,"C0",rs0*CFrame.new(-.6,0,-.7) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-10)),12,true)
                end
                wait(.1)
                bg.maxTorque = Vector3.new(1,0,1)*9e10
                basiccombotimer = tick()
                atdeb = false
                idling = true
        end
        bg.cframe = CFrame.new(char.Torso.Position,char.Torso.Position+char.Torso.CFrame.lookVector*Vector3.new(1,0,1))
end))

char.Humanoid.MaxHealth = 220
char.Humanoid.WalkSpeed = 20
wait(.3)
char.Humanoid.Health = 220
