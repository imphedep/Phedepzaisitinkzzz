-- Recovered Luau source by ZeroVector
local function __store_list(t, start, ...)
    for i = 1, select("#", ...) do
        t[start + i - 1] = (select(i, ...))
    end
end

if getgenv().Nousigi and game.CoreGui:FindFirstChild("Nousigi Hub GUI") then
    for i, child in ipairs(game.CoreGui:GetChildren()) do
        if string.find(child.Name, "Nousigi Hub") then
            child:Destroy()
        end
    end
end

getgenv().Nousigi = true

local tbl = {
    ["Border Color"] = Color3.fromRGB(255, 85, 85),
    ["Click Effect Color"] = Color3.fromRGB(240, 240, 240),
    ["Setting Icon Color"] = Color3.fromRGB(255, 110, 110),
    ["Logo Image"] = "rbxassetid://5009915795",
    ["Search Icon Color"] = Color3.fromRGB(255, 255, 255),
    ["Search Icon Highlight Color"] = Color3.fromRGB(255, 85, 85),
    ["GUI Text Color"] = Color3.fromRGB(235, 235, 235),
    ["Text Color"] = Color3.fromRGB(235, 235, 235),
    ["Placeholder Text Color"] = Color3.fromRGB(178, 178, 178),
    ["Title Text Color"] = Color3.fromRGB(255, 85, 85),
    ["Background Main Color"] = Color3.fromRGB(30, 30, 30),
    ["Background 1 Color"] = Color3.fromRGB(40, 40, 40),
    ["Background 1 Transparency"] = 1,
    ["Background 2 Color"] = Color3.fromRGB(50, 50, 50),
    ["Background 3 Color"] = Color3.fromRGB(60, 60, 60),
    ["Background Image"] = "",
    ["Page Selected Color"] = Color3.fromRGB(255, 85, 85),
    ["Section Text Color"] = Color3.fromRGB(255, 85, 85),
    ["Section Underline Color"] = Color3.fromRGB(255, 85, 85),
    ["Toggle Border Color"] = Color3.fromRGB(255, 85, 85),
    ["Toggle Checked Color"] = Color3.fromRGB(235, 235, 235),
    ["Toggle Desc Color"] = Color3.fromRGB(185, 185, 185),
    ["Button Color"] = Color3.fromRGB(255, 85, 85),
    ["Label Color"] = Color3.fromRGB(255, 100, 100),
    ["Dropdown Icon Color"] = Color3.fromRGB(235, 235, 235),
    ["Dropdown Selected Color"] = Color3.fromRGB(255, 85, 85),
    ["Dropdown Selected Check Color"] = Color3.fromRGB(230, 100, 100),
    ["Textbox Highlight Color"] = Color3.fromRGB(255, 85, 85),
    ["Box Highlight Color"] = Color3.fromRGB(255, 85, 85),
    ["Slider Line Color"] = Color3.fromRGB(70, 70, 70),
    ["Slider Highlight Color"] = Color3.fromRGB(255, 64, 64),
    ["Tween Animation 1 Speed"] = 0,
    ["Tween Animation 2 Speed"] = 0,
    ["Tween Animation 3 Speed"] = 0,
    ["Text Stroke Transparency"] = 0.5,
}

local tbl2 = {
    ["Page Selected Color"] = Color3.fromRGB(255, 214, 94),
    ["Section Underline Color"] = Color3.fromRGB(255, 200, 72),
    ["Toggle Border Color"] = Color3.fromRGB(255, 214, 94),
    ["Toggle Checked Color"] = Color3.fromRGB(250, 190, 50),
    ["Button Color"] = Color3.fromRGB(255, 214, 94),
    ["Dropdown Selected Color"] = Color3.fromRGB(255, 214, 94),
    ["Dropdown Selected Check Color"] = Color3.fromRGB(250, 190, 50),
    ["Textbox Highlight Color"] = Color3.fromRGB(255, 214, 94),
    ["Box Highlight Color"] = Color3.fromRGB(255, 214, 94),
    ["Slider Highlight Color"] = Color3.fromRGB(255, 214, 94),
    ["Background Main Color"] = Color3.fromRGB(18, 18, 22),
    ["Background 1 Color"] = Color3.fromRGB(28, 28, 34),
    ["Background 1 Transparency"] = 0.25,
    ["Background 2 Color"] = Color3.fromRGB(38, 38, 46),
    ["Background 3 Color"] = Color3.fromRGB(48, 48, 56),
    ["Background Image"] = "",
    ["GUI Text Color"] = Color3.fromRGB(235, 235, 230),
    ["Text Color"] = Color3.fromRGB(235, 235, 230),
    ["Title Text Color"] = Color3.fromRGB(255, 214, 94),
    ["Section Text Color"] = Color3.fromRGB(220, 220, 210),
    ["Placeholder Text Color"] = Color3.fromRGB(170, 170, 160),
    ["Toggle Desc Color"] = Color3.fromRGB(190, 190, 180),
    ["Label Color"] = Color3.fromRGB(240, 240, 230),
    ["Border Color"] = Color3.fromRGB(90, 90, 70),
    ["Text Stroke Transparency"] = 0.85,
    ["Setting Icon Color"] = Color3.fromRGB(220, 220, 210),
    ["Dropdown Icon Color"] = Color3.fromRGB(220, 220, 210),
    ["Search Icon Color"] = Color3.fromRGB(240, 240, 230),
    ["Search Icon Highlight Color"] = Color3.fromRGB(255, 214, 94),
    ["Logo Image"] = "rbxassetid://5009915795",
    ["Click Effect Color"] = Color3.fromRGB(230, 230, 220),
    ["Slider Line Color"] = Color3.fromRGB(80, 80, 60),
    ["Tween Animation 1 Speed"] = 0,
    ["Tween Animation 2 Speed"] = 0,
    ["Tween Animation 3 Speed"] = 0,
}

local genv = getgenv()
local t1 = getgenv().T1
local v = t1 and tbl or tbl2
genv.UIColor = v
getgenv().UIToggled = false
local tbl3 = {}
local options = tbl3.Options
local options2 = options or {}
tbl3.Options = options2
local titleMap = tbl3._TitleMap
local titleMap2 = titleMap or {}
tbl3._TitleMap = titleMap2

tbl3.RegisterOption = function(arg, arg2, arg3)
    local title = arg2.Title
    if not title then
        return
    end
    local tbl4 = {title = title, callback = arg3}
    local pageName = arg2.Page_Name
    local pageName2 = pageName or ""
    tbl4.Page_Name = pageName2
    local sectionName = arg2.Section_Name
    local sectionName2 = sectionName or ""
    tbl4.Section_Name = sectionName2
    local search = arg2.Search
    local search2 = search or false
    tbl4.search = search2
    local priority = arg2.Priority
    local priority2 = priority or false
    tbl4.priority = priority2
    local selected = arg2.Selected
    local selected2 = selected or false
    tbl4.selected = selected2
    local box = arg2.Box
    local box2 = box or false
    tbl4.box = box2
    local slider = arg2.Slider
    local slider2 = slider or false
    tbl4.slider = slider2
    local button = arg2.Button
    local button2 = button or false
    tbl4.button = button2
    local textLabel = arg2.TextLabel
    local textlabel = textLabel or false
    tbl4.textlabel = textlabel
    tbl4.min = arg2.Min
    tbl4.max = arg2.Max
    tbl4.step = arg2.Step
    tbl4.list = arg2.List
    tbl4.value = arg2.Default
    tbl4.FunctionCreate = arg2.FunctionCreate

    if arg2.Box then
        tbl4.type = "box"
    elseif arg2.Button then
        tbl4.type = "button"
    elseif arg2.TextLabel then
        tbl4.type = "textlabel"
    elseif arg2.Slider and arg2.Min and arg2.Max then
        tbl4.type = "slider"
    elseif typeof(arg2.Default) == "boolean" then
        tbl4.type = "toggle"
    elseif arg2.Slider and type(arg2.List) == "table" then
        tbl4.type = "slider_dropdown"
    elseif arg2.Priority then
        tbl4.type = "priority_dropdown"
    elseif arg2.Selected then
        tbl4.type = "multi_toggle"
    else
        tbl4.type = "dropdown"
    end

    local tbl5 = {}

    for i, v2 in ipairs({
        {"title", tbl4.title},
        {"callback", tbl4.callback},
        {"Page_Name", tbl4.Page_Name},
        {"Section_Name", tbl4.Section_Name},
        {"search", tbl4.search},
        {"priority", tbl4.priority},
        {"selected", tbl4.selected},
        {"box", tbl4.box},
        {"slider", tbl4.slider},
        {"min", tbl4.min},
        {"max", tbl4.max},
        {"step", tbl4.step},
        {"list", tbl4.list},
        {"value", tbl4.value},
        {"FunctionCreate", tbl4.FunctionCreate},
        {"type", tbl4.type},
    }) do
        tbl5[v2[1]] = v2[2]
    end

    tbl3.Options[title] = tbl5
    tbl3._TitleMap[title] = arg2
    return tbl5
end

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local function fn(arg, arg2)
    local flag = nil
    local v2 = nil
    local position = nil
    local position2 = nil

    arg.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            flag = true
            position = input.Position
            position2 = arg2.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    flag = false
                end
            end)
        end
    end)

    arg.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            v2 = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == v2 and flag then
            local n = input.Position - position

            if not djtmemay and cac then
                TweenService:Create(arg2, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                    Position = UDim2.new(position2.X.Scale, position2.X.Offset + n.X, position2.Y.Scale, position2.Y.Offset + n.Y),
                }):Play()
            elseif not djtmemay and not cac then
                arg2.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n.X, position2.Y.Scale, position2.Y.Offset + n.Y)
            end
        end
    end)
end

local tbl4 = {Gui = Instance.new("ScreenGui")}
tbl4.Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
tbl4.Gui.Name = "Nousigi Hub GUI"
tbl4.Gui.Enabled = false
getgenv().ReadyForGuiLoaded = false

spawn(function()
    repeat
        task.wait()
    until getgenv().ReadyForGuiLoaded

    if getgenv().UIToggled then
        tbl4.Gui.Enabled = true
    end
end)

tbl4.NotiGui = Instance.new("ScreenGui")
tbl4.NotiGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
tbl4.NotiGui.Name = "Nousigi Hub Notification"
tbl4.HideGui = Instance.new("ScreenGui")
tbl4.HideGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
tbl4.HideGui.Name = "Nousigi Hub Btn"
local textButton = Instance.new("TextButton", tbl4.HideGui)
textButton.BackgroundTransparency = 1
textButton.Text = ""
textButton.AnchorPoint = Vector2.new(0, 1)
textButton.Size = UDim2.new(0, 50, 0, 50)
textButton.Position = UDim2.new(0, 15, 1, -15)
local frame = Instance.new("Frame", textButton)
frame.AnchorPoint = Vector2.new(0, 1)
frame.Size = UDim2.new(0, 50, 0, 50)
frame.Position = UDim2.new(0, 0, 1, 0)
frame.Name = "dut dit"
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
local uiToggled = getgenv().UIToggled
local backgroundTransparency = uiToggled and 0 or 0.25
frame.BackgroundTransparency = backgroundTransparency
local imageLabel = Instance.new("ImageLabel", textButton)
imageLabel.AnchorPoint = Vector2.new(0, 0)
imageLabel.Image = getgenv().UIColor["Logo Image"]
imageLabel.BackgroundTransparency = 1
local udim2 = UDim2.new
local uiToggled2 = getgenv().UIToggled
local n = uiToggled2

if uiToggled2 then
    local t12 = getgenv().T1
    n = t12 and 30 or 40
end

if not n then
    local t12 = getgenv().T1
    n = t12 and 25 or 30
end

local uiToggled3 = getgenv().UIToggled
local n2 = uiToggled3

if uiToggled3 then
    local t12 = getgenv().T1
    n2 = t12 and 30 or 40
end

if not n2 then
    local t12 = getgenv().T1
    n2 = t12 and 25 or 30
end

imageLabel.Size = udim2(0, n, 0, n2)
imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
imageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
local uiCorner = Instance.new("UICorner")
uiCorner.Parent = frame
uiCorner.CornerRadius = UDim.new(1, 0)

tbl3.ToggleUI = function()
    local genv2 = getgenv()
    local uiToggled4

    if getgenv().UIToggled then
        uiToggled4 = false
    else
        uiToggled4 = true
    end

    genv2.UIToggled = uiToggled4
    local uiToggled5 = getgenv().UIToggled
    local n3 = uiToggled5

    if uiToggled5 then
        local t12 = getgenv().T1
        n3 = t12 and 30 or 40
    end

    if not n3 then
        local t12 = getgenv().T1
        n3 = t12 and 25 or 30
    end

    TweenService:Create(imageLabel, TweenInfo.new(0), {Size = UDim2.new(0, n3, 0, n3)}):Play()
    local create = TweenService.Create
    local tweenInfo = TweenInfo.new(0)
    local tbl5 = {}
    local uiToggled6 = getgenv().UIToggled
    local backgroundTransparency2 = uiToggled6 and 0 or 0.25
    tbl5.BackgroundTransparency = backgroundTransparency2
    create(TweenService, frame, tweenInfo, tbl5):Play()

    if game.CoreGui:FindFirstChild("Nousigi Hub GUI") then
        for i, child in ipairs(game.CoreGui:GetChildren()) do
            if child.Name == "Nousigi Hub GUI" then
                child.Enabled = getgenv().UIToggled
            end
        end
    end
end

tbl3.DestroyUI = function()
    if game.CoreGui:FindFirstChild("Nousigi Hub GUI") then
        for i, child in ipairs(game.CoreGui:GetChildren()) do
            if string.find(child.Name, "Nousigi Hub") then
                child:Destroy()
            end
        end
    end
end

game:GetService("UserInputService")
local flag = false
local v2 = nil
local position = nil
local position2 = nil
local n3 = 0

local function fn2(arg)
    local n4 = arg.Position - position
    textButton.Position = UDim2.new(position2.X.Scale, position2.X.Offset + n4.X, position2.Y.Scale, position2.Y.Offset + n4.Y)
end

textButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        n3 = tick()
        position = input.Position
        position2 = textButton.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                flag = false
                n3 = 0
            end
        end)
    end
end)

textButton.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        flag = false
        n3 = 0
    end
end)

textButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        v2 = input
    end
end)

RunService.RenderStepped:Connect(function()
    if n3 > 0 and tick() - n3 >= 0.1 and not flag then
        flag = true
    end

    if flag and v2 then
        fn2(v2)
    end
end)

textButton.MouseButton1Click:Connect(function()
    tbl3.ToggleUI()
end)

local frame2 = Instance.new("Frame")
local uiListLayout = Instance.new("UIListLayout")
frame2.Name = "NotiContainer"
frame2.Parent = tbl4.NotiGui
frame2.AnchorPoint = Vector2.new(1, 1)
frame2.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
frame2.BackgroundTransparency = 1
frame2.Position = UDim2.new(1, -5, 1, -5)
frame2.Size = UDim2.new(0, 350, 1, -10)
uiListLayout.Name = "NotiList"
uiListLayout.Parent = frame2
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
uiListLayout.Padding = UDim.new(0, 5)
tbl4.Gui.Parent = game:GetService("CoreGui")
tbl4.NotiGui.Parent = game:GetService("CoreGui")
tbl4.HideGui.Parent = game:GetService("CoreGui")

tbl4.Getcolor = function(arg)
    return {
        math.floor(arg.r * 255),
        math.floor(arg.g * 255),
        math.floor(arg.b * 255),
    }
end

