local event = game.ServerStorage.player1
local chair1 = workspace.Chair1.PrimaryPart
local part = workspace.Looser
local players = game.Players

event.Event:Connect(function(player1)
	local plr1 = players:GetPlayerFromCharacter(player1)
	player1:MoveTo(chair1.Position)
	local hum = player1:FindFirstChild("Humanoid")
	hum.Died:Connect(function() 
		
	plr1.CameraMode = "Classic"
		
			plr1.CharacterAdded:Connect(function(chr)
				wait()
			chr:WaitForChild("HumanoidRootPart").CFrame = part.CFrame
			
				end)
		
					
		end)
		
	

	
end)
