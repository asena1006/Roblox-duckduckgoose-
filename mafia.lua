local part1 = workspace.Part1
local part2 = workspace.Part2
local part3 = workspace.Part3
local part4 = workspace.Part4
local part5 = workspace.Part5
local IsOpen = false
local realbomb = game.ServerStorage.RealBomb
local bomb = game.ServerStorage.Bomb
local players = game.Players
local event = game.ServerStorage.mafia
local spawnp = workspace.SpawnLocation
local lose = workspace.Looser

event.Event:Connect(function(mafia)
	local clone = bomb:Clone()
	wait()
	clone.Parent = mafia
		
part1.Attachment.ProximityPrompt.Triggered:Connect(function(plr)
	
		local a = mafia.Name
		local b = plr.Name
	if a == b then
	
    local LmafiaE = plr.Backpack:FindFirstChild("Bomb")
	local Lmafia = plr.Character:FindFirstChild("Bomb")
	
			

	if Lmafia and IsOpen ==false then
		wait()			

		plr.Character.Bomb:Destroy()

		local clone = realbomb:Clone()
		clone.Parent = workspace
		clone.Position = part1.Position
		part1.Attachment.ProximityPrompt.ActionText = "Defuse Bomb"
		IsOpen = true
		
	elseif LmafiaE and IsOpen == false then
		wait()			

		plr.Backpack.Bomb:Destroy()

		local clone = realbomb:Clone()
		clone.Parent = workspace
		clone.Position = part1.Position
		part1.Attachment.ProximityPrompt.ActionText = "Defuse Bomb"
		IsOpen = true
	
		
	else
						wait()
		local Bom = bomb:Clone()
		Bom.Parent = plr.Character
		
		local real = workspace:FindFirstChild("RealBomb")
		real:Destroy()
		
		part1.Attachment.ProximityPrompt.ActionText = "Plant Bomb"
IsOpen = false
		end
		
		end
	end)
	
	
	part2.Attachment.ProximityPrompt.Triggered:Connect(function(plr)

		local a = mafia.Name
		local b = plr.Name
		if a == b then

			local LmafiaE = plr.Backpack:FindFirstChild("Bomb")
			local Lmafia = plr.Character:FindFirstChild("Bomb")



			if Lmafia and IsOpen ==false then
				wait()			

				plr.Character.Bomb:Destroy()

				local clone = realbomb:Clone()
				clone.Parent = workspace
				clone.Position = part2.Position
				part2.Attachment.ProximityPrompt.ActionText = "Defuse Bomb"
				IsOpen = true

			elseif LmafiaE and IsOpen == false then
				wait()			

				plr.Backpack.Bomb:Destroy()

				local clone = realbomb:Clone()
				clone.Parent = workspace
				clone.Position = part2.Position
				part2.Attachment.ProximityPrompt.ActionText = "Defuse Bomb"
				IsOpen = true


			else
				wait()
				local Bom = bomb:Clone()
				Bom.Parent = plr.Character

				local real = workspace:FindFirstChild("RealBomb")
				real:Destroy()

				part2.Attachment.ProximityPrompt.ActionText = "Plant Bomb"
				IsOpen = false
			end
			
		end
	end)
	
	part3.Attachment.ProximityPrompt.Triggered:Connect(function(plr)

		local a = mafia.Name
		local b = plr.Name
		if a == b then

			local LmafiaE = plr.Backpack:FindFirstChild("Bomb")
			local Lmafia = plr.Character:FindFirstChild("Bomb")



			if Lmafia and IsOpen ==false then
				wait()			

				plr.Character.Bomb:Destroy()

				local clone = realbomb:Clone()
				clone.Parent = workspace
				clone.Position = part3.Position
				part3.Attachment.ProximityPrompt.ActionText = "Defuse Bomb"
				IsOpen = true

			elseif LmafiaE and IsOpen == false then
				wait()			

				plr.Backpack.Bomb:Destroy()

				local clone = realbomb:Clone()
				clone.Parent = workspace
				clone.Position = part3.Position
				part3.Attachment.ProximityPrompt.ActionText = "Defuse Bomb"
				IsOpen = true


			else
				wait()
				local Bom = bomb:Clone()
				Bom.Parent = plr.Character

				local real = workspace:FindFirstChild("RealBomb")
				real:Destroy()

				part3.Attachment.ProximityPrompt.ActionText = "Plant Bomb"
				IsOpen = false
			end
			
		end
	end)
	
	part4.Attachment.ProximityPrompt.Triggered:Connect(function(plr)

		local a = mafia.Name
		local b = plr.Name
		if a == b then

			local LmafiaE = plr.Backpack:FindFirstChild("Bomb")
			local Lmafia = plr.Character:FindFirstChild("Bomb")



			if Lmafia and IsOpen ==false then
				wait()			

				plr.Character.Bomb:Destroy()

				local clone = realbomb:Clone()
				clone.Parent = workspace
				clone.Position = part4.Position
				part4.Attachment.ProximityPrompt.ActionText = "Defuse Bomb"
				IsOpen = true

			elseif LmafiaE and IsOpen == false then
				wait()			

				plr.Backpack.Bomb:Destroy()

				local clone = realbomb:Clone()
				clone.Parent = workspace
				clone.Position = part1.Position
				part4.Attachment.ProximityPrompt.ActionText = "Defuse Bomb"
				IsOpen = true


			else
				wait()
				local Bom = bomb:Clone()
				Bom.Parent = plr.Character

				local real = workspace:FindFirstChild("RealBomb")
				real:Destroy()

				part4.Attachment.ProximityPrompt.ActionText = "Plant Bomb"
				IsOpen = false
			end
			
		end
	end)
	
	part5.Attachment.ProximityPrompt.Triggered:Connect(function(plr)

		local a = mafia.Name
		local b = plr.Name
		if a == b then

			local LmafiaE = plr.Backpack:FindFirstChild("Bomb")
			local Lmafia = plr.Character:FindFirstChild("Bomb")



			if Lmafia and IsOpen ==false then
				wait()			

				plr.Character.Bomb:Destroy()

				local clone = realbomb:Clone()
				clone.Parent = workspace
				clone.Position = part5.Position
				part5.Attachment.ProximityPrompt.ActionText = "Defuse Bomb"
				IsOpen = true

			elseif LmafiaE and IsOpen == false then
				wait()			

				plr.Backpack.Bomb:Destroy()

				local clone = realbomb:Clone()
				clone.Parent = workspace
				clone.Position = part5.Position
				part5.Attachment.ProximityPrompt.ActionText = "Defuse Bomb"
				IsOpen = true


			else
				wait()
				local Bom = bomb:Clone()
				Bom.Parent = plr.Character

				local real = workspace:FindFirstChild("RealBomb")
				real:Destroy()

				part5.Attachment.ProximityPrompt.ActionText = "Plant Bomb"
				IsOpen = false
			end
			
		end
	end)
	local mafiah = mafia:FindFirstChild("Humanoid")
	mafiah.Died:Connect(function()
		
		
		local mafiap = players:GetPlayerFromCharacter(mafia)
		mafiap.CameraMode = "Classic"
		mafiap.CharacterAdded:Connect(function(chr)
			wait()
			chr:WaitForChild("HumanoidRootPart").CFrame = lose.CFrame
			
		end)
		
	end)
	end)
	
