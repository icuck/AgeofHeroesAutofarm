--[[
	  __   ___ ____     __ ____    _  _ ____ ____  __ ____ ____    _  _ ____ ____  ____ __ __  __ _    _  _ 
	 / _\ / __|  __)   /  (  __)  / )( (  __|  _ \/  (  __) ___)  / )( (  __|  _ \/ ___|  )  \(  ( \  ( \/ )
	/    ( (_ \) _)   (  O ) _)   ) __ () _) )   (  O ) _)\___ \  \ \/ /) _) )   /\___ \)(  O )    /   )  ( 
	\_/\_/\___(____)   \__(__)    \_)(_(____|__\_)\__(____|____/   \__/(____|__\_)(____(__)__/\_)__)  (_/\_)

	Source:
		
	Version:
		X
	Date: 
		October 19th, 2020
	Author: 
		(Ommitted due to ban possibility) @ v3rmillion.net / OminousVibes#6156  @ discord.gg
]]

local Whitelist = {
    850621052,
    1079318815
}

-- // CONSTANTS \\ --



-- [[ Library ]] --
local GetLib = function()
	local l=game:GetService('ContextActionService') local _=game:GetService('Players') local i=game:GetService('UserInputService') local r={} r.theme={main_container=Color3.fromRGB(249,249,255),separator_color=Color3.fromRGB(223,219,228),text_color=Color3.fromRGB(96,96,96),category_button_background=Color3.fromRGB(223,219,228),category_button_border=Color3.fromRGB(200,196,204),checkbox_checked=Color3.fromRGB(114,214,112),checkbox_outer=Color3.fromRGB(198,189,202),checkbox_inner=Color3.fromRGB(249,239,255),slider_color=Color3.fromRGB(114,214,112),slider_color_sliding=Color3.fromRGB(114,214,112),slider_background=Color3.fromRGB(198,188,202),slider_text=Color3.fromRGB(112,112,112),textbox_background=Color3.fromRGB(198,189,202),textbox_background_hover=Color3.fromRGB(215,206,227),textbox_text=Color3.fromRGB(112,112,112),textbox_text_hover=Color3.fromRGB(50,50,50),textbox_placeholder=Color3.fromRGB(178,178,178),dropdown_background=Color3.fromRGB(198,189,202),dropdown_text=Color3.fromRGB(112,112,112),dropdown_text_hover=Color3.fromRGB(50,50,50),dropdown_scrollbar_color=Color3.fromRGB(198,189,202),button_background=Color3.fromRGB(198,189,202),button_background_hover=Color3.fromRGB(215,206,227),button_background_down=Color3.fromRGB(178,169,182),scrollbar_color=Color3.fromRGB(198,189,202)} r.dark_theme={main_container=Color3.fromRGB(32,32,33),separator_color=Color3.fromRGB(63,63,65),text_color=Color3.fromRGB(206,206,206),category_button_background=Color3.fromRGB(63,62,65),category_button_border=Color3.fromRGB(72,71,74),checkbox_checked=Color3.fromRGB(132,255,130),checkbox_outer=Color3.fromRGB(84,81,86),checkbox_inner=Color3.fromRGB(132,132,136),slider_color=Color3.fromRGB(177,177,177),slider_color_sliding=Color3.fromRGB(132,255,130),slider_background=Color3.fromRGB(88,84,90),slider_text=Color3.fromRGB(177,177,177),textbox_background=Color3.fromRGB(103,103,106),textbox_background_hover=Color3.fromRGB(137,137,141),textbox_text=Color3.fromRGB(195,195,195),textbox_text_hover=Color3.fromRGB(232,232,232),textbox_placeholder=Color3.fromRGB(135,135,138),dropdown_background=Color3.fromRGB(88,88,91),dropdown_text=Color3.fromRGB(195,195,195),dropdown_text_hover=Color3.fromRGB(232,232,232),dropdown_scrollbar_color=Color3.fromRGB(118,118,121),button_background=Color3.fromRGB(103,103,106),button_background_hover=Color3.fromRGB(137,137,141),button_background_down=Color3.fromRGB(70,70,81),scrollbar_color=Color3.fromRGB(118,118,121)} local j=game:GetService("Players").LocalPlayer:GetMouse() function r:Create(a,_)local b=Instance.new(a) for a,_ in next,_ do if b[a]and a~="Parent"then b[a]=_ end end return b end function r:Ripple(c,b,a)local _=r:Create("ImageLabel",{Name="Circle",AnchorPoint=Vector2.new(0.5,0.5),Position=UDim2.new(0,b-c.AbsolutePosition.X,0,a-c.AbsolutePosition.Y-36),ZIndex=10,BackgroundTransparency=1,Image="rbxassetid://3570695787",ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(100,100,100,100)}) local d=Instance.new("ImageLabel") d.Name="Circle" d.Parent=c d.ZIndex=10 d.BackgroundTransparency=1 d.AnchorPoint=Vector2.new(0.5,0.5) d.Position=UDim2.new(0,b-c.AbsolutePosition.X,0,a-c.AbsolutePosition.Y-36) d.Image="rbxassetid://3570695787" d.ScaleType=Enum.ScaleType.Slice d.SliceCenter=Rect.new(100,100,100,100) local _=game:GetService('TweenService'):Create(d,TweenInfo.new(0.5),{Size=UDim2.new(0,300,0,300),ImageTransparency=0.95}) _:Play() game.Debris:AddItem(d,0.5)end function r:addShadow(a,_)local _=self:Create("ImageLabel",{Name="Shadow",AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,Position=UDim2.new(0.5,0,0.5,4),Size=UDim2.new(1,6,1,6),Image="rbxassetid://1316045217",ImageTransparency=_ and true or 0.5,ImageColor3=Color3.fromRGB(35,35,35),ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(10,10,118,118)}) _.Parent=a end function r.new(_,b,n)local a={} local s=a local q=r if not game:GetService("RunService"):IsStudio()and game:GetService("CoreGui"):FindFirstChild("FinityUI")then warn("finity:","instance already exists in coregui!") return end local t=r.theme local d=false local a=false if _==true then t=r.dark_theme end if b then d=b end if n then a=n end local k=true local f=false local e=true local c=UDim2.new(0.5,0,0.5,0) local h=false local m m={UpConnection=nil,ToggleKey=Enum.KeyCode.Home} local b=r:Create("BlurEffect",{Size=20}) b.Parent=game.Lighting local function a(_,_)if _==Enum.UserInputState.End then return end k=not k if k then game:GetService("TweenService"):Create(s.container,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Position=c}):Play() game:GetService("TweenService"):Create(b,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size=20}):Play()else c=s.container.Position game:GetService("TweenService"):Create(s.container,TweenInfo.new(0.5,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Position=UDim2.new(0.5,c.X.Offset,1.5,0)}):Play() game:GetService("TweenService"):Create(b,TweenInfo.new(1,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Size=0}):Play()end end s.ChangeToggleKey=function(_)m.ToggleKey=_ if not d then s.tip.Text="Press '"..string.sub(tostring(_),14).."' to hide this menu"end l:UnbindAction("ToggleUI") l:BindAction("ToggleUI",a,false,m.ToggleKey)end s.ChangeBackgroundImage=function(_,a)s.container.Image=_ if a then s.container.ImageTransparency=a else s.container.ImageTransparency=0.8 end end l:BindAction("ToggleUI",a,false,m.ToggleKey) s.userinterface=q:Create("ScreenGui",{Name="UI Modified",ZIndexBehavior=Enum.ZIndexBehavior.Global,ResetOnSpawn=false}) s.container=q:Create("ImageLabel",{Active=true,Name="Container",AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=0,BackgroundColor3=t.main_container,BorderSizePixel=0,Position=UDim2.new(0.5,0,0.5,0),Size=UDim2.new(0,725,0,450),ZIndex=2,ImageTransparency=1}) s.modal=q:Create("TextButton",{Text="";Transparency=1;Modal=false}) s.modal.Parent=s.userinterface if n and typeof(n)=="UDim2"then s.container.Size=n end local c local b local a local g local function _(_)local _=_.Position-a s.container.Position=UDim2.new(g.X.Scale,g.X.Offset+_.X,g.Y.Scale,g.Y.Offset+_.Y)end s.container.InputBegan:Connect(function(_)if _.UserInputType==Enum.UserInputType.MouseButton1 or _.UserInputType==Enum.UserInputType.Touch then c=true a=_.Position g=s.container.Position _.Changed:Connect(function()if _.UserInputState==Enum.UserInputState.End then c=false end end)end end) s.container.InputChanged:Connect(function(_)if _.UserInputType==Enum.UserInputType.MouseMovement or _.UserInputType==Enum.UserInputType.Touch then b=_ end end) i.InputChanged:Connect(function(a)if a==b and c then _(a)end end) s.GradientFrame=q:Create("Frame",{AnchorPoint=Vector2.new(0.5,1),BorderSizePixel=0,Position=UDim2.new(0.5,-0.25,1,1),Size=UDim2.new(1,-1,0,1),ZIndex=20}) s.UIGradient=q:Create("UIGradient",{Color=ColorSequence.new{ColorSequenceKeypoint.new(0.00,Color3.fromRGB(255,0,0)),ColorSequenceKeypoint.new(0.14,Color3.fromRGB(255,125,0)),ColorSequenceKeypoint.new(0.29,Color3.fromRGB(255,255,0)),ColorSequenceKeypoint.new(0.43,Color3.fromRGB(0,255,0)),ColorSequenceKeypoint.new(0.57,Color3.fromRGB(0,0,255)),ColorSequenceKeypoint.new(0.71,Color3.fromRGB(75,0,130)),ColorSequenceKeypoint.new(0.86,Color3.fromRGB(255,0,255)),ColorSequenceKeypoint.new(1.00,Color3.fromRGB(255,255,255))}}) s.GradientFrame.Parent=s.container s.UIGradient.Parent=s.GradientFrame s.sidebar=q:Create("Frame",{Name="Sidebar",BackgroundColor3=Color3.new(0.976471,0.937255,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.745098,0.713726,0.760784),Size=UDim2.new(0,120,1,-30),Position=UDim2.new(0,0,0,30),ZIndex=2}) s.categories=q:Create("Frame",{Name="Categories",BackgroundColor3=Color3.new(0.976471,0.937255,1),ClipsDescendants=true,BackgroundTransparency=1,BorderColor3=Color3.new(0.745098,0.713726,0.760784),Size=UDim2.new(1,-120,1,-30),AnchorPoint=Vector2.new(1,0),Position=UDim2.new(1,0,0,30),ZIndex=2}) s.categories.ClipsDescendants=true s.topbar=q:Create("Frame",{Name="Topbar",ZIndex=2,Size=UDim2.new(1,0,0,30),BackgroundTransparency=2}) s.tip=q:Create("TextLabel",{Name="TopbarTip",ZIndex=2,Size=UDim2.new(1,-30,0,30),Position=UDim2.new(0,30,0,0),Text="Press '"..string.sub(tostring(q.ToggleKey),14).."' to hide this menu",Font=Enum.Font.GothamSemibold,TextSize=13,TextXAlignment=Enum.TextXAlignment.Left,BackgroundTransparency=1,TextColor3=t.text_color}) if d then s.tip.Text=d else s.tip.Text="Press '"..string.sub(tostring(q.ToggleKey),14).."' to hide this menu"end function r.settitle(_)s.tip.Text=tostring(_)end local _=q:Create("Frame",{Name="Separator",BackgroundColor3=t.separator_color,BorderSizePixel=0,Position=UDim2.new(0,118,0,30),Size=UDim2.new(0,1,1,-30),ZIndex=6}) _.Parent=s.container _=nil local _=q:Create("Frame",{Name="Separator",BackgroundColor3=t.separator_color,BorderSizePixel=0,Position=UDim2.new(0,0,0,30),Size=UDim2.new(1,0,0,1),ZIndex=6}) _.Parent=s.container _=nil local _=q:Create("UIPageLayout",{Padding=UDim.new(0,10),FillDirection=Enum.FillDirection.Vertical,TweenTime=0.7,EasingStyle=Enum.EasingStyle.Quad,EasingDirection=Enum.EasingDirection.InOut,SortOrder=Enum.SortOrder.LayoutOrder}) _.Parent=s.categories _=nil local _=q:Create("UIPadding",{PaddingTop=UDim.new(0,3),PaddingLeft=UDim.new(0,2)}) _.Parent=s.sidebar _=nil local _=q:Create("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder}) _.Parent=s.sidebar _=nil local o=r:Create("Frame",{Name="CarouselFrame",AnchorPoint=Vector2.new(0,0.5),BackgroundTransparency=1,Position=UDim2.new(-0.4,0,0.5,0),Size=UDim2.new(0,240,0.35,0)}) o.Parent=s.userinterface o.ClipsDescendants=true local p=r:Create("Frame",{Name="CarouselSlider",AnchorPoint=Vector2.new(0.5,0.5),BackgroundTransparency=1,Position=UDim2.new(0.5,0,0.5,0),Size=UDim2.new(1,0,1,0)}) p.Parent=o local _=r:Create("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center,Padding=UDim.new(0,5)}) _.Parent=p local a=game:GetService("UserInputService") local g local d local c local b p:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()for _,c in ipairs(p:GetChildren())do if c:IsA("UIListLayout")or c:IsA("LocalScript")then continue end local b=o:FindFirstAncestorOfClass("ScreenGui").AbsoluteSize.Y/2 local _=c.AbsoluteSize.Y/2 local _=c.AbsolutePosition.Y+_ local a=math.abs(_-b) local _=0.25-1.2 local _=(_*a)/b local _=_+1 game:GetService("TweenService"):Create(c,TweenInfo.new(0.2),{Size=UDim2.new(_,0,0,40)}):Play()end end) local function _(_)local _=_.Position-c local _=_.Y local _=(b.Y.Offset+_)/1.5 local _=math.clamp(_,-(o.AbsoluteSize.Y+20)/2,(o.AbsoluteSize.Y+20)/2) p.Position=UDim2.new(0.5,0,0.5,_)end p.InputBegan:Connect(function(_)if _.UserInputType==Enum.UserInputType.MouseButton1 or _.UserInputType==Enum.UserInputType.Touch then g=true c=_.Position b=p.Position _.Changed:Connect(function()if _.UserInputState==Enum.UserInputState.End then g=false end end)end end) p.InputChanged:Connect(function(_)if _.UserInputType==Enum.UserInputType.MouseMovement or _.UserInputType==Enum.UserInputType.Touch then d=_ end end) a.InputChanged:Connect(function(a)if a==d and g then _(a)end end) p.Size=UDim2.new(1,0,p.UIListLayout.AbsoluteContentSize.Y,0) p.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()p.Size=UDim2.new(1,0,p.UIListLayout.AbsoluteContentSize.Y,0)end) local a=o.AbsoluteSize i.InputChanged:Connect(function(_)if _.UserInputType==Enum.UserInputType.MouseMovement and k==false then if j.X<a.X/5 and h==false then game:GetService("TweenService"):Create(o,TweenInfo.new(1),{Position=UDim2.new(0.01,0,0.5,0)}):Play() h=true elseif h==true and j.X>a.X+125 then game:GetService("TweenService"):Create(o,TweenInfo.new(1),{Position=UDim2.new(-0.4,0,0.5,0)}):Play() h=false end elseif o.Position.X.Scale>0 and k==true then o.Position=UDim2.new(-0.25,0,0.5,0)end end) function s:Category(_)local d={} d.button=r:Create("TextButton",{Name=_,BackgroundColor3=t.category_button_background,BackgroundTransparency=1,BorderMode=Enum.BorderMode.Inset,BorderColor3=t.category_button_border,Size=UDim2.new(1,-4,0,25),ZIndex=2,AutoButtonColor=false,Font=Enum.Font.GothamSemibold,Text=_,TextColor3=t.text_color,TextSize=14}) d.container=r:Create("ScrollingFrame",{Name=_,BackgroundTransparency=1,ScrollBarThickness=4,BorderSizePixel=0,Size=UDim2.new(1,0,1,0),ZIndex=2,CanvasSize=UDim2.new(0,0,0,0),ScrollBarImageColor3=t.scrollbar_color or Color3.fromRGB(118,118,121),BottomImage="rbxassetid://967852042",MidImage="rbxassetid://967852042",TopImage="rbxassetid://967852042",ScrollBarImageTransparency=1}) d.hider=r:Create("Frame",{Name="Hider",BackgroundTransparency=0,BorderSizePixel=0,BackgroundColor3=t.main_container,Size=UDim2.new(1,0,1,0),ZIndex=5}) d.L=r:Create("Frame",{Name="L",BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Position=UDim2.new(0,10,0,3),Size=UDim2.new(0.5,-20,1,-3),ZIndex=2}) if not n then d.R=r:Create("Frame",{Name="R",AnchorPoint=Vector2.new(1,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Position=UDim2.new(1,-10,0,3),Size=UDim2.new(0.5,-20,1,-3),ZIndex=2})end if n then d.L.Size=UDim2.new(1,-20,1,-3)end if e then game:GetService("TweenService"):Create(d.hider,TweenInfo.new(0.3),{BackgroundTransparency=1}):Play() game:GetService("TweenService"):Create(d.container,TweenInfo.new(0.3),{ScrollBarImageTransparency=0}):Play()end do local a=r:Create("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder}) local b=r:Create("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder}) local function _()local _=0 _=a.AbsoluteContentSize.Y if b.AbsoluteContentSize.Y>_ then _=_ end d.container.CanvasSize=UDim2.new(0,0,0,_+5)end a:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(_) b:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(_) a.Parent=d.L b.Parent=d.R end d.button.MouseEnter:Connect(function()game:GetService("TweenService"):Create(d.button,TweenInfo.new(0.2),{BackgroundTransparency=0}):Play()end) d.button.MouseLeave:Connect(function()game:GetService("TweenService"):Create(d.button,TweenInfo.new(0.2),{BackgroundTransparency=1}):Play()end) d.button.MouseButton1Down:Connect(function()for _,_ in next,s.userinterface["Container"]["Categories"]:GetChildren()do if _:IsA("ScrollingFrame")then if _~=d.container then game:GetService("TweenService"):Create(_.Hider,TweenInfo.new(0.3),{BackgroundTransparency=0}):Play() game:GetService("TweenService"):Create(_,TweenInfo.new(0.3),{ScrollBarImageTransparency=1}):Play()end end end game:GetService("TweenService"):Create(d.button,TweenInfo.new(0.2),{BackgroundTransparency=0.2}):Play() game:GetService("TweenService"):Create(d.hider,TweenInfo.new(0.3),{BackgroundTransparency=1}):Play() game:GetService("TweenService"):Create(d.container,TweenInfo.new(0.3),{ScrollBarImageTransparency=0}):Play() s.categories["UIPageLayout"]:JumpTo(d.container)end) d.button.MouseButton1Up:Connect(function()game:GetService("TweenService"):Create(d.button,TweenInfo.new(0.2),{BackgroundTransparency=1}):Play()end) d.container.Parent=s.categories d.button.Parent=s.sidebar if not n then d.R.Parent=d.container end d.L.Parent=d.container d.hider.Parent=d.container local function _()if n then return"L"end local _=#d.R:GetChildren()-1 local a=#d.L:GetChildren()-1 if a>_ then return"R"else return"L"end end function d:Sector(a)local c={} c.frame=r:Create("Frame",{Name=a,BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Size=UDim2.new(1,0,0,25),ZIndex=2}) c.container=r:Create("Frame",{Name="Container",BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Position=UDim2.new(0,0,0,22),Size=UDim2.new(1,-5,1,-30),ZIndex=2}) c.title=r:Create("TextLabel",{Name="Title",Text=a,BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Size=UDim2.new(1,-5,0,25),ZIndex=2,Font=Enum.Font.GothamBlack,TextColor3=t.text_color,TextSize=15,TextXAlignment=Enum.TextXAlignment.Left}) local b=r:Create("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder}) b.Changed:Connect(function()pcall(function()c.frame.Size=UDim2.new(1,0,0,c.container["UIListLayout"].AbsoluteContentSize.Y+25) c.container.Size=UDim2.new(1,0,0,c.container["UIListLayout"].AbsoluteContentSize.Y)end)end) b.Parent=c.container b=nil c.frame.Parent=d[_()] c.container.Parent=c.frame c.title.Parent=c.frame local function g(_)local b={} b.value=nil b.frame=r:Create("Frame",{Name=a,BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Size=UDim2.new(1,0,0,25),ZIndex=2}) b.label=r:Create("TextLabel",{Name="Title",BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Size=UDim2.new(1,0,1,0),ZIndex=2,Font=Enum.Font.Gotham,TextColor3=t.text_color,TextSize=13,Text=_,TextXAlignment=Enum.TextXAlignment.Left}) b.container=r:Create("Frame",{Name="Container",AnchorPoint=Vector2.new(1,0.5),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Position=UDim2.new(1,0,0.5,0),Size=UDim2.new(0,150,0,22),ZIndex=2}) b.frame.Parent=c.container b.label.Parent=b.frame b.container.Parent=b.frame function b:RefreshBase(_)b.label.Text=_ end return b end function c:Toggle(_,a,b)local c=g(_) if b then c.value=b else c.value=false end c.checkbox=r:Create("Frame",{Name="Checkbox",AnchorPoint=Vector2.new(1,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Position=UDim2.new(1,0,0,0),Size=UDim2.new(0,25,0,25),ZIndex=2}) c.outerbox=r:Create("ImageLabel",{Name="Outer",AnchorPoint=Vector2.new(1,0.5),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Position=UDim2.new(1,0,0.5,0),Size=UDim2.new(0,20,0,20),ZIndex=2,Image="rbxassetid://3570695787",ImageColor3=t.checkbox_outer,ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(100,100,100,100),SliceScale=0.06}) c.checkboxbutton=r:Create("ImageButton",{AnchorPoint=Vector2.new(0.5,0.5),Name="CheckboxButton",BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Position=UDim2.new(0.5,0,0.5,0),Size=UDim2.new(0,14,0,14),ZIndex=2,Image="rbxassetid://3570695787",ImageColor3=t.checkbox_inner,ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(100,100,100,100),SliceScale=0.04}) if b then game:GetService("TweenService"):Create(c.outerbox,TweenInfo.new(0.2),{ImageColor3=t.checkbox_checked}):Play() game:GetService("TweenService"):Create(c.checkboxbutton,TweenInfo.new(0.2),{ImageColor3=t.checkbox_checked}):Play()end c.checkboxbutton.MouseEnter:Connect(function()local _=Color3.fromRGB((t.checkbox_outer.R*255)+20,(t.checkbox_outer.G*255)+20,(t.checkbox_outer.B*255)+20) game:GetService("TweenService"):Create(c.outerbox,TweenInfo.new(0.2),{ImageColor3=_}):Play()end) c.checkboxbutton.MouseLeave:Connect(function()if not c.value then game:GetService("TweenService"):Create(c.outerbox,TweenInfo.new(0.2),{ImageColor3=t.checkbox_outer}):Play()else game:GetService("TweenService"):Create(c.outerbox,TweenInfo.new(0.2),{ImageColor3=t.checkbox_checked}):Play()end end) c.checkboxbutton.MouseButton1Down:Connect(function()if c.value then game:GetService("TweenService"):Create(c.checkboxbutton,TweenInfo.new(0.2),{ImageColor3=t.checkbox_outer}):Play()else game:GetService("TweenService"):Create(c.checkboxbutton,TweenInfo.new(0.2),{ImageColor3=t.checkbox_checked}):Play()end end) c.checkboxbutton.MouseButton1Up:Connect(function()c.value=not c.value if a then coroutine.wrap(a)(c.value)end if c.value then game:GetService("TweenService"):Create(c.outerbox,TweenInfo.new(0.2),{ImageColor3=t.checkbox_checked}):Play()else game:GetService("TweenService"):Create(c.outerbox,TweenInfo.new(0.2),{ImageColor3=t.checkbox_outer}):Play() game:GetService("TweenService"):Create(c.checkboxbutton,TweenInfo.new(0.2),{ImageColor3=t.checkbox_inner}):Play()end end) c.checkboxbutton.Parent=c.outerbox c.outerbox.Parent=c.container local _={} function _:Refresh(_)c:RefreshBase(_)end end function c:Slider(_,h,i)local k=g(_) k.value=0 local e=h.suffix or"" local g=h.min or 0 local f=h.max or 1 local a=h.default local b=h.precise or false local d local c k.sliderbar=r:Create("ImageButton",{Name="Sliderbar",AnchorPoint=Vector2.new(1,0.5),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Position=UDim2.new(1,0,0.5,0),Size=UDim2.new(1,0,0,6),ZIndex=2,Image="rbxassetid://3570695787",ImageColor3=t.slider_background,ImageTransparency=0.5,ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(100,100,100,100),SliceScale=0.02}) k.numbervalue=r:Create("TextLabel",{Name="Value",AnchorPoint=Vector2.new(0,0.5),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Position=UDim2.new(0.5,5,0.5,0),Size=UDim2.new(1,0,0,13),ZIndex=2,Font=Enum.Font.Gotham,TextXAlignment=Enum.TextXAlignment.Left,Text="",TextTransparency=1,TextColor3=t.slider_text,TextSize=13}) k.visiframe=r:Create("ImageLabel",{Name="Frame",BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Size=UDim2.new(0.5,0,1,0),ZIndex=2,Image="rbxassetid://3570695787",ImageColor3=t.slider_color,ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(100,100,100,100),SliceScale=0.02}) if h.default then local _=math.clamp(h.default-k.sliderbar.AbsolutePosition.X,0,150) local _=_/150 local a=a/f k.value=math.floor((g+(f-g)*_)*100)/100 game:GetService("TweenService"):Create(k.visiframe,TweenInfo.new(0.1),{Size=UDim2.new(a,0,1,0)}):Play() if i then coroutine.wrap(i)(k.value)end end k.sliderbar.MouseButton1Down:Connect(function()local a=math.clamp(j.X-k.sliderbar.AbsolutePosition.X,0,150) local _=a/150 k.value=math.floor((g+(f-g)*_)*100)/100 if b then k.numbervalue.Text=math.ceil(tostring(k.value))..e else k.numbervalue.Text=tostring(k.value)..e end if i then local _=k.value if h.precise then _=math.ceil(k.value)end coroutine.wrap(i)(_)end game:GetService("TweenService"):Create(k.visiframe,TweenInfo.new(0.1),{Size=UDim2.new(a/150,0,1,0),ImageColor3=t.slider_color_sliding}):Play() game:GetService("TweenService"):Create(k.numbervalue,TweenInfo.new(0.1),{Position=UDim2.new(a/150,5,0.5,0),TextTransparency=0}):Play() d=j.Move:Connect(function()local a=math.clamp(j.X-k.sliderbar.AbsolutePosition.X,0,150) local _=a/150 k.value=math.floor((g+(f-g)*_)*100)/100 if b then k.numbervalue.Text=math.ceil(tostring(k.value))..e else k.numbervalue.Text=tostring(k.value)..e end if i then local a,_=pcall(function()if h.precise then i(math.ceil(k.value))else i(k.value)end end) if not a then warn("error: ".._)end end game:GetService("TweenService"):Create(k.visiframe,TweenInfo.new(0.1),{Size=UDim2.new(a/150,0,1,0),ImageColor3=t.slider_color_sliding}):Play() local _=UDim2.new(a/150,5,0.5,0) if _.Width.Scale>=0.6 then _=UDim2.new(1,-k.numbervalue.TextBounds.X,0.5,10)end game:GetService("TweenService"):Create(k.numbervalue,TweenInfo.new(0.1),{Position=_,TextTransparency=0}):Play()end) c=game:GetService("UserInputService").InputEnded:Connect(function(_)if _.UserInputType==Enum.UserInputType.MouseButton1 then game:GetService("TweenService"):Create(k.visiframe,TweenInfo.new(0.1),{ImageColor3=t.slider_color}):Play() game:GetService("TweenService"):Create(k.numbervalue,TweenInfo.new(0.1),{TextTransparency=1}):Play() d:Disconnect() d=nil c:Disconnect() c=nil end end)end) k.visiframe.Parent=k.sliderbar k.numbervalue.Parent=k.sliderbar k.sliderbar.Parent=k.container local _={} function _:SetValue(_)local _=math.clamp(_-k.sliderbar.AbsolutePosition.X,0,150) local _=_/150 local a=a/f k.value=math.floor((g+(f-g)*_)*100)/100 game:GetService("TweenService"):Create(k.visiframe,TweenInfo.new(0.1),{Size=UDim2.new(a,0,1,0)}):Play() if i then coroutine.wrap(i)(k.value)end end function _:Refresh(_)k:RefreshBase(_)end end function c:Dropdown(_,d,c)local e=g(_) if d then e.value=d[1]else e.value='none'end local b if d and d then b=d end e.dropped=false e.dropdown=r:Create("ImageButton",{Name="Dropdown",BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Size=UDim2.new(1,0,1,0),ZIndex=2,Image="rbxassetid://3570695787",ImageColor3=t.dropdown_background,ImageTransparency=0.5,ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(100,100,100,100),SliceScale=0.02}) e.selected=r:Create("TextLabel",{Name="Selected",BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Position=UDim2.new(0,10,0,0),Size=UDim2.new(1,-35,1,0),ZIndex=2,Font=Enum.Font.Gotham,Text=tostring(e.value),TextColor3=t.dropdown_text,TextSize=13,TextXAlignment=Enum.TextXAlignment.Left}) e.list=r:Create("ScrollingFrame",{Name="List",BackgroundColor3=Color3.fromRGB(45,45,50),BackgroundTransparency=0.25,BorderSizePixel=0,Position=UDim2.new(0,0,1,0),Size=UDim2.new(1,0,0,100),ZIndex=3,BottomImage="rbxassetid://967852042",MidImage="rbxassetid://967852042",TopImage="rbxassetid://967852042",ScrollBarThickness=4,VerticalScrollBarInset=Enum.ScrollBarInset.None,ScrollBarImageColor3=t.dropdown_scrollbar_color}) local _=r:Create("UIListLayout",{SortOrder=Enum.SortOrder.LayoutOrder,Padding=UDim.new(0,2)}) _.Parent=e.list _=nil local _=r:Create("UIPadding",{PaddingLeft=UDim.new(0,2)}) _.Parent=e.list _=nil local function a()if e.dropped then e.fadelist()end for _,_ in next,e.list:GetChildren()do if _:IsA("TextButton")then _:Destroy()end end for _,_ in ipairs(b)do local a=r:Create("TextButton",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Size=UDim2.new(1,0,0,20),ZIndex=3,Font=Enum.Font.Gotham,Text=_,TextColor3=t.dropdown_text,TextSize=13}) a.Parent=e.list a.MouseEnter:Connect(function()game:GetService("TweenService"):Create(a,TweenInfo.new(0.1),{TextColor3=t.dropdown_text_hover}):Play()end) a.MouseLeave:Connect(function()game:GetService("TweenService"):Create(a,TweenInfo.new(0.1),{TextColor3=t.dropdown_text}):Play()end) a.MouseButton1Click:Connect(function()if e.dropped then e.value=_ e.selected.Text=_ e.fadelist() if c then coroutine.wrap(c)(e.value)end end end) game:GetService("TweenService"):Create(a,TweenInfo.new(0),{TextTransparency=1}):Play()end game:GetService("TweenService"):Create(e.list,TweenInfo.new(0),{Size=UDim2.new(1,0,0,0),Position=UDim2.new(0,0,1,0),CanvasSize=UDim2.new(0,0,0,e.list["UIListLayout"].AbsoluteContentSize.Y),ScrollBarImageTransparency=1,BackgroundTransparency=1}):Play()end function e.fadelist()e.dropped=not e.dropped if e.dropped then for _,_ in next,e.list:GetChildren()do if _:IsA("TextButton")then game:GetService("TweenService"):Create(_,TweenInfo.new(0.2),{TextTransparency=0}):Play()end end game:GetService("TweenService"):Create(e.list,TweenInfo.new(0.2),{Size=UDim2.new(1,0,0,math.clamp(e.list["UIListLayout"].AbsoluteContentSize.Y,0,150)),Position=UDim2.new(0,0,1,0),ScrollBarImageTransparency=0,BackgroundTransparency=0.25}):Play()else for _,_ in ipairs(e.list:GetChildren())do if _:IsA("TextButton")then game:GetService("TweenService"):Create(_,TweenInfo.new(0.2),{TextTransparency=1}):Play()end end game:GetService("TweenService"):Create(e.list,TweenInfo.new(0.2),{Size=UDim2.new(1,0,0,0),Position=UDim2.new(0,0,1,0),ScrollBarImageTransparency=1,BackgroundTransparency=1}):Play()end end e.dropdown.MouseEnter:Connect(function()game:GetService("TweenService"):Create(e.selected,TweenInfo.new(0.1),{TextColor3=t.dropdown_text_hover}):Play()end) e.dropdown.MouseLeave:Connect(function()game:GetService("TweenService"):Create(e.selected,TweenInfo.new(0.1),{TextColor3=t.dropdown_text}):Play()end) e.dropdown.MouseButton1Click:Connect(function()e.fadelist()end) a() e.selected.Parent=e.dropdown e.dropdown.Parent=e.container e.list.Parent=e.container local _={} function _:RefreshOptions(_)b=_ e.value=d[1] e.selected.Text=d[1] a()end function _:SetValue(_)e.selected.Text=_ e.value=_ if e.dropped then e.fadelist()end if c then coroutine.wrap(c)(e.value)end end return _ end function c:Textbox(_,a,b)local c=g(_) c.background=r:Create("ImageLabel",{Name="Background",BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Size=UDim2.new(1,0,1,0),ZIndex=2,Image="rbxassetid://3570695787",ImageColor3=t.textbox_background,ImageTransparency=0.5,ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(100,100,100,100),SliceScale=0.02}) c.textbox=r:Create("TextBox",{Name="Textbox",BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Position=UDim2.new(0,0,0,0),Size=UDim2.new(1,0,1,0),ZIndex=2,Font=Enum.Font.Gotham,Text="",TextColor3=t.textbox_text,PlaceholderText=a or"Value",TextSize=13,TextXAlignment=Enum.TextXAlignment.Center,ClearTextOnFocus=false}) c.background.MouseEnter:Connect(function()game:GetService("TweenService"):Create(c.textbox,TweenInfo.new(0.1),{TextColor3=t.textbox_text_hover}):Play()end) c.background.MouseLeave:Connect(function()game:GetService("TweenService"):Create(c.textbox,TweenInfo.new(0.1),{TextColor3=t.textbox_text}):Play()end) c.textbox.Focused:Connect(function()f=true game:GetService("TweenService"):Create(c.background,TweenInfo.new(0.2),{ImageColor3=t.textbox_background_hover}):Play()end) c.textbox.FocusLost:Connect(function()f=false game:GetService("TweenService"):Create(c.background,TweenInfo.new(0.2),{ImageColor3=t.textbox_background}):Play() game:GetService("TweenService"):Create(c.textbox,TweenInfo.new(0.1),{TextColor3=t.textbox_text}):Play() c.value=c.textbox.Text if b then local a,_=pcall(function()b(c.value)end) if not a then warn("error: ".._)end end end) function c:SetValue(_)c.value=tostring(_) c.textbox.Text=tostring(_)end c.background.Parent=c.container c.textbox.Parent=c.container end function c:Button(_,a,b)local c=g(_) c.background=r:Create("ImageLabel",{Name="Background",BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Size=UDim2.new(1,0,1,0),ZIndex=2,Image="rbxassetid://3570695787",ImageColor3=t.button_background,ImageTransparency=0.5,ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(100,100,100,100),SliceScale=0.02}) c.button=r:Create("TextButton",{Name="Button",BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Position=UDim2.new(0,0,0,0),Size=UDim2.new(1,0,1,0),ZIndex=2,Font=Enum.Font.Gotham,Text=a or"Button",TextColor3=t.textbox_text,TextSize=13,TextXAlignment=Enum.TextXAlignment.Center}) c.background.ClipsDescendants=true c.button.MouseEnter:Connect(function()game:GetService("TweenService"):Create(c.background,TweenInfo.new(0.2),{ImageColor3=t.button_background_hover}):Play()end) c.button.MouseLeave:Connect(function()game:GetService("TweenService"):Create(c.background,TweenInfo.new(0.2),{ImageColor3=t.button_background}):Play()end) c.button.MouseButton1Down:Connect(function(a,_)r:Ripple(c.background,a,_) game:GetService("TweenService"):Create(c.background,TweenInfo.new(0.2),{ImageColor3=t.button_background_down}):Play()end) c.button.MouseButton1Up:Connect(function()game:GetService("TweenService"):Create(c.background,TweenInfo.new(0.2),{ImageColor3=t.button_background}):Play() if b then coroutine.wrap(b)()end end) c.background.Parent=c.container c.button.Parent=c.container end function c:Label(_)local _=g(_) local a={} function a:Refresh(a)_:RefreshBase(a)end return a end function c:Keybind(e,c,a,b,d)local h=g(e) local f=tostring(i:GetStringForKeyCode(c)) if f==""then f=tostring(c.Name)end local g h.holding=false h.background=r:Create("ImageLabel",{Name="Background",BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Size=UDim2.new(1,0,1,0),ZIndex=2,Image="rbxassetid://3570695787",ImageColor3=t.button_background,ImageTransparency=0.5,ScaleType=Enum.ScaleType.Slice,SliceCenter=Rect.new(100,100,100,100),SliceScale=0.02}) h.button=r:Create("TextButton",{Name="Button",BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Position=UDim2.new(0,0,0,0),Size=UDim2.new(1,0,1,0),ZIndex=2,Font=Enum.Font.Gotham,Text="Click to Bind",TextColor3=t.textbox_text,TextSize=13,TextXAlignment=Enum.TextXAlignment.Center}) h.button.MouseEnter:Connect(function()game:GetService("TweenService"):Create(h.background,TweenInfo.new(0.2),{ImageColor3=t.button_background_hover}):Play()end) h.button.MouseLeave:Connect(function()game:GetService("TweenService"):Create(h.background,TweenInfo.new(0.2),{ImageColor3=t.button_background}):Play()end) h.button.MouseButton1Down:Connect(function()game:GetService("TweenService"):Create(h.background,TweenInfo.new(0.2),{ImageColor3=t.button_background_down}):Play()end) h.button.MouseButton2Down:Connect(function()game:GetService("TweenService"):Create(h.background,TweenInfo.new(0.2),{ImageColor3=t.button_background_down}):Play()end) h.CarouselContent=r:Create("Frame",{Name="CarouselContent",AnchorPoint=Vector2.new(0.5,0),BackgroundColor3=t.main_container}) h.Edges=r:Create("UICorner",{Name="Edges",CornerRadius=UDim.new(0.15,0)}) h.Title=r:Create("TextLabel",{Name="Title",BackgroundTransparency=1,Position=UDim2.new(0.05,0,0,0),Size=UDim2.new(0.7,0,1,0),Font=Enum.Font.GothamBold,Text=e,TextColor3=t.textbox_text,TextXAlignment=Enum.TextXAlignment.Left}) h.Title.TextScaled=true h.Bind=r:Create("TextLabel",{Name="Bind",AnchorPoint=Vector2.new(0.5,0.5),BackgroundColor3=t.button_background,Position=UDim2.new(0.875,0,0.5,0),Size=UDim2.new(0.25,0,0.75,0),Font=Enum.Font.GothamBlack,Text=f,TextColor3=t.textbox_text,TextSize=25}) h.BindEdge=r:Create("UICorner",{CornerRadius=UDim.new(0.15,0),Name="Edges"}) h.Squaring=r:Create("UIAspectRatioConstraint",{Name="Squaring"}) h.CarouselContent.Parent=p h.Edges.Parent=h.CarouselContent h.Title.Parent=h.CarouselContent h.Bind.Parent=h.CarouselContent h.BindEdge.Parent=h.Bind h.Squaring.Parent=h.Bind local function _(_,_)if _==Enum.UserInputState.End then return end h.holding=true if a then coroutine.wrap(a)()end end h.button.MouseButton1Up:Connect(function()game:GetService("TweenService"):Create(h.background,TweenInfo.new(0.2),{ImageColor3=t.button_background}):Play() h.button.Text="Press key..." if g then g:Disconnect() g=nil end h.holding=false g=game:GetService("UserInputService").InputBegan:Connect(function(c)if c.UserInputType.Name=="Keyboard"and c.KeyCode~=m.ToggleKey and c.KeyCode~=Enum.KeyCode.Backspace then local a=tostring(i:GetStringForKeyCode(c.KeyCode)) if a==""then a=tostring(c.KeyCode.Name)end h.button.Text="Bound to "..a h.Bind.Text=a if g then g:Disconnect() g=nil end l:UnbindAction(e..f) f=a h.value=c.KeyCode if d==true or d==nil then l:BindAction(e..a,_,false,c.KeyCode)end if b and type(b)=="function"then coroutine.wrap(b)(c.KeyCode)end elseif c.KeyCode==Enum.KeyCode.Backspace then f=nil h.button.Text="Click to Bind" h.value=nil h.holding=false if g then g:Disconnect() g=nil end elseif c.KeyCode==m.ToggleKey then h.button.Text="Invalid Key" h.value=nil end end)end) function h:SetValue(_)h.value=tostring(_) h.button.Text="Bound to "..tostring(_)end if f then h.button.Text="Bound to "..f if d==true or d==nil then l:BindAction(e..f,_,false,c)end end h.background.Parent=h.container h.button.Parent=h.container end return c end e=false return d end function s:Settings()local _=s:Category("SETTINGS") local _=_:Sector("UI Options") _:Keybind('Toggle Key',m.ToggleKey,nil,function(_)s.ChangeToggleKey(_)end,false)end q:addShadow(s.container,0) s.categories.ClipsDescendants=true if not game:GetService("RunService"):IsStudio()then s.userinterface.Parent=game:GetService("CoreGui")else s.userinterface.Parent=game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")end s.container.Parent=s.userinterface s.categories.Parent=s.container s.sidebar.Parent=s.container s.topbar.Parent=s.container s.tip.Parent=s.topbar return s,m end return r
