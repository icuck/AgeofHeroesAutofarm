local blacklist = {
  30929052,
  55476024,
  7506184,
  15213032,
  9960,
  48714258,
  9754162
}

local check = function(plr)
  for i,v in next, game:GetService("Players"):GetPlayers() do
    if not plr then plr = v; end
    if table.find(blacklist, plr.UserId) then
      return true
    end
  end
  return false
end

local found = check();

if found then
  game:GetService("Players").LocalPlayer:Kick("staff detected")
  return
end

game:GetService("Players").PlayerAdded:Connect(function(plr)
  found = check(plr)
  if found then
    game:GetService("Players").LocalPlayer:Kick("staff detected");
  end
end)

local check = function(player)
    if players[player.Name] then
        game.Players.LocalPlayer:Kick()
    end
end

game.Players.PlayerAdded:Connect(check)
for i,v in next, game.Players:GetPlayers() do
    check(v)
end
-- staff detections ends here
