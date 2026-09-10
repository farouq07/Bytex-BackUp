local BytexLib = {}
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

local LOGO_ID = "rbxassetid://110181529323436"

local Themes = {
    Midnight = {
        Primary = Color3.fromRGB(91, 141, 239), PrimaryHover = Color3.fromRGB(120, 165, 250), PrimaryPressed = Color3.fromRGB(70, 115, 210),
        Background = Color3.fromRGB(10, 10, 11), Surface = Color3.fromRGB(20, 20, 22), SurfaceHover = Color3.fromRGB(28, 28, 31),
        Border = Color3.fromRGB(38, 38, 42), Text = Color3.fromRGB(237, 237, 237), TextDim = Color3.fromRGB(138, 138, 147),
        Success = Color3.fromRGB(60, 190, 120), Danger = Color3.fromRGB(230, 90, 90), Warning = Color3.fromRGB(230, 180, 80),
    },
    Slate = {
        Primary = Color3.fromRGB(160, 170, 185), PrimaryHover = Color3.fromRGB(190, 200, 215), PrimaryPressed = Color3.fromRGB(120, 130, 145),
        Background = Color3.fromRGB(14, 16, 20), Surface = Color3.fromRGB(24, 27, 33), SurfaceHover = Color3.fromRGB(33, 37, 45),
        Border = Color3.fromRGB(44, 49, 58), Text = Color3.fromRGB(235, 238, 242), TextDim = Color3.fromRGB(140, 148, 160),
        Success = Color3.fromRGB(80, 190, 130), Danger = Color3.fromRGB(230, 100, 100), Warning = Color3.fromRGB(230, 180, 90),
    },
    Warm = {
        Primary = Color3.fromRGB(235, 140, 80), PrimaryHover = Color3.fromRGB(250, 165, 105), PrimaryPressed = Color3.fromRGB(200, 115, 60),
        Background = Color3.fromRGB(18, 14, 12), Surface = Color3.fromRGB(30, 24, 21), SurfaceHover = Color3.fromRGB(40, 32, 28),
        Border = Color3.fromRGB(50, 40, 35), Text = Color3.fromRGB(240, 235, 228), TextDim = Color3.fromRGB(160, 145, 130),
        Success = Color3.fromRGB(120, 190, 100), Danger = Color3.fromRGB(230, 90, 90), Warning = Color3.fromRGB(235, 185, 90),
    },
    Dark = {
        Primary = Color3.fromRGB(130, 100, 240), PrimaryHover = Color3.fromRGB(150, 125, 250), PrimaryPressed = Color3.fromRGB(100, 75, 200),
        Background = Color3.fromRGB(20, 18, 30), Surface = Color3.fromRGB(30, 27, 46), SurfaceHover = Color3.fromRGB(42, 38, 60),
        Border = Color3.fromRGB(50, 46, 70), Text = Color3.fromRGB(238, 236, 245), TextDim = Color3.fromRGB(150, 145, 170),
        Success = Color3.fromRGB(90, 190, 130), Danger = Color3.fromRGB(220, 90, 100), Warning = Color3.fromRGB(230, 180, 90),
    },
    Ocean = {
        Primary = Color3.fromRGB(60, 160, 220), PrimaryHover = Color3.fromRGB(90, 185, 235), PrimaryPressed = Color3.fromRGB(40, 130, 185),
        Background = Color3.fromRGB(10, 20, 30), Surface = Color3.fromRGB(18, 32, 44), SurfaceHover = Color3.fromRGB(26, 44, 60),
        Border = Color3.fromRGB(35, 55, 75), Text = Color3.fromRGB(230, 242, 250), TextDim = Color3.fromRGB(140, 170, 190),
        Success = Color3.fromRGB(80, 190, 140), Danger = Color3.fromRGB(220, 90, 100), Warning = Color3.fromRGB(230, 185, 90),
    },
    Black = {
        Primary = Color3.fromRGB(255, 0, 128), PrimaryHover = Color3.fromRGB(255, 60, 170), PrimaryPressed = Color3.fromRGB(200, 0, 100),
        Background = Color3.fromRGB(0, 0, 0), Surface = Color3.fromRGB(15, 15, 15), SurfaceHover = Color3.fromRGB(23, 23, 23),
        Border = Color3.fromRGB(32, 32, 32), Text = Color3.fromRGB(240, 240, 240), TextDim = Color3.fromRGB(130, 130, 130),
        Success = Color3.fromRGB(80, 200, 130), Danger = Color3.fromRGB(235, 100, 100), Warning = Color3.fromRGB(230, 185, 90),
    },
}

local function new(class, props, children)
    local inst = Instance.new(class)
    if props then for k, v in pairs(props) do if k ~= "Parent" then inst[k] = v end end end
    if children then for _, c in ipairs(children) do c.Parent = inst end end
    if props and props.Parent then inst.Parent = props.Parent end
    return inst
end

local function corner(radius, parent)
    return new("UICorner", { CornerRadius = UDim.new(0, radius or 8), Parent = parent })
end

local function stroke(color, thickness, transparency, parent)
    return new("UIStroke", { Color = color or Color3.fromRGB(255,255,255), Thickness = thickness or 1, Transparency = transparency or 0, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = parent })
end

local function padding(px, parent)
    return new("UIPadding", { PaddingTop = UDim.new(0, px), PaddingBottom = UDim.new(0, px), PaddingLeft = UDim.new(0, px), PaddingRight = UDim.new(0, px), Parent = parent })