end

local Library = GetLib()

-- Services --
local WorkspaceService = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlayerService = game:GetService("Players")

local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")

-- Remotes --
local Remotes = ReplicatedStorage:WaitForChild("Events")

-- LocalPlayer --
local LocalPlayer = PlayerService.LocalPlayer

local CurrentCamera = WorkspaceService.CurrentCamera

local PlayerStats = Instance.new("StringValue")

-- LocalPlayer Character Content --
local LocalPlayerCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local LocalPlayerHumanoidRootPart = LocalPlayerCharacter:WaitForChild("HumanoidRootPart")
local LocalPlayerHumanoid = LocalPlayerCharacter:WaitForChild("Humanoid")

LocalPlayer.CharacterAdded:Connect(function(Character)
	LocalPlayerCharacter = Character
	LocalPlayerHumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
	LocalPlayerHumanoid = Character:WaitForChild("Humanoid")
	
	PlayerStats.Value = HttpService:JSONEncode(Remotes.GetStats:InvokeServer({ "upgrades", "perkPoints", "vitality", "energy", "strength", "healing", "money" }))
end)




local Count = 0
for i,v in next, getreg() do
	if typeof(v) == 'function' and is_synapse_function(v) and typeof(i) == 'string' and i:len() == 16 then
		Count += 1
	end
