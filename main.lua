local camera = workspace.Camera

local configs = {
	outline = false,
	outlinecolor = Color3.fromRGB(255, 255, 255)
}

while wait() do
	for i,v in pairs(game.Players:GetPlayers()) do
		while configs.outline do
			local highlight = Instance.new("Highlight", v.Character)
			if configs.outline == true then
				task.wait()
				highlight.Enabled = true
				highlight.DepthMode = "AlwaysOnTop"
				highlight.Name = "Outline"		
				highlight.FillTransparency = 1
				highlight.OutlineColor = configs.outlinecolor
			else
				highlight.Enabled = false
				return
			end
		end
	end
end
