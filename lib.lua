local BytexLib = {}
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function createShadow(parent)
    local shadow = Instance.new("ImageLabel")
    shadow.Name = "Shadow"
    shadow.Parent = parent
    shadow.Image = "rbxassetid://18278214282"
    shadow.ImageColor3 = Color3.fromRGB(81, 38, 255)
    shadow.BackgroundTransparency = 1
    shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    shadow.Size = UDim2.new(1, 0, 1.178, -50)
    return shadow
end

local function createMainWindow(parent, size, bgColor)
    local frame = Instance.new("Frame")
    frame.Parent = parent
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.BackgroundColor3 = bgColor or Color3.fromRGB(81, 38, 255)
    frame.BackgroundTransparency = 0
    frame.BorderSizePixel = 0
    frame.Position = UDim2.new(0.5, 0, 0.5, 0)
    frame.Size = size or UDim2.new(0.9, 0, 0.8, 0)
    frame.ZIndex = 2
    return frame
end

local function createTabBar(parent)
    local bar = Instance.new("Frame")
    bar.Name = "TabBar"
    bar.Parent = parent
    bar.BackgroundColor3 = Color3.fromRGB(20, 18, 50)
    bar.BackgroundTransparency = 0.2
    bar.BorderSizePixel = 0
    bar.Size = UDim2.new(1, 0, 0, 32)
    local layout = Instance.new("UIListLayout")
    layout.Parent = bar
    layout.FillDirection = Enum.FillDirection.Horizontal
    layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    layout.VerticalAlignment = Enum.VerticalAlignment.Center
    layout.Padding = UDim.new(0, 6)
    return bar
end

local function createTabButton(parent, name)
    local btn = Instance.new("TextButton")
    btn.Name = name
    btn.Parent = parent
    btn.BackgroundColor3 = Color3.fromRGB(31, 27, 75)
    btn.BorderSizePixel = 0
    btn.Size = UDim2.new(0, 120, 0, 26)
    btn.Font = Enum.Font.GothamMedium
    btn.Text = name
    btn.TextColor3 = Color3.fromRGB(200, 200, 220)
    btn.TextScaled = true
    btn.TextWrapped = true
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = btn
    local tsc = Instance.new("UITextSizeConstraint")
    tsc.MaxTextSize = 16
    tsc.Parent = btn
    return btn
end

local function createContentContainer(parent)
    local container = Instance.new("Frame")
    container.Name = "ContentContainer"
    container.Parent = parent
    container.BackgroundColor3 = Color3.fromRGB(20, 18, 50)
    container.BackgroundTransparency = 1
    container.BorderSizePixel = 0
    container.ClipsDescendants = true
    container.Position = UDim2.new(0, 0, 0, 32)
    container.Size = UDim2.new(1, 0, 1, -32)
    return container
end

local function createPanel(parent, name)
    local panel = Instance.new("CanvasGroup")
    panel.Name = name
    panel.Parent = parent
    panel.BackgroundColor3 = Color3.fromRGB(20, 18, 50)
    panel.BackgroundTransparency = 1
    panel.BorderSizePixel = 0
    panel.Size = UDim2.new(1, 0, 1, 0)
    panel.Visible = false
    panel.GroupTransparency = 1
    return panel
end

local function createScrollingFrame(parent, bgColor)
    local scroll = Instance.new("ScrollingFrame")
    scroll.Size = UDim2.new(1, 0, 1, 0)
    scroll.BackgroundColor3 = bgColor or Color3.fromRGB(31, 27, 75)
    scroll.BackgroundTransparency = 0
    scroll.ScrollBarThickness = 6
    scroll.Parent = parent
    return scroll
end

local function setupListLayout(scroll, horizontalAlignment)
    local layout = Instance.new("UIListLayout")
    layout.Padding = UDim.new(0, 8)
    layout.HorizontalAlignment = horizontalAlignment or Enum.HorizontalAlignment.Center
    layout.VerticalAlignment = Enum.VerticalAlignment.Top
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.Parent = scroll
    return layout
end

local function createToggle(parent, labelText, initialState, callback)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, -20, 0, 38)
    frame.BackgroundTransparency = 1
    frame.Parent = parent
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.6, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = labelText
    label.TextColor3 = Color3.fromRGB(220, 220, 240)
    label.Font = Enum.Font.GothamMedium
    label.TextScaled = true
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = frame
    local toggle = Instance.new("TextButton")
    toggle.Size = UDim2.new(0, 60, 0, 28)
    toggle.Position = UDim2.new(0.85, 0, 0, 5)
    toggle.BackgroundColor3 = initialState and Color3.fromRGB(81, 38, 255) or Color3.fromRGB(31, 27, 75)
    toggle.Text = initialState and "ON" or "OFF"
    toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    toggle.Font = Enum.Font.GothamMedium
    toggle.TextScaled = true
    toggle.BorderSizePixel = 0
    toggle.Parent = frame
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = toggle
    local state = initialState
    toggle.MouseButton1Click:Connect(function()
        state = not state
        toggle.Text = state and "ON" or "OFF"
        toggle.BackgroundColor3 = state and Color3.fromRGB(81, 38, 255) or Color3.fromRGB(31, 27, 75)
        if callback then callback(state) end
    end)
    return toggle, frame
