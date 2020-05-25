-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Intro = Instance.new("Frame")
local Frame = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local Updates = Instance.new("Frame")
local Changelog = Instance.new("TextLabel")
local Log1 = Instance.new("TextLabel")
local Log2 = Instance.new("TextLabel")
local Log3 = Instance.new("TextLabel")
local Log4 = Instance.new("TextLabel")
local Ending = Instance.new("TextLabel")
local CloseFrame = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Intro.Name = "Intro"
Intro.Parent = ScreenGui
Intro.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Intro.BackgroundTransparency = 1.000
Intro.Position = UDim2.new(0.437810928, 0, 0.429958403, 0)
Intro.Size = UDim2.new(0, 100, 0, 100)

Frame.Name = "Frame"
Frame.Parent = Intro
Frame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(-2.13122129, 0, -0.000626220717, 0)
Frame.Size = UDim2.new(0, 125, 0, 25)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(16, 16, 16)
Frame.ImageTransparency = 0.250
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 499, 0, 100)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.Text = "Ominous Studios"
TextLabel.TextColor3 = Color3.fromRGB(252, 0, 6)
TextLabel.TextSize = 60.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(253, 121, 14)
TextLabel.TextStrokeTransparency = 0.250
TextLabel.TextWrapped = true

Updates.Name = "Updates"
Updates.Parent = ScreenGui
Updates.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Updates.BorderSizePixel = 2
Updates.Position = UDim2.new(0.342039794, 0, 0.360610276, 0)
Updates.Size = UDim2.new(0, 225, 0, 200)

Changelog.Name = "Changelog"
Changelog.Parent = Updates
Changelog.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Changelog.Size = UDim2.new(0, 225, 0, 32)
Changelog.Font = Enum.Font.SourceSans
Changelog.Text = "CHANGELOG (v4):"
Changelog.TextColor3 = Color3.fromRGB(0, 0, 0)
Changelog.TextSize = 20.000

Log1.Name = "Log 1"
Log1.Parent = Updates
Log1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Log1.BackgroundTransparency = 1.000
Log1.BorderSizePixel = 0
Log1.Position = UDim2.new(0.0533333346, 0, 0.159999996, 0)
Log1.Size = UDim2.new(0, 213, 0, 27)
Log1.Font = Enum.Font.SourceSans
Log1.Text = "1. OP Autofarm!"
Log1.TextColor3 = Color3.fromRGB(0, 0, 0)
Log1.TextSize = 14.000
Log1.TextXAlignment = Enum.TextXAlignment.Left

Log2.Name = "Log 2"
Log2.Parent = Updates
Log2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Log2.BackgroundTransparency = 1.000
Log2.BorderSizePixel = 0
Log2.Position = UDim2.new(0.0533333346, 0, 0.294999987, 0)
Log2.Size = UDim2.new(0, 213, 0, 27)
Log2.Font = Enum.Font.SourceSans
Log2.Text = "2. Autofarm includes godmode function!"
Log2.TextColor3 = Color3.fromRGB(0, 0, 0)
Log2.TextSize = 14.000
Log2.TextXAlignment = Enum.TextXAlignment.Left

Log3.Name = "Log 3"
Log3.Parent = Updates
Log3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Log3.BackgroundTransparency = 1.000
Log3.BorderSizePixel = 0
Log3.Position = UDim2.new(0.0533333346, 0, 0.430000007, 0)
Log3.Size = UDim2.new(0, 213, 0, 27)
Log3.Font = Enum.Font.SourceSans
Log3.Text = "3. TRAP SERVER! :D"
Log3.TextColor3 = Color3.fromRGB(0, 0, 0)
Log3.TextSize = 14.000
Log3.TextXAlignment = Enum.TextXAlignment.Left

Log4.Name = "Log 4"
Log4.Parent = Updates
Log4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Log4.BackgroundTransparency = 1.000
Log4.BorderSizePixel = 0
Log4.Position = UDim2.new(0.0533333346, 0, 0.564999998, 0)
Log4.Size = UDim2.new(0, 213, 0, 27)
Log4.Font = Enum.Font.SourceSans
Log4.Text = "4. Made it paid"
Log4.TextColor3 = Color3.fromRGB(0, 0, 0)
Log4.TextSize = 14.000
Log4.TextXAlignment = Enum.TextXAlignment.Left

Ending.Name = "Ending"
Ending.Parent = Updates
Ending.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ending.BackgroundTransparency = 1.000
Ending.BorderSizePixel = 0
Ending.Position = UDim2.new(0, 0, 0.699999988, 0)
Ending.Size = UDim2.new(0, 225, 0, 60)
Ending.Font = Enum.Font.GothamSemibold
Ending.Text = "Most tryharded script I ever made!"
Ending.TextColor3 = Color3.fromRGB(0, 0, 0)
Ending.TextScaled = true
Ending.TextSize = 14.000
Ending.TextWrapped = true

