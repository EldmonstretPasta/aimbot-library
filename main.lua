local camera = workspace.Camera

local configs = {
	aimbot = false,
}

while configs.aimbot do
	if configs.aimbot == true then
		task.wait()
		for i,v in pairs(game.Players:GetChildren()) do
			camera.CFrame = CFrame.new(camera.CFrame.Position, v.Character.Head.Position)
		end
	else
		return
	end
end