end
if Count > 53 and 53 < Count then
	LocalPlayer:Kick("Do not use hookfunctions before executing this script")
	wait(0.25)
	while true do
	end
end

if PlayerService:GetUserIdFromNameAsync(LocalPlayer.Name) ~= LocalPlayer.UserId then
	LocalPlayer:Kick("Do not attempt to spoof your ID")
	wait(0.25)
	while true do
	end
end

if not table.find(Whitelist, LocalPlayer.UserId) then
	LocalPlayer:Kick("Not Whitelisted")
	wait(0.25)
	while true do
	end
end

-- // VARIABLES \\ --

local CurrentPunch = 1
local PunchCooldown = 0

local NPCAUTOFARM = {
	Enabled = false,
	NPC = "Thug",
}

local ORBAUTOFARM = {
	Enabled = false,
	FarmMethod = "Wave"
}

local STATS = {
	Enabled = false,
	Stat = "Vitality",
	AllocateAmount = 1
}

local PVPTELEKINESIS = {
	Spam = false,
	Kill = false,
	AutoClean = false
}

-- // FUNCTIONS \\ --

-- [ Supplement ] --
local function GetClosestCharacter()
	local Distance = math.huge
	local Current

	for i,v in ipairs(WorkspaceService:GetChildren()) do
		local HRP = v:FindFirstChild("HumanoidRootPart")
		local HUM = v:FindFirstChildOfClass("Humanoid")
		if HRP and HUM and HUM.Health > 0 then
			local Mag = (LocalPlayerHumanoidRootPart.Position - HRP.Position).Magnitude

			if Mag < Distance then
				Distance = Mag
				Current = v
			end
		end
	end

	return Current