end

local function createSlider(parent, labelText, min, max, default, callback)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, -20, 0, 38)
    frame.BackgroundTransparency = 1
    frame.Parent = parent
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.6, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = labelText
    label.TextColor3 = Color3.fromRGB(220, 220, 240)
    label.Font = Enum.Font.GothamMedium
    label.TextScaled = true
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = frame
    local slider = Instance.new("TextBox")
    slider.Size = UDim2.new(0, 80, 0, 28)
    slider.Position = UDim2.new(0.85, 0, 0, 5)
    slider.BackgroundColor3 = Color3.fromRGB(31, 27, 75)
    slider.Text = tostring(default)
    slider.TextColor3 = Color3.fromRGB(255, 255, 255)
    slider.Font = Enum.Font.GothamMedium
    slider.TextScaled = true
    slider.BorderSizePixel = 0
    slider.Parent = frame
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = slider
    slider.FocusLost:Connect(function()
        local val = tonumber(slider.Text)
        if val then
            val = math.clamp(val, min, max)
            slider.Text = tostring(val)
            if callback then callback(val) end
        else
            slider.Text = tostring(default)
        end
    end)
    return slider, frame
end

local function createDropdown(parent, labelText, items, defaultText, callback)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, -20, 0, 38)
    frame.BackgroundTransparency = 1
    frame.Parent = parent
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.6, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = labelText
    label.TextColor3 = Color3.fromRGB(220, 220, 240)
    label.Font = Enum.Font.GothamMedium
    label.TextScaled = true
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = frame
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 120, 0, 28)
    btn.Position = UDim2.new(0.85, 0, 0, 5)
    btn.BackgroundColor3 = Color3.fromRGB(31, 27, 75)
    btn.Text = defaultText or items[1] or ""
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.GothamMedium
    btn.TextScaled = true
    btn.BorderSizePixel = 0
    btn.Parent = frame
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = btn
    local currentIdx = 1
    for i, v in ipairs(items) do
        if v == defaultText then currentIdx = i break end
    end
    btn.MouseButton1Click:Connect(function()
        currentIdx = currentIdx % #items + 1
        btn.Text = items[currentIdx]
        if callback then callback(items[currentIdx]) end
    end)
    return btn, frame
end

local function createButton(parent, text, callback, bgColor)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -20, 0, 44)
    btn.Position = UDim2.new(0, 10, 0, 0)
    btn.BackgroundColor3 = bgColor or Color3.fromRGB(81, 38, 255)
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.GothamSemibold
    btn.TextScaled = true
    btn.BorderSizePixel = 0
    btn.Parent = parent
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = btn
    if callback then
        btn.MouseButton1Click:Connect(callback)
    end
    return btn
end

local function createWeaponButton(parent, weaponName, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -20, 0, 44)
    btn.Position = UDim2.new(0, 10, 0, 0)
    btn.BackgroundColor3 = Color3.fromRGB(31, 27, 75)
    btn.Text = weaponName
    btn.TextColor3 = Color3.fromRGB(200, 200, 220)
    btn.Font = Enum.Font.GothamSemibold
    btn.TextScaled = true
    btn.TextWrapped = true
    btn.BorderSizePixel = 0
    btn.Parent = parent
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = btn
    local tsc = Instance.new("UITextSizeConstraint")
    tsc.MaxTextSize = 16
    tsc.Parent = btn
    local scale = Instance.new("UIScale")
    scale.Parent = btn
    btn.MouseEnter:Connect(function()
        TweenService:Create(scale, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1.04 }):Play()
        TweenService:Create(btn, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(50, 35, 120) }):Play()
    end)
    btn.MouseLeave:Connect(function()
        TweenService:Create(scale, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Scale = 1 }):Play()
        TweenService:Create(btn, TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(31, 27, 75) }):Play()
    end)
    btn.MouseButton1Click:Connect(function()
        TweenService:Create(scale, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), { Scale = 0.92 }):Play()
        task.wait(0.1)
        TweenService:Create(scale, TweenInfo.new(0.2, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), { Scale = 1 }):Play()
        if callback then callback(btn) end
    end)
    return btn
