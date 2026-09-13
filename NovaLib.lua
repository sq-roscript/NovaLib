--// NovaLib | Clean, Fast, Unique UI Library | Single File
--// Created for you | Inspired by Rayfield / SpeedHubX / ZapHub but cleaner
--// Usage at bottom of file

local NovaLib = {}
NovaLib.Version = "1.0.0"
NovaLib.Themes = {
	Default = {
		Background   = Color3.fromRGB(16, 17, 23),
		Topbar       = Color3.fromRGB(20, 21, 29),
		Sidebar      = Color3.fromRGB(18, 19, 27),
		Element      = Color3.fromRGB(23, 24, 33),
		ElementHover = Color3.fromRGB(29, 30, 41),
		Accent       = Color3.fromRGB(99, 102, 241),
		Accent2      = Color3.fromRGB(168, 85, 247),
		Text         = Color3.fromRGB(235, 236, 245),
		SubText      = Color3.fromRGB(145, 148, 170),
		Stroke       = Color3.fromRGB(38, 39, 53),
		Success      = Color3.fromRGB(34, 197, 94),
		Error        = Color3.fromRGB(239, 68, 68),
		ToggleOff    = Color3.fromRGB(45, 46, 61),
	},
	Midnight = {
		Background   = Color3.fromRGB(10, 10, 15),
		Topbar       = Color3.fromRGB(14, 14, 20),
		Sidebar      = Color3.fromRGB(12, 12, 18),
		Element      = Color3.fromRGB(18, 18, 26),
		ElementHover = Color3.fromRGB(26, 26, 36),
		Accent       = Color3.fromRGB(88, 101, 242),
		Accent2      = Color3.fromRGB(0, 201, 255),
		Text         = Color3.fromRGB(255, 255, 255),
		SubText      = Color3.fromRGB(130, 132, 150),
		Stroke       = Color3.fromRGB(30, 30, 42),
		Success      = Color3.fromRGB(34, 197, 94),
		Error        = Color3.fromRGB(239, 68, 68),
		ToggleOff    = Color3.fromRGB(40, 40, 55),
	},
	Crimson = {
		Background   = Color3.fromRGB(20, 12, 14),
		Topbar       = Color3.fromRGB(26, 15, 18),
		Sidebar      = Color3.fromRGB(23, 13, 16),
		Element      = Color3.fromRGB(30, 18, 21),
		ElementHover = Color3.fromRGB(40, 24, 28),
		Accent       = Color3.fromRGB(239, 68, 68),
		Accent2      = Color3.fromRGB(249, 115, 22),
		Text         = Color3.fromRGB(255, 240, 240),
		SubText      = Color3.fromRGB(170, 135, 140),
		Stroke       = Color3.fromRGB(55, 30, 35),
		Success      = Color3.fromRGB(34, 197, 94),
		Error        = Color3.fromRGB(239, 68, 68),
		ToggleOff    = Color3.fromRGB(50, 32, 36),
	},
	Emerald = {
		Background   = Color3.fromRGB(10, 20, 16),
		Topbar       = Color3.fromRGB(13, 26, 21),
		Sidebar      = Color3.fromRGB(11, 23, 18),
		Element      = Color3.fromRGB(17, 32, 26),
		ElementHover = Color3.fromRGB(23, 42, 34),
		Accent       = Color3.fromRGB(16, 185, 129),
		Accent2      = Color3.fromRGB(34, 211, 238),
		Text         = Color3.fromRGB(235, 255, 245),
		SubText      = Color3.fromRGB(130, 160, 145),
		Stroke       = Color3.fromRGB(28, 52, 42),
		Success      = Color3.fromRGB(34, 197, 94),
		Error        = Color3.fromRGB(239, 68, 68),
		ToggleOff    = Color3.fromRGB(30, 50, 42),
	},
	Ocean = {
		Background   = Color3.fromRGB(11, 18, 28),
		Topbar       = Color3.fromRGB(14, 24, 36),
		Sidebar      = Color3.fromRGB(12, 21, 32),
		Element      = Color3.fromRGB(18, 30, 44),
		ElementHover = Color3.fromRGB(24, 40, 58),
		Accent       = Color3.fromRGB(14, 165, 233),
		Accent2      = Color3.fromRGB(99, 102, 241),
		Text         = Color3.fromRGB(230, 245, 255),
		SubText      = Color3.fromRGB(125, 150, 175),
		Stroke       = Color3.fromRGB(30, 50, 70),
		Success      = Color3.fromRGB(34, 197, 94),
		Error        = Color3.fromRGB(239, 68, 68),
		ToggleOff    = Color3.fromRGB(32, 48, 64),
	},
	Sunset = {
		Background   = Color3.fromRGB(22, 15, 20),
		Topbar       = Color3.fromRGB(28, 19, 26),
		Sidebar      = Color3.fromRGB(25, 17, 23),
		Element      = Color3.fromRGB(34, 23, 31),
		ElementHover = Color3.fromRGB(45, 30, 41),
		Accent       = Color3.fromRGB(249, 115, 22),
		Accent2      = Color3.fromRGB(236, 72, 153),
		Text         = Color3.fromRGB(255, 242, 235),
		SubText      = Color3.fromRGB(175, 140, 150),
		Stroke       = Color3.fromRGB(60, 35, 45),
		Success      = Color3.fromRGB(34, 197, 94),
		Error        = Color3.fromRGB(239, 68, 68),
		ToggleOff    = Color3.fromRGB(55, 35, 45),
	},
	Light = {
		Background   = Color3.fromRGB(242, 243, 247),
		Topbar       = Color3.fromRGB(255, 255, 255),
		Sidebar      = Color3.fromRGB(235, 236, 241),
		Element      = Color3.fromRGB(255, 255, 255),
		ElementHover = Color3.fromRGB(228, 230, 238),
		Accent       = Color3.fromRGB(99, 102, 241),
		Accent2      = Color3.fromRGB(168, 85, 247),
		Text         = Color3.fromRGB(20, 22, 35),
		SubText      = Color3.fromRGB(110, 114, 135),
		Stroke       = Color3.fromRGB(210, 213, 225),
		Success      = Color3.fromRGB(22, 163, 74),
		Error        = Color3.fromRGB(220, 38, 38),
		ToggleOff    = Color3.fromRGB(200, 203, 215),
	},
	Cyber = {
		Background   = Color3.fromRGB(8, 12, 10),
		Topbar       = Color3.fromRGB(10, 16, 13),
		Sidebar      = Color3.fromRGB(9, 14, 11),
		Element      = Color3.fromRGB(14, 22, 18),
		ElementHover = Color3.fromRGB(20, 32, 26),
		Accent       = Color3.fromRGB(0, 255, 170),
		Accent2      = Color3.fromRGB(0, 255, 255),
		Text         = Color3.fromRGB(220, 255, 240),
		SubText      = Color3.fromRGB(110, 160, 140),
		Stroke       = Color3.fromRGB(25, 55, 42),
		Success      = Color3.fromRGB(0, 255, 170),
		Error        = Color3.fromRGB(255, 60, 90),
		ToggleOff    = Color3.fromRGB(25, 45, 38),
	},
}

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local LocalPlayer = Players.LocalPlayer

local TWEEN = TweenInfo.new(0.22, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local TWEEN_FAST = TweenInfo.new(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local TWEEN_SPRING = TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out)

local function tween(obj, props, info)
	info = info or TWEEN
	local ok, t = pcall(function()
		return TweenService:Create(obj, info, props)
	end)
	if ok and t then
		t:Play()
		return t
	end
	return nil
end

local function corner(obj, r)
	local c = Instance.new("UICorner")
	c.CornerRadius = r or UDim.new(0, 8)
	c.Parent = obj
	return c
end

local function stroke(obj, color, thickness, transparency)
	local s = Instance.new("UIStroke")
	s.Color = color
	s.Thickness = thickness or 1
	s.Transparency = transparency or 0
	s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	s.Parent = obj
	return s
end

local function padding(obj, l, r, t, b)
	local p = Instance.new("UIPadding")
	p.PaddingLeft = UDim.new(0, l or 10)
	p.PaddingRight = UDim.new(0, r or 10)
	p.PaddingTop = UDim.new(0, t or 8)
	p.PaddingBottom = UDim.new(0, b or 8)
	p.Parent = obj
	return p
end

local function makeDraggable(frame, handle)
	handle = handle or frame
	local dragging = false
	local dragStart, startPos
	handle.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local delta = input.Position - dragStart
			frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)