end

local function GetClosestPlayer()
	local Distance = math.huge
	local Current

	for i,v in ipairs(PlayerService:GetPlayers()) do
		local Character = v.Character
		if not Character then
			continue
		end

		local HRP = Character:FindFirstChild("HumanoidRootPart")
		local HUM = Character:FindFirstChildOfClass("Humanoid")
		if HRP and HUM and HUM.Health > 0 then
			local Mag = (LocalPlayerHumanoidRootPart.Position - HRP.Position).Magnitude

			if Mag < Distance then
				Distance = Mag
				Current = v
			end
		end
	end

	return Current
end

-- [ Main ] --
local function Attack(Name)
	local Character = WorkspaceService:FindFirstChild(Name)

	if Name == "Civ/Police" then
		Character = WorkspaceService:FindFirstChild("Police") or WorkspaceService:FindFirstChild("Civilian")
	end

	if not Character then
		return
	end

	local Character_HRP = Character:WaitForChild("HumanoidRootPart")
	local Character_Humanoid = Character:WaitForChild("Humanoid")

	if Character_Humanoid.Health <= 0 then
		Character:Destroy()
		return
	end

	LocalPlayerHumanoidRootPart.CFrame = Character_HRP.CFrame * CFrame.new(0, 0, 1.5)

	PunchCooldown = PunchCooldown + 1

	if PunchCooldown > 15 then
		PunchCooldown = 0
		Remotes.Punch:FireServer(0, 0.1, 1)
	end