end

local function createNotification(parent, title, text, duration)
    local notif = Instance.new("TextLabel")
    notif.Size = UDim2.new(0.5, 0, 0.08, 0)
    notif.Position = UDim2.new(0.25, 0, 0.01, 0)
    notif.BackgroundColor3 = Color3.fromRGB(20, 18, 50)
    notif.BackgroundTransparency = 0.2
    notif.Text = title .. " | " .. text
    notif.TextColor3 = Color3.fromRGB(255, 255, 255)
    notif.Font = Enum.Font.GothamSemibold
    notif.TextScaled = true
    notif.BorderSizePixel = 0
    notif.Parent = parent
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = notif
    task.wait(duration or 3)
    notif:Destroy()
    return notif
end

local function createPrompt(parent, title, text, buttons)
    local prompt = Instance.new("Frame")
    prompt.Size = UDim2.new(0.6, 0, 0.4, 0)
    prompt.Position = UDim2.new(0.2, 0, 0.3, 0)
    prompt.BackgroundColor3 = Color3.fromRGB(20, 18, 50)
    prompt.BackgroundTransparency = 0.1
    prompt.BorderSizePixel = 0
    prompt.Parent = parent
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 12)
    corner.Parent = prompt
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, 0, 0.2, 0)
    titleLabel.Position = UDim2.new(0, 0, 0, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.Font = Enum.Font.GothamSemibold
    titleLabel.TextScaled = true
    titleLabel.Parent = prompt
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 0.5, 0)
    textLabel.Position = UDim2.new(0, 0, 0.2, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = text
    textLabel.TextColor3 = Color3.fromRGB(200, 200, 220)
    textLabel.Font = Enum.Font.GothamMedium
    textLabel.TextScaled = true
    textLabel.TextWrapped = true
    textLabel.Parent = prompt
    local btnContainer = Instance.new("Frame")
    btnContainer.Size = UDim2.new(1, 0, 0.25, 0)
    btnContainer.Position = UDim2.new(0, 0, 0.7, 0)
    btnContainer.BackgroundTransparency = 1
    btnContainer.Parent = prompt
    local layout = Instance.new("UIListLayout")
    layout.FillDirection = Enum.FillDirection.Horizontal
    layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    layout.VerticalAlignment = Enum.VerticalAlignment.Center
    layout.Padding = UDim.new(0, 20)
    layout.Parent = btnContainer
    for label, action in pairs(buttons) do
        local btn = Instance.new("TextButton")
        btn.Size = UDim2.new(0, 80, 0, 30)
        btn.BackgroundColor3 = Color3.fromRGB(81, 38, 255)
        btn.Text = label
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.Font = Enum.Font.GothamMedium
        btn.TextScaled = true
        btn.BorderSizePixel = 0
        btn.Parent = btnContainer
        local corner2 = Instance.new("UICorner")
        corner2.CornerRadius = UDim.new(0, 6)
        corner2.Parent = btn
        btn.MouseButton1Click:Connect(function()
            prompt:Destroy()
            if action then action() end
        end)
    end
    return prompt
end

function BytexLib.new(config)
    config = config or {}
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = player:WaitForChild("PlayerGui")
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    local shadow = createShadow(screenGui)
    local mainFrame = createMainWindow(screenGui, config.Size, config.BgColor)
    local tabBar = createTabBar(mainFrame)
    local content = createContentContainer(mainFrame)
    local toggleBtn = Instance.new("TextButton")
    toggleBtn.Name = "ToggleButton"
    toggleBtn.Parent = screenGui
    toggleBtn.BackgroundColor3 = Color3.fromRGB(31, 27, 75)
    toggleBtn.BorderSizePixel = 0
    toggleBtn.Position = UDim2.new(-0.0003, 0, 0.493, 0)
    toggleBtn.Size = UDim2.new(0, 41, 0, 40)
    toggleBtn.Font = Enum.Font.GothamMedium
    toggleBtn.Text = "Close"
    toggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    toggleBtn.TextScaled = true
    toggleBtn.TextWrapped = true
    local tsc = Instance.new("UITextSizeConstraint")
    tsc.MaxTextSize = 18
    tsc.Parent = toggleBtn
    local function setupToggle()
        local frameScale = mainFrame:FindFirstChildOfClass("UIScale")
        if not frameScale then
            frameScale = Instance.new("UIScale")
            frameScale.Parent = mainFrame
        end
        local btnScale = toggleBtn:FindFirstChildOfClass("UIScale")
        if not btnScale then
            btnScale = Instance.new("UIScale")
            btnScale.Parent = toggleBtn
        end
        local isOpen = true
        toggleBtn.MouseButton1Click:Connect(function()
            if isOpen then
                toggleBtn.Text = "Open"
                TweenService:Create(toggleBtn, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    BackgroundColor3 = Color3.fromRGB(81, 38, 255),
                }):Play()
                TweenService:Create(mainFrame, TweenInfo.new(0.7, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {
                    Position = UDim2.new(0.5, 0, 1.5, 0),
                    BackgroundTransparency = 1,
                }):Play()
                TweenService:Create(frameScale, TweenInfo.new(0.7, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {
                    Scale = 0,
                }):Play()
            else
                toggleBtn.Text = "Close"
                TweenService:Create(toggleBtn, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    BackgroundColor3 = Color3.fromRGB(31, 27, 75),
                }):Play()
                mainFrame.Visible = true
                mainFrame.Position = UDim2.new(0.5, 0, 1.5, 0)
                mainFrame.BackgroundTransparency = 1
                frameScale.Scale = 0
                TweenService:Create(mainFrame, TweenInfo.new(0.7, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {
                    Position = UDim2.new(0.5, 0, 0.5, 0),
                    BackgroundTransparency = 0,
                }):Play()
                TweenService:Create(frameScale, TweenInfo.new(0.7, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {
                    Scale = 1,
                }):Play()
            end
            isOpen = not isOpen
        end)
    end
    setupToggle()
    local self = {
        _screenGui = screenGui,
        _mainFrame = mainFrame,
        _tabBar = tabBar,
        _content = content,
        _panels = {},
        _activeTab = nil,
        _activePanel = nil,
        _tabs = {},
    }
    function self:tab(config)
        local name = config.Name or "Tab"
        local panel = createPanel(self._content, name)
        local btn = createTabButton(self._tabBar, name)
        self._panels[name] = panel
        self._tabs[name] = btn
        btn.MouseButton1Click:Connect(function()
            self:setActiveTab(name)
        end)
        local panelHelper = {
            _panel = panel,
            _scroll = nil,
            _layout = nil,
        }
        function panelHelper:createScrolling(bgColor)
            local scroll = createScrollingFrame(panel, bgColor)
            local layout = setupListLayout(scroll)
            panelHelper._scroll = scroll
            panelHelper._layout = layout
            return scroll, layout
        end
        function panelHelper:addToggle(label, initialState, callback)
            return createToggle(self._scroll, label, initialState, callback)
        end
        function panelHelper:addSlider(label, min, max, default, callback)
            return createSlider(self._scroll, label, min, max, default, callback)
        end
        function panelHelper:addDropdown(label, items, defaultText, callback)
            return createDropdown(self._scroll, label, items, defaultText, callback)
        end
        function panelHelper:addButton(text, callback, bgColor)
            return createButton(self._scroll, text, callback, bgColor)
        end
        function panelHelper:addWeaponButton(name, callback)
            return createWeaponButton(self._scroll, name, callback)
        end
        function panelHelper:updateCanvas()
            if not self._scroll then return end
            local layout = self._scroll:FindFirstChildOfClass("UIListLayout")
            if not layout then return end
            local totalHeight = 0
            for _, child in ipairs(self._scroll:GetChildren()) do
                if child:IsA("TextButton") or child:IsA("Frame") then
                    local size = child.Size
                    local y = size.Y.Offset + (size.Y.Scale * self._scroll.AbsoluteSize.Y)
                    totalHeight = totalHeight + y + (layout.Padding.Offset or 0)
                end
            end
            self._scroll.CanvasSize = UDim2.new(0, 0, 0, totalHeight + 10)
        end
        return panelHelper
    end
    function self:setActiveTab(name)
        local panel = self._panels[name]
        local btn = self._tabs[name]
        if not panel or not btn then return end
        if self._activeTab then
            TweenService:Create(self._activeTab, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundColor3 = Color3.fromRGB(31, 27, 75),
                TextColor3 = Color3.fromRGB(200, 200, 220),
            }):Play()
        end
        self._activeTab = btn
        TweenService:Create(btn, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundColor3 = Color3.fromRGB(81, 38, 255),
            TextColor3 = Color3.fromRGB(255, 255, 255),
        }):Play()
        if self._activePanel then
            self._activePanel.Visible = false
        end
        self._activePanel = panel
        panel.Visible = true
        panel.GroupTransparency = 0
    end
    function self:notification(title, text, duration)
        return createNotification(self._screenGui, title, text, duration)
    end
    function self:prompt(title, text, buttons)
        return createPrompt(self._screenGui, title, text, buttons)
    end
    function self:selectFirstTab()
        for name, _ in pairs(self._tabs) do
            self:setActiveTab(name)
            break
        end
    end
    return self
end

return BytexLib
