--skid switcher by desmondajayi08 original script by rufus14.
--dont leak pls or you become a skid.
-----------------------------------------------------------------------
--By DogTheMinecraftBoi
owner = game.Players.LocalPlayer
--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Model0 = Instance.new("Model")
Part1 = Instance.new("Part")
Part2 = Instance.new("Part")
Part3 = Instance.new("Part")
Part4 = Instance.new("Part")
Part5 = Instance.new("Part")
Part6 = Instance.new("Part")
Part7 = Instance.new("Part")
Part8 = Instance.new("Part")
Part9 = Instance.new("Part")
Part10 = Instance.new("Part")
Part11 = Instance.new("Part")
Part12 = Instance.new("Part")
Part13 = Instance.new("Part")
Part14 = Instance.new("Part")
Part15 = Instance.new("Part")
Part16 = Instance.new("Part")
Part17 = Instance.new("Part")
Part18 = Instance.new("Part")
Part19 = Instance.new("Part")
Part20 = Instance.new("Part")
Part21 = Instance.new("Part")
Part22 = Instance.new("Part")
Part23 = Instance.new("Part")
Part24 = Instance.new("Part")
Part25 = Instance.new("Part")
Part26 = Instance.new("Part")
Part27 = Instance.new("Part")
Part28 = Instance.new("Part")
Part29 = Instance.new("Part")
Part30 = Instance.new("Part")
Part31 = Instance.new("Part")
Part32 = Instance.new("Part")
Part33 = Instance.new("Part")
Part34 = Instance.new("Part")
Part35 = Instance.new("Part")
Part36 = Instance.new("Part")
Part37 = Instance.new("Part")
Part38 = Instance.new("Part")
Part39 = Instance.new("Part")
Part40 = Instance.new("Part")
Part41 = Instance.new("Part")
Part42 = Instance.new("Part")
Part43 = Instance.new("Part")
Weld44 = Instance.new("Weld")
Weld45 = Instance.new("Weld")
Weld46 = Instance.new("Weld")
Weld47 = Instance.new("Weld")
Weld48 = Instance.new("Weld")
Weld49 = Instance.new("Weld")
Weld50 = Instance.new("Weld")
Weld51 = Instance.new("Weld")
Weld52 = Instance.new("Weld")
Weld53 = Instance.new("Weld")
Weld54 = Instance.new("Weld")
Weld55 = Instance.new("Weld")
Weld56 = Instance.new("Weld")
Weld57 = Instance.new("Weld")
Weld58 = Instance.new("Weld")
Weld59 = Instance.new("Weld")
Weld60 = Instance.new("Weld")
Weld61 = Instance.new("Weld")
Weld62 = Instance.new("Weld")
Weld63 = Instance.new("Weld")
Weld64 = Instance.new("Weld")
Weld65 = Instance.new("Weld")
Weld66 = Instance.new("Weld")
Weld67 = Instance.new("Weld")
Weld68 = Instance.new("Weld")
Weld69 = Instance.new("Weld")
Weld70 = Instance.new("Weld")
Weld71 = Instance.new("Weld")
Weld72 = Instance.new("Weld")
Weld73 = Instance.new("Weld")
Weld74 = Instance.new("Weld")
Weld75 = Instance.new("Weld")
Weld76 = Instance.new("Weld")
Weld77 = Instance.new("Weld")
Weld78 = Instance.new("Weld")
Weld79 = Instance.new("Weld")
Weld80 = Instance.new("Weld")
Weld81 = Instance.new("Weld")
Weld82 = Instance.new("Weld")
Weld83 = Instance.new("Weld")
Weld84 = Instance.new("Weld")
Weld85 = Instance.new("Weld")
Weld86 = Instance.new("Weld")
Weld87 = Instance.new("Weld")
Weld88 = Instance.new("Weld")
Weld89 = Instance.new("Weld")
Weld90 = Instance.new("Weld")
Weld91 = Instance.new("Weld")
Weld92 = Instance.new("Weld")
Weld93 = Instance.new("Weld")
Weld94 = Instance.new("Weld")
Weld95 = Instance.new("Weld")
Weld96 = Instance.new("Weld")
Weld97 = Instance.new("Weld")
Weld98 = Instance.new("Weld")
Weld99 = Instance.new("Weld")
Weld100 = Instance.new("Weld")
Weld101 = Instance.new("Weld")
Weld102 = Instance.new("Weld")
Weld103 = Instance.new("Weld")
Weld104 = Instance.new("Weld")
Weld105 = Instance.new("Weld")
Weld106 = Instance.new("Weld")
Weld107 = Instance.new("Weld")
Weld108 = Instance.new("Weld")
Weld109 = Instance.new("Weld")
Weld110 = Instance.new("Weld")
Weld111 = Instance.new("Weld")
Weld112 = Instance.new("Weld")
Weld113 = Instance.new("Weld")
Weld114 = Instance.new("Weld")
Part115 = Instance.new("Part")
Part116 = Instance.new("Part")
Part117 = Instance.new("Part")
Part118 = Instance.new("Part")
Part119 = Instance.new("Part")
Part120 = Instance.new("Part")
Part121 = Instance.new("Part")
Part122 = Instance.new("Part")
Part123 = Instance.new("Part")
Part124 = Instance.new("Part")
Part125 = Instance.new("Part")
Part126 = Instance.new("Part")
Part127 = Instance.new("Part")
Part128 = Instance.new("Part")
Part129 = Instance.new("Part")
Part130 = Instance.new("Part")
Part131 = Instance.new("Part")
Part132 = Instance.new("Part")
Part133 = Instance.new("Part")
Part134 = Instance.new("Part")
Part135 = Instance.new("Part")
Part136 = Instance.new("Part")
Part137 = Instance.new("Part")
Part138 = Instance.new("Part")
Part139 = Instance.new("Part")
Part140 = Instance.new("Part")
Part141 = Instance.new("Part")
Part142 = Instance.new("Part")
Part143 = Instance.new("Part")
Model0.Name = "Diamond Sword"
Model0.Parent = mas
Part1.Parent = Model0
Part1.CFrame = CFrame.new(37.8000107, 1.93686116, -47.1820793, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part1.Orientation = Vector3.new(-25, 0, 90)
Part1.Position = Vector3.new(37.8000107, 1.93686116, -47.1820793)
Part1.Rotation = Vector3.new(-25, 0, 90)
Part1.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part1.Size = Vector3.new(0.231250122, 0.231250122, 0.462500244)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.BrickColor = BrickColor.new("Really black")
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.brickColor = BrickColor.new("Really black")
Part2.Parent = Model0
Part2.CFrame = CFrame.new(37.8000107, 3.06189299, -48.5997314, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part2.Orientation = Vector3.new(-25, 0, 90)
Part2.Position = Vector3.new(37.8000107, 3.06189299, -48.5997314)
Part2.Rotation = Vector3.new(-25, 0, 90)
Part2.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part2.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.BrickColor = BrickColor.new("Really black")
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.brickColor = BrickColor.new("Really black")
Part3.Parent = Model0
Part3.CFrame = CFrame.new(37.8000107, 1.73377252, -45.4288597, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part3.Orientation = Vector3.new(-25, 0, 90)
Part3.Position = Vector3.new(37.8000107, 1.73377252, -45.4288597)
Part3.Rotation = Vector3.new(-25, 0, 90)
Part3.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part3.Size = Vector3.new(0.693750381, 0.231250122, 0.231250122)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.BrickColor = BrickColor.new("Really black")
Part3.TopSurface = Enum.SurfaceType.Smooth
Part3.brickColor = BrickColor.new("Really black")
Part4.Parent = Model0
Part4.CFrame = CFrame.new(37.8000107, 2.83818579, -47.9850998, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part4.Orientation = Vector3.new(-25, 0, 90)
Part4.Position = Vector3.new(37.8000107, 2.83818579, -47.9850998)
Part4.Rotation = Vector3.new(-25, 0, 90)
Part4.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part4.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.BrickColor = BrickColor.new("Really black")
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.brickColor = BrickColor.new("Really black")
Part5.Parent = Model0
Part5.CFrame = CFrame.new(37.8000107, 3.28559709, -49.2143593, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part5.Orientation = Vector3.new(-25, 0, 90)
Part5.Position = Vector3.new(37.8000107, 3.28559709, -49.2143593)
Part5.Rotation = Vector3.new(-25, 0, 90)
Part5.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part5.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.BrickColor = BrickColor.new("Really black")
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.brickColor = BrickColor.new("Really black")
Part6.Parent = Model0
Part6.CFrame = CFrame.new(37.8000107, 1.1126498, -47.3080482, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part6.Orientation = Vector3.new(-25, 0, 90)
Part6.Position = Vector3.new(37.8000107, 1.1126498, -47.3080482)
Part6.Rotation = Vector3.new(-25, 0, 90)
Part6.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part6.Size = Vector3.new(0.231250122, 0.231250122, 0.462500244)
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.BrickColor = BrickColor.new("Really black")
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.brickColor = BrickColor.new("Really black")
Part7.Parent = Model0
Part7.CFrame = CFrame.new(37.8000107, 2.72633076, -47.6777878, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part7.Orientation = Vector3.new(-25, 0, 90)
Part7.Position = Vector3.new(37.8000107, 2.72633076, -47.6777878)
Part7.Rotation = Vector3.new(-25, 0, 90)
Part7.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part7.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part7.BottomSurface = Enum.SurfaceType.Smooth
Part7.BrickColor = BrickColor.new("Really black")
Part7.TopSurface = Enum.SurfaceType.Smooth
Part7.brickColor = BrickColor.new("Really black")
Part8.Parent = Model0
Part8.CFrame = CFrame.new(37.8000107, 2.61447859, -47.370472, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part8.Orientation = Vector3.new(-25, 0, 90)
Part8.Position = Vector3.new(37.8000107, 2.61447859, -47.370472)
Part8.Rotation = Vector3.new(-25, 0, 90)
Part8.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part8.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.BrickColor = BrickColor.new("Really black")
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.brickColor = BrickColor.new("Really black")
Part9.Parent = Model0
Part9.CFrame = CFrame.new(37.8000107, 2.08345795, -46.8676987, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part9.Orientation = Vector3.new(-25, 0, 90)
Part9.Position = Vector3.new(37.8000107, 2.08345795, -46.8676987)
Part9.Rotation = Vector3.new(-25, 0, 90)
Part9.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part9.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.BrickColor = BrickColor.new("Bright bluish green")
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.brickColor = BrickColor.new("Bright bluish green")
Part10.Parent = Model0
Part10.CFrame = CFrame.new(37.8000107, 2.95003462, -48.2924194, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part10.Orientation = Vector3.new(-25, 0, 90)
Part10.Position = Vector3.new(37.8000107, 2.95003462, -48.2924194)
Part10.Rotation = Vector3.new(-25, 0, 90)
Part10.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part10.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.BrickColor = BrickColor.new("Really black")
Part10.TopSurface = Enum.SurfaceType.Smooth
Part10.brickColor = BrickColor.new("Really black")
Part11.Parent = Model0
Part11.CFrame = CFrame.new(37.8000107, 1.7272768, -47.0843468, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part11.Orientation = Vector3.new(-25, 0, 90)
Part11.Position = Vector3.new(37.8000107, 1.7272768, -47.0843468)
Part11.Rotation = Vector3.new(-25, 0, 90)
Part11.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part11.Size = Vector3.new(0.231250122, 0.231250122, 0.462500244)
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.BrickColor = BrickColor.new("Bright bluish green")
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.brickColor = BrickColor.new("Bright bluish green")
Part12.Parent = Model0
Part12.CFrame = CFrame.new(37.8000107, 2.447263, -48.8234406, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part12.Orientation = Vector3.new(-25, 0, 90)
Part12.Position = Vector3.new(37.8000107, 2.447263, -48.8234406)
Part12.Rotation = Vector3.new(-25, 0, 90)
Part12.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part12.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.BrickColor = BrickColor.new("Really black")
Part12.TopSurface = Enum.SurfaceType.Smooth
Part12.brickColor = BrickColor.new("Really black")
Part13.Parent = Model0
Part13.CFrame = CFrame.new(37.8000107, 2.33541107, -48.5161209, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part13.Orientation = Vector3.new(-25, 0, 90)
Part13.Position = Vector3.new(37.8000107, 2.33541107, -48.5161209)
Part13.Rotation = Vector3.new(-25, 0, 90)
Part13.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part13.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.BrickColor = BrickColor.new("Really black")
Part13.TopSurface = Enum.SurfaceType.Smooth
Part13.brickColor = BrickColor.new("Really black")
Part14.Parent = Model0
Part14.CFrame = CFrame.new(37.8000107, 2.67097044, -49.4380684, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part14.Orientation = Vector3.new(-25, 0, 90)
Part14.Position = Vector3.new(37.8000107, 2.67097044, -49.4380684)
Part14.Rotation = Vector3.new(-25, 0, 90)
Part14.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part14.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.BrickColor = BrickColor.new("Really black")
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.brickColor = BrickColor.new("Really black")
Part15.Parent = Model0
Part15.CFrame = CFrame.new(37.8000107, 2.11170387, -47.9014969, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part15.Orientation = Vector3.new(-25, 0, 90)
Part15.Position = Vector3.new(37.8000107, 2.11170387, -47.9014969)
Part15.Rotation = Vector3.new(-25, 0, 90)
Part15.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part15.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part15.BottomSurface = Enum.SurfaceType.Smooth
Part15.BrickColor = BrickColor.new("Really black")
Part15.TopSurface = Enum.SurfaceType.Smooth
Part15.brickColor = BrickColor.new("Really black")
Part16.Parent = Model0
Part16.CFrame = CFrame.new(37.8000107, 2.55911303, -49.1307526, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part16.Orientation = Vector3.new(-25, 0, 90)
Part16.Position = Vector3.new(37.8000107, 2.55911303, -49.1307526)
Part16.Rotation = Vector3.new(-25, 0, 90)
Part16.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part16.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part16.BottomSurface = Enum.SurfaceType.Smooth
Part16.BrickColor = BrickColor.new("Really black")
Part16.TopSurface = Enum.SurfaceType.Smooth
Part16.brickColor = BrickColor.new("Really black")
Part17.Parent = Model0
Part17.CFrame = CFrame.new(37.8000107, 2.2235558, -48.2088089, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part17.Orientation = Vector3.new(-25, 0, 90)
Part17.Position = Vector3.new(37.8000107, 2.2235558, -48.2088089)
Part17.Rotation = Vector3.new(-25, 0, 90)
Part17.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part17.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part17.BottomSurface = Enum.SurfaceType.Smooth
Part17.BrickColor = BrickColor.new("Really black")
Part17.TopSurface = Enum.SurfaceType.Smooth
Part17.brickColor = BrickColor.new("Really black")
Part18.Parent = Model0
Part18.CFrame = CFrame.new(37.8000107, 1.99984837, -47.5941772, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part18.Orientation = Vector3.new(-25, 0, 90)
Part18.Position = Vector3.new(37.8000107, 1.99984837, -47.5941772)
Part18.Rotation = Vector3.new(-25, 0, 90)
Part18.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part18.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part18.BottomSurface = Enum.SurfaceType.Smooth
Part18.BrickColor = BrickColor.new("Really black")
Part18.TopSurface = Enum.SurfaceType.Smooth
Part18.brickColor = BrickColor.new("Really black")
Part19.Parent = Model0
Part19.CFrame = CFrame.new(37.8000107, 1.27336645, -47.5105743, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part19.Orientation = Vector3.new(-25, 0, 90)
Part19.Position = Vector3.new(37.8000107, 1.27336645, -47.5105743)
Part19.Rotation = Vector3.new(-25, 0, 90)
Part19.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part19.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part19.BottomSurface = Enum.SurfaceType.Smooth
Part19.BrickColor = BrickColor.new("Really black")
Part19.TopSurface = Enum.SurfaceType.Smooth
Part19.brickColor = BrickColor.new("Really black")
Part20.Parent = Model0
Part20.CFrame = CFrame.new(37.8000107, 2.88761282, -49.7942429, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part20.Orientation = Vector3.new(-25, 0, 90)
Part20.Position = Vector3.new(37.8000107, 2.88761282, -49.7942429)
Part20.Rotation = Vector3.new(-25, 0, 90)
Part20.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part20.Size = Vector3.new(0.462500244, 0.231250122, 0.231250122)
Part20.BottomSurface = Enum.SurfaceType.Smooth
Part20.BrickColor = BrickColor.new("Really black")
Part20.TopSurface = Enum.SurfaceType.Smooth
Part20.brickColor = BrickColor.new("Really black")
Part21.Parent = Model0
Part21.CFrame = CFrame.new(37.8000107, 3.29972029, -49.7312584, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part21.Orientation = Vector3.new(-25, 0, 90)
Part21.Position = Vector3.new(37.8000107, 3.29972029, -49.7312584)
Part21.Rotation = Vector3.new(-25, 0, 90)
Part21.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part21.Size = Vector3.new(0.231250122, 0.231250122, 0.693750381)
Part21.BottomSurface = Enum.SurfaceType.Smooth
Part21.BrickColor = BrickColor.new("Really black")
Part21.TopSurface = Enum.SurfaceType.Smooth
Part21.brickColor = BrickColor.new("Really black")
Part22.Parent = Model0
Part22.CFrame = CFrame.new(37.8000107, 2.43314004, -48.3065414, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part22.Orientation = Vector3.new(-25, 0, 90)
Part22.Position = Vector3.new(37.8000107, 2.43314004, -48.3065414)
Part22.Rotation = Vector3.new(-25, 0, 90)
Part22.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part22.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part22.BottomSurface = Enum.SurfaceType.Smooth
Part22.BrickColor = BrickColor.new("Bright bluish green")
Part22.TopSurface = Enum.SurfaceType.Smooth
Part22.brickColor = BrickColor.new("Bright bluish green")
Part23.Parent = Model0
Part23.CFrame = CFrame.new(37.8000107, 2.32128477, -47.9992294, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part23.Orientation = Vector3.new(-25, 0, 90)
Part23.Position = Vector3.new(37.8000107, 2.32128477, -47.9992294)
Part23.Rotation = Vector3.new(-25, 0, 90)
Part23.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part23.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part23.BottomSurface = Enum.SurfaceType.Smooth
Part23.BrickColor = BrickColor.new("Bright bluish green")
Part23.TopSurface = Enum.SurfaceType.Smooth
Part23.brickColor = BrickColor.new("Bright bluish green")
Part24.Parent = Model0
Part24.CFrame = CFrame.new(37.8000107, 2.97828531, -49.3262177, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part24.Orientation = Vector3.new(-25, 0, 90)
Part24.Position = Vector3.new(37.8000107, 2.97828531, -49.3262177)
Part24.Rotation = Vector3.new(-25, 0, 90)
Part24.Color = Color3.new(0, 0.337255, 0.368627)
Part24.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part24.BottomSurface = Enum.SurfaceType.Smooth
Part24.BrickColor = BrickColor.new("Navy blue")
Part24.TopSurface = Enum.SurfaceType.Smooth
Part24.brickColor = BrickColor.new("Navy blue")
Part25.Parent = Model0
Part25.CFrame = CFrame.new(37.8000107, 2.86643171, -49.0189018, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part25.Orientation = Vector3.new(-25, 0, 90)
Part25.Position = Vector3.new(37.8000107, 2.86643171, -49.0189018)
Part25.Rotation = Vector3.new(-25, 0, 90)
Part25.Color = Color3.new(0, 0.337255, 0.368627)
Part25.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part25.BottomSurface = Enum.SurfaceType.Smooth
Part25.BrickColor = BrickColor.new("Navy blue")
Part25.TopSurface = Enum.SurfaceType.Smooth
Part25.brickColor = BrickColor.new("Navy blue")
Part26.Parent = Model0
Part26.CFrame = CFrame.new(37.8000107, 2.76870108, -49.2284851, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part26.Orientation = Vector3.new(-25, 0, 90)
Part26.Position = Vector3.new(37.8000107, 2.76870108, -49.2284851)
Part26.Rotation = Vector3.new(-25, 0, 90)
Part26.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part26.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part26.BottomSurface = Enum.SurfaceType.Smooth
Part26.BrickColor = BrickColor.new("Bright bluish green")
Part26.TopSurface = Enum.SurfaceType.Smooth
Part26.brickColor = BrickColor.new("Bright bluish green")
Part27.Parent = Model0
Part27.CFrame = CFrame.new(37.8000107, 2.88055468, -49.5358009, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part27.Orientation = Vector3.new(-25, 0, 90)
Part27.Position = Vector3.new(37.8000107, 2.88055468, -49.5358009)
Part27.Rotation = Vector3.new(-25, 0, 90)
Part27.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part27.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part27.BottomSurface = Enum.SurfaceType.Smooth
Part27.BrickColor = BrickColor.new("Bright bluish green")
Part27.TopSurface = Enum.SurfaceType.Smooth
Part27.brickColor = BrickColor.new("Bright bluish green")
Part28.Parent = Model0
Part28.CFrame = CFrame.new(37.8000107, 2.09757757, -47.3845978, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part28.Orientation = Vector3.new(-25, 0, 90)
Part28.Position = Vector3.new(37.8000107, 2.09757757, -47.3845978)
Part28.Rotation = Vector3.new(-25, 0, 90)
Part28.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part28.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part28.BottomSurface = Enum.SurfaceType.Smooth
Part28.BrickColor = BrickColor.new("Bright bluish green")
Part28.TopSurface = Enum.SurfaceType.Smooth
Part28.brickColor = BrickColor.new("Bright bluish green")
Part29.Parent = Model0
Part29.CFrame = CFrame.new(37.8000107, 1.85975075, -46.2530708, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part29.Orientation = Vector3.new(-25, 0, 90)
Part29.Position = Vector3.new(37.8000107, 1.85975075, -46.2530708)
Part29.Rotation = Vector3.new(-25, 0, 90)
Part29.Color = Color3.new(0.627451, 0.372549, 0.207843)
Part29.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part29.BottomSurface = Enum.SurfaceType.Smooth
Part29.BrickColor = BrickColor.new("Dark orange")
Part29.TopSurface = Enum.SurfaceType.Smooth
Part29.brickColor = BrickColor.new("Dark orange")
Part30.Parent = Model0
Part30.CFrame = CFrame.new(37.8000107, 1.51769233, -46.986618, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part30.Orientation = Vector3.new(-25, 0, 90)
Part30.Position = Vector3.new(37.8000107, 1.51769233, -46.986618)
Part30.Rotation = Vector3.new(-25, 0, 90)
Part30.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part30.Size = Vector3.new(0.231250122, 0.231250122, 0.462500244)
Part30.BottomSurface = Enum.SurfaceType.Smooth
Part30.BrickColor = BrickColor.new("Really black")
Part30.TopSurface = Enum.SurfaceType.Smooth
Part30.brickColor = BrickColor.new("Really black")
Part31.Parent = Model0
Part31.CFrame = CFrame.new(37.8000107, 2.19530988, -47.1750107, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part31.Orientation = Vector3.new(-25, 0, 90)
Part31.Position = Vector3.new(37.8000107, 2.19530988, -47.1750107)
Part31.Rotation = Vector3.new(-25, 0, 90)
Part31.Color = Color3.new(0, 0.337255, 0.368627)
Part31.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part31.BottomSurface = Enum.SurfaceType.Smooth
Part31.BrickColor = BrickColor.new("Navy blue")
Part31.TopSurface = Enum.SurfaceType.Smooth
Part31.brickColor = BrickColor.new("Navy blue")
Part32.Parent = Model0
Part32.CFrame = CFrame.new(37.8000107, 2.49556208, -46.8047142, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part32.Orientation = Vector3.new(-25, 0, 90)
Part32.Position = Vector3.new(37.8000107, 2.49556208, -46.8047142)
Part32.Rotation = Vector3.new(-25, 0, 90)
Part32.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part32.Size = Vector3.new(0.462500244, 0.231250122, 0.231250122)
Part32.BottomSurface = Enum.SurfaceType.Smooth
Part32.BrickColor = BrickColor.new("Bright bluish green")
Part32.TopSurface = Enum.SurfaceType.Smooth
Part32.brickColor = BrickColor.new("Bright bluish green")
Part33.Parent = Model0
Part33.CFrame = CFrame.new(37.8000107, 3.07601619, -49.1166306, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part33.Orientation = Vector3.new(-25, 0, 90)
Part33.Position = Vector3.new(37.8000107, 3.07601619, -49.1166306)
Part33.Rotation = Vector3.new(-25, 0, 90)
Part33.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part33.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part33.BottomSurface = Enum.SurfaceType.Smooth
Part33.BrickColor = BrickColor.new("Bright bluish green")
Part33.TopSurface = Enum.SurfaceType.Smooth
Part33.brickColor = BrickColor.new("Bright bluish green")
Part34.Parent = Model0
Part34.CFrame = CFrame.new(37.8000107, 2.96416426, -48.8093109, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part34.Orientation = Vector3.new(-25, 0, 90)
Part34.Position = Vector3.new(37.8000107, 2.96416426, -48.8093109)
Part34.Rotation = Vector3.new(-25, 0, 90)
Part34.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part34.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part34.BottomSurface = Enum.SurfaceType.Smooth
Part34.BrickColor = BrickColor.new("Bright bluish green")
Part34.TopSurface = Enum.SurfaceType.Smooth
Part34.brickColor = BrickColor.new("Bright bluish green")
Part35.Parent = Model0
Part35.CFrame = CFrame.new(37.8000107, 2.62860155, -47.8873711, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part35.Orientation = Vector3.new(-25, 0, 90)
Part35.Position = Vector3.new(37.8000107, 2.62860155, -47.8873711)
Part35.Rotation = Vector3.new(-25, 0, 90)
Part35.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part35.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part35.BottomSurface = Enum.SurfaceType.Smooth
Part35.BrickColor = BrickColor.new("Bright bluish green")
Part35.TopSurface = Enum.SurfaceType.Smooth
Part35.brickColor = BrickColor.new("Bright bluish green")
Part36.Parent = Model0
Part36.CFrame = CFrame.new(37.8000107, 2.74045372, -48.1946907, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part36.Orientation = Vector3.new(-25, 0, 90)
Part36.Position = Vector3.new(37.8000107, 2.74045372, -48.1946907)
Part36.Rotation = Vector3.new(-25, 0, 90)
Part36.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part36.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part36.BottomSurface = Enum.SurfaceType.Smooth
Part36.BrickColor = BrickColor.new("Bright bluish green")
Part36.TopSurface = Enum.SurfaceType.Smooth
Part36.brickColor = BrickColor.new("Bright bluish green")
Part37.Parent = Model0
Part37.CFrame = CFrame.new(37.8000107, 2.85230541, -48.5019989, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part37.Orientation = Vector3.new(-25, 0, 90)
Part37.Position = Vector3.new(37.8000107, 2.85230541, -48.5019989)
Part37.Rotation = Vector3.new(-25, 0, 90)
Part37.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part37.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part37.BottomSurface = Enum.SurfaceType.Smooth
Part37.BrickColor = BrickColor.new("Bright bluish green")
Part37.TopSurface = Enum.SurfaceType.Smooth
Part37.brickColor = BrickColor.new("Bright bluish green")
Part38.Parent = Model0
Part38.CFrame = CFrame.new(37.8000107, 2.40489769, -47.2727432, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part38.Orientation = Vector3.new(-25, 0, 90)
Part38.Position = Vector3.new(37.8000107, 2.40489769, -47.2727432)
Part38.Rotation = Vector3.new(-25, 0, 90)
Part38.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part38.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part38.BottomSurface = Enum.SurfaceType.Smooth
Part38.BrickColor = BrickColor.new("Bright bluish green")
Part38.TopSurface = Enum.SurfaceType.Smooth
Part38.brickColor = BrickColor.new("Bright bluish green")
Part39.Parent = Model0
Part39.CFrame = CFrame.new(37.8000107, 3.18786621, -49.4239464, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part39.Orientation = Vector3.new(-25, 0, 90)
Part39.Position = Vector3.new(37.8000107, 3.18786621, -49.4239464)
Part39.Rotation = Vector3.new(-25, 0, 90)
Part39.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part39.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part39.BottomSurface = Enum.SurfaceType.Smooth
Part39.BrickColor = BrickColor.new("Bright bluish green")
Part39.TopSurface = Enum.SurfaceType.Smooth
Part39.brickColor = BrickColor.new("Bright bluish green")
Part40.Parent = Model0
Part40.CFrame = CFrame.new(37.8000107, 2.51674628, -47.5800591, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part40.Orientation = Vector3.new(-25, 0, 90)
Part40.Position = Vector3.new(37.8000107, 2.51674628, -47.5800591)
Part40.Rotation = Vector3.new(-25, 0, 90)
Part40.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part40.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part40.BottomSurface = Enum.SurfaceType.Smooth
Part40.BrickColor = BrickColor.new("Bright bluish green")
Part40.TopSurface = Enum.SurfaceType.Smooth
Part40.brickColor = BrickColor.new("Bright bluish green")
Part41.Parent = Model0
Part41.CFrame = CFrame.new(37.8000107, 2.59329438, -46.5951271, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part41.Orientation = Vector3.new(-25, 0, 90)
Part41.Position = Vector3.new(37.8000107, 2.59329438, -46.5951271)
Part41.Rotation = Vector3.new(-25, 0, 90)
Part41.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part41.Size = Vector3.new(0.462500244, 0.231250122, 0.231250122)
Part41.BottomSurface = Enum.SurfaceType.Smooth
Part41.BrickColor = BrickColor.new("Really black")
Part41.TopSurface = Enum.SurfaceType.Smooth
Part41.brickColor = BrickColor.new("Really black")
Part42.Parent = Model0
Part42.CFrame = CFrame.new(37.8000107, 2.30716538, -47.4823303, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part42.Orientation = Vector3.new(-25, 0, 90)
Part42.Position = Vector3.new(37.8000107, 2.30716538, -47.4823303)
Part42.Rotation = Vector3.new(-25, 0, 90)
Part42.Color = Color3.new(0, 0.337255, 0.368627)
Part42.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part42.BottomSurface = Enum.SurfaceType.Smooth
Part42.BrickColor = BrickColor.new("Navy blue")
Part42.TopSurface = Enum.SurfaceType.Smooth
Part42.brickColor = BrickColor.new("Navy blue")
Part43.Name = "Handle"
Part43.Parent = Model0
Part43.CFrame = CFrame.new(37.8000107, 1.63604343, -45.6384392, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part43.Orientation = Vector3.new(-25, 0, 90)
Part43.Position = Vector3.new(37.8000107, 1.63604343, -45.6384392)
Part43.Rotation = Vector3.new(-25, 0, 90)
Part43.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part43.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part43.BottomSurface = Enum.SurfaceType.Smooth
Part43.BrickColor = BrickColor.new("Bright bluish green")
Part43.TopSurface = Enum.SurfaceType.Smooth
Part43.brickColor = BrickColor.new("Bright bluish green")
Weld44.Parent = Part43
Weld44.C0 = CFrame.new(0.693752289, 0, -0.925003052, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld44.Part0 = Part43
Weld44.Part1 = Part115
Weld44.part1 = Part115
Weld45.Parent = Part43
Weld45.C0 = CFrame.new(0, 0, -0.231250763, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld45.Part0 = Part43
Weld45.Part1 = Part116
Weld45.part1 = Part116
Weld46.Parent = Part43
Weld46.C0 = CFrame.new(0.462501526, 0, -1.61875153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld46.Part0 = Part43
Weld46.Part1 = Part117
Weld46.part1 = Part117
Weld47.Parent = Part43
Weld47.C0 = CFrame.new(0.925003052, 0, -0.693756104, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld47.Part0 = Part43
Weld47.Part1 = Part118
Weld47.part1 = Part118
Weld48.Parent = Part43
Weld48.C0 = CFrame.new(1.27187729, 0, -0.462501526, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld48.Part0 = Part43
Weld48.Part1 = Part119
Weld48.part1 = Part119
Weld49.Parent = Part43
Weld49.C0 = CFrame.new(1.85000229, 0, -0.462501526, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld49.Part0 = Part43
Weld49.Part1 = Part120
Weld49.part1 = Part120
Weld50.Parent = Part43
Weld50.C0 = CFrame.new(1.61875153, 0, -0.693756104, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld50.Part0 = Part43
Weld50.Part1 = Part121
Weld50.part1 = Part121
Weld51.Parent = Part43
Weld51.C0 = CFrame.new(0.462501526, 0, -0.231250763, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld51.Part0 = Part43
Weld51.Part1 = Part122
Weld51.part1 = Part122
Weld52.Parent = Part43
Weld52.C0 = CFrame.new(0.231250763, 0, -0.231250763, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld52.Part0 = Part43
Weld52.Part1 = Part123
Weld52.part1 = Part123
Weld53.Parent = Part43
Weld53.C0 = CFrame.new(1.734375, 0, -0.231250763, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld53.Part0 = Part43
Weld53.Part1 = Part124
Weld53.part1 = Part124
Weld54.Parent = Part43
Weld54.C0 = CFrame.new(0.693752289, 0, -0.693756104, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld54.Part0 = Part43
Weld54.Part1 = Part125
Weld54.part1 = Part125
Weld55.Parent = Part43
Weld55.C0 = CFrame.new(1.61875153, 0, -0.462501526, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld55.Part0 = Part43
Weld55.Part1 = Part126
Weld55.part1 = Part126
Weld56.Parent = Part43
Weld56.C0 = CFrame.new(0.231250763, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld56.Part0 = Part43
Weld56.Part1 = Part127
Weld56.part1 = Part127
Weld57.Parent = Part43
Weld57.C0 = CFrame.new(0.462501526, 0, -0.693756104, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld57.Part0 = Part43
Weld57.Part1 = Part128
Weld57.part1 = Part128
Weld58.Parent = Part43
Weld58.C0 = CFrame.new(2.3125, 0, -2.54375458, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld58.Part0 = Part43
Weld58.Part1 = Part129
Weld58.part1 = Part129
Weld59.Parent = Part43
Weld59.C0 = CFrame.new(3.00625229, 0, -3.0062561, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld59.Part0 = Part43
Weld59.Part1 = Part130
Weld59.part1 = Part130
Weld60.Parent = Part43
Weld60.C0 = CFrame.new(1.38750458, 0, -1.61875153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld60.Part0 = Part43
Weld60.Part1 = Part131
Weld60.part1 = Part131
Weld61.Parent = Part43
Weld61.C0 = CFrame.new(0.693752289, 0, -1.61875153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld61.Part0 = Part43
Weld61.Part1 = Part132
Weld61.part1 = Part132
Weld62.Parent = Part43
Weld62.C0 = CFrame.new(2.3125, 0, -2.3125, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld62.Part0 = Part43
Weld62.Part1 = Part133
Weld62.part1 = Part133
Weld63.Parent = Part43
Weld63.C0 = CFrame.new(2.08125305, 0, -2.08125305, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld63.Part0 = Part43
Weld63.Part1 = Part134
Weld63.part1 = Part134
Weld64.Parent = Part43
Weld64.C0 = CFrame.new(1.61875153, 0, -1.61875153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld64.Part0 = Part43
Weld64.Part1 = Part135
Weld64.part1 = Part135
Weld65.Parent = Part43
Weld65.C0 = CFrame.new(1.85000229, 0, -1.8500061, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld65.Part0 = Part43
Weld65.Part1 = Part136
Weld65.part1 = Part136
Weld66.Parent = Part43
Weld66.C0 = CFrame.new(2.08125305, 0, -2.3125, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld66.Part0 = Part43
Weld66.Part1 = Part137
Weld66.part1 = Part137
Weld67.Parent = Part43
Weld67.C0 = CFrame.new(1.27187729, 0, -0.925003052, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld67.Part0 = Part43
Weld67.Part1 = Part138
Weld67.part1 = Part138
Weld68.Parent = Part43
Weld68.C0 = CFrame.new(2.77500534, 0, -2.3125, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld68.Part0 = Part43
Weld68.Part1 = Part139
Weld68.part1 = Part139
Weld69.Parent = Part43
Weld69.C0 = CFrame.new(-0.231246948, 0, -0.115631104, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld69.Part0 = Part43
Weld69.Part1 = Part140
Weld69.part1 = Part140
Weld70.Parent = Part43
Weld70.C0 = CFrame.new(0.693752289, 0, -0.462501526, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld70.Part0 = Part43
Weld70.Part1 = Part141
Weld70.part1 = Part141
Weld71.Parent = Part43
Weld71.C0 = CFrame.new(0.231250763, 0, -0.462501526, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld71.Part0 = Part43
Weld71.Part1 = Part142
Weld71.part1 = Part142
Weld72.Parent = Part43
Weld72.C0 = CFrame.new(0.925003052, 0, -1.2718811, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld72.Part0 = Part43
Weld72.Part1 = Part1
Weld72.part1 = Part1
Weld73.Parent = Part43
Weld73.C0 = CFrame.new(2.54375458, 0, -2.08125305, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld73.Part0 = Part43
Weld73.Part1 = Part2
Weld73.part1 = Part2
Weld74.Parent = Part43
Weld74.C0 = CFrame.new(0, 0, 0.231246948, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld74.Part0 = Part43
Weld74.Part1 = Part3
Weld74.part1 = Part3
Weld75.Parent = Part43
Weld75.C0 = CFrame.new(2.08125305, 0, -1.61875153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld75.Part0 = Part43
Weld75.Part1 = Part4
Weld75.part1 = Part4
Weld76.Parent = Part43
Weld76.C0 = CFrame.new(3.00625229, 0, -2.54375458, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld76.Part0 = Part43
Weld76.Part1 = Part5
Weld76.part1 = Part5
Weld77.Parent = Part43
Weld77.C0 = CFrame.new(0.231250763, 0, -1.734375, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld77.Part0 = Part43
Weld77.Part1 = Part6
Weld77.part1 = Part6
Weld78.Parent = Part43
Weld78.C0 = CFrame.new(1.85000229, 0, -1.38750458, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld78.Part0 = Part43
Weld78.Part1 = Part7
Weld78.part1 = Part7
Weld79.Parent = Part43
Weld79.C0 = CFrame.new(1.61875153, 0, -1.15625, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld79.Part0 = Part43
Weld79.Part1 = Part8
Weld79.part1 = Part8
Weld80.Parent = Part43
Weld80.C0 = CFrame.new(0.925003052, 0, -0.925003052, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld80.Part0 = Part43
Weld80.Part1 = Part9
Weld80.part1 = Part9
Weld81.Parent = Part43
Weld81.C0 = CFrame.new(2.3125, 0, -1.8500061, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld81.Part0 = Part43
Weld81.Part1 = Part10
Weld81.part1 = Part10
Weld82.Parent = Part43
Weld82.C0 = CFrame.new(0.693752289, 0, -1.2718811, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld82.Part0 = Part43
Weld82.Part1 = Part11
Weld82.part1 = Part11
Weld83.Parent = Part43
Weld83.C0 = CFrame.new(2.08125305, 0, -2.54375458, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld83.Part0 = Part43
Weld83.Part1 = Part12
Weld83.part1 = Part12
Weld84.Parent = Part43
Weld84.C0 = CFrame.new(1.85000229, 0, -2.3125, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld84.Part0 = Part43
Weld84.Part1 = Part13
Weld84.part1 = Part13
Weld85.Parent = Part43
Weld85.C0 = CFrame.new(2.54375458, 0, -3.0062561, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld85.Part0 = Part43
Weld85.Part1 = Part14
Weld85.part1 = Part14
Weld86.Parent = Part43
Weld86.C0 = CFrame.new(1.38750458, 0, -1.8500061, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld86.Part0 = Part43
Weld86.Part1 = Part15
Weld86.part1 = Part15
Weld87.Parent = Part43
Weld87.C0 = CFrame.new(2.3125, 0, -2.77500534, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld87.Part0 = Part43
Weld87.Part1 = Part16
Weld87.part1 = Part16
Weld88.Parent = Part43
Weld88.C0 = CFrame.new(1.61875153, 0, -2.08125305, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld88.Part0 = Part43
Weld88.Part1 = Part17
Weld88.part1 = Part17
Weld89.Parent = Part43
Weld89.C0 = CFrame.new(1.15625, 0, -1.61875153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld89.Part0 = Part43
Weld89.Part1 = Part18
Weld89.part1 = Part18
Weld90.Parent = Part43
Weld90.C0 = CFrame.new(0.462501526, 0, -1.8500061, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld90.Part0 = Part43
Weld90.Part1 = Part19
Weld90.part1 = Part19
Weld91.Parent = Part43
Weld91.C0 = CFrame.new(2.890625, 0, -3.23750305, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld91.Part0 = Part43
Weld91.Part1 = Part20
Weld91.part1 = Part20
Weld92.Parent = Part43
Weld92.C0 = CFrame.new(3.23750305, 0, -3.0062561, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld92.Part0 = Part43
Weld92.Part1 = Part21
Weld92.part1 = Part21
Weld93.Parent = Part43
Weld93.C0 = CFrame.new(1.85000229, 0, -2.08125305, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld93.Part0 = Part43
Weld93.Part1 = Part22
Weld93.part1 = Part22
Weld94.Parent = Part43
Weld94.C0 = CFrame.new(1.61875153, 0, -1.8500061, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld94.Part0 = Part43
Weld94.Part1 = Part23
Weld94.part1 = Part23
Weld95.Parent = Part43
Weld95.C0 = CFrame.new(2.77500534, 0, -2.77500534, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld95.Part0 = Part43
Weld95.Part1 = Part24
Weld95.part1 = Part24
Weld96.Parent = Part43
Weld96.C0 = CFrame.new(2.54375458, 0, -2.54375458, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld96.Part0 = Part43
Weld96.Part1 = Part25
Weld96.part1 = Part25
Weld97.Parent = Part43
Weld97.C0 = CFrame.new(2.54375458, 0, -2.77500534, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld97.Part0 = Part43
Weld97.Part1 = Part26
Weld97.part1 = Part26
Weld98.Parent = Part43
Weld98.C0 = CFrame.new(2.77500534, 0, -3.0062561, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld98.Part0 = Part43
Weld98.Part1 = Part27
Weld98.part1 = Part27
Weld99.Parent = Part43
Weld99.C0 = CFrame.new(1.15625, 0, -1.38750458, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld99.Part0 = Part43
Weld99.Part1 = Part28
Weld99.part1 = Part28
Weld100.Parent = Part43
Weld100.C0 = CFrame.new(0.462501526, 0, -0.462501526, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld100.Part0 = Part43
Weld100.Part1 = Part29
Weld100.part1 = Part29
Weld101.Parent = Part43
Weld101.C0 = CFrame.new(0.462501526, 0, -1.2718811, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld101.Part0 = Part43
Weld101.Part1 = Part30
Weld101.part1 = Part30
Weld102.Parent = Part43
Weld102.C0 = CFrame.new(1.15625, 0, -1.15625, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld102.Part0 = Part43
Weld102.Part1 = Part31
Weld102.part1 = Part31
Weld103.Parent = Part43
Weld103.C0 = CFrame.new(1.27187729, 0, -0.693756104, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld103.Part0 = Part43
Weld103.Part1 = Part32
Weld103.part1 = Part32
Weld104.Parent = Part43
Weld104.C0 = CFrame.new(2.77500534, 0, -2.54375458, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld104.Part0 = Part43
Weld104.Part1 = Part33
Weld104.part1 = Part33
Weld105.Parent = Part43
Weld105.C0 = CFrame.new(2.54375458, 0, -2.3125, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld105.Part0 = Part43
Weld105.Part1 = Part34
Weld105.part1 = Part34
Weld106.Parent = Part43
Weld106.C0 = CFrame.new(1.85000229, 0, -1.61875153, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld106.Part0 = Part43
Weld106.Part1 = Part35
Weld106.part1 = Part35
Weld107.Parent = Part43
Weld107.C0 = CFrame.new(2.08125305, 0, -1.8500061, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld107.Part0 = Part43
Weld107.Part1 = Part36
Weld107.part1 = Part36
Weld108.Parent = Part43
Weld108.C0 = CFrame.new(2.3125, 0, -2.08125305, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld108.Part0 = Part43
Weld108.Part1 = Part37
Weld108.part1 = Part37
Weld109.Parent = Part43
Weld109.C0 = CFrame.new(1.38750458, 0, -1.15625, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld109.Part0 = Part43
Weld109.Part1 = Part38
Weld109.part1 = Part38
Weld110.Parent = Part43
Weld110.C0 = CFrame.new(3.00625229, 0, -2.77500534, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld110.Part0 = Part43
Weld110.Part1 = Part39
Weld110.part1 = Part39
Weld111.Parent = Part43
Weld111.C0 = CFrame.new(1.61875153, 0, -1.38750458, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld111.Part0 = Part43
Weld111.Part1 = Part40
Weld111.part1 = Part40
Weld112.Parent = Part43
Weld112.C0 = CFrame.new(1.27187729, 0, -0.462501526, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld112.Part0 = Part43
Weld112.Part1 = Part41
Weld112.part1 = Part41
Weld113.Parent = Part43
Weld113.C0 = CFrame.new(1.38750458, 0, -1.38750458, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Weld113.Part0 = Part43
Weld113.Part1 = Part42
Weld113.part1 = Part42
Weld114.Parent = Part43
Weld114.C0 = CFrame.new(2.0914669, 0, -2.08925247, 0.707107186, 0, -0.707106352, 0, 1, 0, 0.707106352, 0, 0.707107186)
Weld114.Part0 = Part43
Weld114.Part1 = Part143
Weld114.part1 = Part143
Part115.Parent = Model0
Part115.CFrame = CFrame.new(37.8000107, 1.87387371, -46.7699699, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part115.Orientation = Vector3.new(-25, 0, 90)
Part115.Position = Vector3.new(37.8000107, 1.87387371, -46.7699699)
Part115.Rotation = Vector3.new(-25, 0, 90)
Part115.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part115.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part115.BottomSurface = Enum.SurfaceType.Smooth
Part115.BrickColor = BrickColor.new("Really black")
Part115.TopSurface = Enum.SurfaceType.Smooth
Part115.brickColor = BrickColor.new("Really black")
Part116.Parent = Model0
Part116.CFrame = CFrame.new(37.8000107, 1.53831267, -45.8480225, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part116.Orientation = Vector3.new(-25, 0, 90)
Part116.Position = Vector3.new(37.8000107, 1.53831267, -45.8480225)
Part116.Rotation = Vector3.new(-25, 0, 90)
Part116.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part116.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part116.BottomSurface = Enum.SurfaceType.Smooth
Part116.BrickColor = BrickColor.new("Really black")
Part116.TopSurface = Enum.SurfaceType.Smooth
Part116.brickColor = BrickColor.new("Really black")
Part117.Parent = Model0
Part117.CFrame = CFrame.new(37.8000107, 1.37109876, -47.3009872, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part117.Orientation = Vector3.new(-25, 0, 90)
Part117.Position = Vector3.new(37.8000107, 1.37109876, -47.3009872)
Part117.Rotation = Vector3.new(-25, 0, 90)
Part117.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part117.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part117.BottomSurface = Enum.SurfaceType.Smooth
Part117.BrickColor = BrickColor.new("Bright bluish green")
Part117.TopSurface = Enum.SurfaceType.Smooth
Part117.brickColor = BrickColor.new("Bright bluish green")
Part118.Parent = Model0
Part118.CFrame = CFrame.new(37.8000107, 2.18118715, -46.6581192, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part118.Orientation = Vector3.new(-25, 0, 90)
Part118.Position = Vector3.new(37.8000107, 2.18118715, -46.6581192)
Part118.Rotation = Vector3.new(-25, 0, 90)
Part118.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part118.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part118.BottomSurface = Enum.SurfaceType.Smooth
Part118.BrickColor = BrickColor.new("Really black")
Part118.TopSurface = Enum.SurfaceType.Smooth
Part118.brickColor = BrickColor.new("Really black")
Part119.Parent = Model0
Part119.CFrame = CFrame.new(37.8000107, 2.59329438, -46.5951271, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part119.Orientation = Vector3.new(-25, 0, 90)
Part119.Position = Vector3.new(37.8000107, 2.59329438, -46.5951271)
Part119.Rotation = Vector3.new(-25, 0, 90)
Part119.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part119.Size = Vector3.new(0.462500244, 0.231250122, 0.231250122)
Part119.BottomSurface = Enum.SurfaceType.Smooth
Part119.BrickColor = BrickColor.new("Really black")
Part119.TopSurface = Enum.SurfaceType.Smooth
Part119.brickColor = BrickColor.new("Really black")
Part120.Parent = Model0
Part120.CFrame = CFrame.new(37.8000107, 3.11725378, -46.8394508, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part120.Orientation = Vector3.new(-25, 0, 90)
Part120.Position = Vector3.new(37.8000107, 3.11725378, -46.8394508)
Part120.Rotation = Vector3.new(-25, 0, 90)
Part120.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part120.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part120.BottomSurface = Enum.SurfaceType.Smooth
Part120.BrickColor = BrickColor.new("Really black")
Part120.TopSurface = Enum.SurfaceType.Smooth
Part120.brickColor = BrickColor.new("Really black")
Part121.Parent = Model0
Part121.CFrame = CFrame.new(37.8000107, 2.809937, -46.9513092, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part121.Orientation = Vector3.new(-25, 0, 90)
Part121.Position = Vector3.new(37.8000107, 2.809937, -46.9513092)
Part121.Rotation = Vector3.new(-25, 0, 90)
Part121.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part121.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part121.BottomSurface = Enum.SurfaceType.Smooth
Part121.BrickColor = BrickColor.new("Really black")
Part121.TopSurface = Enum.SurfaceType.Smooth
Part121.brickColor = BrickColor.new("Really black")
Part122.Parent = Model0
Part122.CFrame = CFrame.new(37.8000107, 1.9574815, -46.0434837, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part122.Orientation = Vector3.new(-25, 0, 90)
Part122.Position = Vector3.new(37.8000107, 1.9574815, -46.0434837)
Part122.Rotation = Vector3.new(-25, 0, 90)
Part122.Color = Color3.new(0.513726, 0.301961, 0.168627)
Part122.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part122.BottomSurface = Enum.SurfaceType.Smooth
Part122.BrickColor = BrickColor.new("Rust")
Part122.TopSurface = Enum.SurfaceType.Smooth
Part122.brickColor = BrickColor.new("Rust")
Part123.Parent = Model0
Part123.CFrame = CFrame.new(37.8000107, 1.74789715, -45.945755, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part123.Orientation = Vector3.new(-25, 0, 90)
Part123.Position = Vector3.new(37.8000107, 1.74789715, -45.945755)
Part123.Rotation = Vector3.new(-25, 0, 90)
Part123.Color = Color3.new(0.627451, 0.372549, 0.207843)
Part123.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part123.BottomSurface = Enum.SurfaceType.Smooth
Part123.BrickColor = BrickColor.new("Dark orange")
Part123.TopSurface = Enum.SurfaceType.Smooth
Part123.brickColor = BrickColor.new("Dark orange")
Part124.Parent = Model0
Part124.CFrame = CFrame.new(37.8000107, 3.11019039, -46.5810013, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part124.Orientation = Vector3.new(-25, 0, 90)
Part124.Position = Vector3.new(37.8000107, 3.11019039, -46.5810013)
Part124.Rotation = Vector3.new(-25, 0, 90)
Part124.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part124.Size = Vector3.new(0.462500244, 0.231250122, 0.231250122)
Part124.BottomSurface = Enum.SurfaceType.Smooth
Part124.BrickColor = BrickColor.new("Really black")
Part124.TopSurface = Enum.SurfaceType.Smooth
Part124.brickColor = BrickColor.new("Really black")
Part125.Parent = Model0
Part125.CFrame = CFrame.new(37.8000107, 1.9716028, -46.5603867, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part125.Orientation = Vector3.new(-25, 0, 90)
Part125.Position = Vector3.new(37.8000107, 1.9716028, -46.5603867)
Part125.Rotation = Vector3.new(-25, 0, 90)
Part125.Color = Color3.new(0.627451, 0.372549, 0.207843)
Part125.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part125.BottomSurface = Enum.SurfaceType.Smooth
Part125.BrickColor = BrickColor.new("Dark orange")
Part125.TopSurface = Enum.SurfaceType.Smooth
Part125.brickColor = BrickColor.new("Dark orange")
Part126.Parent = Model0
Part126.CFrame = CFrame.new(37.8000107, 2.90766907, -46.7417221, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part126.Orientation = Vector3.new(-25, 0, 90)
Part126.Position = Vector3.new(37.8000107, 2.90766907, -46.7417221)
Part126.Rotation = Vector3.new(-25, 0, 90)
Part126.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part126.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part126.BottomSurface = Enum.SurfaceType.Smooth
Part126.BrickColor = BrickColor.new("Bright bluish green")
Part126.TopSurface = Enum.SurfaceType.Smooth
Part126.brickColor = BrickColor.new("Bright bluish green")
Part127.Parent = Model0
Part127.CFrame = CFrame.new(37.8000107, 1.84562778, -45.7361717, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part127.Orientation = Vector3.new(-25, 0, 90)
Part127.Position = Vector3.new(37.8000107, 1.84562778, -45.7361717)
Part127.Rotation = Vector3.new(-25, 0, 90)
Part127.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part127.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part127.BottomSurface = Enum.SurfaceType.Smooth
Part127.BrickColor = BrickColor.new("Really black")
Part127.TopSurface = Enum.SurfaceType.Smooth
Part127.brickColor = BrickColor.new("Really black")
Part128.Parent = Model0
Part128.CFrame = CFrame.new(37.8000107, 1.76201844, -46.4626579, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part128.Orientation = Vector3.new(-25, 0, 90)
Part128.Position = Vector3.new(37.8000107, 1.76201844, -46.4626579)
Part128.Rotation = Vector3.new(-25, 0, 90)
Part128.Color = Color3.new(0.513726, 0.301961, 0.168627)
Part128.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part128.BottomSurface = Enum.SurfaceType.Smooth
Part128.BrickColor = BrickColor.new("Rust")
Part128.TopSurface = Enum.SurfaceType.Smooth
Part128.brickColor = BrickColor.new("Rust")
Part129.Parent = Model0
Part129.CFrame = CFrame.new(37.8000107, 2.6568439, -48.9211693, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part129.Orientation = Vector3.new(-25, 0, 90)
Part129.Position = Vector3.new(37.8000107, 2.6568439, -48.9211693)
Part129.Rotation = Vector3.new(-25, 0, 90)
Part129.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part129.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part129.BottomSurface = Enum.SurfaceType.Smooth
Part129.BrickColor = BrickColor.new("Bright bluish green")
Part129.TopSurface = Enum.SurfaceType.Smooth
Part129.brickColor = BrickColor.new("Bright bluish green")
Part130.Parent = Model0
Part130.CFrame = CFrame.new(37.8000107, 3.09013557, -49.6335297, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part130.Orientation = Vector3.new(-25, 0, 90)
Part130.Position = Vector3.new(37.8000107, 3.09013557, -49.6335297)
Part130.Rotation = Vector3.new(-25, 0, 90)
Part130.Color = Color3.new(0, 0.337255, 0.368627)
Part130.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part130.BottomSurface = Enum.SurfaceType.Smooth
Part130.BrickColor = BrickColor.new("Navy blue")
Part130.TopSurface = Enum.SurfaceType.Smooth
Part130.brickColor = BrickColor.new("Navy blue")
Part131.Parent = Model0
Part131.CFrame = CFrame.new(37.8000107, 2.20943642, -47.6919098, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part131.Orientation = Vector3.new(-25, 0, 90)
Part131.Position = Vector3.new(37.8000107, 2.20943642, -47.6919098)
Part131.Rotation = Vector3.new(-25, 0, 90)
Part131.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part131.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part131.BottomSurface = Enum.SurfaceType.Smooth
Part131.BrickColor = BrickColor.new("Bright bluish green")
Part131.TopSurface = Enum.SurfaceType.Smooth
Part131.brickColor = BrickColor.new("Bright bluish green")
Part132.Parent = Model0
Part132.CFrame = CFrame.new(37.8000107, 1.58068311, -47.3987198, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part132.Orientation = Vector3.new(-25, 0, 90)
Part132.Position = Vector3.new(37.8000107, 1.58068311, -47.3987198)
Part132.Rotation = Vector3.new(-25, 0, 90)
Part132.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part132.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part132.BottomSurface = Enum.SurfaceType.Smooth
Part132.BrickColor = BrickColor.new("Really black")
Part132.TopSurface = Enum.SurfaceType.Smooth
Part132.brickColor = BrickColor.new("Really black")
Part133.Parent = Model0
Part133.CFrame = CFrame.new(37.8000107, 2.75457621, -48.7115784, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part133.Orientation = Vector3.new(-25, 0, 90)
Part133.Position = Vector3.new(37.8000107, 2.75457621, -48.7115784)
Part133.Rotation = Vector3.new(-25, 0, 90)
Part133.Color = Color3.new(0, 0.337255, 0.368627)
Part133.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part133.BottomSurface = Enum.SurfaceType.Smooth
Part133.BrickColor = BrickColor.new("Navy blue")
Part133.TopSurface = Enum.SurfaceType.Smooth
Part133.brickColor = BrickColor.new("Navy blue")
Part134.Parent = Model0
Part134.CFrame = CFrame.new(37.8000107, 2.64272451, -48.4042702, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part134.Orientation = Vector3.new(-25, 0, 90)
Part134.Position = Vector3.new(37.8000107, 2.64272451, -48.4042702)
Part134.Rotation = Vector3.new(-25, 0, 90)
Part134.Color = Color3.new(0, 0.337255, 0.368627)
Part134.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part134.BottomSurface = Enum.SurfaceType.Smooth
Part134.BrickColor = BrickColor.new("Navy blue")
Part134.TopSurface = Enum.SurfaceType.Smooth
Part134.brickColor = BrickColor.new("Navy blue")
Part135.Parent = Model0
Part135.CFrame = CFrame.new(37.8000107, 2.41901731, -47.7896385, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part135.Orientation = Vector3.new(-25, 0, 90)
Part135.Position = Vector3.new(37.8000107, 2.41901731, -47.7896385)
Part135.Rotation = Vector3.new(-25, 0, 90)
Part135.Color = Color3.new(0, 0.337255, 0.368627)
Part135.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part135.BottomSurface = Enum.SurfaceType.Smooth
Part135.BrickColor = BrickColor.new("Navy blue")
Part135.TopSurface = Enum.SurfaceType.Smooth
Part135.brickColor = BrickColor.new("Navy blue")
Part136.Parent = Model0
Part136.CFrame = CFrame.new(37.8000107, 2.53086925, -48.0969582, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part136.Orientation = Vector3.new(-25, 0, 90)
Part136.Position = Vector3.new(37.8000107, 2.53086925, -48.0969582)
Part136.Rotation = Vector3.new(-25, 0, 90)
Part136.Color = Color3.new(0, 0.337255, 0.368627)
Part136.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part136.BottomSurface = Enum.SurfaceType.Smooth
Part136.BrickColor = BrickColor.new("Navy blue")
Part136.TopSurface = Enum.SurfaceType.Smooth
Part136.brickColor = BrickColor.new("Navy blue")
Part137.Parent = Model0
Part137.CFrame = CFrame.new(37.8000107, 2.54499531, -48.6138496, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part137.Orientation = Vector3.new(-25, 0, 90)
Part137.Position = Vector3.new(37.8000107, 2.54499531, -48.6138496)
Part137.Rotation = Vector3.new(-25, 0, 90)
Part137.Color = Color3.new(0.00784314, 0.490196, 0.65098)
Part137.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part137.BottomSurface = Enum.SurfaceType.Smooth
Part137.BrickColor = BrickColor.new("Bright bluish green")
Part137.TopSurface = Enum.SurfaceType.Smooth
Part137.brickColor = BrickColor.new("Bright bluish green")
Part138.Parent = Model0
Part138.CFrame = CFrame.new(37.8000107, 2.39783287, -47.0142937, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part138.Orientation = Vector3.new(-25, 0, 90)
Part138.Position = Vector3.new(37.8000107, 2.39783287, -47.0142937)
Part138.Rotation = Vector3.new(-25, 0, 90)
Part138.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part138.Size = Vector3.new(0.462500244, 0.231250122, 0.231250122)
Part138.BottomSurface = Enum.SurfaceType.Smooth
Part138.BrickColor = BrickColor.new("Really black")
Part138.TopSurface = Enum.SurfaceType.Smooth
Part138.brickColor = BrickColor.new("Really black")
Part139.Parent = Model0
Part139.CFrame = CFrame.new(37.8000107, 3.17374849, -48.9070435, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part139.Orientation = Vector3.new(-25, 0, 90)
Part139.Position = Vector3.new(37.8000107, 3.17374849, -48.9070435)
Part139.Rotation = Vector3.new(-25, 0, 90)
Part139.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part139.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part139.BottomSurface = Enum.SurfaceType.Smooth
Part139.BrickColor = BrickColor.new("Really black")
Part139.TopSurface = Enum.SurfaceType.Smooth
Part139.brickColor = BrickColor.new("Really black")
Part140.Parent = Model0
Part140.CFrame = CFrame.new(37.8000107, 1.37759471, -45.6455078, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part140.Orientation = Vector3.new(-25, 0, 90)
Part140.Position = Vector3.new(37.8000107, 1.37759471, -45.6455078)
Part140.Rotation = Vector3.new(-25, 0, 90)
Part140.Color = Color3.new(0.054902, 0.0745098, 0.133333)
Part140.Size = Vector3.new(0.231250122, 0.231250122, 0.462500244)
Part140.BottomSurface = Enum.SurfaceType.Smooth
Part140.BrickColor = BrickColor.new("Really black")
Part140.TopSurface = Enum.SurfaceType.Smooth
Part140.brickColor = BrickColor.new("Really black")
Part141.Parent = Model0
Part141.CFrame = CFrame.new(37.8000107, 2.06933522, -46.3507996, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part141.Orientation = Vector3.new(-25, 0, 90)
Part141.Position = Vector3.new(37.8000107, 2.06933522, -46.3507996)
Part141.Rotation = Vector3.new(-25, 0, 90)
Part141.Color = Color3.new(0.513726, 0.301961, 0.168627)
Part141.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part141.BottomSurface = Enum.SurfaceType.Smooth
Part141.BrickColor = BrickColor.new("Rust")
Part141.TopSurface = Enum.SurfaceType.Smooth
Part141.brickColor = BrickColor.new("Rust")
Part142.Parent = Model0
Part142.CFrame = CFrame.new(37.8000107, 1.65016639, -46.1553383, 0, -1, 0, 0.906307876, 0, 0.422617972, -0.422617942, 0, 0.906307936)
Part142.Orientation = Vector3.new(-25, 0, 90)
Part142.Position = Vector3.new(37.8000107, 1.65016639, -46.1553383)
Part142.Rotation = Vector3.new(-25, 0, 90)
Part142.Color = Color3.new(0.513726, 0.301961, 0.168627)
Part142.Size = Vector3.new(0.231250122, 0.231250122, 0.231250122)
Part142.BottomSurface = Enum.SurfaceType.Smooth
Part142.BrickColor = BrickColor.new("Rust")
Part142.TopSurface = Enum.SurfaceType.Smooth
Part142.brickColor = BrickColor.new("Rust")
Part143.Name = "text"
Part143.Parent = Model0
Part143.CFrame = CFrame.new(37.8000107, 2.64860082, -48.4158363, 0, -1, 0, 0.939692736, 0, -0.342019886, 0.342019916, 0, 0.939692736)
Part143.Orientation = Vector3.new(20, 0, 90)
Part143.Position = Vector3.new(37.8000107, 2.64860082, -48.4158363)
Part143.Rotation = Vector3.new(20, 0, 90)
Part143.Color = Color3.new(0, 0.337255, 0.368627)
Part143.Transparency = 1
Part143.Size = Vector3.new(1.71250167, 0.241250122, 2.73124981)
Part143.BottomSurface = Enum.SurfaceType.Smooth
Part143.BrickColor = BrickColor.new("Navy blue")
Part143.TopSurface = Enum.SurfaceType.Smooth
Part143.brickColor = BrickColor.new("Navy blue")
for i,v in pairs(mas:GetChildren()) do
	v.Parent = script
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
for i,v in pairs(Model0:GetChildren()) do
	v.Locked = true
	if v.ClassName == "Part" then
		v.CanCollide = false
	end
end
Model0.Parent = owner.Character
Model0:Destroy()
heartbeat = game:GetService("RunService").Heartbeat
local rightarm = Instance.new("Weld", owner.Character.Torso)
rightarm.Part0 = owner.Character.Torso
rightarm.Part1 = owner.Character["Right Arm"]
rightarm.C0 = CFrame.new(1.5,0,0)
rightarm.Name = "RightArmWeld"
local rightleg = Instance.new("Weld", owner.Character.Torso)
rightleg.Part0 = owner.Character.Torso
rightleg.Part1 = owner.Character["Right Leg"]
rightleg.C0 = CFrame.new(0.5,-2,0)
rightleg.Name = "RightLegWeld"
local leftarm = Instance.new("Weld", owner.Character.Torso)
leftarm.Part0 = owner.Character.Torso
leftarm.Part1 = owner.Character["Left Arm"]
leftarm.C0 = CFrame.new(-1.5,0,0)
leftarm.Name = "LeftArmWeld"
local leftleg = Instance.new("Weld", owner.Character.Torso)
leftleg.Part0 = owner.Character.Torso
leftleg.Part1 = owner.Character["Left Leg"]
leftleg.C0 = CFrame.new(-0.5,-2,0)
leftleg.Name = "LeftLegWeld"
local head = Instance.new("Weld", owner.Character.Torso)
head.Part0 = owner.Character.Torso
head.Part1 = owner.Character.Head
head.C0 = CFrame.new(0,1.5,0)
head.Name = "HeadWeld"
local humanoidrootpart = Instance.new("Weld", owner.Character.HumanoidRootPart)
humanoidrootpart.Part0 = owner.Character.HumanoidRootPart
humanoidrootpart.Part1 = owner.Character.Torso
humanoidrootpart.Name = "HumanoidRootPartWeld"
local music = Instance.new("Sound", owner.Character.Head)
music.Volume = 3
music.SoundId = "rbxassetid://3225701810"
music.Looped = true
music.Name = "yopierrewannacutmyhair"
music:Play()
local music2 = Instance.new("Sound", owner.Character.Head)
music2.Volume = 10
music2.SoundId = "rbxassetid://815313025"
music2.Looped = true
music2.Name = "livinglifeofanoob"
local drowningthemesound = Instance.new("Sound", owner.Character.Head)
drowningthemesound.Volume = 3
drowningthemesound.SoundId = "rbxassetid://159503652"
drowningthemesound.Name = "drowning"
--[[local flange = Instance.new("FlangeSoundEffect", music)
flange.Name = "pickaxefromsidetoside"
flange.Depth = 1
flange.Mix = 1
flange.Rate = 3--]]


local walksound = Instance.new("Sound", owner.Character.Head)
walksound.Volume = 2.5
walksound.SoundId = "rbxassetid://507863105"
local hitsound = Instance.new("Sound", owner.Character.Head)
hitsound.Volume = 2
hitsound.SoundId = "rbxassetid://535681058"
local swooshsound = Instance.new("Sound", owner.Character.Head)
swooshsound.Volume = 1
swooshsound.PlaybackSpeed = 4.5
swooshsound.SoundId = "rbxassetid://1112042117"
local explosionsound = Instance.new("Sound", owner.Character.Head)
explosionsound.Volume = 3
explosionsound.SoundId = "rbxassetid://262562442"
local uuhhhsound = Instance.new("Sound", owner.Character.Head)
uuhhhsound.Volume = 3.5
uuhhhsound.SoundId = "rbxassetid://535690488"
local endermansound = Instance.new("Sound", owner.Character.Head)
endermansound.Volume = 3.5
endermansound.SoundId = "rbxassetid://289556450"
local remote = Instance.new("RemoteEvent", owner.Character)
remote.Name = "NOSkidsRemote"
local desc = Instance.new("Part", owner.Character.HumanoidRootPart)
desc.Size = Vector3.new(4,5,0.1)
desc.Anchored = true
desc.Locked = true
desc.CanCollide = false
desc.Transparency = 1
local clickdetector = Instance.new("ClickDetector", desc)
clickdetector.CursorIcon = "http://www.roblox.com/asset/?id=262794942"
local descimage = Instance.new("Decal", desc)
descimage.Texture = "rbxassetid://3448243413"
descimage.Face = "Front"
local descimage1 = Instance.new("Decal", desc)
descimage1.Texture = "rbxassetid://3448243413"
descimage1.Face = "Back"
swordweld = Instance.new("Weld", Part43)
swordweld.Part0 = owner.Character["Right Arm"]
swordweld.Part1 = Part43
swordweld.C0 = CFrame.new(-0.0938606262, -1.14251375, 0.158569336, 0, -1, 0, 0.906306982, 0, 0.422617555, -0.422617942, 0, 0.906307936)
function showdesc()
	descimage.Transparency = 0
	descimage1.Transparency = 0
end
function hidedesc()
	descimage.Transparency = 1
	descimage1.Transparency = 1
end
clickdetector.MouseHoverEnter:connect(showdesc)
clickdetector.MouseHoverLeave:connect(hidedesc)
anim = ""
local surfacegui = Instance.new("SurfaceGui", Part143)
surfacegui.Face = "Bottom"
local textlabel = Instance.new("TextLabel", surfacegui)
textlabel.Size = UDim2.new(1,0,1,0)
textlabel.Text = ""
textlabel.TextScaled = true
textlabel.Font = "Arcade"
textlabel.BackgroundTransparency = 1
textlabel.TextStrokeTransparency = 0
textlabel.TextStrokeColor3 = Color3.new(1, 1, 1)
cananimate = true
plrhum = owner.Character:findFirstChildOfClass("Humanoid")
plrhum.WalkSpeed = 20
function changesound()
	while heartbeat:wait() do
		textlabel.TextColor3 = Color3.fromRGB(math.random(1,255),math.random(1,255),math.random(1,255))
		if plrhum.FloorMaterial == Enum.Material.Grass or plrhum.FloorMaterial == Enum.Material.Sand then
			walksound.SoundId = "rbxassetid://507863105"
		elseif plrhum.FloorMaterial == Enum.Material.Plastic or plrhum.FloorMaterial == Enum.Material.SmoothPlastic then
			walksound.SoundId = "rbxassetid://507863857"
		elseif plrhum.FloorMaterial == Enum.Material.Wood or plrhum.FloorMaterial == Enum.Material.WoodPlanks then
			walksound.SoundId = "rbxassetid://507863457"
		elseif plrhum.FloorMaterial == Enum.Material.Mud or plrhum.FloorMaterial == Enum.Material.Snow then
			walksound.SoundId = "rbxassetid://507864112"
		elseif not plrhum.FloorMaterial == Enum.Material.Air then
			walksound.SoundId = "rbxassetid://507863105"
		end
	end
end
spawn(changesound)
function detectwalk()
	while heartbeat:wait() do
		if owner.Character.HumanoidRootPart.Velocity.x < -1 or owner.Character.HumanoidRootPart.Velocity.x > 1 or owner.Character.HumanoidRootPart.Velocity.z < -1 or owner.Character.HumanoidRootPart.Velocity.z > 1 and not plrhum.FloorMaterial == Enum.Material.Air then
			anim = "run"
		else
			if plrhum.FloorMaterial == Enum.Material.Air then
				anim = "jump"
			else
				anim = "stand"
			end
		end
	end
end
spawn(detectwalk)
canknockback = true
freshafterguarding = false
function checkdmg()
	while heartbeat:wait() do
		local health = plrhum.Health
		wait()
		if plrhum.Health < health and canknockback and not owner.Character:findFirstChild("freshguarded") then
			canknockback = false
			hitsound:Play()
			local pitchrandom = math.random(1,5)
			if pitchrandom == 1 then
				uuhhhsound.PlaybackSpeed = 0.8
			elseif pitchrandom == 2 then
				uuhhhsound.PlaybackSpeed = 0.9
			elseif pitchrandom == 3 then
				uuhhhsound.PlaybackSpeed = 1
			elseif pitchrandom == 4 then
				uuhhhsound.PlaybackSpeed = 1.1
			elseif pitchrandom == 5 then
				uuhhhsound.PlaybackSpeed = 1.2
			end
			uuhhhsound:Play()
			for q,w in pairs(owner.Character:GetChildren()) do
				if w.ClassName == "Part" or w.ClassName == "MeshPart" and w.Name ~= "HumanoidRootPart" then
					local hurt = Instance.new("Part", w)
					hurt.Size = w.Size + Vector3.new(0.05,0.05,0.05)
					hurt.CanCollide = false
					hurt.Transparency = 0.5
					hurt.Material = "Neon"
					hurt.BrickColor = BrickColor.new("Bright red")
					hurt:BreakJoints()
					local hurtweld = Instance.new("Weld", hurt)
					hurtweld.Part0 = w
					hurtweld.Part1 = hurt
					local function disapear()
						for i = 1,50 do
							hurt.Transparency = hurt.Transparency + 0.025
							heartbeat:wait()
						end
						hurt:destroy()
					end
					spawn(disapear)
				end
			end
			local velo = Instance.new("BodyVelocity", owner.Character.HumanoidRootPart)
			velo.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			velo.Velocity = owner.Character.HumanoidRootPart.CFrame.lookVector * -20 + Vector3.new(0,10,0)
			game.Debris:AddItem(velo,0.2)
			wait(0.2)
			canknockback = true
		end
	end
end
spawn(checkdmg)
canloweranim = true
canupperanim = true
function upperlimbanim()
	while heartbeat:wait() do
		if anim == "stand" and cananimate and canupperanim  then
			for i = 0,0.09 , 0.0013 do
				if anim == "stand" and cananimate and canupperanim then
					swordweld.C0 = swordweld.C0:lerp(CFrame.new(-0.0938606262, -1.14251375, 0.158569336, 0, -1, 0, 0.906306982, 0, 0.422617555, -0.422617942, 0, 0.906307936),i)
					rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.5790329, 0.0955438614, -0.0261459351, 0.98480773, -0.172987387, 0.0151344538, 0.173647299, 0.981055319, -0.0858312026, 0, 0.0871557295, 0.99619472),i)
					leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1.57922935, 0.0944201946, 0, 0.98480773, 0.173648179, 0, -0.173647866, 0.984806001, 0, 0, 0, 1),i)
					head.C0 = head.C0:lerp(CFrame.new(-0.0377388, 1.4980948, -0.0217895508, 0.499999911, -0.0754790828, 0.862729967, 0, 0.996193051, 0.087155588, -0.866025448, -0.043577861, 0.498097301),i)
					heartbeat:wait()
				end
			end
			for i = 0,0.09 , 0.0013 do
				if anim == "stand" and cananimate and canupperanim then
					rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.61395836, -0.10254097, 0, 0.98480773, -0.173648179, 0, 0.173647866, 0.984806001, 0, 0, 0, 1),i)
					leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1.61395836, -0.10254097, 0, 0.98480773, 0.173648179, 0, -0.173647866, 0.984806001, 0, 0, 0, 1),i)
					head.C0 = head.C0:lerp(CFrame.new(0, 1.49999785, 0, 0.499999911, 0, 0.866025448, 0, 0.999998331, 0, -0.866025448, 0, 0.499999911),i)
					heartbeat:wait()
				end
			end
		elseif anim == "run" and cananimate and canupperanim then
			for i = 0,0.35 , 0.015 do
				if anim == "run" and cananimate and canupperanim then
					swordweld.C0 = swordweld.C0:lerp(CFrame.new(-0.0938606262, -1.14251375, 0.158569336, 0, -1, 0, 0.906306982, 0, 0.422617555, -0.422617942, 0, 0.906307936),i)
humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, -0.0218505859, -0.207862854, 1, -2.65673535e-22, 5.23747954e-22, 1.5097504e-22, 0.978147745, 0.207910955, -5.67539301e-22, -0.207910955, 0.978147745),i)
					rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.49795914, 0.313182116, -0.842372894, 0.9993909, 0.00364707294, -0.034706641, -0.0348764732, 0.0696690381, -0.996960342, -0.00121800881, 0.997563541, 0.0697537959),i)
					leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1.50009155, 0.335239649, 1.03072357, 1, 3.69729388e-23, 2.6307918e-22, -2.65664548e-22, 0.139171526, 0.99026835, 0, -0.99026829, 0.139171541),i)
					head.C0 = head.C0:lerp(CFrame.new(0, 1.5, 0, 1, -4.22829445e-28, 5.04870979e-28, -4.7962743e-28, 0.98481518, -0.173646927, 4.54383881e-28, 0.173646927, 0.98481518),i)
					heartbeat:wait()
				end
			end
			for i = 0,0.35 , 0.015 do
				if anim == "run" and cananimate and canupperanim then
humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0,0,0),i)
					rightarm.C0 = rightarm.C0:lerp(CFrame.new(1.49791718, 0.365714312, 0.961071014, 0.9993909, -0.00121776958, -0.0348753184, 0.0348965712, 0.0348958485, 0.998781562, 7.18205513e-07, -0.999390185, 0.0349170938),i)
					leftarm.C0 = leftarm.C0:lerp(CFrame.new(-1.50004387, 0.396968603, -0.897594452, 1, -2.59686077e-27, 2.57052452e-26, 2.58237777e-26, 0.0697625875, -0.99756366, 7.97269708e-28, 0.99756366, 0.069762595),i)
					head.C0 = head.C0:lerp(CFrame.new(0, 1.5222218, -0.102214813, 1, 6.31088724e-30, -1.00974196e-28, -2.5243549e-29, 0.990270674, 0.139171436, -5.04870979e-29, -0.139171436, 0.990270674),i)
					heartbeat:wait()
				end
			end
		end
	end
end
spawn(upperlimbanim)
function lowerlimbanim()
	while heartbeat:wait() do
		if anim == "stand" and cananimate and canloweranim then
			for i = 0,0.1 , 0.0015 do
				if anim == "stand" and cananimate then
					leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.589056015, -2.03976226, 0, 0.99619472, 0.0871557295, 0, -0.0871552974, 0.996189654, 0, -2.98023224e-08, -3.7252903e-09, 1),i)
					rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.58905983, -2.03976226, 0, 0.99619472, -0.0871557295, 0, 0.0871552974, 0.996189654, 0, -2.98023224e-08, 3.7252903e-09, 1),i)
					humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.499999911, 0, -0.866025448, 0, 0.999998331, 0, 0.866025448, 0, 0.499999911),i)
					heartbeat:wait()
				end
			end
			for i = 0,0.1 , 0.0015 do
				if anim == "stand" and cananimate and canloweranim then
					leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.597772598, -2.13938832, 0, 0.99619472, 0.0871557295, 0, -0.0871555805, 0.996192992, 0, -2.98023224e-08, -3.7252903e-09, 1),i)
					rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.597776413, -2.13938832, 0, 0.99619472, -0.0871557295, 0, 0.0871555805, 0.996192992, 0, -2.98023224e-08, 3.7252903e-09, 1),i)
					humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0.0999999046, 0, 0.499999911, 0, -0.866025448, 0, 0.999998331, 0, 0.866025448, 0, 0.499999911),i)
					heartbeat:wait()
				end
			end
		elseif anim == "run" and cananimate and canloweranim then
			walksound:Play()
			for i = 0,0.35 , 0.015 do
				if anim == "run" and cananimate and canloweranim then
					leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1.86941528, -0.882217407, 1, -6.4421537e-26, 9.04728795e-26, 1.09784194e-25, 0.694650829, -0.71934706, -1.64587939e-26, 0.71934706, 0.694650829),i)
					rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -1.35365295, 1.16508484, 1, 5.03939593e-22, 3.01560673e-22, -2.65673358e-22, -0.0697558299, 0.997564077, 5.237476e-22, -0.997564077, -0.0697558299),i)
					heartbeat:wait()
				end
			end
			walksound:Play()
			for i = 0,0.35 , 0.015 do
				if anim == "run" and cananimate and canloweranim then
					leftleg.C0 = leftleg.C0:lerp(CFrame.new(-0.5, -1.35635376, 0.984832764, 1, -1.46412584e-27, -1.17303617e-26, 1.15615454e-26, -0.0348859876, 0.999391198, -1.61558713e-27, -0.999391198, -0.0348859876),i)
					rightleg.C0 = rightleg.C0:lerp(CFrame.new(0.5, -1.81869507, -0.922622681, 1, -1.72713825e-22, -5.61306619e-22, -2.65673535e-22, 0.719345152, -0.694654465, 5.23747954e-22, 0.694656253, 0.719344676),i)
					heartbeat:wait()
				end
			end
		end
	end
end
spawn(lowerlimbanim)
canuse = true
function killcharacter(whatchar)

end

function mouseclick()
	canuse = false
			canupperanim = false
			local rarmc0 = rightarm.C0
			for i,v in pairs(workspace:GetChildren()) do
				if v.ClassName == "Model" and v ~= owner.Character then
					local hu = v:findFirstChildOfClass("Humanoid")
					local head = v:findFirstChild("Head")
					if hu and head and not v:findFirstChild("fallen") then
						if (head.Position - Part143.Position).magnitude < 6.5 then
							if hu.MaxHealth >= 500 then
								hu.MaxHealth = 100
								hu.Health = 100
								local function waitforgod()
									wait(1.5)
									if hu.MaxHealth >= 500 and not v:findFirstChild("fallen") then
										hu.Parent:BreakJoints()
										explosionsound:Play()
										local explosion = Instance.new("Explosion", workspace)
										explosion.Position = head.Position
										explosion.BlastRadius = 0
									end
								end
								spawn(waitforgod)
							end
							hitsound:Play()
							local pitchrandom = math.random(1,5)
							if pitchrandom == 1 then
								uuhhhsound.PlaybackSpeed = 0.8
							elseif pitchrandom == 2 then
								uuhhhsound.PlaybackSpeed = 0.9
							elseif pitchrandom == 3 then
								uuhhhsound.PlaybackSpeed = 1
							elseif pitchrandom == 4 then
								uuhhhsound.PlaybackSpeed = 1.1
							elseif pitchrandom == 5 then
								uuhhhsound.PlaybackSpeed = 1.2
							end
							uuhhhsound:Play()
							for q,w in pairs(v:GetChildren()) do
								if w.ClassName == "Part" or w.ClassName == "MeshPart" and w.Name ~= "HumanoidRootPart" then
									local hurt = Instance.new("Part", w)
									hurt.Size = w.Size + Vector3.new(0.05,0.05,0.05)
									hurt.CanCollide = false
									hurt.Transparency = 0.5
									hurt.Material = "Neon"
									hurt.BrickColor = BrickColor.new("Bright red")
									hurt:BreakJoints()
									local hurtweld = Instance.new("Weld", hurt)
									hurtweld.Part0 = w
									hurtweld.Part1 = hurt
									local function disapear()
										for i = 1,50 do
											hurt.Transparency = hurt.Transparency + 0.025
											heartbeat:wait()
										end
										hurt:destroy()
									end
									spawn(disapear)
								end
							end
							local velo = Instance.new("BodyVelocity", head)
							velo.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
							velo.Velocity = owner.Character.HumanoidRootPart.CFrame.lookVector * 20 + Vector3.new(0,10,0)
							game.Debris:AddItem(velo,0.2)
						end
					end
				end
			end
			for i = 0,1 , 0.18 do
				if textlabel.Text ~= "No-ob Guard" then
					swordweld.C0 = swordweld.C0:lerp(CFrame.new(-0.214267731, -1.05377769, 0.67014122, 0.0195019394, -0.959124625, -0.28231138, 0.817362368, -0.147320479, 0.556969643, -0.575793564, -0.241612703, 0.781079292),i)
					head.C0 = head.C0:lerp(CFrame.new(0,1.5,0),i)
					rightarm.C0 = rarmc0:lerp(CFrame.new(1.66793442, 0.569649696, -0.221382141, 0.866025388, -0.469846308, 0.171010062, 0.25000006, 0.110700898, -0.961896598, 0.433012635, 0.87577951, 0.213331431),i)
					heartbeat:wait()
				end
			end
			local rarmc0 = rightarm.C0
			for i = 0,1 , 0.18 do
				if textlabel.Text ~= "No-ob Guard" then
					humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.fromEulerAnglesXYZ(0,0.4,0),i)
					rightarm.C0 = rarmc0:lerp(CFrame.new(1.17643356, 0.11697793, -0.567596436, 0.766044438, 0.413175881, 0.492403865, 0, 0.766044319, -0.642787516, -0.642787576, 0.492403865, 0.586824059),i)
					heartbeat:wait()
				end
			end
			canupperanim = true
		canuse = true
end

local mouse = owner:GetMouse()

mouse.Button1Down:connect(mouseclick)

function trackplayer()
	while heartbeat:wait() do
		desc.CFrame = owner.Character.HumanoidRootPart.CFrame * CFrame.new(-4.5,0,0)
	end
end
spawn(trackplayer)