end

local function Telekinesis(Direction)
	local Tick = 0

	local Target
	local HumanoidRootPart
	local TelekinesisPosition

	repeat
		if Direction then
			Target = Remotes.ToggleTelekinesis:InvokeServer(Direction, true)
		else
			Target = Remotes.ToggleTelekinesis:InvokeServer(CurrentCamera.CFrame.LookVector.Unit, true)
		end

		Tick = Tick + 1
		if Tick > 10 then
			return nil, nil, nil
		end

		RunService.Heartbeat:Wait()

	until Target

	HumanoidRootPart = Target:WaitForChild("HumanoidRootPart")
	TelekinesisPosition = HumanoidRootPart:WaitForChild("telekinesisPosition")

	return Target, HumanoidRootPart, TelekinesisPosition
end

-- // GUI \\ --

-- Window --
local Window = Library.new(true)
Window.ChangeToggleKey(Enum.KeyCode.B)

-- Catagories --
local UI_CATEGORY_AUTOFARM = Window:Category("Autofarm")
local UI_CATEGORY_STATS = Window:Category("Stats")
local UI_CATEGORY_PVP = Window:Category("PVP")
local UI_CATEGORY_MISC = Window:Category("Miscellaneous")

-- Catagory: Autofarm --
local UI_NPCFARM = UI_CATEGORY_AUTOFARM:Sector("NPC Farm")
UI_NPCFARM:Toggle("Farming Enabled", function(bool)
	NPCAUTOFARM.Enabled = bool
end)
UI_NPCFARM:Button("Tool Reach", "Generate", function()
	local Tool = Instance.new("Tool")
	Tool.Name = "Reach"
	Tool.Parent = LocalPlayer.Backpack
	Tool.RequiresHandle = true
	local Part = Instance.new("Part")
	Part.Name = "Handle"
	Part.Parent = Tool
	Part.Transparency = 1
end)
UI_NPCFARM:Dropdown("Farming NPC:", {"Thug", "Civilian", "Police", "Civ/Police"}, function(Option)
	NPCAUTOFARM.NPC = Option
end)

