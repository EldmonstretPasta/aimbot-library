local camera = workspace.Camera

getgenv().outline = false
getgenv().outlinecolor = Color3.fromRGB(255,255,255)

while wait() do
	for i,v in pairs(game.Players:GetPlayers()) do
		while getgenv().outline do
			local highlight = Instance.new("Highlight", v.Character)
			if getgenv().outline == true then
				task.wait()
				highlight.Enabled = true
				highlight.DepthMode = "AlwaysOnTop"
				highlight.Name = "Outline"		
				highlight.FillTransparency = 1
				highlight.OutlineColor = getgenv().outlinecolor
			else
				highlight.Enabled = false
				return
			end
		end
	end
end
