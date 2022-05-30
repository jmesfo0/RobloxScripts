    local arizon = Instance.new("ScreenGui")
    arizon.Name = "arizon"
    arizon.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    arizon.Parent = game.CoreGui

    local Library = {}
    local TweenService = game:GetService("TweenService")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local Mouse = LocalPlayer:GetMouse()
    local HTTPService = game:GetService("HttpService")

    function updateCanvasSize(scroll, list, padding)
        local size = list.AbsoluteContentSize;
    
        size = size + Vector2.new(0, padding.PaddingBottom.Offset + padding.PaddingTop.Offset);
        scroll.CanvasSize = UDim2.new(0, size.X, 0, size.Y)
    end

    function Library:Create(table)
        local main = Instance.new("Frame")
        main.Name = "main"
        main.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
        main.Position = UDim2.fromScale(0.321, 0.341)
        main.Size = UDim2.fromOffset(361, 246)

        local uICorner = Instance.new("UICorner")
        uICorner.Name = "uICorner"
        uICorner.CornerRadius = UDim.new(0, 6)
        uICorner.Parent = main

        local topBar = Instance.new("Frame")
        topBar.Name = "topBar"
        topBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        topBar.Size = UDim2.fromOffset(361, 36)

        local uICorner1 = Instance.new("UICorner")
        uICorner1.Name = "uICorner1"
        uICorner1.CornerRadius = UDim.new(0, 6)
        uICorner1.Parent = topBar

        local menu = Instance.new("ImageButton")
        menu.Name = "menu"
        menu.Image = "http://www.roblox.com/asset/?id=9633864839"
        menu.ImageTransparency = 0.4
        menu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        menu.BackgroundTransparency = 1
        menu.Position = UDim2.fromScale(0.0249, 0.25)
        menu.Size = UDim2.fromOffset(16, 18)
        menu.Parent = topBar

        local title = Instance.new("TextLabel")
        title.Name = "title"
        title.Font = Enum.Font.Gotham
        title.Text = table.Name
        title.TextColor3 = Color3.fromRGB(195, 195, 195)
        title.TextSize = 12
        title.TextXAlignment = Enum.TextXAlignment.Left
        title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        title.BackgroundTransparency = 1
        title.Position = UDim2.fromScale(0.0861, 0.25)
        title.Size = UDim2.fromOffset(83, 18)
        title.Parent = topBar

        local frame = Instance.new("Frame")
        frame.Name = "frame"
        frame.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
        frame.BorderSizePixel = 0
        frame.Position = UDim2.fromScale(0, 0.98)
        frame.Size = UDim2.fromOffset(361, 1)
        frame.Parent = topBar

        local close = Instance.new("ImageButton")
        close.Name = "close"
        close.Image = "rbxassetid://6031094678"
        close.ImageColor3 = Color3.fromRGB(126, 126, 126)
        close.ScaleType = Enum.ScaleType.Fit
        close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        close.BackgroundTransparency = 1
        close.Position = UDim2.fromScale(0.931, 0.25)
        close.Size = UDim2.fromOffset(16, 16)
        close.Parent = topBar
        
        local search = Instance.new("ImageButton")
        search.Name = "search"
        search.Image = "http://www.roblox.com/asset/?id=9701781161"
        search.ImageColor3 = Color3.fromRGB(126, 126, 126)
        search.ScaleType = Enum.ScaleType.Fit
        search.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        search.BackgroundTransparency = 1
        search.Position = UDim2.fromScale(0.891, 0.265)
        search.Size = UDim2.fromOffset(14, 14)
        search.Parent = topBar

        topBar.Parent = main

        local tabContainer = Instance.new("Frame")
        tabContainer.Name = "tabContainer"
        tabContainer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        tabContainer.BackgroundTransparency = 0.7
        tabContainer.Size = UDim2.fromOffset(361, 246)
        tabContainer.Visible = false

        local frame3 = Instance.new("Frame")
        frame3.Name = "frame3"
        frame3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        frame3.BorderSizePixel = 0
        frame3.Size = UDim2.fromOffset(142, 246)

        local uICorner12 = Instance.new("UICorner")
        uICorner12.Name = "uICorner12"
        uICorner12.Parent = frame3

        local close1 = Instance.new("ImageButton")
        close1.Name = "close1"
        close1.Image = "rbxassetid://6031094678"
        close1.ImageColor3 = Color3.fromRGB(126, 126, 126)
        close1.ScaleType = Enum.ScaleType.Fit
        close1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        close1.BackgroundTransparency = 1
        close1.Position = UDim2.fromScale(0.0469, 0.0431)
        close1.Size = UDim2.fromOffset(16, 16)
        close1.Parent = frame3

        local frame4 = Instance.new("Frame")
        frame4.Name = "frame4"
        frame4.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
        frame4.BorderSizePixel = 0
        frame4.Position = UDim2.fromScale(0, 0.146)
        frame4.Size = UDim2.fromOffset(142, 1)
        frame4.Parent = frame3

        local holder = Instance.new("ScrollingFrame")
        holder.Name = "holder"
        holder.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 100)
        holder.ScrollBarThickness = 2
        holder.Active = true
        holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        holder.BackgroundTransparency = 1
        holder.BorderSizePixel = 0
        holder.Position = UDim2.fromScale(0.00704, 0.146)
        holder.Size = UDim2.fromOffset(141, 210)

        local uIListLayout2 = Instance.new("UIListLayout")
        uIListLayout2.Name = "uIListLayout2"
        uIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
        uIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
        uIListLayout2.Parent = holder

        local uIPadding2 = Instance.new("UIPadding")
        uIPadding2.Name = "uIPadding2"
        uIPadding2.PaddingTop = UDim.new(0, 5)
        uIPadding2.Parent = holder

        holder.Parent = frame3

        frame3.Parent = tabContainer

        tabContainer.Parent = main

        main.Parent = arizon

        local shadow = Instance.new("ImageLabel")
        shadow.Name = "shadow"
        shadow.Image = "rbxassetid://297774371"
        shadow.ImageColor3 = Color3.fromRGB(15, 15, 15)
        shadow.ImageTransparency = 0.5
        shadow.SliceCenter = Rect.new(20, 20, 280, 280)
        shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        shadow.BackgroundTransparency = 1
        shadow.Position = UDim2.fromScale(0.306, 0.325)
        shadow.Selectable = true
        shadow.Size = UDim2.fromOffset(393, 272)
        shadow.ZIndex = -1
        shadow.Parent = arizon

        tabContainer.Parent = main
        main.Parent = arizon
        main.AnchorPoint = Vector2.new(0.5,0.5)
        shadow.AnchorPoint = Vector2.new(0.5,0.5)

        main.Position = UDim2.new(0.5,0,0.5,0)
        shadow.Position = UDim2.new(0.5,0,0.5,0)

        --// Menu Events
        menu.MouseEnter:Connect(function()
            game:GetService('TweenService'):Create(menu, TweenInfo.new(0.2), {ImageTransparency = 0}):Play()
        end)

        menu.MouseLeave:Connect(function()
            game:GetService('TweenService'):Create(menu, TweenInfo.new(0.2), {ImageTransparency = 0.4}):Play()
        end)

        menu.MouseButton1Click:Connect(function()
            tabContainer.Visible = true
            tabContainer.BackgroundTransparency = 1
            frame3.BackgroundTransparency = 1
            game:GetService('TweenService'):Create(tabContainer, TweenInfo.new(0.1), {BackgroundTransparency = 0.7}):Play()
            game:GetService('TweenService'):Create(frame3, TweenInfo.new(0.2), {BackgroundTransparency = 0}):Play()
        end)

        close1.MouseButton1Click:Connect(function()
            tabContainer.Visible = false
            game:GetService('TweenService'):Create(tabContainer, TweenInfo.new(0.1), {BackgroundTransparency = 1}):Play()
            game:GetService('TweenService'):Create(frame3, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
        end)

        --// Close events
        close.MouseEnter:Connect(function()
            game:GetService('TweenService'):Create(close, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(163, 163, 163)}):Play()
        end)

        close.MouseLeave:Connect(function()
            game:GetService('TweenService'):Create(close, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(126, 126, 126)}):Play()
        end)

        close.MouseButton1Click:Connect(function()
            arizon:Destroy()
        end)

        --// Search Events
        search.MouseEnter:Connect(function()
            game:GetService('TweenService'):Create(search, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(163, 163, 163)}):Play()
        end)

        search.MouseLeave:Connect(function()
            game:GetService('TweenService'):Create(search, TweenInfo.new(0.2), {ImageColor3 = Color3.fromRGB(126, 126, 126)}):Play()
        end)

        search.MouseButton1Click:Connect(function()
            for _,v in pairs(main:GetChildren()) do
                if v.Name == "container" then
                    if v['search1'].Visible then
                        v['search1'].Visible = false
                    else
                        v['search1'].Visible = true
                    end
                end
            end
        end)


        local tabHandler = {}

        function tabHandler:Exit()
            arizon:Destroy()
        end

        function tabHandler:Tab(name)

            --// Creating the tab
            local textButton4 = Instance.new("TextButton")
            textButton4.Name = "textButton4"
            textButton4.Font = Enum.Font.Gotham
            textButton4.Text = name
            textButton4.TextColor3 = Color3.fromRGB(184, 184, 184)
            textButton4.TextSize = 12
            textButton4.TextTransparency = 0.33
            textButton4.TextXAlignment = Enum.TextXAlignment.Left
            textButton4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textButton4.BackgroundTransparency = 1
            textButton4.Position = UDim2.fromScale(0.0543, 0)
            textButton4.Size = UDim2.fromOffset(129, 23)
            textButton4.Parent = holder

            --// Creating the container
            local container = Instance.new("ScrollingFrame")
            container.Name = "container"
            container.ScrollBarImageColor3 = Color3.fromRGB(53, 53, 53)
            container.ScrollBarThickness = 2
            container.Active = true
            container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            container.BackgroundTransparency = 1
            container.BorderSizePixel = 0
            container.Position = UDim2.fromScale(0, 0.146)
            container.Size = UDim2.fromOffset(361, 200)
            container.ZIndex = -1

            local uIListLayout = Instance.new("UIListLayout")
            uIListLayout.Name = "uIListLayout"
            uIListLayout.Padding = UDim.new(0, 4)
            uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            uIListLayout.Parent = container

            local search1 = Instance.new("Frame")
            search1.Name = "search1"
            search1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            search1.BorderSizePixel = 0
            search1.LayoutOrder = -1
            search1.Size = UDim2.fromOffset(361, 36)
            search1.Visible = false

            local imageLabel = Instance.new("ImageLabel")
            imageLabel.Name = "imageLabel"
            imageLabel.Image = "http://www.roblox.com/asset/?id=9634226499"
            imageLabel.ImageColor3 = Color3.fromRGB(117, 117, 117)
            imageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            imageLabel.BackgroundTransparency = 1
            imageLabel.Position = UDim2.fromScale(0.0249, 0.278)
            imageLabel.Size = UDim2.fromOffset(15, 15)
            imageLabel.Parent = search1

            local textBox1 = Instance.new("TextBox")
            textBox1.Name = "textBox1"
            textBox1.Font = Enum.Font.Gotham
            textBox1.PlaceholderColor3 = Color3.fromRGB(125, 125, 125)
            textBox1.PlaceholderText = "search.."
            textBox1.Text = ""
            textBox1.TextColor3 = Color3.fromRGB(188, 188, 188)
            textBox1.TextSize = 12
            textBox1.TextXAlignment = Enum.TextXAlignment.Left
            textBox1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textBox1.BackgroundTransparency = 1
            textBox1.Position = UDim2.fromScale(-0.00264, 0)
            textBox1.Size = UDim2.fromOffset(361, 36)

            local uIPadding1 = Instance.new("UIPadding")
            uIPadding1.Name = "uIPadding1"
            uIPadding1.PaddingLeft = UDim.new(0, 30)
            uIPadding1.Parent = textBox1

            textBox1.Parent = search1

            local frame2 = Instance.new("Frame")
            frame2.Name = "frame2"
            frame2.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
            frame2.BorderSizePixel = 0
            frame2.Position = UDim2.fromScale(0, 0.98)
            frame2.Size = UDim2.fromOffset(361, 1)
            frame2.Parent = search1

            search1.Parent = container

            container.Parent = main
            container.Visible = false

            textButton4.MouseButton1Click:Connect(function()
                for _,v in pairs(main:GetChildren()) do
                    if v.Name == "container" then
                        v.Visible = false
                    end
                end
                for _,v in pairs(holder:GetChildren()) do
                    if v:IsA('TextButton') then
                        game:GetService('TweenService'):Create(v, TweenInfo.new(0.3), {TextTransparency = 0.33}):Play()
                    end
                end
                container.Visible = true
                game:GetService('TweenService'):Create(textButton4, TweenInfo.new(0.3), {TextTransparency = 0}):Play()
            end)

            local sectionHandler = {}

            function sectionHandler:Section(title)
                local section = Instance.new("Frame")
                section.Name = "section"
                section.AutomaticSize = Enum.AutomaticSize.Y
                section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                section.BackgroundTransparency = 1
                section.Position = UDim2.fromScale(0, -0.75)
                section.Size = UDim2.fromOffset(361, 198)

                local uIPadding = Instance.new("UIPadding")
                uIPadding.Name = "uIPadding"
                uIPadding.PaddingLeft = UDim.new(0, 10)
                uIPadding.PaddingTop = UDim.new(0, 10)
                uIPadding.Parent = section

                local uIListLayout1 = Instance.new("UIListLayout")
                uIListLayout1.Name = "uIListLayout1"
                uIListLayout1.Padding = UDim.new(0, 2)
                uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
                uIListLayout1.Parent = section

                local title1 = Instance.new("TextLabel")
                title1.Name = "title1"
                title1.Font = Enum.Font.Gotham
                title1.Text = title
                title1.TextColor3 = Color3.fromRGB(195, 195, 195)
                title1.TextSize = 11
                title1.TextTransparency = 0.48
                title1.TextXAlignment = Enum.TextXAlignment.Left
                title1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                title1.BackgroundTransparency = 1
                title1.LayoutOrder = -1
                title1.Position = UDim2.fromScale(0.0861, 0.176)
                title1.Size = UDim2.fromOffset(83, 18)
                title1.Parent = section

                section.Parent = container

                --// ELements
                local elementHandler = {}

                function elementHandler:Textbox(title, callback)
                    title = title or "Textbox"
                    callback = callback or function() end

                    local textbox = Instance.new("Frame")
                    textbox.Name = "textbox"
                    textbox.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
                    textbox.Position = UDim2.fromScale(0, 0.36)
                    textbox.Size = UDim2.fromOffset(342, 32)

                    local uICorner2 = Instance.new("UICorner")
                    uICorner2.Name = "uICorner2"
                    uICorner2.CornerRadius = UDim.new(0, 5)
                    uICorner2.Parent = textbox

                    local title2 = Instance.new("TextLabel")
                    title2.Name = "title2"
                    title2.Font = Enum.Font.Gotham
                    title2.Text = title
                    title2.TextColor3 = Color3.fromRGB(195, 195, 195)
                    title2.TextSize = 11
                    title2.TextXAlignment = Enum.TextXAlignment.Left
                    title2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    title2.BackgroundTransparency = 1
                    title2.LayoutOrder = -1
                    title2.Position = UDim2.fromScale(0.0188, 0.219)
                    title2.Size = UDim2.fromOffset(83, 18)
                    title2.Parent = textbox

                    local status = Instance.new("Frame")
                    status.Name = "status"
                    status.BackgroundColor3 = Color3.fromRGB(31, 152, 82)
                    status.BackgroundTransparency = 1
                    status.Position = UDim2.fromScale(0.775, 0)
                    status.Size = UDim2.fromOffset(67, 32)

                    local uICorner3 = Instance.new("UICorner")
                    uICorner3.Name = "uICorner3"
                    uICorner3.CornerRadius = UDim.new(0, 5)
                    uICorner3.Parent = status

                    local frame1 = Instance.new("Frame")
                    frame1.Name = "frame1"
                    frame1.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
                    frame1.BorderSizePixel = 0
                    frame1.Position = UDim2.fromScale(-0.418, 0.731)
                    frame1.Size = UDim2.fromOffset(95, 1)
                    frame1.Parent = status

                    local textBox = Instance.new("TextBox")
                    textBox.Name = "textBox"
                    textBox.Font = Enum.Font.Gotham
                    textBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
                    textBox.PlaceholderText = "placeholder text"
                    textBox.Text = ""
                    textBox.TextColor3 = Color3.fromRGB(195, 195, 195)
                    textBox.TextSize = 10
                    textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    textBox.BackgroundTransparency = 1
                    textBox.Position = UDim2.fromScale(-0.418, 0)
                    textBox.Size = UDim2.fromOffset(95, 25)
                    textBox.Parent = status

                    status.Parent = textbox

                    textbox.Parent = section

                    textbox.MouseEnter:Connect(function()
                        game:GetService('TweenService'):Create(textbox, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(36,36,36)}):Play()
                    end)
        
                    textbox.MouseLeave:Connect(function()
                        game:GetService('TweenService'):Create(textbox, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(32, 32, 32)}):Play()
                    end)
        
                    textBox.FocusLost:Connect(function()
                        callback(textBox.Text)
                    end)
                end

                function elementHandler:Slider(title,min,max,start,inc,callback)
                    local slider = Instance.new("Frame")
                    slider.Name = "slider"
                    slider.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
                    slider.Position = UDim2.fromScale(-0.0855, 0.341)
                    slider.Size = UDim2.fromOffset(342, 32)

                    local uICorner4 = Instance.new("UICorner")
                    uICorner4.Name = "uICorner4"
                    uICorner4.CornerRadius = UDim.new(0, 5)
                    uICorner4.Parent = slider

                    local title3 = Instance.new("TextLabel")
                    title3.Name = "title3"
                    title3.Font = Enum.Font.Gotham
                    title3.Text = title
                    title3.TextColor3 = Color3.fromRGB(195, 195, 195)
                    title3.TextSize = 11
                    title3.TextXAlignment = Enum.TextXAlignment.Left
                    title3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    title3.BackgroundTransparency = 1
                    title3.LayoutOrder = -1
                    title3.Position = UDim2.fromScale(0.0188, 0.219)
                    title3.Size = UDim2.fromOffset(83, 18)
                    title3.Parent = slider

                    local bar = Instance.new("Frame")
                    bar.Name = "bar"
                    bar.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
                    bar.Position = UDim2.fromScale(0.693, 0.438)
                    bar.Size = UDim2.fromOffset(95, 5)

                    local uICorner5 = Instance.new("UICorner")
                    uICorner5.Name = "uICorner5"
                    uICorner5.CornerRadius = UDim.new(0, 5)
                    uICorner5.Parent = bar

                    local progressBar = Instance.new("Frame")
                    progressBar.Name = "progressBar"
                    progressBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                    progressBar.Position = UDim2.fromScale(0, -0.162)
                    progressBar.Size = UDim2.fromOffset(60, 6)
                    progressBar.BorderSizePixel = 0
                    bar.BorderSizePixel = 0

                    local uICorner6 = Instance.new("UICorner")
                    uICorner6.Name = "uICorner6"
                    uICorner6.CornerRadius = UDim.new(0, 5)
                    uICorner6.Parent = progressBar

                    progressBar.Parent = bar

                    bar.Parent = slider

                    local value = Instance.new("TextLabel")
                    value.Name = "value"
                    value.Font = Enum.Font.Gotham
                    value.Text = "2135"
                    value.TextColor3 = Color3.fromRGB(195, 195, 195)
                    value.TextSize = 12
                    value.TextStrokeColor3 = Color3.fromRGB(195, 195, 195)
                    value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    value.BackgroundTransparency = 1
                    value.Position = UDim2.fromScale(0.562, 0)
                    value.Size = UDim2.fromOffset(44, 32)
                    value.Parent = slider

                    slider.Parent = section

                    --// SLIDER NOT MADE BY ME - FROM SOLARIS LIBRARY

                    local Slider,SliderMain = {Value = start}, slider
                    local dragging = false

                    local function move(Input)
                        local XSize = math.clamp((Input.Position.X - SliderMain.bar.AbsolutePosition.X) / SliderMain.bar.AbsoluteSize.X, 0, 1)
                        local Increment = inc and (max / ((max - min) / (inc * 4))) or (max >= 50 and max / ((max - min) / 4)) or (max >= 25 and max / ((max - min) / 2)) or (max / (max - min))
                        local SizeRounded = UDim2.new((math.round(XSize * ((max / Increment) * 4)) / ((max / Increment) * 4)), 0, 1, 0) 
                        TweenService:Create(progressBar,TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = SizeRounded}):Play() 
                        local Val = math.round((((SizeRounded.X.Scale * max) / max) * (max - min) + min) * 20) / 20
                        value.Text = tostring(Val)
                        Slider.Value = Val
                        callback(Slider.Value)
                    end
                    SliderMain.bar.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true end end)
                    SliderMain.bar.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end end)
                    game:GetService("UserInputService").InputChanged:Connect(function(input) if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then move(input) end end)

                    function Slider:Set(val)
                        local a = tostring(val and (val / max) * (max - min) + min) or 0
                        value.Text = tostring(a)
                        progressBar.Size = UDim2.new((val or 0) / max, 0, 1, 0)
                        Slider.Value = val
                        return callback(Slider.Value)
                    end	

                    Slider:Set(start)
                    return Slider
                end

                function elementHandler:Label(title)
                    local label = Instance.new("Frame")
                    label.Name = "label"
                    label.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
                    label.Position = UDim2.fromScale(-0.0855, 0.341)
                    label.Size = UDim2.fromOffset(342, 32)

                    local uICorner7 = Instance.new("UICorner")
                    uICorner7.Name = "uICorner7"
                    uICorner7.CornerRadius = UDim.new(0, 5)
                    uICorner7.Parent = label

                    local title4 = Instance.new("TextLabel")
                    title4.Name = "title4"
                    title4.Font = Enum.Font.Gotham
                    title4.Text = title
                    title4.TextColor3 = Color3.fromRGB(195, 195, 195)
                    title4.TextSize = 11
                    title4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    title4.BackgroundTransparency = 1
                    title4.LayoutOrder = -1
                    title4.Position = UDim2.fromScale(0.0188, 0.219)
                    title4.Size = UDim2.fromOffset(325, 18)
                    title4.Parent = label

                    label.Parent = section

                    local Label = {}

                    function Label:Set(title)
                        title4.Text = title
                    end

                    return Label
                end

                function elementHandler:Button(title, callback)
                    local uIButton = Instance.new("TextButton")
                    uIButton.Name = "uIButton"
                    uIButton.Font = Enum.Font.SourceSans
                    uIButton.Text = ""
                    uIButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                    uIButton.TextSize = 14
                    uIButton.AutoButtonColor = false
                    uIButton.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
                    uIButton.LayoutOrder = -1
                    uIButton.Position = UDim2.fromScale(0.123, 0.119)
                    uIButton.Size = UDim2.fromOffset(342, 32)

                    local uICorner17 = Instance.new("UICorner")
                    uICorner17.Name = "uICorner17"
                    uICorner17.CornerRadius = UDim.new(0, 5)
                    uICorner17.Parent = uIButton

                    local title10 = Instance.new("TextLabel")
                    title10.Name = "title10"
                    title10.Font = Enum.Font.Gotham
                    title10.Text = title
                    title10.TextColor3 = Color3.fromRGB(195, 195, 195)
                    title10.TextSize = 11
                    title10.TextXAlignment = Enum.TextXAlignment.Left
                    title10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    title10.BackgroundTransparency = 1
                    title10.LayoutOrder = -1
                    title10.Position = UDim2.fromScale(0.0188, 0.219)
                    title10.Size = UDim2.fromOffset(83, 18)
                    title10.Parent = uIButton

                    uIButton.Parent = section

                    uIButton.MouseEnter:Connect(function()
                        game:GetService('TweenService'):Create(uIButton, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(36,36,36)}):Play()
                    end)
        
                    uIButton.MouseLeave:Connect(function()
                        game:GetService('TweenService'):Create(uIButton, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(32, 32, 32)}):Play()
                    end)

                    uIButton.MouseButton1Click:Connect(function()
                        callback()
                    end)
                end

                function elementHandler:Toggle(title, callback)
                    title = title or "Toggle"
                    callback = callback or function() end

                    local textButton1 = Instance.new("TextButton")
                    textButton1.Name = "textButton1"
                    textButton1.Font = Enum.Font.SourceSans
                    textButton1.Text = ""
                    textButton1.TextColor3 = Color3.fromRGB(0, 0, 0)
                    textButton1.TextSize = 14
                    textButton1.AutoButtonColor = false
                    textButton1.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
                    textButton1.LayoutOrder = -1
                    textButton1.Size = UDim2.fromOffset(342, 32)

                    local uICorner10 = Instance.new("UICorner")
                    uICorner10.Name = "uICorner10"
                    uICorner10.CornerRadius = UDim.new(0, 5)
                    uICorner10.Parent = textButton1

                    local title6 = Instance.new("TextLabel")
                    title6.Name = "title6"
                    title6.Font = Enum.Font.Gotham
                    title6.Text = title
                    title6.TextColor3 = Color3.fromRGB(195, 195, 195)
                    title6.TextSize = 11
                    title6.TextXAlignment = Enum.TextXAlignment.Left
                    title6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    title6.BackgroundTransparency = 1
                    title6.LayoutOrder = -1
                    title6.Position = UDim2.fromScale(0.0188, 0.219)
                    title6.Size = UDim2.fromOffset(83, 18)
                    title6.Parent = textButton1

                    local status2 = Instance.new("Frame")
                    status2.Name = "status2"
                    status2.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
                    status2.Position = UDim2.fromScale(0.912, 0.188)
                    status2.Size = UDim2.fromOffset(20, 20)

                    local uICorner11 = Instance.new("UICorner")
                    uICorner11.Name = "uICorner11"
                    uICorner11.CornerRadius = UDim.new(0, 5)
                    uICorner11.Parent = status2

                    local uIStroke1 = Instance.new("UIStroke")
                    uIStroke1.Name = "uIStroke1"
                    uIStroke1.Color = Color3.fromRGB(48, 48, 48)
                    uIStroke1.Parent = status2

                    status2.Parent = textButton1

                    textButton1.Parent = section

                    local tog = false

                    textButton1.MouseEnter:Connect(function()
                        game:GetService('TweenService'):Create(textButton1, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(36,36,36)}):Play()
                    end)
        
                    textButton1.MouseLeave:Connect(function()
                        game:GetService('TweenService'):Create(textButton1, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(32, 32, 32)}):Play()
                    end)

                    textButton1.MouseButton1Click:Connect(function()
                        tog = not tog
                        callback(tog)
                        if tog then
                            game:GetService('TweenService'):Create(status2, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(31, 152, 82)}):Play()
                            game:GetService('TweenService'):Create(uIStroke1, TweenInfo.new(0.2), {Color = Color3.fromRGB(52, 255, 137)}):Play()
                        else
                            game:GetService('TweenService'):Create(status2, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(38, 38, 38)}):Play()
                            game:GetService('TweenService'):Create(uIStroke1, TweenInfo.new(0.2), {Color = Color3.fromRGB(48, 48, 48)}):Play()
                        end
                    end)
                end
                
                function elementHandler:Dropdown(text,list,def,callback)
                    local dropdown = Instance.new("Frame")
                    dropdown.Name = "dropdown"
                    dropdown.AutomaticSize = Enum.AutomaticSize.Y
                    dropdown.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
                    dropdown.Position = UDim2.fromScale(0, 0.852)
                    dropdown.Size = UDim2.fromOffset(342, 32)
                    
                    local uICorner12 = Instance.new("UICorner")
                    uICorner12.Name = "uICorner12"
                    uICorner12.CornerRadius = UDim.new(0, 5)
                    uICorner12.Parent = dropdown
                    
                    local dropdownHolder = Instance.new("Frame")
                    dropdownHolder.Name = "dropdownHolder"
                    dropdownHolder.AutomaticSize = Enum.AutomaticSize.Y
                    dropdownHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    dropdownHolder.BackgroundTransparency = 1
                    dropdownHolder.Position = UDim2.fromScale(0, 0.938)
                    dropdownHolder.Size = UDim2.fromOffset(342, 0)
                    
                    local uIListLayout2 = Instance.new("UIListLayout")
                    uIListLayout2.Name = "uIListLayout2"
                    uIListLayout2.Padding = UDim.new(0, 3)
                    uIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
                    uIListLayout2.Parent = dropdownHolder
                    
                    local uIPadding1 = Instance.new("UIPadding")
                    uIPadding1.Name = "uIPadding1"
                    uIPadding1.PaddingTop = UDim.new(0, 4)
                    uIPadding1.Parent = dropdownHolder
                    
                    local dropdownElement = Instance.new("TextButton")
                    dropdownElement.Name = "dropdownElement"
                    dropdownElement.Font = Enum.Font.SourceSans
                    dropdownElement.Text = ""
                    dropdownElement.TextColor3 = Color3.fromRGB(0, 0, 0)
                    dropdownElement.TextSize = 14
                    dropdownElement.AutoButtonColor = false
                    dropdownElement.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
                    dropdownElement.Size = UDim2.fromOffset(342, 25)
                    
                    local uICorner13 = Instance.new("UICorner")
                    uICorner13.Name = "uICorner13"
                    uICorner13.CornerRadius = UDim.new(0, 5)
                    uICorner13.Parent = dropdownElement
                    
                    local title7 = Instance.new("TextLabel")
                    title7.Name = "title7"
                    title7.Font = Enum.Font.Gotham
                    title7.Text = "Ex"
                    title7.TextColor3 = Color3.fromRGB(195, 195, 195)
                    title7.TextSize = 11
                    title7.TextXAlignment = Enum.TextXAlignment.Left
                    title7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    title7.BackgroundTransparency = 1
                    title7.LayoutOrder = -1
                    title7.Position = UDim2.fromScale(0.0188, 0)
                    title7.Size = UDim2.fromOffset(325, 21)
                    title7.Parent = dropdownElement

                    
                    dropdownHolder.Parent = dropdown
                    
                    local button = Instance.new("TextButton")
                    button.Name = "button"
                    button.Font = Enum.Font.SourceSans
                    button.Text = ""
                    button.TextColor3 = Color3.fromRGB(0, 0, 0)
                    button.TextSize = 14
                    button.AutoButtonColor = false
                    button.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
                    button.LayoutOrder = -1
                    button.Size = UDim2.fromOffset(342, 32)
                    
                    local uICorner14 = Instance.new("UICorner")
                    uICorner14.Name = "uICorner14"
                    uICorner14.CornerRadius = UDim.new(0, 5)
                    uICorner14.Parent = button
                    
                    local title8 = Instance.new("TextLabel")
                    title8.Name = "title8"
                    title8.Font = Enum.Font.Gotham
                    title8.Text = "Dropdown - "
                    title8.TextColor3 = Color3.fromRGB(195, 195, 195)
                    title8.TextSize = 11
                    title8.TextXAlignment = Enum.TextXAlignment.Left
                    title8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    title8.BackgroundTransparency = 1
                    title8.LayoutOrder = -1
                    title8.Position = UDim2.fromScale(0.0188, 0.219)
                    title8.Size = UDim2.fromOffset(325, 18)
                    title8.Parent = button
                    
                    local icon = Instance.new("ImageLabel")
                    icon.Name = "icon"
                    icon.Image = "rbxassetid://6034818379"
                    icon.ImageTransparency = 0.4
                    icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    icon.BackgroundTransparency = 1
                    icon.Position = UDim2.fromScale(0.924, 0.25)
                    icon.Size = UDim2.fromOffset(16, 16)
                    icon.Parent = button
                    
                    button.Parent = dropdown
                    
                    local uIListLayout3 = Instance.new("UIListLayout")
                    uIListLayout3.Name = "uIListLayout3"
                    uIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
                    uIListLayout3.Parent = dropdown
                    
                    local dropdownSeperator = Instance.new("Frame")
                    dropdownSeperator.Name = "dropdownSeperator"
                    dropdownSeperator.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
                    dropdownSeperator.BorderSizePixel = 0
                    dropdownSeperator.LayoutOrder = -1
                    dropdownSeperator.Position = UDim2.fromScale(0, 0.862)
                    dropdownSeperator.Size = UDim2.fromOffset(342, 1)
                    dropdownSeperator.Parent = dropdown
                    dropdownSeperator.Visible = false


                    button.Parent = dropdown

                    dropdown.Parent = section
                    dropdownHolder.Visible = false

                    button.MouseEnter:Connect(function()
                        game:GetService('TweenService'):Create(button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(36,36,36)}):Play()
                    end)
        
                    button.MouseLeave:Connect(function()
                        game:GetService('TweenService'):Create(button, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(32, 32, 32)}):Play()
                    end)

                    --// Dropdown scripts
                    local Dropdown,DropMain,OptionPreset = {Value = nil, Toggled = false, Options = list}, dropdown, dropdownElement
                    
                    local function ToggleDrop()
                        Dropdown.Toggled = not Dropdown.Toggled
                        dropdownHolder.Size = Dropdown.Toggled and UDim2.new(1,0,0,6+uIListLayout2.AbsoluteContentSize.Y) or UDim2.new(1,0,0,0)
                        dropdownHolder.Visible = Dropdown.Toggled
                        dropdownSeperator.Visible = Dropdown.Toggled and true or false
                        TweenService:Create(icon,TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Rotation = Dropdown.Toggled and 180 or 0}):Play() 
                    end  

                    local function AddOptions(opts)
                        for _,option in pairs(opts) do
                            local Option = OptionPreset:Clone()
                            Option.Visible = true
                            Option.Parent = dropdownHolder
                            print(option)
                            Option.title7.Text = option
                            Option.ClipsDescendants = true

                            Option.MouseButton1Click:Connect(function()
                                Dropdown.Value = option
                                title8.Text = text .. " - " .. option
                                return callback(Dropdown.Value)
                            end)

                            Option.MouseEnter:Connect(function()
                                game:GetService('TweenService'):Create(Option, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(36,36,36)}):Play()
                            end)
                
                            Option.MouseLeave:Connect(function()
                                game:GetService('TweenService'):Create(Option, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(32, 32, 32)}):Play()
                            end)
                        end   
                    end    

                    function Dropdown:Refresh(opts,del)
                        if del then
                            for _,v in pairs(dropdownHolder:GetChildren()) do
                                if v:IsA"TextButton" then
                                    v:Destroy()
                                    dropdownHolder.Size = Dropdown.Toggled and UDim2.new(1,0,0,6+uIListLayout2.AbsoluteContentSize.Y) or UDim2.new(1,0,0,0)
                                    DropMain.Size = Dropdown.Toggled and UDim2.new(1,0,0,38+uIListLayout2.AbsoluteContentSize.Y) or UDim2.new(1,0,0,32)
                                end
                            end    
                        end    
                        AddOptions(opts)
                    end    
                

                    button.MouseButton1Click:Connect(function()
                        ToggleDrop()
                    end)

                    function Dropdown:Set(val)
                        Dropdown.Value = val
                        title8.Text = text .. " - " .. val
                        return callback(Dropdown.Value)
                    end

                    Dropdown:Refresh(list,false)
                    Dropdown:Set(def)
                    return Dropdown
                end

                return elementHandler
            end

            return sectionHandler
        end

        --// Drag - BY MERCURY LIB DEVELOPERS (have permission to use this)
        topBar.MouseEnter:Connect(function()
            local Input = topBar.InputBegan:connect(function(Key)
                if Key.UserInputType == Enum.UserInputType.MouseButton1 then
                    local ObjectPosition = Vector2.new(Mouse.X - main.AbsolutePosition.X, Mouse.Y - main.AbsolutePosition.Y)
                    while RunService.RenderStepped:wait() and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                        local FrameX, FrameY = math.clamp(Mouse.X - ObjectPosition.X, 0, arizon.AbsoluteSize.X - main.AbsoluteSize.X), math.clamp(Mouse.Y - ObjectPosition.Y, 0, arizon.AbsoluteSize.Y - main.AbsoluteSize.Y)
                        game:GetService('TweenService'):Create(main, TweenInfo.new(0.1), {Position = UDim2.fromOffset(FrameX + (main.Size.X.Offset * main.AnchorPoint.X), FrameY + (main.Size.Y.Offset * main.AnchorPoint.Y))}):Play()
                        game:GetService('TweenService'):Create(shadow, TweenInfo.new(0.1), {Position = UDim2.fromOffset(FrameX + (main.Size.X.Offset * main.AnchorPoint.X), FrameY + (main.Size.Y.Offset * main.AnchorPoint.Y))}):Play()
                    end
                end
            end)
        end)

        --// Make the first tab visible
        holder.ChildAdded:Connect(function()
            pcall(function()
                repeat wait() until main:FindFirstChild'container'
            end)
            main:FindFirstChild('container').Visible = true
            pcall(function()
                repeat wait() until holder:FindFirstChildWhichIsA('TextButton')
            end)
            game:GetService('TweenService'):Create(holder:FindFirstChildWhichIsA('TextButton'), TweenInfo.new(0.3), {TextTransparency = 0}):Play()
        end)

        --// Update containers size
        spawn(function()
            while task.wait(0.1) do
                for _,v in pairs(main:GetChildren()) do
                    if v.Name == "container" then
                        updateCanvasSize(v, v.section.uIListLayout1, v.section.uIPadding)
                    end
                end
            end
        end)

        return tabHandler
    end

    return Library