local UI_ORBFARM = UI_CATEGORY_AUTOFARM:Sector("ORB Farm")
UI_ORBFARM:Toggle("Farming Enabled", function(bool)
	ORBAUTOFARM.Enabled = bool
end)
UI_ORBFARM:Dropdown("Farm Method", {'Wave', 'Steady'}, function(Option)
	ORBAUTOFARM.FarmMethod = Option
end)

-- Catagory: Stats --
local UI_STATSCOUNTER = UI_CATEGORY_STATS:Sector("Stats Counter")

local VitalityUI = UI_STATSCOUNTER:Label("Vitality")
local HealingUI = UI_STATSCOUNTER:Label("Healing")
local StrengthUI = UI_STATSCOUNTER:Label("Strength")
local EnergyUI = UI_STATSCOUNTER:Label("Energy")

PlayerStats.Changed:Connect(function(Value)
	local Table = HttpService:JSONDecode(Value)
	VitalityUI:Refresh("Vitality - " .. tostring(Table.vitality))
	HealingUI:Refresh("Healing - " .. tostring(Table.healing))
	StrengthUI:Refresh("Strength - " .. tostring(Table.strength))
	EnergyUI:Refresh("Energy - " .. tostring(Table.energy))
end)

PlayerStats.Value = HttpService:JSONEncode(Remotes.GetStats:InvokeServer({ "upgrades", "perkPoints", "vitality", "energy", "strength", "healing", "money" }))