end

local function safeCallback(fn, ...)
	if type(fn) ~= "function" then return end
	local args = {...}
	task.spawn(function()
		local ok, err = pcall(fn, table.unpack(args))
		if not ok then
			warn("[NovaLib] Callback error: " .. tostring(err))
		end
	end)
end

--// Theme Helpers (für Settings: Open-Keybind + Themes live wechseln)
local function cloneTheme(t)
	local n = {}
	for k, v in pairs(t) do n[k] = v end
	return n
end

function NovaLib.GetThemeNames()
	local names = {}
	for name, _ in pairs(NovaLib.Themes) do
		table.insert(names, name)
	end
	table.sort(names)
	return names
end

local function colorsMatch(a, b)
	if typeof(a) ~= "Color3" or typeof(b) ~= "Color3" then return false end
	return math.abs(a.R - b.R) < 0.004 and math.abs(a.G - b.G) < 0.004 and math.abs(a.B - b.B) < 0.004
end

--// NOTIFY SYSTEM (global, works without window too)
local notifyGui, notifyHolder
local function ensureNotifyGui()
	if notifyHolder and notifyHolder.Parent then return notifyHolder end
	local parent
	pcall(function()
		if typeof(gethui) == "function" then
			parent = gethui()
		elseif typeof(get_hidden_gui) == "function" then
			parent = get_hidden_gui()
		elseif typeof(gethui) ~= "function" and CoreGui then
			parent = CoreGui
		end
	end)
	if not parent then
		if LocalPlayer and LocalPlayer:FindFirstChildOfClass("PlayerGui") then
			parent = LocalPlayer:FindFirstChildOfClass("PlayerGui")
		else
			parent = CoreGui
		end
	end
	notifyGui = Instance.new("ScreenGui")
	notifyGui.Name = "NovaLib_Notify"
	notifyGui.ResetOnSpawn = false
	notifyGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	notifyGui.DisplayOrder = 9999
	pcall(function()
		if typeof(syn) == "table" and syn.protect_gui then syn.protect_gui(notifyGui) end
	end)
	notifyGui.Parent = parent

	notifyHolder = Instance.new("Frame")
	notifyHolder.Name = "Holder"
	notifyHolder.AnchorPoint = Vector2.new(1, 1)
	notifyHolder.Position = UDim2.new(1, -18, 1, -18)
	notifyHolder.Size = UDim2.new(0, 300, 1, 0)
	notifyHolder.BackgroundTransparency = 1
	notifyHolder.Parent = notifyGui

	local list = Instance.new("UIListLayout")
	list.FillDirection = Enum.FillDirection.Vertical
	list.HorizontalAlignment = Enum.HorizontalAlignment.Right
	list.VerticalAlignment = Enum.VerticalAlignment.Bottom
	list.Padding = UDim.new(0, 10)
	list.Parent = notifyHolder
	return notifyHolder
end

function NovaLib.Notify(cfg)
	cfg = cfg or {}
	local title = cfg.Title or cfg.Name or "NovaLib"
	local desc = cfg.Description or cfg.Text or ""
	local dur = cfg.Duration or 4
	local ntype = cfg.Type or "Info"

	local theme = NovaLib.Themes.Default
	if cfg.Theme then theme = cfg.Theme end

	ensureNotifyGui()

	local accent = theme.Accent
	if ntype == "Success" then accent = theme.Success
	elseif ntype == "Error" then accent = theme.Error
	elseif ntype == "Info" then accent = theme.Accent
	end

	local box = Instance.new("Frame")
	box.Size = UDim2.new(0, 290, 0, 0)
	box.AutomaticSize = Enum.AutomaticSize.Y
	box.BackgroundColor3 = theme.Topbar
	box.BorderSizePixel = 0
	box.ClipsDescendants = true
	corner(box, UDim.new(0, 10))
	stroke(box, theme.Stroke, 1)
	box.Parent = notifyHolder
	padding(box, 12, 12, 10, 10)

	local bar = Instance.new("Frame")
	bar.Size = UDim2.new(0, 3, 1, -6)
	bar.Position = UDim2.new(0, 0, 0, 3)
	bar.BackgroundColor3 = accent
	bar.BorderSizePixel = 0
	corner(bar, UDim.new(1, 0))
	bar.Parent = box

	local t = Instance.new("TextLabel")
	t.Size = UDim2.new(1, -14, 0, 18)
	t.Position = UDim2.new(0, 12, 0, 0)
	t.BackgroundTransparency = 1
	t.Font = Enum.Font.GothamBold
	t.TextSize = 13
	t.TextXAlignment = Enum.TextXAlignment.Left
	t.TextColor3 = theme.Text
	t.Text = title
	t.TextTruncate = Enum.TextTruncate.AtEnd
	t.Parent = box

	local d = Instance.new("TextLabel")
	d.Size = UDim2.new(1, -14, 0, 0)
	d.Position = UDim2.new(0, 12, 0, 20)
	d.AutomaticSize = Enum.AutomaticSize.Y
	d.BackgroundTransparency = 1
	d.Font = Enum.Font.Gotham
	d.TextSize = 12
	d.TextXAlignment = Enum.TextXAlignment.Left
	d.TextYAlignment = Enum.TextYAlignment.Top
	d.TextColor3 = theme.SubText
	d.TextWrapped = true
	d.Text = desc
	d.Parent = box

	box.Position = UDim2.new(1, 40, 0, 0)
	box.BackgroundTransparency = 1
	t.TextTransparency = 1
	d.TextTransparency = 1
	tween(box, {Position = UDim2.new(0, 0, 0, 0), BackgroundTransparency = 0}, TWEEN_SPRING)
	tween(t, {TextTransparency = 0})
	tween(d, {TextTransparency = 0})

	task.delay(dur, function()
		if not box.Parent then return end
		tween(box, {Position = UDim2.new(1, 40, 0, 0), BackgroundTransparency = 1})
		tween(t, {TextTransparency = 1})
		tween(d, {TextTransparency = 1})
		task.wait(0.25)
		pcall(function() box:Destroy() end)
	end)
end