local function fn3(arg)
    local genv2 = getgenv()
    local title = arg.Title
    local titleNameNoti = title or ""
    genv2.TitleNameNoti = titleNameNoti
    local desc = arg.Desc
    local showTime = arg.ShowTime
    local n4 = showTime or 10
    local frame3 = Instance.new("Frame")
    local frame4 = Instance.new("Frame")
    local uiCorner2 = Instance.new("UICorner")
    local frame5 = Instance.new("Frame")
    local imageLabel2 = Instance.new("ImageLabel")
    local uiCorner3 = Instance.new("UICorner")
    local textLabel = Instance.new("TextLabel")
    local frame6 = Instance.new("Frame")
    local imageLabel3 = Instance.new("ImageLabel")
    local textButton2 = Instance.new("TextButton")
    local textLabel2 = Instance.new("TextLabel")
    frame3.Name = "NotiFrame"
    frame3.Parent = frame2
    frame3.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    frame3.BackgroundTransparency = 1
    frame3.ClipsDescendants = true
    frame3.Position = UDim2.new(0, 0, 0, 0)
    frame3.Size = UDim2.new(1, 0, 0, 0)
    frame3.AutomaticSize = Enum.AutomaticSize.Y
    frame4.Name = "Noticontainer"
    frame4.Parent = frame3
    frame4.Position = UDim2.new(1, 0, 0, 0)
    frame4.Size = UDim2.new(1, 0, 1, 6)
    frame4.AutomaticSize = Enum.AutomaticSize.Y
    frame4.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
    uiCorner2.CornerRadius = UDim.new(0, 4)
    uiCorner2.Parent = frame4
    frame5.Name = "Topnoti"
    frame5.Parent = frame4
    frame5.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    frame5.BackgroundTransparency = 1
    frame5.Position = UDim2.new(0, 0, 0, 5)
    frame5.Size = UDim2.new(1, 0, 0, 25)
    imageLabel2.Name = "Ruafimg"
    imageLabel2.Parent = frame5
    imageLabel2.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    imageLabel2.BackgroundTransparency = 1
    local udim22 = UDim2.new
    local t12 = getgenv().T1
    local n5 = t12 and 5 or 0
    imageLabel2.Position = udim22(0, 5, 0, n5)
    local udim23 = UDim2.new
    local t13 = getgenv().T1
    local n6 = t13 and 30 or 25
    local t14 = getgenv().T1
    local n7 = t14 and 15 or 25
    imageLabel2.Size = udim23(0, n6, 0, n7)
    imageLabel2.Image = getgenv().UIColor["Logo Image"]
    uiCorner3.CornerRadius = UDim.new(1, 0)
    uiCorner3.Name = "RuafimgCorner"
    uiCorner3.Parent = imageLabel2
    textLabel.Text = "<font color=\"rgb(" .. (tostring(tbl4.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(tbl4.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(tbl4.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Banana Cat Hub</font> " .. getgenv().TitleNameNoti
    textLabel.Name = "TextLabelNoti"
    textLabel.Parent = frame5
    textLabel.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    textLabel.BackgroundTransparency = 1
    local udim24 = UDim2.new
    local t15 = getgenv().T1
    local n8 = t15 and 40 or 35
    textLabel.Position = udim24(0, n8, 0, 0)
    local udim25 = UDim2.new
    local t16 = getgenv().T1
    local n9 = t16 and -40 or -35
    textLabel.Size = udim25(1, n9, 1, 0)
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextSize = 14
    textLabel.TextWrapped = true
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.RichText = true
    textLabel.TextColor3 = getgenv().UIColor["GUI Text Color"]
    frame6.Name = "CloseContainer"
    frame6.Parent = frame5
    frame6.AnchorPoint = Vector2.new(1, 0.5)
    frame6.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    frame6.BackgroundTransparency = 1
    frame6.Position = UDim2.new(1, -4, 0.5, 0)
    frame6.Size = UDim2.new(0, 22, 0, 22)
    imageLabel3.Name = "CloseImage"
    imageLabel3.Parent = frame6
    imageLabel3.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    imageLabel3.BackgroundTransparency = 1
    imageLabel3.Size = UDim2.new(1, 0, 1, 0)
    imageLabel3.Image = "rbxassetid://3926305904"
    imageLabel3.ImageRectOffset = Vector2.new(284, 4)
    imageLabel3.ImageRectSize = Vector2.new(24, 24)
    imageLabel3.ImageColor3 = getgenv().UIColor["Search Icon Color"]
    textButton2.Parent = frame6
    textButton2.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    textButton2.BackgroundTransparency = 1
    textButton2.Size = UDim2.new(1, 0, 1, 0)
    textButton2.Font = Enum.Font.SourceSans
    textButton2.Text = ""
    textButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
    textButton2.TextSize = 14

    if desc then
        textLabel2.Name = "TextColor"
        textLabel2.Parent = frame4
        textLabel2.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
        textLabel2.BackgroundTransparency = 1
        textLabel2.Position = UDim2.new(0, 10, 0, 35)
        textLabel2.Size = UDim2.new(1, -15, 0, 0)
        textLabel2.Font = Enum.Font.GothamBold
        textLabel2.Text = desc
        textLabel2.TextSize = 14
        textLabel2.TextXAlignment = Enum.TextXAlignment.Left
        textLabel2.RichText = true
        textLabel2.TextColor3 = getgenv().UIColor["Text Color"]
        textLabel2.AutomaticSize = Enum.AutomaticSize.Y
        textLabel2.TextWrapped = true
    end

    local function fn4()
        TweenService:Create(frame4, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {Position = UDim2.new(1, 0, 0, 0)}):Play()
        wait(0.25)
        frame3:Destroy()
    end

    TweenService:Create(frame4, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {Position = UDim2.new(0, 0, 0, 0)}):Play()

    textButton2.MouseEnter:Connect(function()
        TweenService:Create(imageLabel3, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
            ImageColor3 = getgenv().UIColor["Search Icon Highlight Color"],
        }):Play()
    end)

    textButton2.MouseLeave:Connect(function()
        TweenService:Create(imageLabel3, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {ImageColor3 = getgenv().UIColor["Search Icon Color"]}):Play()
    end)

    textButton2.MouseButton1Click:Connect(function()
        wait(0.25)
        fn4()
    end)

    spawn(function()
        wait(n4)
        fn4()
    end)
end

tbl3.CreateNoti = function(arg, arg2)
    if not getgenv().Config or arg2 then
        local ok, result = pcall(function()
            fn3(arg)
        end)

        if result then
            pcall(function()
                local StarterGui = game:GetService("StarterGui")
                local setCore = StarterGui.SetCore
                local tbl5 = {Title = "Banana Cat Hub Cracked By Phe"}
                local desc = arg.Desc
                local text = desc or ""
                tbl5.Text = text
                tbl5.Icon = "rbxassetid://16791647668"
                local showTime = arg.ShowTime
                local duration = showTime or 10
                tbl5.Duration = duration
                setCore(StarterGui, "SendNotification", tbl5)
            end)
        end
    end
end

tbl3.CreateMain = function(arg)
    local str = tostring(arg.Title)
    local text = str or "Banana Cat Hub"
    local genv2 = getgenv()
    local desc = arg.Desc
    local mainDesc = desc or ""
    genv2.MainDesc = mainDesc
    cac = false
    local frame3 = Instance.new("Frame")
    local imageLabel2 = Instance.new("ImageLabel")
    local uiCorner2 = Instance.new("UICorner")
    local frame4 = Instance.new("Frame")
    local imageLabel3 = Instance.new("ImageLabel")
    local textLabel = Instance.new("TextLabel")
    local frame5 = Instance.new("Frame")
    local uiCorner3 = Instance.new("UICorner")
    local scrollingFrame = Instance.new("ScrollingFrame")
    local uiListLayout2 = Instance.new("UIListLayout")
    local textLabel2 = Instance.new("TextLabel")
    local frame6 = Instance.new("Frame")
    local uiPageLayout = Instance.new("UIPageLayout")
    local frame7 = Instance.new("Frame")
    local frame8 = Instance.new("Frame")
    frame3.Name = "Main"
    frame3.Parent = tbl4.Gui
    frame3.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
    frame3.BackgroundTransparency = 1
    frame3.Position = UDim2.new(0.5, 0, 0.5, 0)
    frame3.AnchorPoint = Vector2.new(0.5, 0.5)
    frame3.Size = UDim2.new(0, 629, 0, 359)
    fn(frame3, frame3)
    imageLabel2.Name = "maingui"
    imageLabel2.Parent = frame3
    imageLabel2.AnchorPoint = Vector2.new(0.5, 0.5)
    imageLabel2.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    imageLabel2.BackgroundTransparency = 1
    imageLabel2.Position = UDim2.new(0.5, 0, 0.5, 0)
    imageLabel2.Selectable = true
    imageLabel2.Size = UDim2.new(1, 30, 1, 30)
    imageLabel2.Image = "rbxassetid://8068653048"
    imageLabel2.ScaleType = Enum.ScaleType.Slice
    imageLabel2.SliceCenter = Rect.new(15, 15, 175, 175)
    imageLabel2.SliceScale = 1.3
    imageLabel2.ImageColor3 = getgenv().UIColor["Border Color"]
    imageLabel2.ImageTransparency = 1
    imageLabel2.ImageColor3 = getgenv().UIColor["Title Text Color"]
    textLabel.Text = "<font color=\"rgb(" .. (tostring(tbl4.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(tbl4.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(tbl4.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Banana Cat Hub</font> " .. getgenv().MainDesc
    local imageLabel4 = Instance.new("ImageLabel")
    imageLabel4.Name = "MainContainer"
    imageLabel4.Parent = frame3
    imageLabel4.BackgroundColor3 = getgenv().UIColor["Background Main Color"]
    imageLabel4.Size = UDim2.new(1, 0, 1, 0)
    getgenv().ReadyForGuiLoaded = true
    local imageLabel5 = Instance.new("ImageLabel")
    imageLabel5.Name = "Shadow"
    imageLabel5.Parent = frame3
    imageLabel5.BackgroundTransparency = 1
    imageLabel5.Image = "rbxassetid://5028857084"
    imageLabel5.ImageTransparency = 0.35
    imageLabel5.ScaleType = Enum.ScaleType.Slice
    imageLabel5.SliceCenter = Rect.new(24, 24, 276, 276)
    imageLabel5.Size = UDim2.new(1, 40, 1, 40)
    imageLabel5.Position = UDim2.new(0.5, 0, 0.5, 0)
    imageLabel5.AnchorPoint = Vector2.new(0.5, 0.5)
    imageLabel5.ZIndex = imageLabel4.ZIndex - 1
    local uiStroke = Instance.new("UIStroke")
    uiStroke.Parent = imageLabel4
    uiStroke.Thickness = 1
    uiStroke.Transparency = 0.35
    uiStroke.Color = getgenv().UIColor["Border Color"]
    local uiGradient = Instance.new("UIGradient")
    uiGradient.Parent = imageLabel4
    uiGradient.Rotation = 90

    uiGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200)),
    })

    uiGradient.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.92),
        NumberSequenceKeypoint.new(1, 0.92),
    })

    uiCorner2.CornerRadius = UDim.new(0, 5)
    uiCorner2.Name = "MainCorner"
    uiCorner2.Parent = imageLabel4
    frame7.Name = "Concacontainer"
    frame7.Parent = imageLabel4
    frame7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame7.BackgroundTransparency = 1
    frame7.ClipsDescendants = true
    frame7.Position = UDim2.new(0, 0, 0, 30)
    frame7.Size = UDim2.new(1, 0, 1, -30)
    frame8.Name = "Concacmain"
    frame8.Parent = frame7
    frame8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame8.BackgroundTransparency = 1
    frame8.Selectable = true
    frame8.Size = UDim2.new(1, 0, 1, 0)
    frame4.Name = "TopMain"
    frame4.Parent = imageLabel4
    frame4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame4.BackgroundTransparency = 1
    frame4.Size = UDim2.new(1, 0, 0, 25)
    local frame9 = Instance.new("Frame")
    frame9.Name = "TopStroke"
    frame9.Parent = frame4
    frame9.BackgroundColor3 = getgenv().UIColor["Border Color"]
    frame9.BackgroundTransparency = 0.6
    frame9.BorderSizePixel = 0
    frame9.Position = UDim2.new(0, 0, 1, -1)
    frame9.Size = UDim2.new(1, 0, 0, 1)
    local uiStroke2 = Instance.new("UIStroke")
    uiStroke2.Parent = textLabel
    uiStroke2.Thickness = 1
    uiStroke2.Transparency = 0.85
    uiStroke2.Color = Color3.new(0, 0, 0)
    imageLabel3.Name = "Ruafimg"
    imageLabel3.Parent = frame4
    imageLabel3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    imageLabel3.BackgroundTransparency = 1
    local udim22 = UDim2.new
    local t12 = getgenv().T1
    local n4 = t12 and 5 or 0
    imageLabel3.Position = udim22(0, 5, 0, n4)
    local udim23 = UDim2.new
    local t13 = getgenv().T1
    local n5 = t13 and 30 or 25
    local t14 = getgenv().T1
    local n6 = t14 and 15 or 25
    imageLabel3.Size = udim23(0, n5, 0, n6)
    imageLabel3.Image = getgenv().UIColor["Logo Image"]
    textLabel.Name = "TextLabelMain"
    textLabel.Parent = frame4
    textLabel.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    textLabel.BackgroundTransparency = 1
    local udim24 = UDim2.new
    local t15 = getgenv().T1
    local n7 = t15 and 50 or 220
    textLabel.Position = udim24(0, n7, 0, 0)
    local udim25 = UDim2.new
    local t16 = getgenv().T1
    local n8 = t16 and -40 or -35
    textLabel.Size = udim25(1, n8, 1, 0)
    textLabel.Font = Enum.Font.GothamBold
    textLabel.RichText = true
    textLabel.TextSize = 16
    textLabel.TextWrapped = true
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.TextColor3 = getgenv().UIColor["GUI Text Color"]
    textLabel.Text = "<font color=\"rgb(" .. (tostring(tbl4.Getcolor(getgenv().UIColor["Title Text Color"])[1]) .. "," .. tostring(tbl4.Getcolor(getgenv().UIColor["Title Text Color"])[2]) .. "," .. tostring(tbl4.Getcolor(getgenv().UIColor["Title Text Color"])[3])) .. ")\">Banana Cat Hub</font> " .. getgenv().MainDesc
    frame5.Name = "Background1"
    frame5.Parent = frame8
    frame5.Position = UDim2.new(0, 5, 0, 0)
    frame5.Size = UDim2.new(0, 180, 0, 325)
    frame5.BackgroundTransparency = 0.1
    frame5.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
    local uiStroke3 = Instance.new("UIStroke")
    uiStroke3.Parent = frame5
    uiStroke3.Thickness = 1
    uiStroke3.Transparency = 0.5
    uiStroke3.Color = getgenv().UIColor["Border Color"]
    local uiGradient2 = Instance.new("UIGradient")
    uiGradient2.Parent = frame5
    uiGradient2.Rotation = 90
    local colorSequence = ColorSequence.new
    local tbl5 = {}
    local v3 = ColorSequenceKeypoint.new(0, getgenv().UIColor["Background 1 Color"])
    local new = ColorSequenceKeypoint.new
    local background2Color = getgenv().UIColor["Background 2 Color"]
    local background1Color = background2Color or getgenv().UIColor["Background 1 Color"]
    local v4 = table.pack(new(1, background1Color))
    tbl5[1] = v3
    __store_list(tbl5, 2, table.unpack(v4, 1, v4.n))
    uiGradient2.Color = colorSequence(tbl5)

    uiGradient2.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 0.06),
        NumberSequenceKeypoint.new(1, 0.12),
    })

    local uiPadding = Instance.new("UIPadding")
    uiPadding.Parent = frame5
    uiPadding.PaddingLeft = UDim.new(0, 4)
    uiPadding.PaddingRight = UDim.new(0, 4)
    uiPadding.PaddingTop = UDim.new(0, 4)
    uiPadding.PaddingBottom = UDim.new(0, 4)
    uiCorner3.CornerRadius = UDim.new(0, 4)
    uiCorner3.Parent = frame5
    scrollingFrame.Name = "ControlList"
    scrollingFrame.Parent = frame5
    scrollingFrame.Active = true
    scrollingFrame.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    scrollingFrame.BackgroundTransparency = 1
    scrollingFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
    scrollingFrame.BorderSizePixel = 0
    scrollingFrame.Position = UDim2.new(0, 0, 0, 30)
    scrollingFrame.Size = UDim2.new(1, -5, 1, -30)
    scrollingFrame.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    scrollingFrame.ScrollBarThickness = 5
    scrollingFrame.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    uiListLayout2.Parent = scrollingFrame
    uiListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
    uiListLayout2.Padding = UDim.new(0, 5)
    textLabel2.Name = "GUITextColor"
    textLabel2.Parent = frame5
    textLabel2.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    textLabel2.BackgroundTransparency = 1
    textLabel2.Position = UDim2.new(0, 5, 0, 0)
    textLabel2.Size = UDim2.new(1, 0, 0, 25)
    textLabel2.Font = Enum.Font.GothamBold
    textLabel2.Text = text
    textLabel2.TextSize = 14
    textLabel2.TextXAlignment = Enum.TextXAlignment.Left
    textLabel2.TextColor3 = getgenv().UIColor["GUI Text Color"]
    frame6.Name = "MainPage"
    frame6.Parent = frame8
    frame6.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
    frame6.BackgroundTransparency = 1
    frame6.ClipsDescendants = true
    frame6.Position = UDim2.new(0, 190, 0, 0)
    frame6.Size = UDim2.new(0, 435, 0, 325)
    uiPageLayout.Name = "UIPage"
    uiPageLayout.Parent = frame6
    uiPageLayout.FillDirection = Enum.FillDirection.Vertical
    uiPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
    uiPageLayout.EasingDirection = Enum.EasingDirection.InOut
    uiPageLayout.EasingStyle = Enum.EasingStyle.Quart
    uiPageLayout.Padding = UDim.new(0, 10)
    uiPageLayout.TweenTime = getgenv().UIColor["Tween Animation 1 Speed"]
    local frame10 = Instance.new("Frame")
    local uiCorner4 = Instance.new("UICorner")
    local frame11 = Instance.new("Frame")
    local imageLabel6 = Instance.new("ImageLabel")
    local textBox = Instance.new("TextBox")
    frame10.Name = "PageSearch"
    frame10.Parent = frame5
    frame10.AnchorPoint = Vector2.new(1, 0)
    frame10.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
    frame10.Position = UDim2.new(1, -5, 0, 5)
    frame10.Size = UDim2.new(0, frame5.AbsoluteSize.X - 10, 0, 25)
    frame10.ClipsDescendants = true
    uiCorner4.CornerRadius = UDim.new(0, 4)
    uiCorner4.Parent = frame10
    frame11.Name = "SearchFrame"
    frame11.Parent = frame10
    frame11.BackgroundTransparency = 1
    frame11.Size = UDim2.new(0, 25, 1, 0)
    imageLabel6.Name = "SearchIcon"
    imageLabel6.Parent = frame11
    imageLabel6.AnchorPoint = Vector2.new(0.5, 0.5)
    imageLabel6.Position = UDim2.new(0.5, 0, 0.5, 0)
    imageLabel6.Size = UDim2.new(0, 16, 0, 16)
    imageLabel6.BackgroundTransparency = 1
    imageLabel6.Image = "rbxassetid://8154282545"
    imageLabel6.ImageColor3 = getgenv().UIColor["Search Icon Color"]
    textBox.Name = "SearchBox"
    textBox.Parent = frame10
    textBox.BackgroundTransparency = 1
    textBox.Position = UDim2.new(0, 30, 0, 0)
    textBox.Size = UDim2.new(1, -30, 1, 0)
    textBox.Font = Enum.Font.GothamBold
    textBox.Text = ""
    textBox.TextSize = 14
    textBox.TextXAlignment = Enum.TextXAlignment.Left
    textBox.PlaceholderText = "Search section or Function..."
    textBox.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
    textBox.TextColor3 = getgenv().UIColor["Text Color"]
    local v5 = nil

    local function fn4(arg2)
        local tbl6 = {}
        local v6, v7, v8 = pairs(arg2:GetChildren())
        local v9 = v8
        local v10 = v6
        local v11 = v7

        while true do
            local v12, v13 = v10(v11, v9)
            if v12 == nil then
                break
            end

            if v13:IsA("TextLabel") then
                table.insert(tbl6, v13)
            end

            local v14 = (1)(v13)

            for k, v15 in pairs(v14) do
                table.insert(tbl6, v15)
            end

            v9 = v12
        end

        return tbl6
    end

    textBox:GetPropertyChangedSignal("Text"):Connect(function()
        local v6 = string.lower(textBox.Text)
        local tbl6 = {}
        local v7, v8, v9 = pairs(frame6:GetChildren())
        local v10 = v9
        local v11 = v7
        local v12 = v8

        while true do
            local v13, v14 = v11(v12, v10)
            if v13 == nil then
                break
            end
            v10 = v13

            if v14:IsA("Frame") and v14:FindFirstChild("PageList") then
                local flag2 = false
                local v15, v16, v17 = pairs(v14.PageList:GetChildren())
                local v18 = v17
                local v19 = v15
                local v20 = v16
                local v21 = v13
                local v22 = v11
                local v23 = v12

                while true do
                    local v24, v25 = v19(v20, v18)
                    if v24 == nil then
                        break
                    end
                    v18 = v24

                    if not v25:IsA("UIListLayout") then
                        local flag3 = false
                        local topsec = v25:FindFirstChild("Topsec")
                        local sectiontitle = topsec and v25.Topsec:FindFirstChild("Sectiontitle")

                        if sectiontitle and v6 ~= "" and string.find(string.lower(sectiontitle.Text), v6) then
                            flag3 = true

                            for k, child in pairs(v25:GetChildren()) do
                                if child:IsA("Frame") then
                                    child.Visible = true
                                end
                            end

                            v18 = v24
                        end

                        local v26, v27, v28 = pairs(v25:GetChildren())
                        local v29 = v28
                        local v30 = v26
                        local v31 = v27
                        local v32 = v18
                        local v33 = v19
                        local v34 = v20
                        local v35 = v21
                        local v36 = v22
                        local v37 = v23

                        while true do
                            local v38, v39 = v30(v31, v29)
                            if v38 == nil then
                                break
                            end
                            v29 = v38

                            if v39:IsA("Frame") then
                                local flag4 = false
                                local v40 = fn4(v39)

                                for k, v41 in pairs(v40) do
                                    if string.find(string.lower(v41.Text), v6) then
                                        flag4 = true
                                        break
                                    end
                                    continue
                                end

                                v29 = v38
                                local visible = v6 == "" or flag4
                                v39.Visible = visible

                                if v39.Visible then
                                    flag3 = true
                                end
                            end
                        end

                        v18 = v32
                        v19 = v33
                        v20 = v34
                        v21 = v35
                        v22 = v36
                        v23 = v37
                        local visible = v6 == "" or flag3
                        v25.Visible = visible

                        if v25.Visible then
                            flag2 = true
                        end
                    end
                end

                v10 = v21
                v11 = v22
                v12 = v23
                local visible = v6 == "" or flag2
                v14.Visible = visible

                if v14.Visible then
                    table.insert(tbl6, v14)
                end
            end
        end

        for k, child in pairs(scrollingFrame:GetChildren()) do
            if child:IsA("Frame") then
                local v13 = frame6:FindFirstChild("Page" .. child.LayoutOrder + 1)

                if v13 then
                    child.Visible = v13.Visible
                end
            end
        end

        if v6 == "" then
            if v5 then
                uiPageLayout:JumpTo(v5)
            end

            return
        end

        if #tbl6 == 1 then
            uiPageLayout:JumpTo(tbl6[1])
        end
    end)

    uiListLayout2:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, uiListLayout2.AbsoluteContentSize.Y + 5)
    end)

    local layoutOrder = -1
    local layoutOrder2 = -1
    local n9 = 1

    return {
        CreatePage = function(arg2)
            local text2 = tostring(arg2.Page_Name)
            local text3 = tostring(arg2.Page_Title)
            layoutOrder2 = layoutOrder2 + 1
            layoutOrder = layoutOrder + 1
            local frame12 = Instance.new("Frame")
            local frame13 = Instance.new("Frame")
            local uiCorner5 = Instance.new("UICorner")
            local frame14 = Instance.new("Frame")
            local frame15 = Instance.new("Frame")
            local uiCorner6 = Instance.new("UICorner")
            local frame16 = Instance.new("Frame")
            local textLabel3 = Instance.new("TextLabel")
            local textButton2 = Instance.new("TextButton")
            frame12.Name = text2 .. "_Control"
            frame12.Parent = scrollingFrame
            frame12.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            frame12.BackgroundTransparency = 1
            frame12.Size = UDim2.new(1, -10, 0, 25)
            frame12.LayoutOrder = layoutOrder
            frame13.Parent = frame12
            frame13.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            frame13.BackgroundTransparency = 1
            frame13.Position = UDim2.new(0, 5, 0, 0)
            frame13.Size = UDim2.new(1, -5, 1, 0)
            uiCorner5.CornerRadius = UDim.new(0, 4)
            uiCorner5.Name = "TabNameCorner"
            uiCorner5.Parent = frame13
            frame14.Name = "Line"
            frame14.Parent = frame13
            frame14.AnchorPoint = Vector2.new(0, 0.5)
            frame14.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            frame14.BackgroundTransparency = 1
            frame14.Position = UDim2.new(0, 0, 0.5, 0)
            frame14.Size = UDim2.new(0, 14, 1, 0)
            frame15.Name = "PageInLine"
            frame15.Parent = frame14
            frame15.AnchorPoint = Vector2.new(0.5, 0.5)
            frame15.BorderSizePixel = 0
            frame15.Position = UDim2.new(0.5, 0, 0.5, 0)
            frame15.Size = UDim2.new(1, -10, 1, -10)
            frame15.BackgroundColor3 = getgenv().UIColor["Page Selected Color"]
            frame15.BackgroundTransparency = 1
            uiCorner6.Name = "LineCorner"
            uiCorner6.Parent = frame15
            frame16.Name = "TabTitleContainer"
            frame16.Parent = frame13
            frame16.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            frame16.BackgroundTransparency = 1
            frame16.Position = UDim2.new(0, 15, 0, 0)
            frame16.Size = UDim2.new(1, -15, 1, 0)
            textLabel3.Name = "GUITextColor"
            textLabel3.Parent = frame16
            textLabel3.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            textLabel3.BackgroundTransparency = 1
            textLabel3.Size = UDim2.new(1, 0, 1, 0)
            textLabel3.Font = Enum.Font.GothamBold
            textLabel3.Text = text2
            textLabel3.TextColor3 = Color3.fromRGB(230, 230, 230)
            textLabel3.TextSize = 14
            textLabel3.TextXAlignment = Enum.TextXAlignment.Left
            textLabel3.TextColor3 = getgenv().UIColor["GUI Text Color"]
            textButton2.Name = "PageButton"
            textButton2.Parent = frame12
            textButton2.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            textButton2.BackgroundTransparency = 1
            textButton2.Size = UDim2.new(1, 0, 1, 0)
            textButton2.Font = Enum.Font.SourceSans
            textButton2.Text = ""
            textButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
            textButton2.TextSize = 14
            local frame17 = Instance.new("Frame")
            local uiCorner7 = Instance.new("UICorner")
            local textLabel4 = Instance.new("TextLabel")
            local scrollingFrame2 = Instance.new("ScrollingFrame")
            local uiListLayout3 = Instance.new("UIListLayout")
            local v6 = n9
            n9 = n9 + 1
            frame17.Name = "Page" .. v6
            frame17.Parent = frame6
            frame17.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
            frame17.Position = UDim2.new(0, 190, 0, 30)
            frame17.Size = UDim2.new(0, 435, 0, 325)
            frame17.LayoutOrder = layoutOrder2
            frame17.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
            local uiStroke4 = Instance.new("UIStroke")
            uiStroke4.Parent = frame17
            uiStroke4.Thickness = 1
            uiStroke4.Transparency = 0.55
            uiStroke4.Color = getgenv().UIColor["Border Color"]
            local uiGradient3 = Instance.new("UIGradient")
            uiGradient3.Parent = frame17
            uiGradient3.Rotation = 90
            local colorSequence2 = ColorSequence.new
            local tbl6 = {}
            local v7 = ColorSequenceKeypoint.new(0, getgenv().UIColor["Background 1 Color"])
            local new2 = ColorSequenceKeypoint.new
            local background2Color2 = getgenv().UIColor["Background 2 Color"]
            local background1Color2 = background2Color2 or getgenv().UIColor["Background 1 Color"]
            local v8 = table.pack(new2(1, background1Color2))
            tbl6[1] = v7
            __store_list(tbl6, 2, table.unpack(v8, 1, v8.n))
            uiGradient3.Color = colorSequence2(tbl6)

            uiGradient3.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0.04),
                NumberSequenceKeypoint.new(1, 0.08),
            })

            local uiPadding2 = Instance.new("UIPadding")
            uiPadding2.Parent = frame17
            uiPadding2.PaddingLeft = UDim.new(0, 5)
            uiPadding2.PaddingRight = UDim.new(0, 5)
            uiPadding2.PaddingTop = UDim.new(0, 2)
            uiPadding2.PaddingBottom = UDim.new(0, 5)
            uiCorner7.CornerRadius = UDim.new(0, 4)
            uiCorner7.Parent = frame17
            textLabel4.Name = "GUITextColor"
            textLabel4.Parent = frame17
            textLabel4.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            textLabel4.BackgroundTransparency = 1
            textLabel4.Position = UDim2.new(0, 5, 0, 0)
            textLabel4.Size = UDim2.new(1, 0, 0, 25)
            textLabel4.Font = Enum.Font.GothamBold
            textLabel4.Text = text3
            textLabel4.TextSize = 16
            textLabel4.TextXAlignment = Enum.TextXAlignment.Left
            textLabel4.TextColor3 = getgenv().UIColor["GUI Text Color"]
            scrollingFrame2.Name = "PageList"
            scrollingFrame2.Parent = frame17
            scrollingFrame2.Active = true
            scrollingFrame2.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
            scrollingFrame2.BackgroundTransparency = 1
            scrollingFrame2.BorderColor3 = Color3.fromRGB(27, 42, 53)
            scrollingFrame2.BorderSizePixel = 0
            scrollingFrame2.Position = UDim2.new(0, 5, 0, 25)
            scrollingFrame2.Size = UDim2.new(1, -10, 1, -25)
            scrollingFrame2.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
            scrollingFrame2.ScrollBarThickness = 5
            scrollingFrame2.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
            scrollingFrame2.ScrollingEnabled = true
            scrollingFrame2.VerticalScrollBarInset = Enum.ScrollBarInset.Always
            uiListLayout3.Name = "Pagelistlayout"
            uiListLayout3.Parent = scrollingFrame2
            uiListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
            uiListLayout3.Padding = UDim.new(0, 5)

            uiListLayout3:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                scrollingFrame2.CanvasSize = UDim2.new(0, 0, 0, uiListLayout3.AbsoluteContentSize.Y)
            end)

            local frame18 = Instance.new("Frame")
            local uiCorner8 = Instance.new("UICorner")
            local frame19 = Instance.new("Frame")
            local imageLabel7 = Instance.new("ImageLabel")
            local textButton3 = Instance.new("TextButton")
            local textBox2 = Instance.new("TextBox")
            frame18.Name = "Page Search"
            frame18.Parent = frame17
            frame18.AnchorPoint = Vector2.new(1, 0)
            frame18.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
            frame18.Position = UDim2.new(1, -5, 0, 5)
            frame18.Size = UDim2.new(0, 20, 0, 20)
            frame18.ClipsDescendants = true
            uiCorner8.CornerRadius = UDim.new(0, 2)
            uiCorner8.Name = "PageSearchCorner"
            uiCorner8.Parent = frame18
            frame19.Name = "SearchFrame"
            frame19.Parent = frame18
            frame19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            frame19.BackgroundTransparency = 1
            frame19.Size = UDim2.new(0, 20, 0, 20)
            imageLabel7.Name = "SearchIcon"
            imageLabel7.Parent = frame19
            imageLabel7.AnchorPoint = Vector2.new(0.5, 0.5)
            imageLabel7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            imageLabel7.BackgroundTransparency = 1
            imageLabel7.Position = UDim2.new(0.5, 0, 0.5, 0)
            imageLabel7.Size = UDim2.new(0, 16, 0, 16)
            imageLabel7.Image = "rbxassetid://8154282545"
            imageLabel7.ImageColor3 = getgenv().UIColor["Search Icon Color"]
            textButton3.Name = "Search Button"
            textButton3.Parent = frame19
            textButton3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textButton3.BackgroundTransparency = 1
            textButton3.Size = UDim2.new(1, 0, 1, 0)
            textButton3.Font = Enum.Font.SourceSans
            textButton3.Text = ""
            textButton3.TextColor3 = Color3.fromRGB(0, 0, 0)
            textButton3.TextSize = 14
            textBox2.Name = "Search Box"
            textBox2.Parent = frame18
            textBox2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textBox2.BackgroundTransparency = 1
            textBox2.Position = UDim2.new(0, 30, 0, 0)
            textBox2.Size = UDim2.new(1, -30, 1, 0)
            textBox2.Font = Enum.Font.GothamBold
            textBox2.Text = ""
            textBox2.TextSize = 14
            textBox2.TextXAlignment = Enum.TextXAlignment.Left
            textBox2.PlaceholderText = "Search Section name"
            textBox2.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
            textBox2.TextColor3 = getgenv().UIColor["Text Color"]
            local flag2 = false

            textButton3.MouseEnter:Connect(function()
                TweenService:Create(imageLabel7, TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]), {
                    ImageColor3 = getgenv().UIColor["Search Icon Highlight Color"],
                }):Play()
            end)

            textButton3.MouseLeave:Connect(function()
                TweenService:Create(imageLabel7, TweenInfo.new(getgenv().UIColor["Tween Animation 3 Speed"]), {ImageColor3 = getgenv().UIColor["Search Icon Color"]}):Play()
            end)

            textButton3.MouseButton1Click:Connect(function()
                local flag3

                if flag2 then
                    flag3 = false
                else
                    flag3 = true
                end

                flag2 = flag3
                local v9 = flag2
                local udim26 = v9 and UDim2.new(0, 175, 0, 20) or UDim2.new(0, 20, 0, 20)
                game.TweenService:Create(frame18, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = udim26}):Play()
            end)

            local function fn5()
                local v9 = next
                local children, v10 = scrollingFrame2:GetChildren()

                for k, v11 in v9, children, v10 do
                    if not v11:IsA("UIListLayout") then
                        v11.Visible = false
                    end
                end
            end

            local function fn6()
                for k, child in pairs(scrollingFrame2:GetChildren()) do
                    if not child:IsA("UIListLayout") and string.find(string.lower(child.Name), string.lower(textBox2.Text)) then
                        child.Visible = true
                    end
                end
            end

            textBox2:GetPropertyChangedSignal("Text"):Connect(function()
                fn5()
                fn6()
            end)

            for k, child in pairs(scrollingFrame:GetChildren()) do
                if not child:IsA("UIListLayout") and k == 2 then
                    child.Frame.Line.PageInLine.BackgroundTransparency = 0
                end
            end

            textButton2.MouseButton1Click:Connect(function()
                if uiPageLayout.CurrentPage ~= frame17 then
                    uiPageLayout:JumpTo(frame17)
                end

                local v9 = next
                local children, v10 = scrollingFrame:GetChildren()

                for k, v11 in v9, children, v10 do
                    if v11:FindFirstChild("Frame") and v11.Frame:FindFirstChild("Line") and v11.Frame.Line:FindFirstChild("PageInLine") then
                        local n10 = v11.Name == text2 .. "_Control" and 0 or 1
                        TweenService:Create(v11.Frame.Line.PageInLine, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {BackgroundTransparency = n10}):Play()
                    end
                end

                v5 = frame17
            end)

            return {
                CreateSection = function(text4, arg3, arg4, arg5)
                    local flag3 = arg3 or false
                    local frame20 = Instance.new("Frame")
                    local uiCorner9 = Instance.new("UICorner")
                    local frame21 = Instance.new("Frame")
                    local textLabel5 = Instance.new("TextLabel")
                    local frame22 = Instance.new("Frame")
                    local uiGradient4 = Instance.new("UIGradient")
                    local uiListLayout4 = Instance.new("UIListLayout")
                    frame20.Name = text4 .. "_Dot"
                    frame20.Parent = scrollingFrame2
                    frame20.Size = UDim2.new(1, -5, 0, 30)
                    frame20.BackgroundColor3 = getgenv().UIColor["Background 3 Color"]
                    frame20.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                    frame20.ClipsDescendants = true
                    uiCorner9.CornerRadius = UDim.new(0, 4)
                    uiCorner9.Parent = frame20
                    frame21.Name = "Topsec"
                    frame21.Parent = frame20
                    frame21.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    frame21.BackgroundTransparency = 1
                    frame21.Size = UDim2.new(0, 415, 0, 30)
                    textLabel5.Name = "Sectiontitle"
                    textLabel5.Parent = frame21
                    textLabel5.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                    textLabel5.BackgroundTransparency = 1
                    textLabel5.Size = UDim2.new(1, 0, 1, 0)
                    textLabel5.Font = Enum.Font.GothamBold
                    textLabel5.Text = text4
                    textLabel5.TextSize = 14
                    local sectionTextColor = arg5 and arg5 or getgenv().UIColor["Section Text Color"]
                    textLabel5.TextColor3 = sectionTextColor
                    frame22.Name = "Linesec"
                    frame22.Parent = frame21
                    frame22.AnchorPoint = Vector2.new(0.5, 1)
                    frame22.BorderSizePixel = 0
                    frame22.Position = UDim2.new(0.5, 0, 1, -2)
                    frame22.Size = UDim2.new(1, -10, 0, 2)
                    local sectionUnderlineColor = arg5 and arg5 or getgenv().UIColor["Section Underline Color"]
                    frame22.BackgroundColor3 = sectionUnderlineColor
                    local uiStroke5 = Instance.new("UIStroke")
                    uiStroke5.Parent = frame20
                    uiStroke5.Color = getgenv().UIColor["Border Color"]
                    uiStroke5.Thickness = 1
                    uiStroke5.Transparency = 0.6
                    local uiGradient5 = Instance.new("UIGradient")
                    uiGradient5.Parent = frame20
                    uiGradient5.Rotation = 90

                    uiGradient5.Color = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, getgenv().UIColor["Background 2 Color"]),
                        ColorSequenceKeypoint.new(1, getgenv().UIColor["Background 3 Color"]),
                    })

                    uiGradient5.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0.05),
                        NumberSequenceKeypoint.new(1, 0.15),
                    })

                    uiGradient4.Color = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, Color3.fromRGB(253, 224, 71)),
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(234, 179, 8)),
                    })

                    uiGradient4.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0.8),
                        NumberSequenceKeypoint.new(0.5, 0),
                        NumberSequenceKeypoint.new(1, 0.8),
                    })

                    local imageLabel8 = Instance.new("ImageLabel")
                    imageLabel8.Name = "LineShadow"
                    imageLabel8.Parent = frame22
                    imageLabel8.BackgroundTransparency = 1
                    imageLabel8.Image = "rbxassetid://5028857084"
                    imageLabel8.ImageTransparency = 0.6
                    imageLabel8.ScaleType = Enum.ScaleType.Slice
                    imageLabel8.SliceCenter = Rect.new(24, 24, 276, 276)
                    imageLabel8.Size = UDim2.new(1, 8, 1, 8)
                    imageLabel8.Position = UDim2.new(0.5, 0, 0.5, 0)
                    imageLabel8.AnchorPoint = Vector2.new(0.5, 0.5)
                    imageLabel8.ZIndex = frame22.ZIndex - 1
                    local n10 = nil
                    local flag4 = false

                    if flag3 then
                        local frame23 = Instance.new("Frame")
                        local uiCorner10 = Instance.new("UICorner")
                        local imageButton = Instance.new("ImageButton")
                        local imageButton2 = Instance.new("ImageButton")
                        local textButton4 = Instance.new("TextButton")
                        textButton4.Name = "VisibilityButton"
                        textButton4.Parent = frame21
                        textButton4.AnchorPoint = Vector2.new(1, 0.5)
                        textButton4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        textButton4.BackgroundTransparency = 1
                        textButton4.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        textButton4.BorderSizePixel = 0
                        textButton4.Font = Enum.Font.SourceSans
                        textButton4.Text = ""
                        textButton4.TextColor3 = Color3.fromRGB(0, 0, 0)
                        textButton4.TextSize = 14
                        textButton4.ZIndex = 2
                        textButton4.Position = UDim2.new(1, -5, 0.5, 0)
                        textButton4.Size = UDim2.new(0, 20, 0, 20)
                        frame23.Name = "VisibilitySectionFrame"
                        frame23.Parent = frame21
                        frame23.AnchorPoint = Vector2.new(1, 0.5)
                        frame23.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                        frame23.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        frame23.BorderSizePixel = 0
                        frame23.Position = UDim2.new(1, -12, 0.5, 0)
                        frame23.Size = UDim2.new(0, 20, 0, 20)
                        uiCorner10.CornerRadius = UDim.new(0, 4)
                        uiCorner10.Name = "VisibilitySectionFrameCorner"
                        uiCorner10.Parent = frame23
                        imageButton.Name = "visibility"
                        imageButton.Parent = frame23
                        imageButton.AnchorPoint = Vector2.new(0.5, 0.5)
                        imageButton.BackgroundTransparency = 1
                        imageButton.LayoutOrder = 4
                        imageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
                        imageButton.Size = UDim2.new(1, -4, 1, -4)
                        imageButton.ZIndex = 2
                        imageButton.Image = "rbxassetid://3926307971"
                        imageButton.ImageRectOffset = Vector2.new(84, 44)
                        imageButton.ImageRectSize = Vector2.new(36, 36)
                        imageButton.ImageTransparency = 1
                        imageButton2.Name = "visibility_off"
                        imageButton2.Parent = frame23
                        imageButton2.AnchorPoint = Vector2.new(0.5, 0.5)
                        imageButton2.BackgroundTransparency = 1
                        imageButton2.LayoutOrder = 4
                        imageButton2.Position = UDim2.new(0.5, 0, 0.5, 0)
                        imageButton2.Size = UDim2.new(1, -4, 1, -4)
                        imageButton2.ZIndex = 2
                        imageButton2.Image = "rbxassetid://3926307971"
                        imageButton2.ImageRectOffset = Vector2.new(564, 44)
                        imageButton2.ImageRectSize = Vector2.new(36, 36)
                        imageButton2.ImageTransparency = 0

                        textButton4.MouseButton1Down:Connect(function()
                            local flag5

                            if flag4 then
                                flag5 = false
                            else
                                flag5 = true
                            end

                            flag4 = flag5
                            local create = TweenService.Create
                            local tweenInfo = TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"] / 2)
                            local tbl7 = {}
                            local v9 = flag4
                            local imageTransparency = v9 and 0 or 1
                            tbl7.ImageTransparency = imageTransparency
                            create(TweenService, imageButton, tweenInfo, tbl7):Play()
                            wait(getgenv().UIColor["Tween Animation 1 Speed"] / 4)
                            local create2 = TweenService.Create
                            local tweenInfo2 = TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"] / 2)
                            local tbl8 = {}
                            local v10 = flag4
                            local imageTransparency2 = v10 and 1 or 0
                            tbl8.ImageTransparency = imageTransparency2
                            create2(TweenService, imageButton2, tweenInfo2, tbl8):Play()
                            local create3 = TweenService.Create
                            local tweenInfo3 = TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"])
                            local tbl9 = {}
                            local udim26 = UDim2.new
                            local v11 = flag4
                            local n11 = v11 and n10 or 30
                            tbl9.Size = udim26(1, -5, 0, n11)
                            create3(TweenService, frame20, tweenInfo3, tbl9):Play()
                        end)
                    end

                    if arg4 then
                        local frame23 = Instance.new("Frame")
                        frame23.Name = "SectionGap"
                        frame23.Parent = scrollingFrame2
                        frame23.Size = UDim2.new(1, -5, 0, 30)
                        frame23.ClipsDescendants = true
                        frame23.Transparency = 1
                    end

                    uiGradient4.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.5, 0),
                        NumberSequenceKeypoint.new(0.51, 0.02),
                        NumberSequenceKeypoint.new(1, 1),
                    })

                    uiGradient4.Parent = frame22
                    uiListLayout4.Name = "SectionList"
                    uiListLayout4.Parent = frame20
                    uiListLayout4.SortOrder = Enum.SortOrder.LayoutOrder
                    uiListLayout4.Padding = UDim.new(0, 5)

                    uiListLayout4:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                        if not flag3 then
                            frame20.Size = UDim2.new(1, -5, 0, uiListLayout4.AbsoluteContentSize.Y + 5)
                        end

                        n10 = uiListLayout4.AbsoluteContentSize.Y + 5

                        if flag4 then
                            TweenService:Create(frame20, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {Size = UDim2.new(1, -5, 0, n10)}):Play()
                        end
                    end)

                    return {
                        CreateToggle = function(arg6, arg7)
                            local text5 = tostring(arg6.Title)
                            local desc2 = arg6.Desc
                            local default = arg6.Default

                            if default == nil then
                                default = false
                            end

                            local fn7 = arg7 or function() end
                            local frame23 = Instance.new("Frame")
                            local frame24 = Instance.new("Frame")
                            local frame25 = Instance.new("Frame")
                            local frame26 = Instance.new("Frame")
                            local frame27 = Instance.new("Frame")
                            local textLabel6 = Instance.new("TextLabel")
                            local textLabel7 = Instance.new("TextLabel")
                            local frame28 = Instance.new("Frame")
                            local uiCorner10 = Instance.new("UICorner")
                            local textButton4 = Instance.new("TextButton")
                            local uiListLayout5 = Instance.new("UIListLayout")
                            frame23.Name = "ToggleFrame"
                            frame23.Parent = frame20
                            frame23.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            frame23.BackgroundTransparency = 1
                            frame23.Position = UDim2.new(0, 0, 0.300000012, 0)
                            frame23.Size = UDim2.new(1, 0, 0, 0)
                            frame23.AutomaticSize = Enum.AutomaticSize.Y
                            frame24.Name = "TogFrame1"
                            frame24.Parent = frame23
                            frame24.AnchorPoint = Vector2.new(0.5, 0.5)
                            frame24.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            frame24.BackgroundTransparency = 1
                            frame24.Position = UDim2.new(0.5, 0, 0.5, 0)
                            frame24.Size = UDim2.new(1, -10, 0, 0)
                            frame24.AutomaticSize = Enum.AutomaticSize.Y
                            frame25.Name = "checkbox"
                            frame25.Parent = frame24
                            frame25.AnchorPoint = Vector2.new(1, 0.5)
                            frame25.BackgroundColor3 = getgenv().UIColor["Toggle Border Color"]
                            frame25.Position = UDim2.new(1, -5, 0.5, 3)
                            frame25.Size = UDim2.new(0, 22.5, 0, 22.5)
                            frame25.BorderSizePixel = 0
                            frame26.Name = "checkbox2"
                            frame26.Parent = frame25
                            frame26.AnchorPoint = Vector2.new(0.5, 0.5)
                            frame26.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                            frame26.Position = UDim2.new(0.5, 0, 0.5, 0)
                            frame26.Size = UDim2.new(0, 18, 0, 18)
                            frame26.BorderSizePixel = 0
                            local uiCorner11 = Instance.new("UICorner")
                            uiCorner11.CornerRadius = UDim.new(0, 4)
                            uiCorner11.Name = "checkboxCorner"
                            uiCorner11.Parent = frame25
                            frame27.Name = "check"
                            frame27.Parent = frame26
                            frame27.AnchorPoint = Vector2.new(0, 1)
                            frame27.BackgroundColor3 = getgenv().UIColor["Toggle Checked Color"]
                            frame27.Position = UDim2.new(0, 0, 1, 0)
                            local n11 = 5

                            if desc2 then
                                n11 = 0
                                textLabel6.Name = "ToggleDesc"
                                textLabel6.Parent = frame24
                                textLabel6.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                                textLabel6.BackgroundTransparency = 1
                                textLabel6.Position = UDim2.new(0, 15, 0, 20)
                                textLabel6.Size = UDim2.new(1, -50, 0, 0)
                                textLabel6.Font = Enum.Font.GothamBlack
                                textLabel6.Text = desc2
                                textLabel6.TextSize = 13
                                textLabel6.TextWrapped = true
                                textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                                textLabel6.RichText = true
                                textLabel6.AutomaticSize = Enum.AutomaticSize.Y
                                textLabel6.TextColor3 = getgenv().UIColor["Toggle Desc Color"]
                            else
                                textLabel6.Text = ""
                            end

                            textLabel7.Name = "TextColor"
                            textLabel7.Parent = frame24
                            textLabel7.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            textLabel7.BackgroundTransparency = 1
                            textLabel7.Position = UDim2.new(0, 10, 0, n11)
                            textLabel7.Size = UDim2.new(1, -10, 0, 20)
                            textLabel7.Font = Enum.Font.GothamBlack
                            textLabel7.Text = text5
                            textLabel7.TextSize = 14
                            textLabel7.TextXAlignment = Enum.TextXAlignment.Left
                            textLabel7.TextYAlignment = Enum.TextYAlignment.Center
                            textLabel7.RichText = true
                            textLabel7.AutomaticSize = Enum.AutomaticSize.Y
                            textLabel7.TextColor3 = getgenv().UIColor["Text Color"]
                            frame28.Name = "Background1"
                            frame28.Parent = frame24
                            frame28.Size = UDim2.new(1, 0, 1, 6)
                            frame28.ZIndex = 0
                            frame28.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                            frame28.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                            uiCorner10.CornerRadius = UDim.new(0, 4)
                            uiCorner10.Name = "ToggleCorner"
                            uiCorner10.Parent = frame28
                            textButton4.Name = "ToggleButton"
                            textButton4.Parent = frame24
                            textButton4.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            textButton4.BackgroundTransparency = 1
                            textButton4.AnchorPoint = Vector2.new(1, 0.5)
                            textButton4.Size = UDim2.new(0, 25, 0, 25)
                            textButton4.Position = UDim2.new(1, -5, 0.5, 3)
                            textButton4.Font = Enum.Font.SourceSans
                            textButton4.Text = ""
                            textButton4.TextColor3 = Color3.fromRGB(0, 0, 0)
                            textButton4.TextSize = 14
                            uiListLayout5.Name = "ToggleList"
                            uiListLayout5.Parent = frame23
                            uiListLayout5.HorizontalAlignment = Enum.HorizontalAlignment.Center
                            uiListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
                            uiListLayout5.VerticalAlignment = Enum.VerticalAlignment.Center
                            uiListLayout5.Padding = UDim.new(0, 5)

                            local function fn8(arg8)
                                local udim26 = arg8 and UDim2.new(0.8, 0, 0.8, 0) or UDim2.new(0, 0, 0, 0)
                                local udim27 = UDim2.new(0.5, 0, 0.5, 0)
                                local vector2 = Vector2.new(0.5, 0.5)
                                game.TweenService:Create(frame27, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {Size = udim26, Position = udim27, AnchorPoint = vector2}):Play()
                                fn7(arg8)
                            end

                            if fn7 then
                                fn8(default)
                            end

                            local function fn9()
                                local flag5

                                if default then
                                    flag5 = false
                                else
                                    flag5 = true
                                end

                                default = flag5
                                fn8(default)
                            end

                            textButton4.MouseButton1Down:Connect(function()
                                fn9()
                            end)

                            local functionCreate = {
                                SetStage = function(arg8)
                                    if arg8 ~= default then
                                        fn9()
                                    end
                                end,
                                GetText = function()
                                    return textLabel7
                                end,
                            }

                            arg6.FunctionCreate = functionCreate
                            arg6.Page_Name = text2
                            arg6.Section_Name = text4
                            tbl3:RegisterOption(arg6, callback)
                            return functionCreate
                        end,
                        CreateButton = function(arg6, arg7)
                            local title = arg6.Title
                            local icon = arg6.Icon
                            local fn7 = arg7 or function() end
                            local v9 = fn7
                            arg6.Page_Name = text2
                            arg6.Section_Name = text4
                            arg6.Button = true
                            local TweenService2 = game:GetService("TweenService")
                            local frame23 = Instance.new("Frame")
                            local frame24 = Instance.new("Frame")
                            local uiCorner10 = Instance.new("UICorner")
                            local frame25 = Instance.new("Frame")
                            local uiCorner11 = Instance.new("UICorner")
                            local textLabel6 = Instance.new("TextLabel")
                            local frame26 = Instance.new("Frame")
                            local uiCorner12 = Instance.new("UICorner")
                            local uiScale = Instance.new("UIScale")
                            local uiGradient6 = Instance.new("UIGradient")
                            local frame27 = Instance.new("Frame")
                            local uiCorner13 = Instance.new("UICorner")
                            local imageLabel9 = Instance.new("ImageLabel")
                            local textButton4 = Instance.new("TextButton")
                            local str2 = title or "Button"
                            frame23.Name = str2 .. "_Row"
                            frame23.Parent = frame20
                            frame23.BackgroundTransparency = 1
                            frame23.Size = UDim2.new(1, 0, 0, 40)
                            frame24.Name = "RowBG"
                            frame24.Parent = frame23
                            frame24.AnchorPoint = Vector2.new(0.5, 0.5)
                            frame24.Position = UDim2.new(0.5, 0, 0.5, 0)
                            frame24.Size = UDim2.new(1, -10, 1, 0)
                            local uiColor = getgenv().UIColor
                            local background2Color3 = uiColor and getgenv().UIColor["Background 2 Color"] or Color3.fromRGB(36, 36, 48)
                            frame24.BackgroundColor3 = background2Color3
                            local uiColor2 = getgenv().UIColor
                            local background1Transparency = uiColor2 and getgenv().UIColor["Background 1 Transparency"] or 0.2
                            frame24.BackgroundTransparency = background1Transparency
                            uiCorner10.CornerRadius = UDim.new(0, 10)
                            uiCorner10.Parent = frame24
                            frame25.Name = "RowHover"
                            frame25.Parent = frame24
                            local uiColor3 = getgenv().UIColor
                            local background3Color = uiColor3 and getgenv().UIColor["Background 3 Color"] or Color3.fromRGB(255, 255, 255)
                            frame25.BackgroundColor3 = background3Color
                            frame25.BackgroundTransparency = 1
                            frame25.Size = UDim2.new(1, 0, 1, 0)
                            frame25.ZIndex = frame24.ZIndex + 1
                            uiCorner11.CornerRadius = UDim.new(0, 10)
                            uiCorner11.Parent = frame25
                            textLabel6.Name = "TextColor"
                            textLabel6.Parent = frame24
                            textLabel6.BackgroundTransparency = 1
                            textLabel6.Position = UDim2.new(0, 12, 0, 0)
                            textLabel6.Size = UDim2.new(1, -110, 1, 0)
                            textLabel6.Font = Enum.Font.GothamBold
                            local text5 = title or "Button"
                            textLabel6.Text = text5
                            textLabel6.TextSize = 14
                            textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                            local uiColor4 = getgenv().UIColor
                            local guiTextColor = uiColor4 and getgenv().UIColor["GUI Text Color"] or Color3.fromRGB(225, 228, 233)
                            textLabel6.TextColor3 = guiTextColor

                            if getgenv().UIColor and getgenv().UIColor["Text Stroke Transparency"] then
                                textLabel6.TextStrokeTransparency = getgenv().UIColor["Text Stroke Transparency"]
                            end

                            frame26.Name = "ClickArea"
                            frame26.Parent = frame24
                            frame26.AnchorPoint = Vector2.new(1, 0.5)
                            frame26.Position = UDim2.new(1, -8, 0.5, 0)
                            frame26.Size = UDim2.new(0, 94, 0, 30)
                            frame26.BackgroundTransparency = 0
                            uiCorner12.CornerRadius = UDim.new(0, 12)
                            uiCorner12.Parent = frame26
                            uiGradient6.Parent = frame26
                            uiGradient6.Rotation = 90

                            uiGradient6.Color = ColorSequence.new({
                                ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 241, 196)),
                                ColorSequenceKeypoint.new(0.65, Color3.fromRGB(255, 219, 120)),
                                ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 198, 92)),
                            })

                            imageLabel9.Parent = frame26
                            imageLabel9.BackgroundTransparency = 1
                            imageLabel9.Image = "rbxassetid://5028857084"
                            imageLabel9.ImageTransparency = 0.55
                            imageLabel9.ScaleType = Enum.ScaleType.Slice
                            imageLabel9.SliceCenter = Rect.new(24, 24, 276, 276)
                            imageLabel9.Size = UDim2.new(1, 14, 1, 14)
                            imageLabel9.Position = UDim2.new(0.5, 0, 0.5, 0)
                            imageLabel9.AnchorPoint = Vector2.new(0.5, 0.5)
                            imageLabel9.ZIndex = frame26.ZIndex - 1
                            frame27.Parent = frame26
                            frame27.BackgroundTransparency = 0.85
                            frame27.Size = UDim2.new(1, -6, 0, 10)
                            frame27.Position = UDim2.new(0.5, 0, 0, 2)
                            frame27.AnchorPoint = Vector2.new(0.5, 0)
                            frame27.ZIndex = frame26.ZIndex + 1
                            frame27.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            uiCorner13.CornerRadius = UDim.new(0, 10)
                            uiCorner13.Parent = frame27
                            uiScale.Parent = frame26
                            uiScale.Scale = 1
                            textButton4.Name = "Button"
                            textButton4.Parent = frame26
                            textButton4.BackgroundTransparency = 1
                            textButton4.Size = UDim2.new(1, 0, 1, 0)
                            textButton4.AutoButtonColor = false
                            textButton4.Font = Enum.Font.GothamBold
                            local text6 = icon and (typeof(icon) == "string" and string.find(icon, "rbxassetid://") == 1) and "" or "Click"
                            textButton4.Text = text6
                            textButton4.TextSize = 13
                            textButton4.TextColor3 = Color3.fromRGB(25, 28, 36)
                            textButton4.TextXAlignment = Enum.TextXAlignment.Center

                            if icon then
                                if typeof(icon) == "string" and string.find(icon, "rbxassetid://") == 1 then
                                    local imageLabel10 = Instance.new("ImageLabel")
                                    imageLabel10.Parent = frame26
                                    imageLabel10.BackgroundTransparency = 1
                                    imageLabel10.Size = UDim2.new(0, 18, 0, 18)
                                    imageLabel10.Position = UDim2.new(0, 10, 0.5, -9)
                                    imageLabel10.Image = icon
                                    imageLabel10.ImageTransparency = 0
                                    imageLabel10.ScaleType = Enum.ScaleType.Fit
                                    textButton4.Text = "Click"
                                    textButton4.TextXAlignment = Enum.TextXAlignment.Left
                                    textButton4.Position = UDim2.new(0, 34, 0, 0)
                                    textButton4.Size = UDim2.new(1, -36, 1, 0)
                                else
                                    local textLabel7 = Instance.new("TextLabel")
                                    textLabel7.Parent = frame26
                                    textLabel7.BackgroundTransparency = 1
                                    textLabel7.Size = UDim2.new(0, 18, 1, 0)
                                    textLabel7.Position = UDim2.new(0, 10, 0, 0)
                                    textLabel7.Font = Enum.Font.GothamBold
                                    textLabel7.Text = tostring(icon)
                                    textLabel7.TextSize = 14
                                    textLabel7.TextColor3 = Color3.fromRGB(25, 28, 36)
                                    textButton4.Text = "Click"
                                    textButton4.TextXAlignment = Enum.TextXAlignment.Left
                                    textButton4.Position = UDim2.new(0, 34, 0, 0)
                                    textButton4.Size = UDim2.new(1, -36, 1, 0)
                                end
                            end

                            local tween = TweenService2:Create(uiScale, TweenInfo.new(0.12), {Scale = 1.05})
                            local tween2 = TweenService2:Create(uiScale, TweenInfo.new(0.12), {Scale = 1})
                            local tween3 = TweenService2:Create(frame25, TweenInfo.new(0.12), {BackgroundTransparency = 0.94})
                            local tween4 = TweenService2:Create(frame25, TweenInfo.new(0.12), {BackgroundTransparency = 1})
                            local tween5 = TweenService2:Create(uiGradient6, TweenInfo.new(0.15), {Rotation = 75})
                            local tween6 = TweenService2:Create(uiGradient6, TweenInfo.new(0.15), {Rotation = 90})

                            textButton4.MouseEnter:Connect(function()
                                tween:Play()
                                tween3:Play()
                                tween5:Play()
                            end)

                            textButton4.MouseLeave:Connect(function()
                                tween2:Play()
                                tween4:Play()
                                tween6:Play()
                            end)

                            textButton4.MouseButton1Down:Connect(function()
                                TweenService2:Create(uiScale, TweenInfo.new(0.08), {Scale = 0.96}):Play()
                                local frame28 = Instance.new("Frame")
                                frame28.Name = "Ripple"
                                frame28.Parent = frame26
                                frame28.AnchorPoint = Vector2.new(0.5, 0.5)
                                frame28.Position = UDim2.new(0.5, 0, 0.5, 0)
                                frame28.Size = UDim2.new(0, 0, 0, 0)
                                frame28.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                frame28.BackgroundTransparency = 0.6
                                frame28.ZIndex = frame26.ZIndex + 2
                                Instance.new("UICorner", frame28).CornerRadius = UDim.new(1, 0)
                                TweenService2:Create(frame28, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 1, 0), BackgroundTransparency = 1}):Play()

                                task.delay(0.36, function()
                                    frame28:Destroy()
                                end)

                                task.defer(v9)
                                task.wait(0.08)
                                tween:Play()
                            end)

                            arg6.FunctionCreate = {
                                GetText = function()
                                    return textLabel6
                                end,
                            }

                            tbl3:RegisterOption(arg6, v9)
                        end,
                        CreateLabel = function(arg6)
                            local v9 = tostring
                            local title = arg6.Title
                            local str2 = title or "Label"
                            local v10 = v9(str2)
                            local frame23 = Instance.new("Frame")
                            local frame24 = Instance.new("Frame")
                            local uiCorner10 = Instance.new("UICorner")
                            local uiStroke6 = Instance.new("UIStroke")
                            local textLabel6 = Instance.new("TextLabel")
                            frame23.Name = "LabelFrame"
                            frame23.Parent = frame20
                            frame23.BackgroundTransparency = 1
                            frame23.Size = UDim2.new(1, 0, 0, 0)
                            frame23.AutomaticSize = Enum.AutomaticSize.Y
                            frame24.Name = "LabelBG"
                            frame24.Parent = frame23
                            frame24.AnchorPoint = Vector2.new(0.5, 0)
                            frame24.Position = UDim2.new(0.5, 0, 0, 0)
                            frame24.Size = UDim2.new(1, -10, 0, -10)
                            local color = arg6.Color
                            local background2Color3 = color or getgenv().UIColor["Background 2 Color"]
                            frame24.BackgroundColor3 = background2Color3
                            frame24.AutomaticSize = Enum.AutomaticSize.Y
                            frame24.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]

                            if arg6.Invisible then
                                frame24.BackgroundTransparency = 1
                            end

                            uiCorner10.CornerRadius = UDim.new(0, 6)
                            uiCorner10.Parent = frame24
                            uiStroke6.Parent = frame24
                            uiStroke6.Thickness = 1
                            uiStroke6.Transparency = 0.7
                            uiStroke6.Color = getgenv().UIColor["Border Color"]
                            textLabel6.Name = "TextColor"
                            textLabel6.Parent = frame24
                            textLabel6.BackgroundTransparency = 1
                            textLabel6.Position = UDim2.new(0, 12, 0, 6)
                            textLabel6.Size = UDim2.new(1, -24, 1, -12)
                            textLabel6.Font = Enum.Font.GothamSemibold
                            textLabel6.Text = v10
                            textLabel6.TextSize = 14
                            textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                            textLabel6.AutomaticSize = Enum.AutomaticSize.Y
                            textLabel6.TextWrapped = true
                            local textColor = arg6.TextColor
                            local labelColor = textColor or getgenv().UIColor["Label Color"]
                            textLabel6.TextColor3 = labelColor
                            textLabel6.TextStrokeTransparency = getgenv().UIColor["Text Stroke Transparency"]

                            if arg6.Invisible then
                                textLabel6.TextTransparency = 1
                            end

                            local functionCreate = {
                                SetText = function(text5)
                                    textLabel6.Text = text5
                                end,
                                GetText = function()
                                    return textLabel6.Text
                                end,
                                SetColor = function(textColor3)
                                    textLabel6.TextColor3 = textColor3
                                end,
                                Highlight = function(arg7)
                                    local create = TweenService.Create
                                    local tweenInfo = TweenInfo.new(0.25)
                                    local tbl7 = {Transparency = 0.2}
                                    local pageSelectedColor = arg7 or getgenv().UIColor["Page Selected Color"]
                                    tbl7.Color = pageSelectedColor
                                    create(TweenService, uiStroke6, tweenInfo, tbl7):Play()
                                    TweenService:Create(frame24, TweenInfo.new(0.25), {BackgroundTransparency = 0.15}):Play()
                                end,
                            }

                            arg6.Page_Name = text2
                            arg6.Section_Name = text4
                            arg6.TextLabel = true
                            arg6.FunctionCreate = functionCreate
                            tbl3:RegisterOption(arg6, Callback)
                            return functionCreate
                        end,
                        CreateDropdown = function(arg6, arg7)
                            local str2 = tostring(arg6.Title)
                            local list = arg6.List
                            local search = arg6.Search
                            local flag5 = search or false
                            local selected = arg6.Selected
                            local flag6 = selected or false
                            local slider = arg6.Slider
                            local flag7 = slider or false
                            local sliderRelease = arg6.SliderRelease
                            local flag8 = sliderRelease or false
                            local default = arg6.Default
                            local priority = arg6.Priority
                            local flag9 = priority or false
                            local fn7 = arg7 or function() end
                            local indexTable = arg6.IndexTable
                            local sortPairs = arg6.SortPairs or pairs
                            local frame23 = Instance.new("Frame")
                            local frame24 = Instance.new("Frame")
                            local uiCorner10 = Instance.new("UICorner")
                            local frame25 = Instance.new("Frame")
                            local uiCorner11 = Instance.new("UICorner")
                            local imageLabel9 = Instance.new("ImageLabel")
                            local textButton4 = Instance.new("TextButton")
                            local frame26 = Instance.new("Frame")
                            local scrollingFrame3 = Instance.new("ScrollingFrame")
                            local frame27 = Instance.new("Frame")
                            local uiListLayout5 = Instance.new("UIListLayout")
                            local tbl7 = {}
                            local tbl8 = {}

                            if flag7 and type(default) == "table" then
                                for k, v9 in sortPairs(default) do
                                    tbl7[k] = v9
                                end
                            end

                            local textBox3

                            if flag5 then
                                textBox3 = Instance.new("TextBox")
                            else
                                textBox3 = Instance.new("TextLabel")
                            end

                            frame23.Name = str2 .. "DropdownFrame"
                            frame23.Parent = frame20
                            frame23.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            frame23.BackgroundTransparency = 1
                            frame23.Position = UDim2.new(0, 0, 0.473684222, 0)
                            frame23.Size = UDim2.new(1, 0, 0, 25)
                            frame24.Name = "Background1"
                            frame24.Parent = frame23
                            frame24.AnchorPoint = Vector2.new(0.5, 0.5)
                            frame24.Position = UDim2.new(0.5, 0, 0.5, 0)
                            frame24.Size = UDim2.new(1, -10, 1, 0)
                            frame24.ClipsDescendants = true
                            frame24.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                            frame24.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                            uiCorner10.CornerRadius = UDim.new(0, 4)
                            uiCorner10.Name = "Dropdowncorner"
                            uiCorner10.Parent = frame24
                            frame25.Name = "Background2"
                            frame25.Parent = frame24
                            frame25.Size = UDim2.new(1, 0, 0, 25)
                            frame25.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                            frame25.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                            uiCorner11.CornerRadius = UDim.new(0, 4)
                            uiCorner11.Parent = frame25
                            textBox3.Name = "TextColorPlaceholder"
                            textBox3.Parent = frame25
                            textBox3.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            textBox3.BackgroundTransparency = 1
                            textBox3.Position = UDim2.new(0, 10, 0, 0)
                            local udim26 = UDim2.new(1, -40, 1, 0)
                            textBox3.Size = udim26
                            textBox3.Font = Enum.Font.GothamBlack
                            textBox3.Text = ""
                            textBox3.TextSize = 14
                            textBox3.TextXAlignment = Enum.TextXAlignment.Left
                            textBox3.ClipsDescendants = true
                            local stringValue = Instance.new("StringValue", textBox3)
                            stringValue.Value = ""
                            local tbl9 = nil

                            if flag9 then
                                tbl9 = {}

                                if typeof(default) == "table" then
                                    for i, v9 in ipairs(default) do
                                        table.insert(tbl9, v9)
                                    end
                                end
                            end

                            if default and table.find(list, default) then
                                stringValue.Value = default
                            end

                            if flag6 then
                                if flag5 then
                                    textBox3.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                                    local v9 = tostring
                                    local str3 = default or ""
                                    textBox3.PlaceholderText = str2 .. ": " .. v9(str3)
                                else
                                    local v9 = tostring
                                    local str3 = default or ""
                                    textBox3.Text = str2 .. ": " .. v9(str3)
                                end
                            elseif flag5 then
                                textBox3.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                                local v9 = tostring
                                local str3 = default or ""
                                textBox3.PlaceholderText = str2 .. ": " .. v9(str3)
                            else
                                local v9 = tostring
                                local str3 = default or ""
                                textBox3.Text = str2 .. ": " .. v9(str3)
                            end

                            textBox3.TextColor3 = getgenv().UIColor["Text Color"]
                            imageLabel9.Name = "ImgDrop"
                            imageLabel9.Parent = frame25
                            imageLabel9.AnchorPoint = Vector2.new(1, 0.5)
                            imageLabel9.BackgroundTransparency = 1
                            imageLabel9.BorderColor3 = Color3.fromRGB(27, 42, 53)
                            imageLabel9.Position = UDim2.new(1, -6, 0.5, 0)
                            imageLabel9.Size = UDim2.new(0, 15, 0, 15)
                            imageLabel9.Image = "rbxassetid://6954383209"
                            imageLabel9.ImageColor3 = getgenv().UIColor["Dropdown Icon Color"]
                            textButton4.Name = "DropdownButton"
                            textButton4.Parent = frame25
                            textButton4.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            textButton4.BackgroundTransparency = 1
                            local udim27 = flag5 and UDim2.new(0, 30, 0, 30) or UDim2.new(1, 0, 1, 0)
                            textButton4.Size = udim27
                            local udim28 = flag5 and UDim2.new(1, -35, 0, 0) or UDim2.new(0, 0, 0, 0)
                            textButton4.Position = udim28
                            textButton4.Font = Enum.Font.GothamBold
                            textButton4.Text = ""
                            textButton4.TextColor3 = Color3.fromRGB(230, 230, 230)
                            textButton4.TextSize = 14
                            frame26.Name = "Dropdownlisttt"
                            frame26.Parent = frame24
                            frame26.BackgroundTransparency = 1
                            frame26.BorderSizePixel = 0
                            frame26.Position = UDim2.new(0, 0, 0, 25)
                            frame26.Size = UDim2.new(1, 0, 0, 25)
                            frame26.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            scrollingFrame3.Name = "DropdownScroll"
                            scrollingFrame3.Parent = frame26
                            scrollingFrame3.Active = true
                            scrollingFrame3.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            scrollingFrame3.BackgroundTransparency = 1
                            scrollingFrame3.BorderSizePixel = 0
                            scrollingFrame3.Size = UDim2.new(1, 0, 1, 0)
                            scrollingFrame3.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
                            scrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 0)
                            scrollingFrame3.ScrollBarThickness = 5
                            scrollingFrame3.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
                            scrollingFrame3.ScrollingEnabled = true
                            scrollingFrame3.VerticalScrollBarInset = Enum.ScrollBarInset.Always
                            frame27.Name = "ScrollContainer"
                            frame27.Parent = scrollingFrame3
                            frame27.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            frame27.BackgroundTransparency = 1
                            frame27.Position = UDim2.new(0, 5, 0, 5)
                            frame27.Size = UDim2.new(1, -15, 1, -5)
                            uiListLayout5.Name = "ScrollContainerList"
                            uiListLayout5.Parent = frame27
                            uiListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
                            uiListLayout5.Padding = UDim.new(0, 5)

                            uiListLayout5:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
                                scrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 10 + uiListLayout5.AbsoluteContentSize.Y + 5)
                            end)

                            local flag10 = false
                            local tbl10 = {}
                            local tbl11 = {}

                            local function fn8()
                                for k in sortPairs(tbl10) do
                                    tbl10[k] = nil
                                end

                                for k, child in sortPairs(frame27:GetChildren()) do
                                    if not child:IsA("UIListLayout") and not child:IsA("UIPadding") and not child:IsA("UIGridLayout") then
                                        child.Visible = false
                                    end
                                end

                                local v9 = string.lower(textBox3.Text)
                                textBox3.Text = v9
                            end

                            local function fn9()
                                for k, v9 in sortPairs(tbl11) do
                                    if string.find(v9, textBox3.Text) then
                                        table.insert(tbl10, v9)
                                    end
                                end

                                local v9, v10, v11 = sortPairs(frame27:GetChildren())
                                local v12 = v11
                                local v13 = v9
                                local v14 = v10

                                while true do
                                    local v15, v16 = v13(v14, v12)
                                    if v15 == nil then
                                        break
                                    end

                                    for k, v17 in sortPairs(tbl10) do
                                        if v17 == v16.Name then
                                            v16.Visible = true
                                        end
                                    end

                                    v12 = v15
                                end
                            end

                            local function fn10()
                                local v9 = next
                                local children, v10 = frame27:GetChildren()

                                for k, v11 in v9, children, v10 do
                                    if v11:IsA("Frame") then
                                        v11:Destroy()
                                    end
                                end
                            end

                            local tbl12 = list

                            local function fn11(arg8)
                                local v9 = arg8 or sortPairs
                                sortPairs = v9
                                fn10()
                                tbl11 = {}

                                for k, v10 in sortPairs(tbl12) do
                                    if flag6 then
                                        table.insert(tbl11, string.lower(k))
                                    elseif flag7 then
                                        table.insert(tbl11, string.lower(v10.Title))
                                    else
                                        table.insert(tbl11, string.lower(v10))
                                    end
                                end

                                if flag6 then
                                    local v10, v11, v12 = sortPairs(tbl12)
                                    local v13 = v12

                                    while true do
                                        local v14, v15 = v10(v11, v13)
                                        if v14 == nil then
                                            break
                                        end
                                        local v16 = v15
                                        v13 = v14
                                        local frame28 = Instance.new("Frame")
                                        local uiCorner12 = Instance.new("UICorner")
                                        local frame29 = Instance.new("Frame")
                                        local uiCorner13 = Instance.new("UICorner")
                                        local textLabel6 = Instance.new("TextLabel")
                                        local imageButton = Instance.new("ImageButton")
                                        local textButton5 = Instance.new("TextButton")
                                        frame28.Name = string.lower(v14)
                                        frame28.Parent = frame27
                                        frame28.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                                        frame28.BackgroundTransparency = 1
                                        frame28.BorderColor3 = Color3.fromRGB(27, 42, 53)
                                        frame28.LayoutOrder = 1
                                        frame28.Position = UDim2.new(0, 0, 0.208333328, 0)
                                        frame28.Size = UDim2.new(1, 0, 0, 25)
                                        uiCorner12.CornerRadius = UDim.new(0, 4)
                                        uiCorner12.Name = "SampleItemCorner"
                                        uiCorner12.Parent = frame28
                                        frame29.Name = "SampleItemBG"
                                        frame29.Parent = frame28
                                        frame29.AnchorPoint = Vector2.new(0.5, 0.5)
                                        local dropdownSelectedCheckColor = v16 and getgenv().UIColor["Dropdown Selected Check Color"] or Color3.fromRGB(255, 255, 255)
                                        frame29.BackgroundColor3 = dropdownSelectedCheckColor
                                        local backgroundTransparency2 = v16 and 0.5 or 1
                                        frame29.BackgroundTransparency = backgroundTransparency2
                                        frame29.BorderColor3 = Color3.fromRGB(27, 42, 53)
                                        frame29.Position = UDim2.new(0.5, 0, 0.5, 0)
                                        frame29.Size = UDim2.new(1, 0, 1, 0)
                                        uiCorner13.CornerRadius = UDim.new(0, 4)
                                        uiCorner13.Name = "SampleItemBGCorner"
                                        uiCorner13.Parent = frame29
                                        textLabel6.Name = "SampleItemTitle"
                                        textLabel6.Parent = frame29
                                        textLabel6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                        textLabel6.BackgroundTransparency = 1
                                        textLabel6.BorderColor3 = Color3.fromRGB(27, 42, 53)
                                        textLabel6.Position = UDim2.new(0, 10, 0, 0)
                                        textLabel6.Size = UDim2.new(1, -40, 0, 25)
                                        textLabel6.Font = Enum.Font.GothamBlack
                                        textLabel6.Text = v14
                                        textLabel6.TextColor3 = Color3.fromRGB(255, 255, 255)
                                        textLabel6.TextSize = 14
                                        textLabel6.TextStrokeTransparency = 0.5
                                        textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                                        imageButton.Name = "SampleItemCheck"
                                        imageButton.Parent = frame29
                                        imageButton.AnchorPoint = Vector2.new(1, 0.5)
                                        imageButton.BackgroundTransparency = 1
                                        imageButton.Position = UDim2.new(1, 0, 0.5, 0)
                                        imageButton.Size = UDim2.new(0, 25, 0, 25)
                                        imageButton.ZIndex = 2
                                        imageButton.Image = "rbxassetid://3926305904"
                                        imageButton.ImageColor3 = getgenv().UIColor["Dropdown Selected Check Color"]
                                        imageButton.ImageRectOffset = Vector2.new(312, 4)
                                        imageButton.ImageRectSize = Vector2.new(24, 24)
                                        local imageTransparency = v16 and 0 or 1
                                        imageButton.ImageTransparency = imageTransparency
                                        textButton5.Name = "SampleItemButton"
                                        textButton5.Parent = frame28
                                        textButton5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                        textButton5.BackgroundTransparency = 1
                                        textButton5.BorderColor3 = Color3.fromRGB(0, 0, 0)
                                        textButton5.BorderSizePixel = 0
                                        textButton5.Size = UDim2.new(1, 0, 1, 0)
                                        textButton5.Font = Enum.Font.SourceSans
                                        textButton5.TextColor3 = getgenv().UIColor["Text Color"]
                                        textButton5.TextSize = 14
                                        textButton5.TextTransparency = 1

                                        textButton5.MouseEnter:Connect(function()
                                            if v16 then
                                                return
                                            end
                                            TweenService:Create(frame29, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                                            TweenService:Create(frame29, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {BackgroundTransparency = 0.7}):Play()
                                        end)

                                        textButton5.MouseLeave:Connect(function()
                                            if v16 then
                                                return
                                            end
                                            TweenService:Create(frame29, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                                            TweenService:Create(frame29, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {BackgroundTransparency = 1}):Play()
                                        end)

                                        textButton5.MouseButton1Click:Connect(function()
                                            local flag11

                                            if v16 then
                                                flag11 = false
                                            else
                                                flag11 = true
                                            end

                                            v16 = flag11
                                            local create = TweenService.Create
                                            local tweenInfo = TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"])
                                            local tbl13 = {}
                                            local v17 = v16
                                            local imageTransparency2 = v17 and 0 or 1
                                            tbl13.ImageTransparency = imageTransparency2
                                            create(TweenService, imageButton, tweenInfo, tbl13):Play()
                                            local create2 = TweenService.Create
                                            local tweenInfo2 = TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"])
                                            local tbl14 = {}
                                            local v18 = v16
                                            local dropdownSelectedCheckColor2 = v18 and getgenv().UIColor["Dropdown Selected Check Color"] or Color3.fromRGB(255, 255, 255)
                                            tbl14.BackgroundColor3 = dropdownSelectedCheckColor2
                                            create2(TweenService, frame29, tweenInfo2, tbl14):Play()
                                            local create3 = TweenService.Create
                                            local tweenInfo3 = TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"])
                                            local tbl15 = {}
                                            local v19 = v16
                                            local backgroundTransparency3 = v19 and 0.5 or 1
                                            tbl15.BackgroundTransparency = backgroundTransparency3
                                            create3(TweenService, frame29, tweenInfo3, tbl15):Play()

                                            if fn7 then
                                                fn7(v14, v16)
                                                tbl12[v14] = v16
                                            end

                                            if flag5 then
                                                textBox3.PlaceholderText = str2 .. ": "
                                            else
                                                textBox3.Text = str2 .. ": "
                                            end
                                        end)
                                    end
                                elseif flag7 then
                                    for k, v10 in sortPairs(tbl12) do
                                        local str3 = tostring(v10.Title)
                                        local text5 = str3 or ""
                                        local num = tonumber(v10.Min)
                                        local n11 = num or 0
                                        local num2 = tonumber(v10.Max)
                                        local n12 = num2 or 100
                                        local precise = v10.Precise
                                        local flag11 = precise or false
                                        local num3 = tonumber(v10.Default)
                                        local v11 = num3 or n11
                                        local frame28 = Instance.new("Frame")
                                        local uiCorner12 = Instance.new("UICorner")
                                        local frame29 = Instance.new("Frame")
                                        local uiCorner13 = Instance.new("UICorner")
                                        local textLabel6 = Instance.new("TextLabel")
                                        local frame30 = Instance.new("Frame")
                                        local textButton5 = Instance.new("TextButton")
                                        local uiCorner14 = Instance.new("UICorner")
                                        local frame31 = Instance.new("Frame")
                                        local uiCorner15 = Instance.new("UICorner")
                                        local frame32 = Instance.new("Frame")
                                        local uiCorner16 = Instance.new("UICorner")
                                        local textBox4 = Instance.new("TextBox")
                                        frame28.Name = string.lower(v10.Title)
                                        frame28.Parent = frame27
                                        frame28.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                                        frame28.BackgroundTransparency = 1
                                        frame28.Position = UDim2.new(0, 0, 0.208333328, 0)
                                        frame28.Size = UDim2.new(1, 0, 0, 50)
                                        uiCorner12.CornerRadius = UDim.new(0, 4)
                                        uiCorner12.Name = "SliderCorner"
                                        uiCorner12.Parent = frame28
                                        frame29.Name = "Background1"
                                        frame29.Parent = frame28
                                        frame29.AnchorPoint = Vector2.new(0.5, 0.5)
                                        frame29.Position = UDim2.new(0.5, 0, 0.5, 0)
                                        frame29.Size = UDim2.new(1, -10, 1, 0)
                                        frame29.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                                        frame29.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                                        uiCorner13.CornerRadius = UDim.new(0, 4)
                                        uiCorner13.Name = "SliderBGCorner"
                                        uiCorner13.Parent = frame29
                                        textLabel6.Name = "TextColor"
                                        textLabel6.Parent = frame29
                                        textLabel6.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                                        textLabel6.BackgroundTransparency = 1
                                        textLabel6.Position = UDim2.new(0, 10, 0, 0)
                                        textLabel6.Size = UDim2.new(1, -10, 0, 25)
                                        textLabel6.Font = Enum.Font.GothamBlack
                                        textLabel6.Text = text5
                                        textLabel6.TextSize = 14
                                        textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                                        textLabel6.TextColor3 = getgenv().UIColor["Text Color"]
                                        frame30.Name = "SliderBar"
                                        frame30.Parent = frame28
                                        frame30.AnchorPoint = Vector2.new(0.5, 0.5)
                                        frame30.Position = UDim2.new(0.5, 0, 0.5, 14)
                                        frame30.Size = UDim2.new(1, -20, 0, 6)
                                        frame30.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                                        textButton5.Name = "SliderButton "
                                        textButton5.Parent = frame30
                                        textButton5.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                                        textButton5.BackgroundTransparency = 1
                                        textButton5.Size = UDim2.new(1, 0, 1, 0)
                                        textButton5.Font = Enum.Font.GothamBold
                                        textButton5.Text = ""
                                        textButton5.TextColor3 = Color3.fromRGB(230, 230, 230)
                                        textButton5.TextSize = 14
                                        uiCorner14.CornerRadius = UDim.new(1, 0)
                                        uiCorner14.Name = "SliderBarCorner"
                                        uiCorner14.Parent = frame30
                                        frame31.Name = "Bar"
                                        frame31.BorderSizePixel = 0
                                        frame31.Parent = frame30
                                        frame31.Size = UDim2.new(0, 0, 1, 0)
                                        frame31.BackgroundColor3 = getgenv().UIColor["Slider Line Color"]
                                        uiCorner15.CornerRadius = UDim.new(1, 0)
                                        uiCorner15.Name = "BarCorner"
                                        uiCorner15.Parent = frame31
                                        frame32.Name = "Background2"
                                        frame32.Parent = frame28
                                        frame32.AnchorPoint = Vector2.new(1, 0)
                                        frame32.Position = UDim2.new(1, -10, 0, 5)
                                        frame32.Size = UDim2.new(0, 150, 0, 25)
                                        frame32.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                                        uiCorner16.CornerRadius = UDim.new(0, 4)
                                        uiCorner16.Name = "Sliderbox"
                                        uiCorner16.Parent = frame32
                                        textBox4.Name = "TextColor"
                                        textBox4.Parent = frame32
                                        textBox4.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                                        textBox4.BackgroundTransparency = 1
                                        textBox4.Size = UDim2.new(1, 0, 1, 0)
                                        textBox4.Font = Enum.Font.GothamBold
                                        textBox4.Text = ""
                                        textBox4.TextSize = 14
                                        textBox4.TextColor3 = getgenv().UIColor["Text Color"]

                                        textButton5.MouseEnter:Connect(function()
                                            TweenService:Create(frame31, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {
                                                BackgroundColor3 = getgenv().UIColor["Slider Highlight Color"],
                                            }):Play()
                                        end)

                                        textButton5.MouseLeave:Connect(function()
                                            TweenService:Create(frame31, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {BackgroundColor3 = getgenv().UIColor["Slider Line Color"]}):Play()
                                        end)

                                        local function fn12(default2)
                                            textBox4.Text = tostring(default2)
                                            tbl12[k].Default = default2
                                            tbl7[k] = default2
                                        end

                                        if v11 then
                                            if v11 <= n11 then
                                                v11 = n11
                                            elseif n12 <= v11 then
                                                v11 = n12
                                            end

                                            frame31.Size = UDim2.new(1 - (n12 - v11) / (n12 - n11), 0, 0, 6)
                                            fn12(v11)
                                        end

                                        if flag8 then
                                            local flag12 = false
                                            local v12 = nil
                                            local n13 = 0

                                            textButton5.InputBegan:Connect(function(input)
                                                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                                                    n13 = tick()

                                                    input.Changed:Connect(function()
                                                        if input.UserInputState == Enum.UserInputState.End then
                                                            flag12 = false
                                                            n13 = 0
                                                        end
                                                    end)
                                                end
                                            end)

                                            textButton5.InputEnded:Connect(function(input)
                                                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                                                    flag12 = false
                                                    n13 = 0
                                                end
                                            end)

                                            textButton5.InputChanged:Connect(function(input)
                                                if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                                                    v12 = input
                                                end
                                            end)

                                            RunService.RenderStepped:Connect(function()
                                                if n13 > 0 and tick() - n13 >= 0 and not flag12 then
                                                    flag12 = true
                                                end

                                                if flag12 and v12 then
                                                    local n14 = (n12 - n11) / 365 * frame31.AbsoluteSize.X + n11
                                                    local n15 = flag11 and tonumber(string.format("%.1f", n14)) or math.floor(n14)
                                                    fn12(n15)
                                                    frame31.Size = UDim2.new(0, math.clamp(v12.Position.X - frame31.AbsolutePosition.X, 0, 365), 0, 6)

                                                    fn7({
                                                        Type = "SliderDropdown",
                                                        KeyName = k,
                                                        Value = n15,
                                                        State = table.clone(tbl7),
                                                    })
                                                end
                                            end)
                                        else
                                            local flag12 = false
                                            local v12 = nil
                                            local n13 = 0

                                            textButton5.InputBegan:Connect(function(input)
                                                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                                                    n13 = tick()

                                                    input.Changed:Connect(function()
                                                        if input.UserInputState == Enum.UserInputState.End then
                                                            flag12 = false
                                                            n13 = 0
                                                        end
                                                    end)
                                                end
                                            end)

                                            textButton5.InputEnded:Connect(function(input)
                                                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                                                    flag12 = false
                                                    n13 = 0
                                                end
                                            end)

                                            textButton5.InputChanged:Connect(function(input)
                                                if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                                                    v12 = input
                                                end
                                            end)

                                            RunService.RenderStepped:Connect(function()
                                                if n13 > 0 and tick() - n13 >= 0 and not flag12 then
                                                    flag12 = true
                                                end

                                                if flag12 and v12 then
                                                    local n14 = (n12 - n11) / 365 * frame31.AbsoluteSize.X + n11
                                                    local n15 = flag11 and tonumber(string.format("%.1f", n14)) or math.floor(n14)
                                                    fn12(n15)
                                                    frame31.Size = UDim2.new(0, math.clamp(v12.Position.X - frame31.AbsolutePosition.X, 0, 365), 0, 6)

                                                    fn7({
                                                        Type = "SliderDropdown",
                                                        KeyName = k,
                                                        Value = n15,
                                                        State = table.clone(tbl7),
                                                    })
                                                end
                                            end)
                                        end

                                        local function fn13(arg9, arg10)
                                            local num4 = tonumber(arg9)
                                            local v12 = num4
                                            if not num4 then
                                                return
                                            end

                                            if num4 <= n11 then
                                                v12 = n11
                                            elseif n12 <= num4 then
                                                v12 = n12
                                            end

                                            frame31.Size = UDim2.new(1 - (n12 - v12) / (n12 - n11), 0, 0, 6)
                                            fn12(v12)

                                            if arg10 then
                                                fn7({
                                                    Type = "SliderDropdown",
                                                    KeyName = k,
                                                    Value = v12,
                                                    State = table.clone(tbl7),
                                                })
                                            end
                                        end

                                        textBox4.FocusLost:Connect(function()
                                            fn13(textBox4.Text, true)
                                        end)

                                        tbl8[k] = {Bar = frame31, TextBox = textBox4, Min = n11, Max = n12}
                                    end
                                else
                                    local function fn12(arg9)
                                        local flag11 = flag9 and table.find(tbl9, arg9) ~= nil
                                        return flag11
                                    end

                                    local function fn13(arg9)
                                        local flag11

                                        if flag9 then
                                            flag11 = false
                                        else
                                            flag11 = true
                                        end

                                        if flag11 then
                                            flag11 = stringValue.Value == arg9
                                        end

                                        return flag11
                                    end

                                    for k, v10 in sortPairs(tbl12) do
                                        if typeof(v10) == "string" then
                                            local frame28 = Instance.new("Frame")
                                            local uiCorner12 = Instance.new("UICorner")
                                            local frame29 = Instance.new("Frame")
                                            local uiCorner13 = Instance.new("UICorner")
                                            local textLabel6 = Instance.new("TextLabel")
                                            local imageButton = Instance.new("ImageButton")
                                            local textButton5 = Instance.new("TextButton")
                                            frame28.Name = string.lower(v10)
                                            frame28.Parent = frame27
                                            frame28.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                                            frame28.BackgroundTransparency = 1
                                            frame28.BorderColor3 = Color3.fromRGB(27, 42, 53)
                                            frame28.LayoutOrder = 1
                                            frame28.Position = UDim2.new(0, 0, 0.208333328, 0)
                                            frame28.Size = UDim2.new(1, 0, 0, 25)
                                            uiCorner12.CornerRadius = UDim.new(0, 4)
                                            uiCorner12.Name = "SampleItemCorner"
                                            uiCorner12.Parent = frame28
                                            frame29.Name = "SampleItemBG"
                                            frame29.Parent = frame28
                                            frame29.AnchorPoint = Vector2.new(0.5, 0.5)
                                            frame29.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                            frame29.BackgroundTransparency = 1
                                            frame29.BorderColor3 = Color3.fromRGB(27, 42, 53)
                                            frame29.Position = UDim2.new(0.5, 0, 0.5, 0)
                                            frame29.Size = UDim2.new(1, 0, 1, 0)
                                            uiCorner13.CornerRadius = UDim.new(0, 4)
                                            uiCorner13.Name = "SampleItemBGCorner"
                                            uiCorner13.Parent = frame29
                                            local v11 = nil

                                            if flag9 then
                                                local textLabel7 = Instance.new("TextLabel")
                                                v11 = textLabel7
                                                textLabel7.Name = "OrderLabel"
                                                textLabel7.Parent = frame29
                                                textLabel7.AnchorPoint = Vector2.new(0, 0.5)
                                                textLabel7.Position = UDim2.new(0, 6, 0.5, 0)
                                                textLabel7.Size = UDim2.new(0, 22, 0, 22)
                                                textLabel7.BackgroundTransparency = 1
                                                textLabel7.Font = Enum.Font.GothamBold
                                                textLabel7.TextSize = 12
                                                textLabel7.TextColor3 = Color3.new(1, 1, 1)
                                                textLabel7.TextXAlignment = Enum.TextXAlignment.Center
                                                textLabel7.Text = ""
                                            end

                                            if flag9 then
                                                local v12 = tbl9
                                                local tbl13 = v12 or {}
                                                tbl9 = tbl13
                                                local v13 = table.find(tbl9, v10)

                                                if v13 then
                                                    v11.Text = tostring(v13)
                                                    frame29.BackgroundTransparency = 0.4
                                                    frame29.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Check Color"]
                                                    imageButton.ImageTransparency = 0
                                                    frame28.LayoutOrder = v13
                                                else
                                                    v11.Text = ""

                                                    if stringValue.Value ~= v10 then
                                                        frame29.BackgroundTransparency = 1
                                                    end

                                                    imageButton.ImageTransparency = 1
                                                    frame28.LayoutOrder = 999
                                                end
                                            end

                                            textLabel6.Name = "SampleItemTitle"
                                            textLabel6.Parent = frame29
                                            textLabel6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                            textLabel6.BackgroundTransparency = 1
                                            textLabel6.BorderColor3 = Color3.fromRGB(27, 42, 53)
                                            textLabel6.Position = UDim2.new(0, 10, 0, 0)
                                            textLabel6.Size = UDim2.new(1, -40, 0, 25)
                                            textLabel6.Font = Enum.Font.GothamBlack
                                            textLabel6.Text = v10
                                            textLabel6.TextColor3 = Color3.fromRGB(255, 255, 255)
                                            textLabel6.TextSize = 14
                                            textLabel6.TextStrokeTransparency = 0.5
                                            textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                                            imageButton.Name = "SampleItemCheck"
                                            imageButton.Parent = frame29
                                            imageButton.AnchorPoint = Vector2.new(1, 0.5)
                                            imageButton.BackgroundTransparency = 1
                                            imageButton.Position = UDim2.new(1, 0, 0.5, 0)
                                            imageButton.Size = UDim2.new(0, 25, 0, 25)
                                            imageButton.ZIndex = 2
                                            imageButton.Image = "rbxassetid://3926305904"
                                            imageButton.ImageColor3 = getgenv().UIColor["Dropdown Selected Check Color"]
                                            imageButton.ImageRectOffset = Vector2.new(312, 4)
                                            imageButton.ImageRectSize = Vector2.new(24, 24)
                                            imageButton.ImageTransparency = 1
                                            textButton5.Name = "SampleItemButton"
                                            textButton5.Parent = frame28
                                            textButton5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                                            textButton5.BackgroundTransparency = 1
                                            textButton5.BorderColor3 = Color3.fromRGB(0, 0, 0)
                                            textButton5.BorderSizePixel = 0
                                            textButton5.Size = UDim2.new(1, 0, 1, 0)
                                            textButton5.Font = Enum.Font.SourceSans
                                            textButton5.TextColor3 = getgenv().UIColor["Text Color"]
                                            textButton5.TextSize = 14
                                            textButton5.TextTransparency = 1

                                            textButton5.MouseEnter:Connect(function()
                                                if fn12(v10) or fn13(v10) then
                                                    return
                                                end
                                                TweenService:Create(frame29, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                                                TweenService:Create(frame29, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {BackgroundTransparency = 0.7}):Play()
                                            end)

                                            textButton5.MouseLeave:Connect(function()
                                                if fn12(v10) or fn13(v10) then
                                                    return
                                                end
                                                TweenService:Create(frame29, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                                                TweenService:Create(frame29, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {BackgroundTransparency = 1}):Play()
                                            end)

                                            textButton5.MouseButton1Click:Connect(function()
                                                if not flag9 then
                                                    if flag5 then
                                                        local str3 = str2 .. ": " .. v10
                                                        local placeholderText = str3 or ""
                                                        textBox3.PlaceholderText = placeholderText
                                                        stringValue.Value = v10
                                                    else
                                                        local str3 = str2 .. ": " .. v10
                                                        local text5 = str3 or ""
                                                        textBox3.Text = text5
                                                        stringValue.Value = v10
                                                    end

                                                    TweenService:Create(frame29, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {
                                                        BackgroundColor3 = getgenv().UIColor["Dropdown Selected Check Color"],
                                                    }):Play()

                                                    TweenService:Create(frame29, TweenInfo.new(getgenv().UIColor["Tween Animation 1 Speed"]), {BackgroundTransparency = 0.5}):Play()

                                                    if fn7 then
                                                        fn7(v10)
                                                    end

                                                    if flag5 then
                                                        textBox3.Text = ""
                                                    end;

                                                    (nil)()
                                                    return
                                                end

                                                local v12 = table.find(tbl9, v10)

                                                if v12 then
                                                    table.remove(tbl9, v12)
                                                else
                                                    table.insert(tbl9, v10)
                                                end

                                                if flag5 then
                                                    local placeholderText = str2 .. ": " .. table.concat(tbl9, " > ")
                                                    textBox3.PlaceholderText = placeholderText
                                                else
                                                    local text5 = str2 .. ": " .. table.concat(tbl9, " > ")
                                                    textBox3.Text = text5
                                                end;

                                                (nil)()

                                                if fn7 then
                                                    fn7(tbl9)
                                                end
                                            end)

                                            if stringValue.Value == v10 then
                                                frame29.BackgroundTransparency = 0.5
                                                frame29.BackgroundColor3 = getgenv().UIColor["Dropdown Selected Check Color"]
                                                frame28.LayoutOrder = 0
                                            end
                                        end
                                    end
                                end
                            end

                            if flag5 then
                                textBox3.Changed:Connect(function()
                                    fn8()
                                    fn9()
                                end)
                            end

                            if flag9 and typeof(default) == "table" then
                                local str3 = #default > 0 and table.concat(default, " > ") or "None"

                                if flag5 then
                                    textBox3.PlaceholderText = str2 .. ": " .. str3
                                else
                                    textBox3.Text = str2 .. ": " .. str3
                                end
                            elseif typeof(default) == "table" then
                                if flag7 then
                                    textBox3.Text = ""
                                    textBox3.PlaceholderText = str2 .. ": "
                                elseif flag6 then
                                    if flag5 then
                                        textBox3.PlaceholderText = str2 .. ": "
                                    else
                                        textBox3.Text = str2 .. ": "
                                    end
                                end
                            else
                                fn7(default)

                                if flag5 then
                                    local v9 = tostring
                                    local str3 = default or ""
                                    textBox3.PlaceholderText = str2 .. ": " .. v9(str3)
                                else
                                    local v9 = tostring
                                    local str3 = default or ""
                                    local text5 = str2 .. ": " .. v9(str3)
                                    textBox3.Text = text5
                                end
                            end

                            textButton4.MouseButton1Click:Connect(function()
                                fn11()
                                local flag11

                                if flag10 then
                                    flag11 = false
                                else
                                    flag11 = true
                                end

                                flag10 = flag11
                                local v9 = flag10
                                local udim29 = v9 and UDim2.new(1, 0, 0, 170) or UDim2.new(1, 0, 0, 0)
                                local v10 = flag10
                                local udim210 = v10 and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 25)
                                local v11 = flag10
                                local n11 = v11 and 90 or 0
                                TweenService:Create(frame26, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = udim29}):Play()
                                TweenService:Create(frame23, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = udim210}):Play()
                                TweenService:Create(imageLabel9, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Rotation = n11}):Play()
                            end)

                            local functionCreate = {
                                rf = fn11,
                                ClearText = function(arg8, arg9)
                                    if flag9 and typeof(arg9) == "table" then
                                        local str3 = #arg9 > 0 and table.concat(arg9, " > ") or "None"

                                        if flag5 then
                                            textBox3.PlaceholderText = str2 .. ": " .. str3
                                        else
                                            textBox3.Text = str2 .. ": " .. str3
                                        end

                                        return
                                    end

                                    if flag6 then
                                        local v9 = tostring
                                        local str3 = arg9 or ""
                                        local text5 = str2 .. ": " .. v9(str3)
                                        textBox3.Text = text5
                                    elseif flag5 then
                                        local v9 = tostring
                                        local str3 = arg9 or ""
                                        local placeholderText = str2 .. ": " .. v9(str3)
                                        textBox3.PlaceholderText = placeholderText
                                    else
                                        local v9 = tostring
                                        local str3 = arg9 or ""
                                        local text5 = str2 .. ": " .. v9(str3)
                                        textBox3.Text = text5
                                    end
                                end,
                                SetValue = function(value)
                                    if flag9 and typeof(value) == "table" then
                                        tbl9 = table.clone(value)
                                        local str3 = #tbl9 > 0 and table.concat(tbl9, " > ") or "None"

                                        if flag5 then
                                            textBox3.PlaceholderText = str2 .. ": " .. str3
                                        else
                                            textBox3.Text = str2 .. ": " .. str3
                                        end

                                        fn11()
                                        return
                                    end

                                    if typeof(value) == "string" then
                                        if table.find(tbl12, value) then
                                            stringValue.Value = value
                                        else
                                            if tbl12[value] == nil then
                                                warn("[Dropdown:SetValue] Value not found:", value)
                                                return
                                            end
                                            stringValue.Value = value
                                        end

                                        if flag5 then
                                            textBox3.PlaceholderText = str2 .. ": " .. value
                                        else
                                            textBox3.Text = str2 .. ": " .. value
                                        end

                                        fn11()

                                        if fn7 then
                                            fn7(value)
                                        end
                                    end
                                end,
                                SetSubValue = function(arg8, arg9, arg10)
                                    if not tbl8 then
                                        return
                                    end
                                    local v9 = tbl8[arg9]
                                    if not v9 then
                                        return
                                    end
                                    local num = tonumber(arg10)
                                    if not num then
                                        return
                                    end
                                    local min = v9.Min
                                    local n11 = min or 0
                                    local max = v9.Max
                                    local n12 = max or 100
                                    local default2 = math.clamp(num, n11, n12)
                                    tbl7[arg9] = default2
                                    tbl12[arg9].Default = default2
                                    v9.Bar.Size = UDim2.new((default2 - n11) / (n12 - n11), 0, 0, 6)
                                    v9.TextBox.Text = tostring(default2)

                                    if fn7 then
                                        fn7({
                                            Type = "SliderDropdown",
                                            KeyName = arg9,
                                            Value = default2,
                                            State = table.clone(tbl7),
                                        })
                                    end
                                end,
                                GetNewList = function(arg8, arg9)
                                    stringValue.Value = ""
                                    flag10 = false
                                    local udim29 = UDim2.new(1, 0, 0, 0)
                                    local v9 = flag10
                                    local udim210 = v9 and UDim2.new(1, 0, 0, 200) or UDim2.new(1, 0, 0, 25)
                                    local v10 = flag10
                                    local n11 = v10 and 90 or 0
                                    TweenService:Create(frame26, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = udim29}):Play()
                                    TweenService:Create(frame23, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Size = udim210}):Play()
                                    TweenService:Create(imageLabel9, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {Rotation = n11}):Play()
                                    tbl12 = {}
                                    tbl12 = arg9
                                    fn11()

                                    if flag5 then
                                        textBox3.PlaceholderText = str2 .. ": "
                                    else
                                        textBox3.Text = str2 .. ": "
                                    end
                                end,
                            }

                            arg6.FunctionCreate = functionCreate
                            arg6.Page_Name = text2
                            arg6.Section_Name = text4
                            tbl3:RegisterOption(arg6, callback)
                            return functionCreate
                        end,
                        CreateBind = function(arg6, arg7)
                            local str2 = tostring(arg6.Title)
                            local text5 = str2 or ""
                            local key = arg6.Key
                            local default = arg6.Default or arg6.Key
                            local str3 = tostring(default):match("UserInputType") and "UserInputType" or "KeyCode"
                            local fn7 = arg7 or function() end
                            local str4 = tostring(key):gsub("Enum.UserInputType.", "")
                            tostring(str4):gsub("Enum.KeyCode.", "")
                            local frame23 = Instance.new("Frame")
                            local uiCorner10 = Instance.new("UICorner")
                            local frame24 = Instance.new("Frame")
                            local uiCorner11 = Instance.new("UICorner")
                            local textLabel6 = Instance.new("TextLabel")
                            Instance.new("TextButton")
                            local frame25 = Instance.new("Frame")
                            local uiCorner12 = Instance.new("UICorner")
                            local textButton4 = Instance.new("TextButton")
                            frame23.Name = text5 .. "bguvl"
                            frame23.Parent = frame20
                            frame23.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                            frame23.BackgroundTransparency = 1
                            frame23.Position = UDim2.new(0, 0, 0.208333328, 0)
                            frame23.Size = UDim2.new(1, 0, 0, 35)
                            uiCorner10.CornerRadius = UDim.new(0, 4)
                            uiCorner10.Name = "BindCorner"
                            uiCorner10.Parent = frame23
                            frame24.Name = "Background1"
                            frame24.Parent = frame23
                            frame24.AnchorPoint = Vector2.new(0.5, 0.5)
                            frame24.Position = UDim2.new(0.5, 0, 0.5, 0)
                            frame24.Size = UDim2.new(1, -10, 1, 0)
                            frame24.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                            frame24.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                            uiCorner11.CornerRadius = UDim.new(0, 4)
                            uiCorner11.Name = "ButtonCorner"
                            uiCorner11.Parent = frame24
                            textLabel6.Name = "TextColor"
                            textLabel6.Parent = frame24
                            textLabel6.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            textLabel6.BackgroundTransparency = 1
                            textLabel6.Position = UDim2.new(0, 10, 0, 0)
                            textLabel6.Size = UDim2.new(1, -10, 1, 0)
                            textLabel6.Font = Enum.Font.GothamBlack
                            textLabel6.Text = text5
                            textLabel6.TextSize = 14
                            textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                            textLabel6.TextColor3 = getgenv().UIColor["Text Color"]
                            frame25.Name = "Background2"
                            frame25.Parent = frame24
                            frame25.AnchorPoint = Vector2.new(1, 0.5)
                            frame25.Position = UDim2.new(1, -5, 0.5, 0)
                            frame25.Size = UDim2.new(0, 150, 0, 25)
                            frame25.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                            uiCorner12.CornerRadius = UDim.new(0, 4)
                            uiCorner12.Name = "ButtonCorner"
                            uiCorner12.Parent = frame25
                            textButton4.Name = "Bindkey"
                            textButton4.Parent = frame25
                            textButton4.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            textButton4.BackgroundTransparency = 1
                            textButton4.Size = UDim2.new(1, 0, 1, 0)
                            textButton4.Font = Enum.Font.GothamBold
                            textButton4.Text = tostring(default):gsub("Enum.KeyCode.", "")
                            textButton4.TextSize = 14
                            textButton4.TextColor3 = getgenv().UIColor["Text Color"]
                            local tbl7 = {}
                            tbl7[Enum.UserInputType.MouseButton1] = "Mouse1"
                            tbl7[Enum.UserInputType.MouseButton2] = "Mouse2"
                            tbl7[Enum.UserInputType.MouseButton3] = "Mouse3"

                            textButton4.MouseButton1Click:Connect(function()
                                local connection = nil
                                textButton4.Text = "..."

                                connection = game:GetService("UserInputService").InputBegan:Connect(function(input)
                                    if tbl7[input.UserInputType] then
                                        textButton4.Text = tbl7[input.UserInputType]

                                        spawn(function()
                                            wait(0.1)
                                            default = input.UserInputType
                                            str3 = "UserInputType"
                                        end)
                                    elseif input.KeyCode ~= Enum.KeyCode.Unknown then
                                        textButton4.Text = tostring(input.KeyCode):gsub("Enum.KeyCode.", "")

                                        spawn(function()
                                            wait(0.1)
                                            default = input.KeyCode
                                            str3 = "KeyCode"
                                        end)
                                    end

                                    connection:Disconnect()
                                end)
                            end)

                            game:GetService("UserInputService").InputBegan:Connect(function(input)
                                if default == input.UserInputType or default == input.KeyCode then
                                    fn7(default)
                                end
                            end)
                        end,
                        CreateBox = function(arg6, arg7)
                            local str2 = tostring(arg6.Title)
                            local text5 = str2 or ""
                            local str3 = tostring(arg6.Placeholder)
                            local placeholderText = str3 or ""
                            local default = arg6.Default
                            local text6 = default or false
                            local number = arg6.Number
                            local flag5 = number or false
                            local fn7 = arg7 or function() end
                            local frame23 = Instance.new("Frame")
                            local uiCorner10 = Instance.new("UICorner")
                            local frame24 = Instance.new("Frame")
                            local uiCorner11 = Instance.new("UICorner")
                            local textLabel6 = Instance.new("TextLabel")
                            local frame25 = Instance.new("Frame")
                            local uiCorner12 = Instance.new("UICorner")
                            local textBox3 = Instance.new("TextBox")
                            local frame26 = Instance.new("Frame")
                            local uiCorner13 = Instance.new("UICorner")
                            frame23.Name = "BoxFrame"
                            frame23.Parent = frame20
                            frame23.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                            frame23.BackgroundTransparency = 1
                            frame23.Position = UDim2.new(0, 0, 0.208333328, 0)
                            frame23.Size = UDim2.new(1, 0, 0, 60)
                            uiCorner10.CornerRadius = UDim.new(0, 4)
                            uiCorner10.Name = "BoxCorner"
                            uiCorner10.Parent = frame23
                            frame24.Name = "Background1"
                            frame24.Parent = frame23
                            frame24.AnchorPoint = Vector2.new(0.5, 0.5)
                            frame24.Position = UDim2.new(0.5, 0, 0.5, 0)
                            frame24.Size = UDim2.new(1, -10, 1, 0)
                            frame24.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                            frame24.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                            uiCorner11.CornerRadius = UDim.new(0, 4)
                            uiCorner11.Name = "ButtonCorner"
                            uiCorner11.Parent = frame24
                            textLabel6.Name = "TextColor"
                            textLabel6.Parent = frame24
                            textLabel6.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            textLabel6.BackgroundTransparency = 1
                            textLabel6.Position = UDim2.new(0, 10, 0, 0)
                            textLabel6.Size = UDim2.new(1, -10, 0.5, 0)
                            textLabel6.Font = Enum.Font.GothamBlack
                            textLabel6.Text = text5
                            textLabel6.TextSize = 14
                            textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                            textLabel6.TextColor3 = getgenv().UIColor["Text Color"]
                            frame25.Name = "Background2"
                            frame25.Parent = frame24
                            frame25.AnchorPoint = Vector2.new(1, 0.5)
                            frame25.ClipsDescendants = true
                            frame25.Position = UDim2.new(1, -5, 0, 40)
                            frame25.Size = UDim2.new(1, -10, 0, 25)
                            frame25.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                            uiCorner12.CornerRadius = UDim.new(0, 4)
                            uiCorner12.Name = "ButtonCorner"
                            uiCorner12.Parent = frame25
                            textBox3.Name = "TextColorPlaceholder"
                            textBox3.Parent = frame25
                            textBox3.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            textBox3.BackgroundTransparency = 1
                            textBox3.Position = UDim2.new(0, 5, 0, 0)
                            textBox3.Size = UDim2.new(1, -5, 1, 0)
                            textBox3.Font = Enum.Font.GothamBold
                            textBox3.PlaceholderText = placeholderText
                            textBox3.Text = ""
                            textBox3.TextSize = 14
                            textBox3.TextXAlignment = Enum.TextXAlignment.Left
                            textBox3.PlaceholderColor3 = getgenv().UIColor["Placeholder Text Color"]
                            textBox3.TextColor3 = getgenv().UIColor["Text Color"]
                            frame26.Name = "TextNSBoxLineeeee"
                            frame26.Parent = frame25
                            frame26.BackgroundTransparency = 1
                            frame26.Position = UDim2.new(0, 0, 1, -2)
                            frame26.Size = UDim2.new(1, 0, 0, 6)
                            frame26.BackgroundColor3 = getgenv().UIColor["Box Highlight Color"]
                            uiCorner13.CornerRadius = UDim.new(1, 0)
                            uiCorner13.Parent = frame26

                            textBox3.Focused:Connect(function()
                                TweenService:Create(frame26, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {BackgroundTransparency = 0}):Play()
                            end)

                            if flag5 then
                                textBox3:GetPropertyChangedSignal("Text"):Connect(function()
                                    if not tonumber(textBox3.Text) then
                                        textBox3.PlaceholderText = placeholderText
                                        textBox3.Text = ""
                                    end
                                end)
                            end

                            textBox3.FocusLost:Connect(function()
                                TweenService:Create(frame26, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {BackgroundTransparency = 1}):Play()

                                if textBox3.Text ~= "" then
                                    fn7(textBox3.Text)
                                end
                            end)

                            local tbl7 = {}

                            if text6 then
                                textBox3.Text = text6
                                fn7(text6)
                            end

                            tbl7.SetValue = function(text7)
                                textBox3.Text = text7
                                fn7(text7)
                            end

                            tbl3:RegisterOption({
                                Title = arg6.Title,
                                Default = text6,
                                Box = true,
                                Page_Name = text2,
                                Section_Name = text4,
                                FunctionCreate = tbl7,
                            }, fn7)

                            return tbl7
                        end,
                        CreateSlider = function(arg6, arg7)
                            local str2 = tostring(arg6.Title)
                            local text5 = str2 or ""
                            local num = tonumber(arg6.Min)
                            local n11 = num or 0
                            local num2 = tonumber(arg6.Max)
                            local n12 = num2 or 100
                            local precise = arg6.Precise
                            local flag5 = precise or false
                            local num3 = tonumber(arg6.Default)
                            local n13 = num3 or 0
                            local fn7 = arg7 or function() end
                            local fn8 = fn7 or function() end
                            local frame23 = Instance.new("Frame")
                            local uiCorner10 = Instance.new("UICorner")
                            local frame24 = Instance.new("Frame")
                            local uiCorner11 = Instance.new("UICorner")
                            local textLabel6 = Instance.new("TextLabel")
                            local frame25 = Instance.new("Frame")
                            local textButton4 = Instance.new("TextButton")
                            local uiCorner12 = Instance.new("UICorner")
                            local frame26 = Instance.new("Frame")
                            local uiCorner13 = Instance.new("UICorner")
                            local frame27 = Instance.new("Frame")
                            local uiCorner14 = Instance.new("UICorner")
                            local textBox3 = Instance.new("TextBox")
                            frame23.Name = text5 .. "buda"
                            frame23.Parent = frame20
                            frame23.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                            frame23.BackgroundTransparency = 1
                            frame23.Position = UDim2.new(0, 0, 0.208333328, 0)
                            frame23.Size = UDim2.new(1, 0, 0, 50)
                            uiCorner10.CornerRadius = UDim.new(0, 4)
                            uiCorner10.Name = "SliderCorner"
                            uiCorner10.Parent = frame23
                            frame24.Name = "Background1"
                            frame24.Parent = frame23
                            frame24.AnchorPoint = Vector2.new(0.5, 0.5)
                            frame24.Position = UDim2.new(0.5, 0, 0.5, 0)
                            frame24.Size = UDim2.new(1, -10, 1, 0)
                            frame24.BackgroundColor3 = getgenv().UIColor["Background 1 Color"]
                            frame24.BackgroundTransparency = getgenv().UIColor["Background 1 Transparency"]
                            uiCorner11.CornerRadius = UDim.new(0, 4)
                            uiCorner11.Name = "SliderBGCorner"
                            uiCorner11.Parent = frame24
                            textLabel6.Name = "TextColor"
                            textLabel6.Parent = frame24
                            textLabel6.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            textLabel6.BackgroundTransparency = 1
                            textLabel6.Position = UDim2.new(0, 10, 0, 0)
                            textLabel6.Size = UDim2.new(1, -10, 0, 25)
                            textLabel6.Font = Enum.Font.GothamBlack
                            textLabel6.Text = text5
                            textLabel6.TextSize = 14
                            textLabel6.RichText = true
                            textLabel6.TextXAlignment = Enum.TextXAlignment.Left
                            textLabel6.TextColor3 = getgenv().UIColor["Text Color"]
                            frame25.Name = "SliderBar"
                            frame25.Parent = frame23
                            frame25.AnchorPoint = Vector2.new(0.5, 0.5)
                            frame25.Position = UDim2.new(0.5, 0, 0.5, 14)
                            frame25.Size = UDim2.new(0, 400, 0, 6)
                            frame25.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                            textButton4.Name = "SliderButton "
                            textButton4.Parent = frame25
                            textButton4.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            textButton4.BackgroundTransparency = 1
                            textButton4.Size = UDim2.new(1, 0, 1, 0)
                            textButton4.Font = Enum.Font.GothamBold
                            textButton4.Text = ""
                            textButton4.TextColor3 = Color3.fromRGB(230, 230, 230)
                            textButton4.TextSize = 14
                            uiCorner12.CornerRadius = UDim.new(1, 0)
                            uiCorner12.Name = "SliderBarCorner"
                            uiCorner12.Parent = frame25
                            frame26.Name = "Bar"
                            frame26.BorderSizePixel = 0
                            frame26.Parent = frame25
                            frame26.Size = UDim2.new(0, 0, 1, 0)
                            frame26.BackgroundColor3 = getgenv().UIColor["Slider Line Color"]
                            uiCorner13.CornerRadius = UDim.new(1, 0)
                            uiCorner13.Name = "BarCorner"
                            uiCorner13.Parent = frame26
                            frame27.Name = "Background2"
                            frame27.Parent = frame23
                            frame27.AnchorPoint = Vector2.new(1, 0)
                            frame27.Position = UDim2.new(1, -10, 0, 5)
                            frame27.Size = UDim2.new(0, 150, 0, 25)
                            frame27.BackgroundColor3 = getgenv().UIColor["Background 2 Color"]
                            uiCorner14.CornerRadius = UDim.new(0, 4)
                            uiCorner14.Name = "Sliderbox"
                            uiCorner14.Parent = frame27
                            textBox3.Name = "TextColor"
                            textBox3.Parent = frame27
                            textBox3.BackgroundColor3 = Color3.fromRGB(230, 230, 230)
                            textBox3.BackgroundTransparency = 1
                            textBox3.Size = UDim2.new(1, 0, 1, 0)
                            textBox3.Font = Enum.Font.GothamBold
                            textBox3.Text = ""
                            textBox3.TextSize = 14
                            textBox3.TextColor3 = getgenv().UIColor["Text Color"]

                            textButton4.MouseEnter:Connect(function()
                                TweenService:Create(frame26, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {
                                    BackgroundColor3 = getgenv().UIColor["Slider Highlight Color"],
                                }):Play()
                            end)

                            textButton4.MouseLeave:Connect(function()
                                TweenService:Create(frame26, TweenInfo.new(getgenv().UIColor["Tween Animation 2 Speed"]), {BackgroundColor3 = getgenv().UIColor["Slider Line Color"]}):Play()
                            end)

                            local function fn9(text6)
                                textBox3.Text = text6
                                fn8(tonumber(text6))
                            end

                            if n13 then
                                if n13 <= n11 then
                                    n13 = n11
                                elseif n12 <= n13 then
                                    n13 = n12
                                end

                                frame26.Size = UDim2.new(1 - (n12 - n13) / (n12 - n11), 0, 0, 6)
                                fn9(n13)
                            end

                            local flag6 = false
                            local v9 = nil
                            local n14 = 0

                            textButton4.InputBegan:Connect(function(input)
                                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                                    n14 = tick()

                                    input.Changed:Connect(function()
                                        if input.UserInputState == Enum.UserInputState.End then
                                            flag6 = false
                                            n14 = 0
                                        end
                                    end)
                                end
                            end)

                            textButton4.InputEnded:Connect(function(input)
                                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                                    flag6 = false
                                    n14 = 0
                                end
                            end)

                            textButton4.InputChanged:Connect(function(input)
                                if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                                    v9 = input
                                end
                            end)

                            RunService.RenderStepped:Connect(function()
                                if n14 > 0 and tick() - n14 >= 0 and not flag6 then
                                    flag6 = true
                                end

                                if flag6 and v9 then
                                    local n15 = flag5 and tonumber(string.format("%.1f", (tonumber(n12) - tonumber(n11)) / 400 * frame26.AbsoluteSize.X + tonumber(n11))) or math.floor((tonumber(n12) - tonumber(n11)) / 400 * frame26.AbsoluteSize.X + tonumber(n11))

                                    pcall(function()
                                        fn9(n15)
                                    end)

                                    frame26.Size = UDim2.new(0, math.clamp(v9.Position.X - frame26.AbsolutePosition.X, 0, 400), 0, 6)
                                end
                            end)

                            local function fn10(arg8)
                                if tonumber(arg8) <= n11 then
                                    frame26.Size = UDim2.new(0, 0, 0, 6)
                                    fn9(n11)
                                elseif n12 <= tonumber(arg8) then
                                    frame26.Size = UDim2.new(0, n12 / n12 * 400, 0, 6)
                                    fn9(n12)
                                else
                                    frame26.Size = UDim2.new(1 - (n12 - arg8) / (n12 - n11), 0, 0, 6)
                                    fn9(arg8)
                                end
                            end

                            textBox3.FocusLost:Connect(function()
                                fn10(textBox3.Text)
                            end)

                            local tbl7 = {
                                SetValue = function(arg8)
                                    fn10(arg8)
                                end,
                                GetText = function()
                                    return textLabel6
                                end,
                            }

                            tbl3:RegisterOption({
                                Title = arg6.Title,
                                Default = n13,
                                Slider = true,
                                Min = n11,
                                Max = n12,
                                Precise = flag5,
                                Page_Name = text2,
                                Section_Name = text4,
                                FunctionCreate = tbl7,
                            }, fn8)

                            return tbl7
                        end,
                    }
                end,
            }
        end,
    }
end

tbl3.CreateNoti({
    Title = "UI Library",
    Desc = "The UI automatically hides once executed.\nPress the button at the bottom-left of the screen to show the GUI.",
    ShowTime = 10,
}, true)

return tbl3