local UI_STATSALLOCATION = UI_CATEGORY_STATS:Sector("Stat Allocation")

UI_STATSALLOCATION:Dropdown("Stat Name", {"Vitality","Healing","Strength","Energy"}, function(Option)
	STATS.Stat = string.lower(Option)
end)

UI_STATSALLOCATION:Slider("Allocate Amount", {min = 1, max = 25, suffix = " Point(s)", precise = true}, function(Value)
	STATS.AllocateAmount = Value
end)

UI_STATSALLOCATION:Button("Allocate once", "Allocate", function()
	for i = 1, STATS.AllocateAmount do
		Remotes.UpgradeAbility:InvokeServer(STATS.Stat)
	end
end)

UI_STATSALLOCATION:Toggle("Auto-Allocate", function(bool)
	STATS.Enabled = bool
end)


-- Catagory: PVP --
local UI_PVPTELEKINESIS = UI_CATEGORY_PVP:Sector("Telekinesis")

UI_PVPTELEKINESIS:Toggle("AutoClean", function(bool)
	PVPTELEKINESIS.AutoClean = bool
end)

UI_PVPTELEKINESIS:Toggle("Spam Telekinesis", function(bool)
	PVPTELEKINESIS.Spam = bool
end)

UI_PVPTELEKINESIS:Keybind("Perm Telekinesis", Enum.KeyCode.G, function()
	local Character, HumanoidRootPart, BodyPosition = Telekinesis()
	if not BodyPosition then
		return
	end
	repeat
		wait(0.2)
		BodyPosition.Position = LocalPlayerHumanoidRootPart.Position + CurrentCamera.CFrame.LookVector.Unit * 10
	until not BodyPosition
end)