end

local function makeDraggable(frame, dragHandle)
    dragHandle = dragHandle or frame
    local dragging, dragInput, dragStart, startPos
    local function update(input)
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    dragHandle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true; dragStart = input.Position; startPos = frame.Position
            input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragging = false end end)
        end
    end)
    dragHandle.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then dragInput = input end
    end)
    UserInputService.InputChanged:Connect(function(input) if input == dragInput and dragging then update(input) end end)
end

function BytexLib.new(config)
    config = config or {}
    local theme = Themes[config.Theme or "Midnight"] or Themes.Midnight
    local saveFolder = config.SaveFolder or "BytexLoader"
    local flags = {}
    local connections = {}
    local rgbConnection
    local rgbHue = 0

    local screenGui = new("ScreenGui", { Name = "BytexUI", Parent = player:WaitForChild("PlayerGui"), ZIndexBehavior = Enum.ZIndexBehavior.Sibling, ResetOnSpawn = false })

    local mainFrame = new("Frame", {
        Name = "Main", Parent = screenGui, AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = theme.Background, BorderSizePixel = 0,
        Position = UDim2.new(0.5, 0, 0.5, 0), Size = config.Size or UDim2.new(0, 720, 0, 480),
        ZIndex = 2, ClipsDescendants = false,
    })
    corner(10, mainFrame)
    new("UISizeConstraint", { MaxSize = Vector2.new(900, 640), MinSize = Vector2.new(520, 380), Parent = mainFrame })
    local mainStroke = stroke(theme.Border, 1, 0.1, mainFrame)

    local header = new("Frame", { Name = "Header", Parent = mainFrame, BackgroundColor3 = theme.Background, BorderSizePixel = 0, Size = UDim2.new(1, 0, 0, 44), ZIndex = 3 })
    corner(10, header)
    new("Frame", { Parent = header, BackgroundColor3 = theme.Background, BorderSizePixel = 0, Position = UDim2.new(0, 0, 0.5, 0), Size = UDim2.new(1, 0, 0.5, 0), ZIndex = 3 })
    new("Frame", { Parent = header, BackgroundColor3 = theme.Border, BorderSizePixel = 0, Position = UDim2.new(0, 0, 1, -1), Size = UDim2.new(1, 0, 0, 1), ZIndex = 4 })

    local logoIcon = new("ImageLabel", {
        Name = "Logo", Parent = header, BackgroundTransparency = 1, BorderSizePixel = 0,
        Position = UDim2.new(0, 14, 0, 8), Size = UDim2.new(0, 28, 0, 28),
        Image = LOGO_ID, ImageColor3 = theme.Text, ZIndex = 4,
        ScaleType = Enum.ScaleType.Fit,
    })

    new("TextLabel", {
        Parent = header, BackgroundTransparency = 1,
        Position = UDim2.new(0, 50, 0, 0), Size = UDim2.new(0, 200, 1, 0),
        Font = Enum.Font.GothamBold, Text = config.Title or "Bytex",
        TextColor3 = theme.Text, TextSize = 15,
        TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4,
    })

    local windowControls = new("Frame", { Parent = header, BackgroundTransparency = 1, AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -8, 0.5, 0), Size = UDim2.new(0, 60, 0, 24), ZIndex = 4 })
    new("UIListLayout", { Parent = windowControls, FillDirection = Enum.FillDirection.Horizontal, HorizontalAlignment = Enum.HorizontalAlignment.Right, VerticalAlignment = Enum.VerticalAlignment.Center, Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder })

    local minimizeBtn = new("TextButton", { Parent = windowControls, BackgroundTransparency = 1, Size = UDim2.new(0, 26, 0, 24), Text = "—", Font = Enum.Font.GothamMedium, TextSize = 15, TextColor3 = theme.TextDim, AutoButtonColor = false, LayoutOrder = 1 })
    corner(5, minimizeBtn)
    local closeBtn = new("TextButton", { Parent = windowControls, BackgroundTransparency = 1, Size = UDim2.new(0, 26, 0, 24), Text = "×", Font = Enum.Font.GothamMedium, TextSize = 17, TextColor3 = theme.TextDim, AutoButtonColor = false, LayoutOrder = 2 })
    corner(5, closeBtn)

    makeDraggable(mainFrame, header)

    local sidebar = new("Frame", { Name = "Sidebar", Parent = mainFrame, BackgroundColor3 = theme.Surface, BorderSizePixel = 0, Position = UDim2.new(0, 0, 0, 44), Size = UDim2.new(0, 150, 1, -44), ZIndex = 3 })
    corner(10, sidebar)
    new("Frame", { Parent = sidebar, BackgroundColor3 = theme.Surface, BorderSizePixel = 0, Position = UDim2.new(0, 0, 0, 0), Size = UDim2.new(1, 0, 0, 10), ZIndex = 3 })
    new("Frame", { Parent = sidebar, BackgroundColor3 = theme.Surface, BorderSizePixel = 0, AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, 0, 0, 0), Size = UDim2.new(0, 10, 1, 0), ZIndex = 3 })
    new("Frame", { Parent = sidebar, BackgroundColor3 = theme.Border, BorderSizePixel = 0, AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -1, 0, 0), Size = UDim2.new(0, 1, 1, 0), ZIndex = 4 })

    local tabsList = new("Frame", { Parent = sidebar, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 12), Size = UDim2.new(1, 0, 1, -60), ZIndex = 4 })
    new("UIListLayout", { Parent = tabsList, FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Center, VerticalAlignment = Enum.VerticalAlignment.Top, Padding = UDim.new(0, 1), SortOrder = Enum.SortOrder.LayoutOrder })
    padding(8, tabsList)

    new("TextLabel", {
        Parent = sidebar, BackgroundTransparency = 1,
        AnchorPoint = Vector2.new(0, 1), Position = UDim2.new(0, 14, 1, -10), Size = UDim2.new(1, -20, 0, 20),
        Font = Enum.Font.Gotham, Text = config.Version or "v1.0",
        TextColor3 = theme.TextDim, TextSize = 11, TextXAlignment = Enum.TextXAlignment.Left, ZIndex = 4,
    })

    local content = new("Frame", { Name = "ContentContainer", Parent = mainFrame, BackgroundColor3 = theme.Background, BorderSizePixel = 0, ClipsDescendants = true, Position = UDim2.new(0, 150, 0, 44), Size = UDim2.new(1, -150, 1, -44), ZIndex = 2 })

    local toggleBtn = new("ImageButton", {
        Name = "ToggleButton", Parent = screenGui,
        BackgroundColor3 = theme.Surface, BorderSizePixel = 0,
        Position = UDim2.new(0.01, 0, 0.5, -24), Size = UDim2.new(0, 48, 0, 48),
        Image = LOGO_ID, ImageColor3 = theme.Text,
        ScaleType = Enum.ScaleType.Fit, ZIndex = 10,
        AutoButtonColor = false,
    })
    corner(12, toggleBtn)
    stroke(theme.Border, 1, 0.3, toggleBtn)
    padding(6, toggleBtn)

    local notifStack = new("Frame", { Name = "Notifications", Parent = screenGui, AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -16, 0, 16), Size = UDim2.new(0, 300, 1, -32), BackgroundTransparency = 1, ZIndex = 100 })
    new("UIListLayout", { Parent = notifStack, Padding = UDim.new(0, 6), VerticalAlignment = Enum.VerticalAlignment.Top, HorizontalAlignment = Enum.HorizontalAlignment.Right, SortOrder = Enum.SortOrder.LayoutOrder })

    local self = {
        _screenGui = screenGui, _mainFrame = mainFrame, _header = header, _sidebar = sidebar, _logo = logoIcon, _toggleBtn = toggleBtn,
        _content = content, _panels = {}, _tabs = {}, _tabOrder = {}, _activeTab = nil, _activePanel = nil,
        _theme = theme, _themeName = config.Theme or "Midnight",
        _flags = flags, _connections = connections,
        _notifStack = notifStack, _notifOrder = 0,
        _rgbRunning = false, _rgbConnection = nil,
    }

    local function setVisible(v) mainFrame.Visible = v end

    toggleBtn.MouseButton1Click:Connect(function() setVisible(not mainFrame.Visible) end)
    closeBtn.MouseButton1Click:Connect(function() setVisible(false) end)

    minimizeBtn.MouseButton1Click:Connect(function()
        local minimized = mainFrame:GetAttribute("Minimized") or false
        minimized = not minimized
        mainFrame:SetAttribute("Minimized", minimized)
        if minimized then
            TweenService:Create(mainFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.new(0, 720, 0, 44) }):Play()
            minimizeBtn.Text = "+"
        else
            TweenService:Create(mainFrame, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = config.Size or UDim2.new(0, 720, 0, 480) }):Play()
            minimizeBtn.Text = "—"
        end
    end)

    function self:setVisible(v) setVisible(v) end

    local function restoreAllPrimaryColors()
        for _, panel in pairs(self._panels) do
            for _, child in ipairs(panel:GetDescendants()) do
                if child:GetAttribute("IsPrimary") then
                    local store = child:FindFirstChild("__BaseColor")
                    local target = store and store.Value or self._theme.Primary
                    if child:IsA("TextButton") or child:IsA("Frame") then child.BackgroundColor3 = target
                    elseif child:IsA("UIStroke") then child.Color = target end
                end
            end
        end
        for _, tabBtn in pairs(self._tabs) do
            if tabBtn:GetAttribute("IsActive") then
                local bar = tabBtn:FindFirstChild("AccentBar")
                if bar then bar.BackgroundColor3 = self._theme.Primary end
            end
        end
    end
    self._restoreAllPrimaryColors = restoreAllPrimaryColors

    function self:startRGB(speed)
        if rgbConnection then rgbConnection:Disconnect() end
        self._rgbRunning = true
        rgbConnection = RunService.RenderStepped:Connect(function(dt)
            rgbHue = (rgbHue + dt * (speed or 0.12)) % 1
            local c = Color3.fromHSV(rgbHue, 0.65, 0.95)
            mainStroke.Color = c
            for _, tabBtn in pairs(self._tabs) do
                if tabBtn:GetAttribute("IsActive") then
                    local bar = tabBtn:FindFirstChild("AccentBar")
                    if bar then bar.BackgroundColor3 = c end
                end
            end
            if self._activePanel then
                for _, child in ipairs(self._activePanel:GetDescendants()) do
                    if child:GetAttribute("IsPrimary") then
                        if child:IsA("TextButton") or child:IsA("Frame") then child.BackgroundColor3 = c
                        elseif child:IsA("UIStroke") then child.Color = c end
                    end
                end
            end
        end)
        self._rgbConnection = rgbConnection
    end

    function self:stopRGB()
        if rgbConnection then rgbConnection:Disconnect() rgbConnection = nil end
        self._rgbRunning = false
        mainStroke.Color = self._theme.Border
        restoreAllPrimaryColors()
    end

    function self:setTheme(name)
        local t = Themes[name]
        if not t then return end
        if rgbConnection then rgbConnection:Disconnect() rgbConnection = nil end
        self._rgbRunning = false
        theme = t
        self._theme = t
        self._themeName = name
        mainFrame.BackgroundColor3 = t.Background
        header.BackgroundColor3 = t.Background
        sidebar.BackgroundColor3 = t.Surface
        content.BackgroundColor3 = t.Background
        mainStroke.Color = t.Border
        toggleBtn.BackgroundColor3 = t.Surface
        toggleBtn.ImageColor3 = t.Text
        logoIcon.ImageColor3 = t.Text
        for _, child in ipairs(header:GetChildren()) do
            if child:IsA("Frame") then child.BackgroundColor3 = t.Border end
        end
        for _, tabBtn in pairs(self._tabs) do
            if tabBtn:GetAttribute("IsActive") then
                tabBtn.BackgroundColor3 = t.SurfaceHover
                tabBtn.TextColor3 = t.Text
                local bar = tabBtn:FindFirstChild("AccentBar")
                if bar then bar.BackgroundColor3 = t.Primary end
            else
                tabBtn.BackgroundColor3 = t.Surface
                tabBtn.TextColor3 = t.TextDim
                local bar = tabBtn:FindFirstChild("AccentBar")
                if bar then bar.BackgroundColor3 = t.Surface end
            end
        end
        restoreAllPrimaryColors()
    end

    function self:getTheme() return self._theme end
    function self:getThemeName() return self._themeName end
    function self:getThemeList()
        local list = {}
        for k in pairs(Themes) do table.insert(list, k) end
        table.sort(list)
        return list
    end

    function self:notification(title, text, duration)
        duration = duration or 4
        self._notifOrder = self._notifOrder + 1
        local container = new("Frame", {
            Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y,
            BackgroundColor3 = theme.Surface, BackgroundTransparency = 0,
            BorderSizePixel = 0, LayoutOrder = self._notifOrder, Parent = notifStack,
        })
        corner(8, container)
        stroke(theme.Border, 1, 0.2, container)
        padding(14, container)
        new("TextLabel", { Parent = container, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 18), Font = Enum.Font.GothamMedium, Text = title or "", TextColor3 = theme.Text, TextSize = 13, TextXAlignment = Enum.TextXAlignment.Left })
        new("TextLabel", { Parent = container, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 22), Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, Font = Enum.Font.Gotham, Text = text or "", TextColor3 = theme.TextDim, TextSize = 12, TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top })
        container.Position = UDim2.new(0, 340, 0, 0)
        container.BackgroundTransparency = 1
        TweenService:Create(container, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = UDim2.new(0, 0, 0, 0), BackgroundTransparency = 0 }):Play()
        task.delay(duration, function()
            local out = TweenService:Create(container, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Position = UDim2.new(0, 340, 0, 0), BackgroundTransparency = 1 })
            out.Completed:Connect(function() container:Destroy() end)
            out:Play()
            for _, c in ipairs(container:GetDescendants()) do
                if c:IsA("TextLabel") then TweenService:Create(c, TweenInfo.new(0.2), { TextTransparency = 1 }):Play() end
            end
        end)
        return container
    end

    function self:prompt(title, text, buttons)
        local overlay = new("Frame", { Parent = screenGui, BackgroundColor3 = Color3.new(0, 0, 0), BackgroundTransparency = 1, BorderSizePixel = 0, Size = UDim2.new(1, 0, 1, 0), ZIndex = 200 })
        local box = new("Frame", { Parent = overlay, AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(0.5, 0, 0.5, 0), Size = UDim2.new(0, 360, 0, 180), BackgroundColor3 = theme.Surface, BorderSizePixel = 0, ZIndex = 201 })
        corner(12, box)
        stroke(theme.Border, 1, 0, box)
        new("TextLabel", { Parent = box, BackgroundTransparency = 1, Position = UDim2.new(0, 20, 0, 18), Size = UDim2.new(1, -40, 0, 22), Font = Enum.Font.GothamMedium, Text = title or "", TextColor3 = theme.Text, TextSize = 15, TextXAlignment = Enum.TextXAlignment.Left })
        new("TextLabel", { Parent = box, BackgroundTransparency = 1, Position = UDim2.new(0, 20, 0, 46), Size = UDim2.new(1, -40, 0, 60), Font = Enum.Font.Gotham, Text = text or "", TextColor3 = theme.TextDim, TextSize = 13, TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top })
        local btnRow = new("Frame", { Parent = box, BackgroundTransparency = 1, Position = UDim2.new(0, 20, 1, -52), Size = UDim2.new(1, -40, 0, 32) })
        new("UIListLayout", { Parent = btnRow, FillDirection = Enum.FillDirection.Horizontal, HorizontalAlignment = Enum.HorizontalAlignment.Right, VerticalAlignment = Enum.VerticalAlignment.Center, Padding = UDim.new(0, 8) })
        local close = function() overlay:Destroy() end
        for label, action in pairs(buttons or {}) do
            local isYes = label:lower():find("yes") or label:lower():find("ok") or label:lower():find("confirm")
            local btn = new("TextButton", { Parent = btnRow, Size = UDim2.new(0, 80, 0, 32), BackgroundColor3 = isYes and theme.Primary or theme.SurfaceHover, BorderSizePixel = 0, Text = label, Font = Enum.Font.GothamMedium, TextColor3 = isYes and Color3.fromRGB(255,255,255) or theme.Text, TextSize = 13, AutoButtonColor = false })
            corner(7, btn)
            btn.MouseButton1Click:Connect(function() close(); if action then action() end end)
        end
        TweenService:Create(overlay, TweenInfo.new(0.2), { BackgroundTransparency = 0.6 }):Play()
        return overlay
    end

    local function createPanel(name)
        return new("CanvasGroup", { Name = name, Parent = content, BackgroundColor3 = theme.Background, BackgroundTransparency = 0, BorderSizePixel = 0, Size = UDim2.new(1, 0, 1, 0), Visible = false, GroupTransparency = 1 })
    end

    local function createScrolling(parent)
        local scroll = new("ScrollingFrame", { Size = UDim2.new(1, 0, 1, 0), BackgroundTransparency = 1, BorderSizePixel = 0, ScrollBarThickness = 3, ScrollBarImageColor3 = theme.Border, ScrollBarImageTransparency = 0.4, CanvasSize = UDim2.new(0, 0, 0, 0), Parent = parent, ScrollingDirection = Enum.ScrollingDirection.Y })
        local layout = new("UIListLayout", { Parent = scroll, Padding = UDim.new(0, 6), HorizontalAlignment = Enum.HorizontalAlignment.Left, VerticalAlignment = Enum.VerticalAlignment.Top, SortOrder = Enum.SortOrder.LayoutOrder })
        padding(20, scroll)
        local function autoSize()
            task.defer(function()
                local total = 0
                for _, child in ipairs(scroll:GetChildren()) do
                    if child:IsA("GuiObject") and child.Visible then total = total + child.AbsoluteSize.Y + layout.Padding.Offset end
                end
                scroll.CanvasSize = UDim2.new(0, 0, 0, total + 40)
            end)
        end
        scroll.ChildAdded:Connect(autoSize)
        scroll.ChildRemoved:Connect(autoSize)
        return scroll, layout, autoSize
    end

    function self:tab(cfg)
        local name = cfg.Name or "Tab"
        local panel = createPanel(name)
        local btn = new("TextButton", {
            Name = name, Parent = tabsList, BackgroundColor3 = theme.Surface, BackgroundTransparency = 1, BorderSizePixel = 0,
            Size = UDim2.new(1, 0, 0, 30), Font = Enum.Font.GothamMedium, Text = "  " .. name,
            TextColor3 = theme.TextDim, TextSize = 13, TextXAlignment = Enum.TextXAlignment.Left,
            AutoButtonColor = false, LayoutOrder = #self._tabOrder,
        })
        corner(6, btn)
        local accentBar = new("Frame", { Name = "AccentBar", Parent = btn, BackgroundColor3 = theme.Surface, BorderSizePixel = 0, Position = UDim2.new(0, 0, 0, 6), Size = UDim2.new(0, 2, 1, -12), ZIndex = 2 })
        corner(2, accentBar)
        padding(10, btn)

        table.insert(self._tabOrder, name)
        self._tabs[name] = btn
        self._panels[name] = panel

        btn.MouseEnter:Connect(function()
            if btn:GetAttribute("IsActive") then return end
            TweenService:Create(btn, TweenInfo.new(0.15), { BackgroundTransparency = 0, BackgroundColor3 = theme.SurfaceHover }):Play()
            TweenService:Create(btn, TweenInfo.new(0.15), { TextColor3 = theme.Text }):Play()
        end)
        btn.MouseLeave:Connect(function()
            if btn:GetAttribute("IsActive") then return end
            TweenService:Create(btn, TweenInfo.new(0.15), { BackgroundTransparency = 1 }):Play()
            TweenService:Create(btn, TweenInfo.new(0.15), { TextColor3 = theme.TextDim }):Play()
        end)
        btn.MouseButton1Click:Connect(function() self:setActiveTab(name) end)

        local helper = { _panel = panel, _scroll = nil, _layout = nil, _autoSize = nil, _btn = btn }

        function helper:createScrolling()
            local scroll, layout, autoSize = createScrolling(panel)
            helper._scroll = scroll
            helper._layout = layout
            helper._autoSize = autoSize
            return scroll, layout
        end

        function helper:addSection(title)
            local section = new("Frame", { Parent = helper._scroll, BackgroundTransparency = 1, Size = UDim2.new(1, -40, 0, 30) })
            new("TextLabel", { Parent = section, BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 8), Size = UDim2.new(1, 0, 0, 14), Text = string.upper(title), Font = Enum.Font.GothamBold, TextSize = 10, TextColor3 = theme.TextDim, TextXAlignment = Enum.TextXAlignment.Left })
            new("Frame", { Parent = section, BackgroundColor3 = theme.Border, BorderSizePixel = 0, Position = UDim2.new(0, 0, 0, 26), Size = UDim2.new(1, 0, 0, 1) })
            if helper._autoSize then helper._autoSize() end
            return section
        end

        function helper:addLabel(text)
            local lbl = new("TextLabel", { Parent = helper._scroll, BackgroundTransparency = 1, Size = UDim2.new(1, -40, 0, 20), Font = Enum.Font.Gotham, Text = text, TextColor3 = theme.TextDim, TextSize = 12, TextXAlignment = Enum.TextXAlignment.Left, TextWrapped = true, AutomaticSize = Enum.AutomaticSize.Y })
            if helper._autoSize then helper._autoSize() end
            return lbl
        end

        function helper:addToggle(label, initial, callback, flagName)
            initial = initial and true or false
            local row = new("Frame", { Parent = helper._scroll, BackgroundColor3 = theme.Surface, BackgroundTransparency = 0.4, BorderSizePixel = 0, Size = UDim2.new(1, -40, 0, 38) })
            corner(7, row)
            padding(12, row)
            new("TextLabel", { Parent = row, BackgroundTransparency = 1, Size = UDim2.new(0.7, 0, 1, 0), Font = Enum.Font.Gotham, Text = label, TextColor3 = theme.Text, TextSize = 13, TextXAlignment = Enum.TextXAlignment.Left })
            local track = new("TextButton", { Parent = row, AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0), Size = UDim2.new(0, 34, 0, 18), BackgroundColor3 = initial and theme.Primary or theme.SurfaceHover, BorderSizePixel = 0, Text = "", AutoButtonColor = false })
            if initial then
                track:SetAttribute("IsPrimary", true)
                new("Color3Value", { Name = "__BaseColor", Value = theme.Primary, Parent = track })
            end
            corner(999, track)
            local knob = new("Frame", { Parent = track, AnchorPoint = Vector2.new(0, 0.5), Position = initial and UDim2.new(1, -16, 0.5, 0) or UDim2.new(0, 2, 0.5, 0), Size = UDim2.new(0, 14, 0, 14), BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0 })
            corner(999, knob)
            local state = initial
            track.MouseButton1Click:Connect(function()
                state = not state
                if state then
                    track:SetAttribute("IsPrimary", true)
                    local store = track:FindFirstChild("__BaseColor") or new("Color3Value", { Name = "__BaseColor", Parent = track })
                    store.Value = self._theme.Primary
                else
                    track:SetAttribute("IsPrimary", false)
                end
                local col = state and self._theme.Primary or self._theme.SurfaceHover
                if self._rgbRunning and state then col = Color3.fromHSV(rgbHue, 0.65, 0.95) end
                TweenService:Create(track, TweenInfo.new(0.15), { BackgroundColor3 = col }):Play()
                TweenService:Create(knob, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Position = state and UDim2.new(1, -16, 0.5, 0) or UDim2.new(0, 2, 0.5, 0) }):Play()
                if flagName then flags[flagName] = state end
                if callback then callback(state) end
            end)
            if flagName then flags[flagName] = state end
            if helper._autoSize then helper._autoSize() end
            return { Set = function(v) state = v end, Get = function() return state end }
        end

        function helper:addSlider(label, min, max, default, callback, flagName)
            min, max = min or 0, max or 100
            default = default or min
            local row = new("Frame", { Parent = helper._scroll, BackgroundColor3 = theme.Surface, BackgroundTransparency = 0.4, BorderSizePixel = 0, Size = UDim2.new(1, -40, 0, 52) })
            corner(7, row)
            padding(12, row)
            local valueLabel = new("TextLabel", { Parent = row, AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, 0, 0, 0), Size = UDim2.new(0, 60, 0, 18), BackgroundTransparency = 1, Font = Enum.Font.GothamMedium, Text = tostring(default), TextColor3 = theme.Primary, TextSize = 12, TextXAlignment = Enum.TextXAlignment.Right })
            new("TextLabel", { Parent = row, BackgroundTransparency = 1, Size = UDim2.new(0.7, 0, 0, 18), Font = Enum.Font.Gotham, Text = label, TextColor3 = theme.Text, TextSize = 13, TextXAlignment = Enum.TextXAlignment.Left })
            local track = new("Frame", { Parent = row, Position = UDim2.new(0, 0, 0, 26), Size = UDim2.new(1, 0, 0, 4), BackgroundColor3 = theme.SurfaceHover, BorderSizePixel = 0 })
            corner(999, track)
            local fill = new("Frame", { Parent = track, Size = UDim2.new((default - min) / (max - min), 0, 1, 0), BackgroundColor3 = theme.Primary, BorderSizePixel = 0 })
            fill:SetAttribute("IsPrimary", true)
            new("Color3Value", { Name = "__BaseColor", Value = theme.Primary, Parent = fill })
            corner(999, fill)
            local knob = new("Frame", { Parent = track, AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new((default - min) / (max - min), 0, 0.5, 0), Size = UDim2.new(0, 12, 0, 12), BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0, ZIndex = 2 })
            corner(999, knob)
            local value = default
            local dragging = false
            local function setValue(v)
                v = math.clamp(v, min, max)
                value = v
                local alpha = (v - min) / (max - min)
                fill.Size = UDim2.new(alpha, 0, 1, 0)
                knob.Position = UDim2.new(alpha, 0, 0.5, 0)
                valueLabel.Text = tostring(math.floor(v * 100 + 0.5) / 100)
                if flagName then flags[flagName] = v end
                if callback then callback(v) end
            end
            local function inputAt(x)
                local rel = (x - track.AbsolutePosition.X) / track.AbsoluteSize.X
                setValue(min + (max - min) * rel)
            end
            track.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then dragging = true; inputAt(input.Position.X) end
            end)
            UserInputService.InputChanged:Connect(function(input)
                if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then inputAt(input.Position.X) end
            end)
            UserInputService.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then dragging = false end
            end)
            if flagName then flags[flagName] = value end
            if helper._autoSize then helper._autoSize() end
            return { Set = setValue, Get = function() return value end }
        end

        function helper:addDropdown(label, items, default, callback, flagName)
            items = items or {}
            local row = new("Frame", { Parent = helper._scroll, BackgroundColor3 = theme.Surface, BackgroundTransparency = 0.4, BorderSizePixel = 0, Size = UDim2.new(1, -40, 0, 42) })
            corner(7, row)
            padding(12, row)
            new("TextLabel", { Parent = row, BackgroundTransparency = 1, Size = UDim2.new(0.5, 0, 1, 0), Font = Enum.Font.Gotham, Text = label, TextColor3 = theme.Text, TextSize = 13, TextXAlignment = Enum.TextXAlignment.Left })
            local selectBtn = new("TextButton", { Parent = row, AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0), Size = UDim2.new(0, 130, 0, 28), BackgroundColor3 = theme.SurfaceHover, BorderSizePixel = 0, Text = default or (items[1] or "—"), Font = Enum.Font.Gotham, TextColor3 = theme.Text, TextSize = 12, TextTruncate = Enum.TextTruncate.AtEnd, AutoButtonColor = false })
            corner(6, selectBtn)
            local open = false
            local currentValue = default or items[1]
            local popup
            local function close()
                if popup then
                    local p = popup
                    popup = nil
                    TweenService:Create(p, TweenInfo.new(0.15), { Size = UDim2.new(1, 0, 0, 0), BackgroundTransparency = 1 }):Play()
                    task.delay(0.15, function() p:Destroy() end)
                end
                open = false
            end
            selectBtn.MouseButton1Click:Connect(function()
                if open then close() return end
                open = true
                popup = new("Frame", { Parent = row, Position = UDim2.new(0, 0, 1, 6), Size = UDim2.new(1, 0, 0, 0), BackgroundColor3 = theme.Surface, BorderSizePixel = 0, ClipsDescendants = true, ZIndex = 10 })
                corner(7, popup)
                stroke(theme.Border, 1, 0, popup)
                local popScroll = new("ScrollingFrame", { Parent = popup, Size = UDim2.new(1, -8, 1, -8), Position = UDim2.new(0, 4, 0, 4), BackgroundTransparency = 1, BorderSizePixel = 0, ScrollBarThickness = 3, ScrollBarImageColor3 = theme.Border, CanvasSize = UDim2.new(0, 0, 0, #items * 26 + 8) })
                new("UIListLayout", { Parent = popScroll, Padding = UDim.new(0, 1), SortOrder = Enum.SortOrder.LayoutOrder })
                for i, item in ipairs(items) do
                    local itemBtn = new("TextButton", { Parent = popScroll, Size = UDim2.new(1, 0, 0, 26), BackgroundColor3 = theme.Surface, BackgroundTransparency = 0, BorderSizePixel = 0, Text = "  " .. tostring(item), Font = Enum.Font.Gotham, TextColor3 = (item == currentValue) and theme.Primary or theme.Text, TextSize = 12, LayoutOrder = i, AutoButtonColor = false, TextXAlignment = Enum.TextXAlignment.Left })
                    corner(5, itemBtn)
                    itemBtn.MouseEnter:Connect(function() TweenService:Create(itemBtn, TweenInfo.new(0.1), { BackgroundColor3 = theme.SurfaceHover }):Play() end)
                    itemBtn.MouseLeave:Connect(function() TweenService:Create(itemBtn, TweenInfo.new(0.1), { BackgroundColor3 = theme.Surface }):Play() end)
                    itemBtn.MouseButton1Click:Connect(function()
                        currentValue = item
                        selectBtn.Text = tostring(item)
                        if flagName then flags[flagName] = item end
                        if callback then callback(item) end
                        close()
                    end)
                end
                local targetHeight = math.min(#items * 27 + 8, 180)
                TweenService:Create(popup, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.new(1, 0, 0, targetHeight), BackgroundTransparency = 0 }):Play()
            end)
            if flagName then flags[flagName] = currentValue end
            if helper._autoSize then helper._autoSize() end
            return { Set = function(v) currentValue = v; selectBtn.Text = tostring(v); if flagName then flags[flagName] = v end; if callback then callback(v) end end, Get = function() return currentValue end, Refresh = function(newItems) items = newItems end }
        end

        function helper:addTextbox(label, placeholder, default, callback, flagName)
            local row = new("Frame", { Parent = helper._scroll, BackgroundColor3 = theme.Surface, BackgroundTransparency = 0.4, BorderSizePixel = 0, Size = UDim2.new(1, -40, 0, 42) })
            corner(7, row)
            padding(12, row)
            new("TextLabel", { Parent = row, BackgroundTransparency = 1, Size = UDim2.new(0.5, 0, 1, 0), Font = Enum.Font.Gotham, Text = label, TextColor3 = theme.Text, TextSize = 13, TextXAlignment = Enum.TextXAlignment.Left })
            local box = new("TextBox", { Parent = row, AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0), Size = UDim2.new(0, 150, 0, 28), BackgroundColor3 = theme.SurfaceHover, BorderSizePixel = 0, Text = default or "", PlaceholderText = placeholder or "", Font = Enum.Font.Gotham, TextColor3 = theme.Text, PlaceholderColor3 = theme.TextDim, TextSize = 12, ClearTextOnFocus = false, TextXAlignment = Enum.TextXAlignment.Center })
            corner(6, box)
            box.FocusLost:Connect(function()
                if flagName then flags[flagName] = box.Text end
                if callback then callback(box.Text) end
            end)
            if flagName then flags[flagName] = box.Text end
            if helper._autoSize then helper._autoSize() end
            return { Set = function(v) box.Text = v end, Get = function() return box.Text end }
        end

        function helper:addButton(text, callback, bgColor)
            local primary = not bgColor
            local baseColor = bgColor or theme.Primary
            local btn = new("TextButton", { Parent = helper._scroll, Size = UDim2.new(1, -40, 0, 38), BackgroundColor3 = baseColor, BorderSizePixel = 0, Text = text, Font = Enum.Font.GothamMedium, TextColor3 = primary and Color3.fromRGB(255,255,255) or theme.Text, TextSize = 13, AutoButtonColor = false })
            if primary then
                btn:SetAttribute("IsPrimary", true)
                new("Color3Value", { Name = "__BaseColor", Value = theme.Primary, Parent = btn })
            end
            corner(7, btn)
            btn.MouseEnter:Connect(function()
                local hover = primary and theme.PrimaryHover or theme.SurfaceHover
                TweenService:Create(btn, TweenInfo.new(0.12), { BackgroundColor3 = hover }):Play()
            end)
            btn.MouseLeave:Connect(function()
                TweenService:Create(btn, TweenInfo.new(0.12), { BackgroundColor3 = baseColor }):Play()
            end)
            btn.MouseButton1Click:Connect(function() if callback then callback(btn) end end)
            if helper._autoSize then helper._autoSize() end
            return btn
        end

        function helper:addWeaponButton(name, callback)
            local btn = new("TextButton", { Parent = helper._scroll, Size = UDim2.new(1, -40, 0, 38), BackgroundColor3 = theme.Surface, BackgroundTransparency = 0.4, BorderSizePixel = 0, Text = "  " .. name, Font = Enum.Font.Gotham, TextColor3 = theme.Text, TextSize = 13, AutoButtonColor = false, TextXAlignment = Enum.TextXAlignment.Left })
            corner(7, btn)
            padding(12, btn)
            btn.MouseEnter:Connect(function() TweenService:Create(btn, TweenInfo.new(0.12), { BackgroundTransparency = 0, BackgroundColor3 = theme.SurfaceHover }):Play() end)
            btn.MouseLeave:Connect(function() TweenService:Create(btn, TweenInfo.new(0.12), { BackgroundTransparency = 0.4, BackgroundColor3 = theme.Surface }):Play() end)
            btn.MouseButton1Click:Connect(function() if callback then callback(btn) end end)
            if helper._autoSize then helper._autoSize() end
            return btn
        end

        function helper:updateCanvas()
            if helper._autoSize then helper._autoSize() end
        end

        return helper
    end

    function self:setActiveTab(name)
        local panel = self._panels[name]
        local btn = self._tabs[name]
        if not panel or not btn then return end
        if self._activePanel == panel then return end
        local oldPanel = self._activePanel
        local oldBtn = self._activeTab
        self._activePanel = panel
        self._activeTab = btn
        if oldBtn then
            oldBtn:SetAttribute("IsActive", false)
            TweenService:Create(oldBtn, TweenInfo.new(0.15), { BackgroundTransparency = 1, TextColor3 = theme.TextDim }):Play()
            local oldBar = oldBtn:FindFirstChild("AccentBar")
            if oldBar then TweenService:Create(oldBar, TweenInfo.new(0.15), { BackgroundColor3 = theme.Surface }):Play() end
        end
        btn:SetAttribute("IsActive", true)
        TweenService:Create(btn, TweenInfo.new(0.15), { BackgroundTransparency = 0, BackgroundColor3 = theme.SurfaceHover, TextColor3 = theme.Text }):Play()
        local newBar = btn:FindFirstChild("AccentBar")
        if newBar then TweenService:Create(newBar, TweenInfo.new(0.15), { BackgroundColor3 = theme.Primary }):Play() end

        if oldPanel and oldPanel ~= panel then
            TweenService:Create(oldPanel, TweenInfo.new(0.15), { GroupTransparency = 1 }):Play()
            task.delay(0.15, function() oldPanel.Visible = false end)
        end
        panel.Visible = true
        panel.GroupTransparency = 1
        TweenService:Create(panel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { GroupTransparency = 0 }):Play()
    end

    function self:selectFirstTab()
        for _, name in ipairs(self._tabOrder) do self:setActiveTab(name) break end
    end

    function self:saveConfig(name)
        name = name or "default"
        local data = {}
        for k, v in pairs(flags) do data[k] = v end
        pcall(function()
            if not isfolder(saveFolder) then makefolder(saveFolder) end
            writefile(saveFolder .. "/" .. name .. ".json", HttpService:JSONEncode(data))
        end)
        return data
    end

    function self:loadConfig(name)
        name = name or "default"
        local path = saveFolder .. "/" .. name .. ".json"
        local data
        pcall(function() if isfile(path) then data = HttpService:JSONDecode(readfile(path)) end end)
        if data then for k, v in pairs(data) do flags[k] = v end end
        return data
    end

    function self:destroy()
        self:stopRGB()
        for _, conn in ipairs(connections) do pcall(function() conn:Disconnect() end) end
        if screenGui then screenGui:Destroy() end
    end

    setVisible(true)
    return self
end

return BytexLib