--// MAIN WINDOW
function NovaLib.CreateWindow(cfg)
	cfg = cfg or {}
	-- Theme kopieren (pro Window), damit live-switch andere Windows nicht kaputt macht
	local theme = cloneTheme(NovaLib.Themes.Default)
	if cfg.ThemeName and NovaLib.Themes[cfg.ThemeName] then
		theme = cloneTheme(NovaLib.Themes[cfg.ThemeName])
	end
	if cfg.Theme then
		for k, v in pairs(cfg.Theme) do theme[k] = v end
	end
	if cfg.Accent then theme.Accent = cfg.Accent end
	if cfg.Accent2 then theme.Accent2 = cfg.Accent2 end

	local winName = cfg.Name or "NovaLib"
	local subTitle = cfg.SubTitle or cfg.Sub or "v1.0"
	local logoId = cfg.Logo or "" -- Variable für Logo: z.B. "rbxassetid://123456"
	local toggleKey = cfg.Keybind or Enum.KeyCode.K

	-- Parent finden (executor-safe)
	local parent
	pcall(function()
		if typeof(gethui) == "function" then parent = gethui()
		elseif typeof(get_hidden_gui) == "function" then parent = get_hidden_gui()
		else parent = CoreGui end
	end)
	if not parent then
		parent = LocalPlayer:WaitForChild("PlayerGui")
	end

	local gui = Instance.new("ScreenGui")
	gui.Name = "NovaLib_" .. tostring(winName)
	gui.ResetOnSpawn = false
	gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	gui.IgnoreGuiInset = true
	pcall(function()
		if typeof(syn) == "table" and syn.protect_gui then syn.protect_gui(gui) end
	end)
	gui.Parent = parent

	-- Hauptfenster
	local main = Instance.new("Frame")
	main.Name = "Main"
	main.AnchorPoint = Vector2.new(0.5, 0.5)
	main.Position = UDim2.new(0.5, 0, 0.5, 0)
	main.Size = UDim2.new(0, 580, 0, 380)
	main.BackgroundColor3 = theme.Background
	main.BorderSizePixel = 0
	main.ClipsDescendants = true
	corner(main, UDim.new(0, 12))
	stroke(main, theme.Stroke, 1)
	main.Parent = gui

	-- Schatten / Glow
	local glow = Instance.new("UIStroke")
	glow.Color = theme.Accent
	glow.Transparency = 0.92
	glow.Thickness = 2
	glow.Parent = main

	-- Topbar
	local top = Instance.new("Frame")
	top.Name = "Topbar"
	top.Size = UDim2.new(1, 0, 0, 48)
	top.BackgroundColor3 = theme.Topbar
	top.BorderSizePixel = 0
	top.Parent = main
	local topC = Instance.new("UICorner")
	topC.CornerRadius = UDim.new(0, 12)
	topC.Parent = top
	local fix = Instance.new("Frame")
	fix.Size = UDim2.new(1, 0, 0, 14)
	fix.Position = UDim2.new(0, 0, 1, -14)
	fix.BackgroundColor3 = theme.Topbar
	fix.BorderSizePixel = 0
	fix.Parent = top
	stroke(top, theme.Stroke, 1)

	local logoImg = Instance.new("ImageLabel")
	logoImg.Size = UDim2.new(0, 28, 0, 28)
	logoImg.Position = UDim2.new(0, 12, 0.5, -14)
	logoImg.BackgroundColor3 = theme.Element
	logoImg.Image = logoId
	logoImg.ScaleType = Enum.ScaleType.Crop
	logoImg.BorderSizePixel = 0
	corner(logoImg, UDim.new(0, 8))
	stroke(logoImg, theme.Stroke, 1)
	logoImg.Parent = top
	if logoId == "" then
		logoImg.Image = ""
		local dot = Instance.new("Frame")
		dot.AnchorPoint = Vector2.new(0.5, 0.5)
		dot.Position = UDim2.new(0.5, 0, 0.5, 0)
		dot.Size = UDim2.new(0, 10, 0, 10)
		dot.BackgroundColor3 = theme.Accent
		dot.BorderSizePixel = 0
		corner(dot, UDim.new(1, 0))
		dot.Parent = logoImg
		local grad = Instance.new("UIGradient")
		grad.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, theme.Accent), ColorSequenceKeypoint.new(1, theme.Accent2)})
		grad.Rotation = 45
		grad.Parent = dot
	end

	local titleL = Instance.new("TextLabel")
	titleL.Position = UDim2.new(0, 48, 0, 6)
	titleL.Size = UDim2.new(0, 300, 0, 20)
	titleL.BackgroundTransparency = 1
	titleL.Font = Enum.Font.GothamBold
	titleL.TextSize = 14
	titleL.TextXAlignment = Enum.TextXAlignment.Left
	titleL.TextColor3 = theme.Text
	titleL.Text = winName
	titleL.Parent = top

	local subL = Instance.new("TextLabel")
	subL.Position = UDim2.new(0, 48, 0, 24)
	subL.Size = UDim2.new(0, 300, 0, 14)
	subL.BackgroundTransparency = 1
	subL.Font = Enum.Font.Gotham
	subL.TextSize = 11
	subL.TextXAlignment = Enum.TextXAlignment.Left
	subL.TextColor3 = theme.SubText
	subL.Text = subTitle
	subL.Parent = top

	local function topBtn(txt, xOff)
		local b = Instance.new("TextButton")
		b.Size = UDim2.new(0, 28, 0, 28)
		b.Position = UDim2.new(1, xOff, 0.5, -14)
		b.BackgroundColor3 = theme.Element
		b.Text = txt
		b.Font = Enum.Font.GothamBold
		b.TextSize = 14
		b.TextColor3 = theme.SubText
		b.AutoButtonColor = false
		corner(b, UDim.new(0, 8))
		stroke(b, theme.Stroke, 1)
		b.Parent = top
		b.MouseEnter:Connect(function() tween(b, {BackgroundColor3 = theme.ElementHover, TextColor3 = theme.Text}, TWEEN_FAST) end)
		b.MouseLeave:Connect(function() tween(b, {BackgroundColor3 = theme.Element, TextColor3 = theme.SubText}, TWEEN_FAST) end)
		return b
	end

	local closeBtn = topBtn("×", -40)
	local minBtn = topBtn("–", -74)

	makeDraggable(main, top)

	-- Sidebar
	local side = Instance.new("Frame")
	side.Name = "Sidebar"
	side.Position = UDim2.new(0, 10, 0, 58)
	side.Size = UDim2.new(0, 150, 1, -68)
	side.BackgroundColor3 = theme.Sidebar
	side.BorderSizePixel = 0
	corner(side, UDim.new(0, 10))
	stroke(side, theme.Stroke, 1)
	side.Parent = main

	local sideList = Instance.new("UIListLayout")
	sideList.Padding = UDim.new(0, 6)
	sideList.SortOrder = Enum.SortOrder.LayoutOrder
	sideList.Parent = side

	local sidePad = Instance.new("UIPadding")
	sidePad.PaddingLeft = UDim.new(0, 8)
	sidePad.PaddingRight = UDim.new(0, 8)
	sidePad.PaddingTop = UDim.new(0, 8)
	sidePad.PaddingBottom = UDim.new(0, 8)
	sidePad.Parent = side

	-- Indicator (wandernder Balken)
	local indicator = Instance.new("Frame")
	indicator.Size = UDim2.new(0, 3, 0, 24)
	indicator.BackgroundColor3 = theme.Accent
	indicator.BorderSizePixel = 0
	corner(indicator, UDim.new(1, 0))
	indicator.Visible = false
	indicator.Parent = side
	indicator.ZIndex = 5

	-- Content
	local content = Instance.new("Frame")
	content.Name = "Content"
	content.Position = UDim2.new(0, 170, 0, 58)
	content.Size = UDim2.new(1, -180, 1, -68)
	content.BackgroundTransparency = 1
	content.ClipsDescendants = true
	content.Parent = main

	-- Floating Dot (minimiert)
	local floatBtn = Instance.new("TextButton")
	floatBtn.Name = "Float"
	floatBtn.Size = UDim2.new(0, 52, 0, 52)
	floatBtn.Position = UDim2.new(0, 24, 0.5, -26)
	floatBtn.BackgroundColor3 = theme.Topbar
	floatBtn.Text = ""
	floatBtn.Visible = false
	floatBtn.AutoButtonColor = false
	corner(floatBtn, UDim.new(1, 0))
	stroke(floatBtn, theme.Accent, 2)
	floatBtn.Parent = gui
	makeDraggable(floatBtn, floatBtn)

	local floatImg = Instance.new("ImageLabel")
	floatImg.AnchorPoint = Vector2.new(0.5, 0.5)
	floatImg.Position = UDim2.new(0.5, 0, 0.5, 0)
	floatImg.Size = UDim2.new(1, -8, 1, -8)
	floatImg.BackgroundTransparency = 1
	floatImg.Image = logoId
	floatImg.ScaleType = Enum.ScaleType.Crop
	corner(floatImg, UDim.new(1, 0))
	floatImg.Parent = floatBtn
	if logoId == "" then
		local fdot = Instance.new("Frame")
		fdot.AnchorPoint = Vector2.new(0.5, 0.5)
		fdot.Position = UDim2.new(0.5, 0, 0.5, 0)
		fdot.Size = UDim2.new(0, 18, 0, 18)
		fdot.BackgroundColor3 = theme.Accent
		fdot.BorderSizePixel = 0
		corner(fdot, UDim.new(1, 0))
		fdot.Parent = floatBtn
		local g2 = Instance.new("UIGradient")
		g2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, theme.Accent), ColorSequenceKeypoint.new(1, theme.Accent2)})
		g2.Rotation = 45
		g2.Parent = fdot
	end

	-- Open Animation
	main.Size = UDim2.new(0, 520, 0, 340)
	main.GroupTransparency = 1
	-- GroupTransparency gibt es nur bei CanvasGroup, fallback:
	pcall(function() main.GroupTransparency = nil end)
	main.Visible = true
	tween(main, {Size = UDim2.new(0, 580, 0, 380)}, TWEEN_SPRING)

	local Window = {}
	Window.Gui = gui
	Window.Theme = theme
	Window.Minimized = false
	Window.Tabs = {}
	Window.CurrentTab = nil
	Window.CurrentThemeName = cfg.ThemeName or "Default"

	function Window:SetLogo(id)
		logoId = id
		logoImg.Image = id
		floatImg.Image = id
	end

	function Window:Notify(ncfg)
		ncfg = ncfg or {}
		ncfg.Theme = theme
		NovaLib.Notify(ncfg)
	end

	function Window:Minimize(state)
		if state == nil then state = not Window.Minimized end
		Window.Minimized = state
		if state then
			tween(main, {Size = UDim2.new(0, 540, 0, 340)}, TWEEN_FAST)
			task.wait(0.12)
			main.Visible = false
			floatBtn.Visible = true
			floatBtn.Size = UDim2.new(0, 0, 0, 0)
			tween(floatBtn, {Size = UDim2.new(0, 52, 0, 52)}, TWEEN_SPRING)
		else
			tween(floatBtn, {Size = UDim2.new(0, 0, 0, 0)}, TWEEN_FAST)
			task.wait(0.12)
			floatBtn.Visible = false
			main.Visible = true
			main.Size = UDim2.new(0, 540, 0, 340)
			tween(main, {Size = UDim2.new(0, 580, 0, 380)}, TWEEN_SPRING)
		end
	end

	function Window:Destroy()
		tween(main, {Size = UDim2.new(0, 520, 0, 0)}, TWEEN_FAST)
		task.wait(0.15)
		pcall(function() gui:Destroy() end)
	end

	--// SETTINGS: Open-Keybind + Theme live wechseln
	function Window:GetOpenKeybind()
		return toggleKey
	end

	function Window:SetOpenKeybind(key)
		if typeof(key) == "EnumItem" then
			toggleKey = key
			if Window._openKeyBtn then
				pcall(function() Window._openKeyBtn:Set(key) end)
			end
			Window:Notify({Title = "Keybind", Description = "Open-Key ist jetzt: " .. key.Name, Type = "Info", Duration = 2})
		end
	end

	local function applyThemeLive(oldTheme, newTheme)
		if not gui or not gui.Parent then return end
		-- alle Background/Text/Stroke Farben ersetzen, die zum alten Theme passen
		for _, obj in ipairs(gui:GetDescendants()) do
			pcall(function()
				if obj:IsA("Frame") or obj:IsA("TextButton") or obj:IsA("TextBox") or obj:IsA("ImageLabel") or obj:IsA("ScrollingFrame") then
					for k, oldCol in pairs(oldTheme) do
						if typeof(oldCol) == "Color3" and newTheme[k] then
							if colorsMatch(obj.BackgroundColor3, oldCol) then
								tween(obj, {BackgroundColor3 = newTheme[k]}, TWEEN_FAST)
								break
							end
						end
					end
				end
				if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
					for k, oldCol in pairs(oldTheme) do
						if typeof(oldCol) == "Color3" and newTheme[k] then
							-- nur Text-Farben mappen (Text, SubText, Accent)
							if (k == "Text" or k == "SubText" or k == "Accent") and colorsMatch(obj.TextColor3, oldCol) then
								tween(obj, {TextColor3 = newTheme[k]}, TWEEN_FAST)
								break
							end
						end
					end
					-- Placeholder separat
					if obj:IsA("TextBox") then
						for k, oldCol in pairs(oldTheme) do
							if k == "SubText" and colorsMatch(obj.PlaceholderColor3, oldCol) then
								obj.PlaceholderColor3 = newTheme[k]
								break
							end
						end
					end
				end
				if obj:IsA("UIStroke") then
					for k, oldCol in pairs(oldTheme) do
						if typeof(oldCol) == "Color3" and newTheme[k] then
							if (k == "Stroke" or k == "Accent") and colorsMatch(obj.Color, oldCol) then
								tween(obj, {Color = newTheme[k]}, TWEEN_FAST)
								break
							end
						end
					end
				end
				if obj:IsA("ScrollingFrame") then
					if colorsMatch(obj.ScrollBarImageColor3, oldTheme.Stroke) then
						obj.ScrollBarImageColor3 = newTheme.Stroke
					end
				end
				if obj:IsA("UIGradient") then
					local seq = obj.Color
					if seq and #seq.Keypoints == 2 then
						local c1, c2 = seq.Keypoints[1].Value, seq.Keypoints[2].Value
						if colorsMatch(c1, oldTheme.Accent) and colorsMatch(c2, oldTheme.Accent2) then
							tween(obj, {Color = ColorSequence.new({
								ColorSequenceKeypoint.new(0, newTheme.Accent),
								ColorSequenceKeypoint.new(1, newTheme.Accent2),
							})}, TWEEN_FAST)
						end
					end
				end
			end)
		end
	end

	function Window:SetTheme(nameOrTable)
		local newT
		if type(nameOrTable) == "string" then
			if not NovaLib.Themes[nameOrTable] then
				warn("[NovaLib] Theme nicht gefunden: " .. tostring(nameOrTable))
				return
			end
			newT = cloneTheme(NovaLib.Themes[nameOrTable])
			Window.CurrentThemeName = nameOrTable
		elseif type(nameOrTable) == "table" then
			newT = cloneTheme(nameOrTable)
		else
			return
		end
		local oldT = cloneTheme(theme)
		for k, v in pairs(newT) do theme[k] = v end
		Window.Theme = theme
		task.spawn(applyThemeLive, oldT, theme)
		Window:Notify({Title = "Theme", Description = "Theme: " .. tostring(Window.CurrentThemeName or "Custom"), Type = "Success", Duration = 2})
	end

	function Window:GetTheme()
		return cloneTheme(theme)
	end

	function Window:SetAccent(color, color2)
		if typeof(color) ~= "Color3" then return end
		local oldT = cloneTheme(theme)
		theme.Accent = color
		if typeof(color2) == "Color3" then theme.Accent2 = color2 end
		task.spawn(applyThemeLive, oldT, theme)
	end

	-- Fertiger Settings-Tab mit 1 Call: Open-Keybind + Theme-Dropdown + Accent-Picker
	-- Nutzung: Window:CreateSettingsTab() oder Window:CreateSettingsTab({Name="Settings"})
	function Window:CreateSettingsTab(scfg)
		scfg = scfg or {}
		local tab = Window:CreateTab({Name = scfg.Name or "Settings"})

		tab:CreateSection("Menu")

		tab:CreateLabel({
			Title = "UI Einstellungen",
			Description = "Hier kannst du Open-Key und Theme ändern. Wird sofort übernommen.",
		})

		local kb = tab:CreateKeybind({
			Name = "Open / Close Keybind",
			Default = toggleKey,
			Callback = function(k)
				toggleKey = k
				Window:Notify({Title = "Keybind gespeichert", Description = "Open-Key: " .. k.Name, Type = "Success", Duration = 2})
			end,
		})
		Window._openKeyBtn = kb

		local names = NovaLib.GetThemeNames()
		local currentName = cfg.ThemeName or "Default"
		-- falls Default nicht in Liste? ist immer drin
		tab:CreateDropdown({
			Name = "Theme",
			Options = names,
			Default = currentName,
			Callback = function(v)
				Window:SetTheme(v)
			end,
		})

		tab:CreateColorPicker({
			Name = "Accent Farbe (klick = nächste)",
			Default = theme.Accent,
			Callback = function(c)
				Window:SetAccent(c)
			end,
		})

		tab:CreateButton({
			Name = "UI minimieren (zum Logo-Punkt)",
			Callback = function()
				Window:Minimize(true)
			end,
		})

		tab:CreateLabel({
			Title = "Tipp",
			Description = "Drücke deinen Open-Key um die UI zu verstecken / zu zeigen.",
		})

		return tab
	end

	minBtn.MouseButton1Click:Connect(function() Window:Minimize(true) end)
	floatBtn.MouseButton1Click:Connect(function() Window:Minimize(false) end)
	closeBtn.MouseButton1Click:Connect(function() Window:Destroy() end)

	UserInputService.InputBegan:Connect(function(input, gpe)
		if gpe then return end
		if input.KeyCode == toggleKey then
			if main.Visible then Window:Minimize(true)
			else
				if floatBtn.Visible then Window:Minimize(false) end
			end
		end
	end)

	--// TAB SYSTEM
	local tabCount = 0
	function Window:CreateTab(tabCfg)
		tabCfg = tabCfg or {}
		local tabName = tabCfg.Name or ("Tab " .. (tabCount + 1))
		tabCount += 1

		local tabBtn = Instance.new("TextButton")
		tabBtn.Size = UDim2.new(1, 0, 0, 34)
		tabBtn.BackgroundColor3 = theme.Element
		tabBtn.Text = ""
		tabBtn.AutoButtonColor = false
		tabBtn.LayoutOrder = tabCount
		corner(tabBtn, UDim.new(0, 8))
		tabBtn.Parent = side

		local tabLabel = Instance.new("TextLabel")
		tabLabel.Size = UDim2.new(1, -12, 1, 0)
		tabLabel.Position = UDim2.new(0, 12, 0, 0)
		tabLabel.BackgroundTransparency = 1
		tabLabel.Font = Enum.Font.GothamMedium
		tabLabel.TextSize = 12
		tabLabel.TextXAlignment = Enum.TextXAlignment.Left
		tabLabel.TextColor3 = theme.SubText
		tabLabel.Text = tabName
		tabLabel.TextTruncate = Enum.TextTruncate.AtEnd
		tabLabel.Parent = tabBtn

		local page = Instance.new("ScrollingFrame")
		page.Name = tabName
		page.Size = UDim2.new(1, 0, 1, 0)
		page.BackgroundTransparency = 1
		page.BorderSizePixel = 0
		page.ScrollBarThickness = 3
		page.ScrollBarImageColor3 = theme.Stroke
		page.CanvasSize = UDim2.new(0, 0, 0, 0)
		page.AutomaticCanvasSize = Enum.AutomaticSize.Y
		page.Visible = false
		page.Parent = content

		local pl = Instance.new("UIListLayout")
		pl.Padding = UDim.new(0, 8)
		pl.SortOrder = Enum.SortOrder.LayoutOrder
		pl.Parent = page

		local pp = Instance.new("UIPadding")
		pp.PaddingRight = UDim.new(0, 6)
		pp.Parent = page

		local Tab = {}
		Tab.Button = tabBtn
		Tab.Page = page
		local elemOrder = 0
		local function nextOrder()
			elemOrder += 1
			return elemOrder
		end

		local function select()
			for _, t in pairs(Window.Tabs) do
				t.Page.Visible = false
				tween(t.Button, {BackgroundColor3 = theme.Element}, TWEEN_FAST)
				t.Button:FindFirstChildOfClass("TextLabel").TextColor3 = theme.SubText
			end
			page.Visible = true
			page.ScrollBarImageTransparency = 1
			tween(tabBtn, {BackgroundColor3 = theme.ElementHover}, TWEEN_FAST)
			tabLabel.TextColor3 = theme.Text
			Window.CurrentTab = Tab
			-- Indicator bewegen
			indicator.Visible = true
			local y = tabBtn.Position.Y.Offset + 5
			-- Position relativ zu side berechnen:
			pcall(function()
				local absY = tabBtn.AbsolutePosition.Y - side.AbsolutePosition.Y
				tween(indicator, {Position = UDim2.new(0, 2, 0, absY + 5)}, TWEEN)
			end)
			-- Page Fade-In
			page.Position = UDim2.new(0, 12, 0, 0)
			tween(page, {Position = UDim2.new(0, 0, 0, 0)}, TWEEN)
		end
		tabBtn.MouseButton1Click:Connect(select)
		tabBtn.MouseEnter:Connect(function()
			if Window.CurrentTab ~= Tab then tween(tabBtn, {BackgroundColor3 = theme.ElementHover}, TWEEN_FAST) end
		end)
		tabBtn.MouseLeave:Connect(function()
			if Window.CurrentTab ~= Tab then tween(tabBtn, {BackgroundColor3 = theme.Element}, TWEEN_FAST) end
		end)

		table.insert(Window.Tabs, Tab)
		if #Window.Tabs == 1 then
			task.defer(select)
		end

		--// ELEMENT HELPER: Basis-Container
		local function baseContainer(h, auto)
			local f = Instance.new("Frame")
			f.Size = UDim2.new(1, -6, 0, h)
			if auto then f.AutomaticSize = Enum.AutomaticSize.Y end
			f.BackgroundColor3 = theme.Element
			f.BorderSizePixel = 0
			f.LayoutOrder = nextOrder()
			f.ClipsDescendants = true
			corner(f, UDim.new(0, 10))
			stroke(f, theme.Stroke, 1)
			f.Parent = page
			f.MouseEnter:Connect(function() tween(f, {BackgroundColor3 = theme.ElementHover}, TWEEN_FAST) end)
			f.MouseLeave:Connect(function() tween(f, {BackgroundColor3 = theme.Element}, TWEEN_FAST) end)
			return f
		end

		--// SECTION
		function Tab:CreateSection(secName)
			local s = Instance.new("TextLabel")
			s.Size = UDim2.new(1, -6, 0, 22)
			s.BackgroundTransparency = 1
			s.Font = Enum.Font.GothamBold
			s.TextSize = 12
			s.TextXAlignment = Enum.TextXAlignment.Left
			s.TextColor3 = theme.Text
			s.Text = "  " .. tostring(secName or "Section")
			s.LayoutOrder = nextOrder()
			s.Parent = page
			return s
		end

		--// LABEL / INFOTEXT / PARAGRAPH
		function Tab:CreateLabel(lcfg)
			if type(lcfg) == "string" then lcfg = {Title = lcfg} end
			lcfg = lcfg or {}
			local f = baseContainer(0, true)
			padding(f, 12, 12, 10, 10)
			local t = Instance.new("TextLabel")
			t.Size = UDim2.new(1, 0, 0, 16)
			t.AutomaticSize = Enum.AutomaticSize.Y
			t.BackgroundTransparency = 1
			t.Font = Enum.Font.GothamBold
			t.TextSize = 13
			t.TextXAlignment = Enum.TextXAlignment.Left
			t.TextColor3 = theme.Text
			t.TextWrapped = true
			t.Text = lcfg.Title or lcfg.Text or "Label"
			t.Parent = f
			local d
			if lcfg.Description or lcfg.Content then
				d = Instance.new("TextLabel")
				d.Size = UDim2.new(1, 0, 0, 14)
				d.AutomaticSize = Enum.AutomaticSize.Y
				d.BackgroundTransparency = 1
				d.Font = Enum.Font.Gotham
				d.TextSize = 12
				d.TextXAlignment = Enum.TextXAlignment.Left
				d.TextColor3 = theme.SubText
				d.TextWrapped = true
				d.Text = lcfg.Description or lcfg.Content or ""
				d.Parent = f
				local l2 = Instance.new("UIListLayout")
				l2.Padding = UDim.new(0, 4)
				l2.Parent = f
			end
			local api = {}
			function api:Set(title, desc)
				if title then t.Text = title end
				if desc and d then d.Text = desc end
			end
			return api
		end
		Tab.CreateInfoText = Tab.CreateLabel
		Tab.CreateParagraph = Tab.CreateLabel

		--// BUTTON
		function Tab:CreateButton(bcfg)
			if type(bcfg) == "string" then bcfg = {Name = bcfg} end
			bcfg = bcfg or {}
			local f = baseContainer(44, false)
			local btn = Instance.new("TextButton")
			btn.Size = UDim2.new(1, 0, 1, 0)
			btn.BackgroundTransparency = 1
			btn.Text = ""
			btn.AutoButtonColor = false
			btn.Parent = f

			local l = Instance.new("TextLabel")
			l.Size = UDim2.new(1, -20, 1, 0)
			l.Position = UDim2.new(0, 12, 0, 0)
			l.BackgroundTransparency = 1
			l.Font = Enum.Font.GothamMedium
			l.TextSize = 13
			l.TextXAlignment = Enum.TextXAlignment.Left
			l.TextColor3 = theme.Text
			l.Text = bcfg.Name or "Button"
			l.TextTruncate = Enum.TextTruncate.AtEnd
			l.Parent = f

			local arrow = Instance.new("TextLabel")
			arrow.Size = UDim2.new(0, 20, 0, 20)
			arrow.AnchorPoint = Vector2.new(1, 0.5)
			arrow.Position = UDim2.new(1, -10, 0.5, 0)
			arrow.BackgroundTransparency = 1
			arrow.Font = Enum.Font.GothamBold
			arrow.TextSize = 14
			arrow.TextColor3 = theme.Accent
			arrow.Text = "›"
			arrow.Parent = f

			btn.MouseButton1Down:Connect(function()
				tween(f, {Size = UDim2.new(1, -10, 0, 42)}, TWEEN_FAST)
			end)
			btn.MouseButton1Up:Connect(function()
				tween(f, {Size = UDim2.new(1, -6, 0, 44)}, TWEEN_FAST)
			end)
			btn.MouseButton1Click:Connect(function()
				-- Ripple / Flash
				tween(f, {BackgroundColor3 = theme.Accent}, TWEEN_FAST)
				task.wait(0.08)
				tween(f, {BackgroundColor3 = theme.ElementHover}, TWEEN_FAST)
				safeCallback(bcfg.Callback)
			end)
			local api = {}
			function api:Set(txt) l.Text = txt end
			return api
		end

		--// TOGGLE
		function Tab:CreateToggle(tcfg)
			tcfg = tcfg or {}
			local state = tcfg.Default or tcfg.Value or false
			local f = baseContainer(46, false)
			padding(f, 12, 12, 0, 0)

			local l = Instance.new("TextLabel")
			l.Size = UDim2.new(1, -60, 0, 18)
			l.Position = UDim2.new(0, 0, 0, 5)
			l.BackgroundTransparency = 1
			l.Font = Enum.Font.GothamMedium
			l.TextSize = 13
			l.TextXAlignment = Enum.TextXAlignment.Left
			l.TextColor3 = theme.Text
			l.Text = tcfg.Name or "Toggle"
			l.TextTruncate = Enum.TextTruncate.AtEnd
			l.Parent = f

			local sub
			if tcfg.Description then
				sub = Instance.new("TextLabel")
				sub.Size = UDim2.new(1, -60, 0, 14)
				sub.Position = UDim2.new(0, 0, 0, 23)
				sub.BackgroundTransparency = 1
				sub.Font = Enum.Font.Gotham
				sub.TextSize = 11
				sub.TextXAlignment = Enum.TextXAlignment.Left
				sub.TextColor3 = theme.SubText
				sub.Text = tcfg.Description
				sub.TextTruncate = Enum.TextTruncate.AtEnd
				sub.Parent = f
			end

			local track = Instance.new("Frame")
			track.AnchorPoint = Vector2.new(1, 0.5)
			track.Position = UDim2.new(1, 0, 0.5, 0)
			track.Size = UDim2.new(0, 42, 0, 22)
			track.BackgroundColor3 = state and theme.Accent or theme.ToggleOff
			track.BorderSizePixel = 0
			corner(track, UDim.new(1, 0))
			track.Parent = f

			local knob = Instance.new("Frame")
			knob.Size = UDim2.new(0, 16, 0, 16)
			knob.Position = state and UDim2.new(1, -19, 0.5, -8) or UDim2.new(0, 3, 0.5, -8)
			knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			knob.BorderSizePixel = 0
			corner(knob, UDim.new(1, 0))
			knob.Parent = track

			local click = Instance.new("TextButton")
			click.Size = UDim2.new(1, 0, 1, 0)
			click.BackgroundTransparency = 1
			click.Text = ""
			click.Parent = f

			local api = {}
			local function set(v, silent)
				state = v and true or false
				tween(track, {BackgroundColor3 = state and theme.Accent or theme.ToggleOff})
				tween(knob, {Position = state and UDim2.new(1, -19, 0.5, -8) or UDim2.new(0, 3, 0.5, -8)}, TWEEN_SPRING)
				if not silent then safeCallback(tcfg.Callback, state) end
			end
			function api:Set(v) set(v, false) end
			function api:Get() return state end
			click.MouseButton1Click:Connect(function() set(not state, false) end)
			if state then task.defer(function() safeCallback(tcfg.Callback, state) end) end
			return api
		end

		--// SLIDER
		function Tab:CreateSlider(scfg)
			scfg = scfg or {}
			local min = scfg.Min or scfg.Minimum or 0
			local max = scfg.Max or scfg.Maximum or 100
			local dec = scfg.Decimals or scfg.Dec or 0
			local suffix = scfg.Suffix or ""
			local val = scfg.Default or scfg.Value or ((min + max) / 2)
			val = math.clamp(val, min, max)

			local f = baseContainer(58, false)
			padding(f, 12, 12, 8, 8)

			local l = Instance.new("TextLabel")
			l.Size = UDim2.new(1, -60, 0, 16)
			l.BackgroundTransparency = 1
			l.Font = Enum.Font.GothamMedium
			l.TextSize = 13
			l.TextXAlignment = Enum.TextXAlignment.Left
			l.TextColor3 = theme.Text
			l.Text = scfg.Name or "Slider"
			l.TextTruncate = Enum.TextTruncate.AtEnd
			l.Parent = f

			local vlabel = Instance.new("TextLabel")
			vlabel.AnchorPoint = Vector2.new(1, 0)
			vlabel.Position = UDim2.new(1, 0, 0, 0)
			vlabel.Size = UDim2.new(0, 55, 0, 16)
			vlabel.BackgroundColor3 = theme.Background
			vlabel.Font = Enum.Font.GothamBold
			vlabel.TextSize = 11
			vlabel.TextColor3 = theme.Accent
			vlabel.Text = ""
			corner(vlabel, UDim.new(0, 6))
			vlabel.Parent = f

			local bar = Instance.new("Frame")
			bar.Position = UDim2.new(0, 0, 1, -14)
			bar.Size = UDim2.new(1, 0, 0, 6)
			bar.BackgroundColor3 = theme.ToggleOff
			bar.BorderSizePixel = 0
			corner(bar, UDim.new(1, 0))
			bar.Parent = f

			local fill = Instance.new("Frame")
			fill.Size = UDim2.new(0, 0, 1, 0)
			fill.BackgroundColor3 = theme.Accent
			fill.BorderSizePixel = 0
			corner(fill, UDim.new(1, 0))
			fill.Parent = bar
			local fg = Instance.new("UIGradient")
			fg.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, theme.Accent), ColorSequenceKeypoint.new(1, theme.Accent2)})
			fg.Parent = fill

			local knob = Instance.new("Frame")
			knob.AnchorPoint = Vector2.new(0.5, 0.5)
			knob.Size = UDim2.new(0, 14, 0, 14)
			knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			knob.BorderSizePixel = 0
			corner(knob, UDim.new(1, 0))
			stroke(knob, theme.Accent, 2)
			knob.Parent = bar

			local dragging = false
			local function fmt(v)
				if dec <= 0 then return tostring(math.floor(v + 0.5)) .. suffix end
				local m = 10 ^ dec
				return tostring(math.floor(v * m + 0.5) / m) .. suffix
			end
			local function render()
				local pct = (val - min) / math.max(0.0001, (max - min))
				fill.Size = UDim2.new(pct, 0, 1, 0)
				knob.Position = UDim2.new(pct, 0, 0.5, 0)
				vlabel.Text = fmt(val)
			end
			local function setFromPct(pct, fire)
				pct = math.clamp(pct, 0, 1)
				local raw = min + (max - min) * pct
				if dec <= 0 then raw = math.floor(raw + 0.5)
				else local m = 10 ^ dec raw = math.floor(raw * m + 0.5) / m end
				val = raw
				render()
				if fire then safeCallback(scfg.Callback, val) end
			end
			render()

			bar.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					dragging = true
					tween(knob, {Size = UDim2.new(0, 18, 0, 18)}, TWEEN_FAST)
					local pct = (input.Position.X - bar.AbsolutePosition.X) / math.max(1, bar.AbsoluteSize.X)
					setFromPct(pct, true)
				end
			end)
			bar.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
					dragging = false
					tween(knob, {Size = UDim2.new(0, 14, 0, 14)}, TWEEN_FAST)
				end
			end)
			UserInputService.InputChanged:Connect(function(input)
				if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
					local pct = (input.Position.X - bar.AbsolutePosition.X) / math.max(1, bar.AbsoluteSize.X)
					setFromPct(pct, true)
				end
			end)
			task.defer(function() safeCallback(scfg.Callback, val) end)

			local api = {}
			function api:Set(v) val = math.clamp(v, min, max) render() safeCallback(scfg.Callback, val) end
			function api:Get() return val end
			return api
		end

		--// TEXTBOX
		function Tab:CreateTextbox(tcfg)
			tcfg = tcfg or {}
			local f = baseContainer(58, false)
			padding(f, 12, 12, 8, 8)
			local l = Instance.new("TextLabel")
			l.Size = UDim2.new(1, 0, 0, 16)
			l.BackgroundTransparency = 1
			l.Font = Enum.Font.GothamMedium
			l.TextSize = 13
			l.TextXAlignment = Enum.TextXAlignment.Left
			l.TextColor3 = theme.Text
			l.Text = tcfg.Name or "Textbox"
			l.TextTruncate = Enum.TextTruncate.AtEnd
			l.Parent = f

			local box = Instance.new("TextBox")
			box.Position = UDim2.new(0, 0, 1, -28)
			box.Size = UDim2.new(1, 0, 0, 26)
			box.BackgroundColor3 = theme.Background
			box.Font = Enum.Font.Gotham
			box.TextSize = 12
			box.TextColor3 = theme.Text
			box.PlaceholderColor3 = theme.SubText
			box.PlaceholderText = tcfg.Placeholder or "Type here..."
			box.Text = tcfg.Default or ""
			box.ClearTextOnFocus = tcfg.ClearOnFocus or false
			box.ClipsDescendants = true
			corner(box, UDim.new(0, 7))
			stroke(box, theme.Stroke, 1)
			padding(box, 8, 8, 0, 0)
			box.Parent = f

			box.Focused:Connect(function() tween(box, {BackgroundColor3 = theme.Sidebar}, TWEEN_FAST) end)
			box.FocusLost:Connect(function(enter)
				tween(box, {BackgroundColor3 = theme.Background}, TWEEN_FAST)
				safeCallback(tcfg.Callback, box.Text, enter)
			end)
			local api = {}
			function api:Set(t) box.Text = t end
			function api:Get() return box.Text end
			return api
		end
		Tab.CreateInput = Tab.CreateTextbox

		--// DROPDOWN (Single + Multi)
		function Tab:CreateDropdown(dcfg)
			dcfg = dcfg or {}
			local options = dcfg.Options or dcfg.List or {}
			local multi = dcfg.Multi or dcfg.Multiple or false
			local cb = dcfg.Callback
			local selected
			if multi then
				selected = {}
				if type(dcfg.Default) == "table" then
					for _, v in ipairs(dcfg.Default) do selected[v] = true end
				end
			else
				selected = dcfg.Default or options[1] or "Select..."
			end

			local collapsedH = 46
			local f = baseContainer(collapsedH, false)
			f.ClipsDescendants = true

			local head = Instance.new("TextButton")
			head.Size = UDim2.new(1, 0, 0, collapsedH)
			head.BackgroundTransparency = 1
			head.Text = ""
			head.Parent = f

			local l = Instance.new("TextLabel")
			l.Position = UDim2.new(0, 12, 0, 6)
			l.Size = UDim2.new(1, -40, 0, 16)
			l.BackgroundTransparency = 1
			l.Font = Enum.Font.GothamMedium
			l.TextSize = 13
			l.TextXAlignment = Enum.TextXAlignment.Left
			l.TextColor3 = theme.Text
			l.Text = dcfg.Name or "Dropdown"
			l.TextTruncate = Enum.TextTruncate.AtEnd
			l.Parent = f

			local cur = Instance.new("TextLabel")
			cur.Position = UDim2.new(0, 12, 0, 24)
			cur.Size = UDim2.new(1, -40, 0, 14)
			cur.BackgroundTransparency = 1
			cur.Font = Enum.Font.Gotham
			cur.TextSize = 11
			cur.TextXAlignment = Enum.TextXAlignment.Left
			cur.TextColor3 = theme.SubText
			cur.TextTruncate = Enum.TextTruncate.AtEnd
			cur.Parent = f

			local arrow = Instance.new("TextLabel")
			arrow.AnchorPoint = Vector2.new(1, 0.5)
			arrow.Position = UDim2.new(1, -12, 0, collapsedH / 2)
			arrow.Size = UDim2.new(0, 20, 0, 20)
			arrow.BackgroundTransparency = 1
			arrow.Font = Enum.Font.GothamBold
			arrow.TextSize = 16
			arrow.TextColor3 = theme.SubText
			arrow.Text = "▾"
			arrow.Parent = f

			local listFrame = Instance.new("Frame")
			listFrame.Position = UDim2.new(0, 8, 0, collapsedH)
			listFrame.Size = UDim2.new(1, -16, 0, 0)
			listFrame.BackgroundTransparency = 1
			listFrame.Parent = f
			local ll = Instance.new("UIListLayout")
			ll.Padding = UDim.new(0, 4)
			ll.Parent = listFrame

			local open = false
			local optButtons = {}

			local function refreshText()
				if multi then
					local t = {}
					for k, v in pairs(selected) do if v then table.insert(t, k) end end
					if #t == 0 then cur.Text = "None selected..."
					else cur.Text = table.concat(t, ", ") end
				else
					cur.Text = tostring(selected)
				end
			end
			refreshText()

			local function rebuild()
				for _, b in pairs(optButtons) do pcall(function() b:Destroy() end) end
				table.clear(optButtons)
				for _, opt in ipairs(options) do
					local isSel
					if multi then isSel = selected[opt] == true
					else isSel = (selected == opt) end
					local ob = Instance.new("TextButton")
					ob.Size = UDim2.new(1, 0, 0, 28)
					ob.BackgroundColor3 = isSel and theme.Accent or theme.Background
					ob.Text = ""
					ob.AutoButtonColor = false
					corner(ob, UDim.new(0, 7))
					stroke(ob, isSel and theme.Accent or theme.Stroke, 1)
					ob.Parent = listFrame
					local ol = Instance.new("TextLabel")
					ol.Size = UDim2.new(1, -12, 1, 0)
					ol.Position = UDim2.new(0, 10, 0, 0)
					ol.BackgroundTransparency = 1
					ol.Font = Enum.Font.Gotham
					ol.TextSize = 12
					ol.TextXAlignment = Enum.TextXAlignment.Left
					ol.TextColor3 = isSel and Color3.fromRGB(255,255,255) or theme.Text
					ol.Text = tostring(opt)
					ol.TextTruncate = Enum.TextTruncate.AtEnd
					ol.Parent = ob
					table.insert(optButtons, ob)
					ob.MouseButton1Click:Connect(function()
						if multi then
							selected[opt] = not selected[opt]
							local out = {}
							for k, v in pairs(selected) do if v then table.insert(out, k) end end
							refreshText()
							rebuild()
							if open then
								local h = collapsedH + 8 + (#options * 32)
								h = math.min(h, collapsedH + 8 + 5 * 32)
								tween(f, {Size = UDim2.new(1, -6, 0, h)}, TWEEN)
							end
							safeCallback(cb, out)
						else
							selected = opt
							refreshText()
							rebuild()
							-- schließen
							open = false
							tween(arrow, {Rotation = 0}, TWEEN_FAST)
							tween(f, {Size = UDim2.new(1, -6, 0, collapsedH)}, TWEEN)
							safeCallback(cb, selected)
						end
					end)
				end
			end
			rebuild()

			head.MouseButton1Click:Connect(function()
				open = not open
				if open then
					tween(arrow, {Rotation = 180}, TWEEN_FAST)
					local h = collapsedH + 8 + (#options * 32)
					h = math.min(h, collapsedH + 8 + 5 * 32)
					if #options == 0 then h = collapsedH + 36 end
					tween(f, {Size = UDim2.new(1, -6, 0, h)}, TWEEN)
				else
					tween(arrow, {Rotation = 0}, TWEEN_FAST)
					tween(f, {Size = UDim2.new(1, -6, 0, collapsedH)}, TWEEN)
				end
			end)

			local api = {}
			function api:Set(opts, sel)
				if opts then options = opts rebuild() end
				if sel ~= nil then
					if multi and type(sel) == "table" then
						selected = {}
						for _, v in ipairs(sel) do selected[v] = true end
					elseif not multi then
						selected = sel
					end
					refreshText() rebuild()
				end
			end
			function api:Get()
				if multi then
					local out = {}
					for k, v in pairs(selected) do if v then table.insert(out, k) end end
					return out
				end
				return selected
			end
			function api:Add(opt)
				table.insert(options, opt) rebuild()
			end
			function api:Clear()
				options = {} rebuild()
				refreshText()
			end
			return api
		end

		--// KEYBIND
		function Tab:CreateKeybind(kcfg)
			kcfg = kcfg or {}
			local key = kcfg.Default or kcfg.Value or Enum.KeyCode.F
			local f = baseContainer(44, false)
			local l = Instance.new("TextLabel")
			l.Size = UDim2.new(1, -90, 1, 0)
			l.Position = UDim2.new(0, 12, 0, 0)
			l.BackgroundTransparency = 1
			l.Font = Enum.Font.GothamMedium
			l.TextSize = 13
			l.TextXAlignment = Enum.TextXAlignment.Left
			l.TextColor3 = theme.Text
			l.Text = kcfg.Name or "Keybind"
			l.TextTruncate = Enum.TextTruncate.AtEnd
			l.Parent = f
			local kb = Instance.new("TextButton")
			kb.AnchorPoint = Vector2.new(1, 0.5)
			kb.Position = UDim2.new(1, -10, 0.5, 0)
			kb.Size = UDim2.new(0, 70, 0, 26)
			kb.BackgroundColor3 = theme.Background
			kb.Font = Enum.Font.GothamBold
			kb.TextSize = 11
			kb.TextColor3 = theme.Text
			kb.Text = key.Name
			kb.AutoButtonColor = false
			corner(kb, UDim.new(0, 7))
			stroke(kb, theme.Stroke, 1)
			kb.Parent = f
			local listening = false
			kb.MouseButton1Click:Connect(function()
				listening = true
				kb.Text = "..."
			end)
			UserInputService.InputBegan:Connect(function(input, gpe)
				if listening and input.KeyCode ~= Enum.KeyCode.Unknown then
					listening = false
					key = input.KeyCode
					kb.Text = key.Name
					safeCallback(kcfg.Callback, key)
				elseif not listening and input.KeyCode == key and not gpe then
					safeCallback(kcfg.Callback, key)
				end
			end)
			local api = {}
			function api:Set(k) key = k kb.Text = k.Name end
			function api:Get() return key end
			return api
		end

		--// COLORPICKER (simple)
		function Tab:CreateColorPicker(ccfg)
			ccfg = ccfg or {}
			local col = ccfg.Default or Color3.fromRGB(99, 102, 241)
			local f = baseContainer(44, false)
			local l = Instance.new("TextLabel")
			l.Size = UDim2.new(1, -60, 1, 0)
			l.Position = UDim2.new(0, 12, 0, 0)
			l.BackgroundTransparency = 1
			l.Font = Enum.Font.GothamMedium
			l.TextSize = 13
			l.TextXAlignment = Enum.TextXAlignment.Left
			l.TextColor3 = theme.Text
			l.Text = ccfg.Name or "Color"
			l.Parent = f
			local prev = Instance.new("TextButton")
			prev.AnchorPoint = Vector2.new(1, 0.5)
			prev.Position = UDim2.new(1, -10, 0.5, 0)
			prev.Size = UDim2.new(0, 40, 0, 24)
			prev.BackgroundColor3 = col
			prev.Text = ""
			prev.AutoButtonColor = false
			corner(prev, UDim.new(0, 7))
			stroke(prev, theme.Stroke, 1)
			prev.Parent = f
			-- simple rainbow cycle on click (leicht) + callback, kein schweres picker-fenster für speed
			-- doppelklick öffnet RGB slider? halten wir simpel: Klick = zufällige? Nein: HSV cycle
			local h, s, v = 0.6, 0.7, 1
			local rainbow = false
			prev.MouseButton1Click:Connect(function()
				-- beim klick: öffne mini RGB? wir machen hue +0.1 pro klick, rechtsklick rainbow
				h = (h + 0.08) % 1
				col = Color3.fromHSV(h, s, v)
				tween(prev, {BackgroundColor3 = col}, TWEEN_FAST)
				safeCallback(ccfg.Callback, col)
			end)
			local api = {}
			function api:Set(c) col = c tween(prev, {BackgroundColor3 = c}, TWEEN_FAST) end
			function api:Get() return col end
			task.defer(function() safeCallback(ccfg.Callback, col) end)
			return api
		end

		return Tab
	end

	return Window
end

return NovaLib

--[[ ================= EXAMPLE / BEISPIEL =================
local NovaLib = loadstring(game:HttpGet("DEIN_LINK"))()
-- oder: local NovaLib = loadstring(readfile("NovaLib.lua"))()

local Window = NovaLib.CreateWindow({
	Name = "Mein Hub",
	SubTitle = "v1.0 | by Jason",
	Logo = "rbxassetid://123456789", -- <-- DEIN LOGO HIER (Variable!)
	Keybind = Enum.KeyCode.K, -- UI an/aus (Start-Keybind, später in Settings änderbar)
	ThemeName = "Default", -- Default, Midnight, Crimson, Emerald, Ocean, Sunset, Light, Cyber
	-- Accent = Color3.fromRGB(99,102,241),
})

local MainTab = Window:CreateTab({Name = "Main"})
-- NEU: Fertiger Settings-Tab mit Open-Keybind + Themes + Accent (1 Zeile!)
local SettingsTab = Window:CreateSettingsTab({Name = "Settings"})

MainTab:CreateSection("Player")

MainTab:CreateButton({
	Name = "Fly aktivieren",
	Callback = function() print("Fly!") end
})

MainTab:CreateToggle({
	Name = "Speed",
	Description = "Super Speed an/aus",
	Default = false,
	Callback = function(v) print("Speed:", v) end
})

MainTab:CreateSlider({
	Name = "WalkSpeed",
	Min = 16, Max = 250, Default = 16,
	Suffix = " studs",
	Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end
})

MainTab:CreateTextbox({
	Name = "Teleport zu Spieler",
	Placeholder = "Username...",
	Callback = function(txt) print(txt) end
})

MainTab:CreateDropdown({
	Name = "Waffe",
	Options = {"AK", "M4", "Sniper"},
	Default = "AK",
	Callback = function(v) print(v) end
})

MainTab:CreateDropdown({
	Name = "Multi Target",
	Options = {"A","B","C"},
	Multi = true,
	Callback = function(tbl) print(table.concat(tbl, ",")) end
})

MainTab:CreateLabel({
	Title = "Info",
	Description = "Das ist ein Infotext."
})

SettingsTab:CreateKeybind({
	Name = "Fly Key",
	Default = Enum.KeyCode.F,
	Callback = function(k) print(k) end
})

-- MANUELL (falls du eigenen Settings-Tab bauen willst):
-- Window:SetTheme("Crimson") -- oder "Midnight","Emerald","Ocean","Sunset","Light","Cyber"
-- Window:SetAccent(Color3.fromRGB(0,255,170))
-- Window:SetOpenKeybind(Enum.KeyCode.H)
-- print(Window:GetOpenKeybind(), Window.CurrentThemeName)
-- print(table.concat(NovaLib.GetThemeNames(), ", "))

Window:Notify({Title="NovaLib", Description="Loaded!", Type="Success"})

-- Minimieren per Code:
-- Window:Minimize(true)  -> wird zum Punkt mit Logo
-- Window:Minimize(false) -> zurück
=========================================================== ]]