UI_PVPTELEKINESIS:Keybind("Kill Telekinesis", Enum.KeyCode.H, function()
	local Character, HumanoidRootPart, BodyPosition = Telekinesis()
	if not BodyPosition then
		return
	end
	BodyPosition.P = 999e9
	BodyPosition.Position = Vector3.new(0, 10000, 0)
	wait(0.2)
	BodyPosition.Position = Vector3.new(10000, 10000, 0)
	wait(0.2)
	BodyPosition.Position = Vector3.new(10000, -math.huge, 0)
end)

local UI_PVPDESTRUCTION = UI_CATEGORY_PVP:Sector("Destruction")

UI_PVPDESTRUCTION:Button("Trap All", "Activate", function()
	for i,v in ipairs(PlayerService:GetPlayers()) do
		local Character = v.Character
		if Character then
			local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

			LocalPlayerHumanoidRootPart.CFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)

			local Tick = 0
			local Character, HRP, BodyPosition

			repeat
				wait()
				Tick = Tick + 1
				local Character, HRP, BodyPosition = Telekinesis((HumanoidRootPart.Position - LocalPlayerHumanoidRootPart.Position).Unit)
			until Character or Tick > 10
		end
	end
end)

UI_PVPDESTRUCTION:Button("Kill All", "Activate", function()
	for i,v in ipairs(PlayerService:GetPlayers()) do
		local Character = v.Character
		if Character then
			local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

			LocalPlayerHumanoidRootPart.CFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)

			local Tick = 0
			local Character, HRP, BodyPosition

			repeat
				wait()
				Tick = Tick + 1
				local Character, HRP, BodyPosition = Telekinesis((HumanoidRootPart.Position - LocalPlayerHumanoidRootPart.Position).Unit)
			until Character or Tick > 10

			if BodyPosition then
				BodyPosition.P = math.huge
				BodyPosition.Position = Vector3.new(0, 10000, 0)
				wait(0.1)
				BodyPosition.Position = Vector3.new(1000, 10000, 0)
				wait(0.1)
				BodyPosition.Position = Vector3.new(1000, -math.huge, 0)
			end
		end
	end
end)


-- // ACTIONS \\ --
RunService.Heartbeat:Connect(function()

	-- NPC Farm --
	if NPCAUTOFARM.Enabled == true then
		Attack(NPCAUTOFARM.NPC)
	end

	-- Orb Farm --
	if ORBAUTOFARM.Enabled == true then
		if ORBAUTOFARM.FarmMethod == "Wave" then
			for i,v in ipairs(WorkspaceService.ExperienceOrbs:GetChildren()) do
				v.Position = LocalPlayerHumanoidRootPart.Position
			end
		elseif WorkspaceService.ExperienceOrbs:FindFirstChild("experienceOrb") then
			WorkspaceService.ExperienceOrbs:FindFirstChild("experienceOrb").Position = LocalPlayerHumanoidRootPart.Position
		end
	end

	-- Stats --
	if STATS.Enabled == true and HttpService:JSONDecode(PlayerStats.Value).perkPoints > 0 then
		Remotes.UpgradeAbility:InvokeServer(STATS.Stat)
		PlayerStats.Value = HttpService:JSONEncode(Remotes.GetStats:InvokeServer({ "upgrades", "perkPoints", "vitality", "energy", "strength", "healing", "money" }))
	end

	-- Telekenisis --
	if PVPTELEKINESIS.Spam == true then
		local Character, HumanoidRootPart, BodyPosition = Telekinesis()
		if not BodyPosition then
			return
		end
		coroutine.wrap(function()
			repeat
				wait(0.2)
				BodyPosition.Position = LocalPlayerHumanoidRootPart.Position + CurrentCamera.CFrame.LookVector.Unit * 10
			until not BodyPosition
		end)()
	end

	if PVPTELEKINESIS.Kill == true then
		coroutine.wrap(function()
			local Character, HumanoidRootPart, BodyPosition = Telekinesis()
			if not BodyPosition then
				return
			end
			BodyPosition.P = 999e9
			BodyPosition.Position = Vector3.new(0, 10000, 0)
			wait(0.2)
			BodyPosition.Position = Vector3.new(10000, 10000, 0)
			wait(0.2)
			BodyPosition.Position = Vector3.new(10000, -math.huge, 0)
		end)()
	end

	if PVPTELEKINESIS.AutoClean == true then
		Remotes.ToggleTelekinesis:InvokeServer(false)
	end
end)