CloseFrame.Name = "CloseFrame"
CloseFrame.Parent = Updates
CloseFrame.BackgroundColor3 = Color3.fromRGB(186, 192, 192)
CloseFrame.BorderSizePixel = 0
CloseFrame.Position = UDim2.new(0.857777774, 0, 0, 0)
CloseFrame.Size = UDim2.new(0, 32, 0, 32)
CloseFrame.Font = Enum.Font.SourceSans
CloseFrame.LineHeight = 1.200
CloseFrame.Text = "x"
CloseFrame.TextColor3 = Color3.fromRGB(252, 0, 6)
CloseFrame.TextSize = 40.000

-- Scripts:

local function RLZTSE_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local guiObject = script.Parent
	guiObject.ClipsDescendants = true
	 
	local function callback(didComplete)
		if didComplete then
			print("Working")
		else
			print("Cancelled")
		end
	end
	
	local willTween = guiObject:TweenSize(
		UDim2.new(5, 0, 1, 0),  
		Enum.EasingDirection.In,    
		Enum.EasingStyle.Sine,      
		2,                   
		true,                  
		callback
	)
	 
	if willTween then
		print("tweenable") 
	else
		print("untweenable")
	end
	
	
	
	wait(5)
	
	local function callback1(didComplete1)
		if didComplete1 then
			print("Working")
		else
			print("Cancelled")
		end
		guiObject.Parent:Destroy()
	end
	 
	local willTween1 = guiObject:TweenSize(
		UDim2.new(0.25, 0, 0.125, 0),  
		Enum.EasingDirection.In,    
		Enum.EasingStyle.Sine,      
		2,                   
		true,                  
		callback1
	)
	 
	if willTween1 then
		print("tweenable") 
	else
		print("untweenable")
	end
	
	
	
	
end
coroutine.wrap(RLZTSE_fake_script)()
local function TSVU_fake_script() -- Updates.LocalScript 
	local script = Instance.new('LocalScript', Updates)

	local START_POSITION = UDim2.new(0.425, -50, 1.2, -50)
	local ENDPOSITION = UDim2.new(0.425, -50, 0.425, -50)
	local UPPOSITION = UDim2.new(0.425, -50, 0.4, -50)
	 
	local guiObject = script.Parent
	
	local button = script.Parent.CloseFrame
	 
	local function callback(state)
		if state == Enum.TweenStatus.Completed then
			print("The tween completed uninterrupted")
		elseif state == Enum.TweenStatus.Canceled then
			print("Another tween cancelled this one")
		end
	end
	 
	-- Initialize the GuiObject position, then start the tween:
	guiObject.Position = START_POSITION
		
		
	wait(5)
	
	local willPlay = guiObject:TweenPosition(
		ENDPOSITION,           -- Final position the tween should reach
		Enum.EasingDirection.In, -- Direction of the easing
		Enum.EasingStyle.Sine,   -- Kind of easing to apply
		2,                       -- Duration of the tween in seconds
		true,                    -- Whether in-progress tweens are interrupted
		callback                 -- Function to be callled when on completion/cancelation
	)
	if willPlay then
		print("The tween will play")
	else
		print("The tween will not play")
	end
	
	
	
	
	button.MouseButton1Click:Connect(function()
	    guiObject.Position = ENDPOSITION
		local willPlay = guiObject:TweenPosition(
			UPPOSITION,           -- Final position the tween should reach
			Enum.EasingDirection.In, -- Direction of the easing
			Enum.EasingStyle.Sine,   -- Kind of easing to apply
			0.05,                       -- Duration of the tween in seconds
			true,                    -- Whether in-progress tweens are interrupted
			callback                 -- Function to be callled when on completion/cancelation
		)
		if willPlay then
			print("The tween will play")
		else
			print("The tween will not play")
		end
	
		wait(0.05)
	
		guiObject.Position = UPPOSITION
	
	
	
		local willPlay = guiObject:TweenPosition(
			START_POSITION,           -- Final position the tween should reach
			Enum.EasingDirection.In, -- Direction of the easing
			Enum.EasingStyle.Sine,   -- Kind of easing to apply
			1,                       -- Duration of the tween in seconds
			true,                    -- Whether in-progress tweens are interrupted
			callback                 -- Function to be callled when on completion/cancelation
		)
		if willPlay then
			print("The tween will play")
		else
			print("The tween will not play")
		end
		
		--function ends
	end)
	
	 
	
	
	
end
coroutine.wrap(TSVU_fake_script)()
