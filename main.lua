local camera = workspace.Camera

local configs = {
	aimbot = false,
}

while configs.aimbot do
	if configs.aimbot then
		task.wait()
		for i,v in pairs(game.Players:GetChildren()) do
			camera.CFrame = CFrame.new(camera.CFrame.Position, v.Character.Head.Position)
		end
	end
end
