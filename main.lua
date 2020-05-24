-- we hit 35 likes, and I'm a man of my word, congrats. You get to see my messy as hell code:

local library = loadstring(game:HttpGet("https://pastebin.com/raw/eKwyeQa0", true))()
npcFarm = "OFF"
orbFarm = "OFF"
speed = "30"
distance = "1.5"
npc = "Thug"
k = game.Workspace:FindFirstChild("Thug")
farming = false
hplimit = game.Players.LocalPlayer.Character.Humanoid.MaxHealth/3
hpmax = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
nosafe = "OFF"
runtoggle = "OFF"

--[[
-----------------------------------------------------------------
  __ __ _ ____ ____  __  
 (  |  ( (_  _|  _ \/  \ 
  )(/    / )(  )   (  O )
 (__)_)__)(__)(__\_)\__/ 

-----------------------------------------------------------------
]]

loadstring(game:HttpGet(("https://raw.githubusercontent.com/icuck/AgeofHeroesAutofarm/master/loadstrings/intro.lua"), true))()

--end




--[[
-----------------------------------------------------------------
 _  _  _  _ __ ____ ____ __   __ ____ ____ 
/ )( \/ )( (  |_  _|  __|  ) (  ) ___|_  _)
\ /\ /) __ ()(  )(  ) _)/ (_/\)(\___ \ )(  
(_/\_)\_)(_(__)(__)(____)____(__|____/(__) 
-----------------------------------------------------------------
]]


loadstring(game:HttpGet(("https://raw.githubusercontent.com/icuck/AgeofHeroesAutofarm/master/loadstrings/Autoupdate.lua"), true))()


-- end



--[[
-----------------------------------------------------------------
 ____ __  ____     __  
(_  _) _\(  _ \   /  \ 
  )(/    \) _ (  (_/ / 
 (__)_/\_(____/   (__) 

-----------------------------------------------------------------
]]



local tab1 = library:CreateTab("Orbs Farm", true)


local toggle = library:MakeToggle(tab1,"Orbs Autofarm",false,function(toggle)
  orbFarm = toggle.Text
  print(orbFarm)
end)

local box = library:MakeBox(tab1,"Walkspeed","Input",function(box)
  speed = box.Text
  print(speed)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end)

local button = library:MakeButton(tab1,"Speed set",function(button)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end)

--end

--[[
-----------------------------------------------------------------
 ____ __  ____    ____ 
(_  _) _\(  _ \  (___ \
  )(/    \) _ (   / __/
 (__)_/\_(____/  (____)

-----------------------------------------------------------------
]]


local tab2 = library:CreateTab("NPC Autofarm", false)


local box = library:MakeBox(tab2,"Distance","Input",function(box)
   print(box.Text)
   distance = box.Text
end)

local toggle = library:MakeToggle(tab2,"Autofarm",false,function(toggle)
  npcFarm = toggle.Text
  print(npcFarm)
end)

local toggle = library:MakeToggle(tab2,"Safe teleport",false,function(toggle)
  nosafe = toggle.Text
end)




local dropdown = library:MakeDropdown(tab2,"NPC",{"Thug","Civilian","Police"},"Thug",function(dropdown)
  npc = dropdown.Text
  print(npc)
end)


--[[
--------------------------------------------
 ____ _  _ __ _  ___ ____ __ __  __ _  ____ 
(  __) )( ( (/ \/ __|_  _|  )  \(  ( \/ ___)
 ) _)) \/ (    ( (__  )(  )(  O )    /\___ \
(__) \____|_)__)\___)(__)(__)__/\_)__)(____/

--------------------------------------------
]]



game:GetService('RunService').Heartbeat:connect(function()
  if orbFarm == "ON" then
    wait(0.5)
    for i,v in pairs(game:GetService("Workspace").ExperienceOrbs:GetChildren()) do
      v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end
end


  if npcFarm == "ON" and farming == false then
    farming = true
    wait(0.5)
    enemy = game.Workspace:FindFirstChild(npc)
    repeat
      wait(0.1)
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame + enemy.HumanoidRootPart.CFrame.lookVector * distance
    until enemy.Humanoid.Health <= 5 or npcFarm == "OFF" or game.Players.LocalPlayer.Character.Humanoid.Health <= hplimit
    farming = false
    print("NPC MURDERED")
  end
  tpsafe()


  if runtoggle == "ON" then
    run()
  end
end)

--[[
local plrs = game:GetService("Players")
local runs = game:GetService("RunService")
local plr = plrs.LocalPlayer
local distancee = 0 -- define in studs

local findNearestPlayerAtDistance = function(distance, char)
   for i,v in next, plrs:GetPlayers() do
      if v == plr then return; end;
      local character = v.Character or v.CharacterAdded:Wait()
      local hrp = character:FindFirstChild("HumanoidRootPart") or character:WaitForChild("HumanoidRootPart")
      local dist = (char:FindFirstChild("HumanoidRootPart").Position-hrp.Position).magnitude
      if dist <= distance then
          return plrs:GetPlayerFromCharacter(character) -- can return the character if u want
      end
   end
   return nil
end

while runs.Heartbeat:Wait() do
    local character = plr.Character or plr.CharacterAdded:Wait();
    local nearplr = findNearestPlayerAtDistance(distancee, character);
    print(tostring(nearplr))
end;
]]





function tpsafe()
  if game.Players.LocalPlayer.Character.Humanoid.Health <= hplimit and nosafe ~= "OFF" then
    repeat
    wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1750, 100, -1350)

    hpmax = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
  until game.Players.LocalPlayer.Character.Humanoid.Health >= hpmax or nosafe == "OFF"
  wait(5)
  end
end




function run()

end







--end


--[[
--------------------------------------------
 ____ ____ __  ____ ____    ____ ____ ____ ____ ___ ____ __ __  __ _ 
/ ___|_  _) _\(  __|  __)  (    (  __|_  _|  __) __|_  _|  )  \(  ( \
\___ \ )(/    \) _) ) _)    ) D () _)  )(  ) _| (__  )(  )(  O )    /
(____/(__)_/\_(__) (__)    (____(____)(__)(____)___)(__)(__)__/\_)__)

--------------------------------------------
]]

loadstring(game:HttpGet(("https://raw.githubusercontent.com/icuck/AgeofHeroesAutofarm/master/loadstrings/OpenSourceStaffDetect.lua"), true))()


