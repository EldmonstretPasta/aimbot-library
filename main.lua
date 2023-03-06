local userinputservice = game:GetService("UserInputService")
local runservice = game:GetService("RunService")
local mouse = game.Players.LocalPlayer:GetMouse()
local camera = workspace.CurrentCamera

function getClosestPlayer() -- Gets closest player using magnitude
	local closestPlayer = nil
	local closestDistance = math.huge

	for i,player in pairs(game.Players:GetPlayers()) do
		local distance = (player.Character[_G.HitPart].Position - mouse.Hit.p).magnitude
		if distance < closestDistance then
			closestDistance = distance
			closestPlayer = player
		end
	end

	return closestPlayer
end


userinputservice.InputBegan:Connect(function(Input)
	if Input.UserInputType == _G.AimKey then -- If game detects input from the client then it will toggle _G.Aimbot
		_G.Aimbot = true
	end
end)

userinputservice.InputEnded:Connect(function(Input) -- self explaining
	if Input.UserInputType == _G.AimKey then
		_G.Aimbot = false
	end
end)

runservice.RenderStepped:Connect(function() -- Aimbot loop
	if _G.Enabled == true and _G.Aimbot == true then
		camera.CFrame = CFrame.new(camera.CFrame.Position, getClosestPlayer().Character[_G.HitPart].Position)
	end
end)
