local players = game:GetService("Players")
local part = workspace.StartPoint
local chair1 = workspace.Chair1
local chair2 = workspace.Chair2
local chair3 = workspace.Chair3
local chair4 = workspace.Chair4
local chair5 = workspace.Chair5
local playerArray = {}
local killevent = game.ServerStorage.Killpoints
local db = true
local winner = workspace.Winner
local playerCevent = game.ServerStorage.playercount
local playerCevent2 = game.ServerStorage.playercount2
local sg = game.StarterGui
local scg = sg:FindFirstChild("ScreenGui")
local frame = scg:FindFirstChild("Frame")
local textlabel = frame:FindFirstChild("TextLabel")
local db1 = true
local gameOver = game.ServerStorage.gameover
local spawnp = game.Workspace.SpawnLocation
local db3 = true
players.PlayerAdded:Connect(function(plr)
	--리더보드
		local lead = Instance.new("IntValue", plr)
		lead.Name = "leaderstats"

		local CP = Instance.new("IntValue", lead)
	    CP.Name = "CP"
	
	    local MP = Instance.new("IntValue", lead)
	    MP.Name = "MP"


	
	plr.CharacterAdded:Connect(function(chr)
		
			if db then
		
			table.insert(playerArray, chr)
			
			local num = #playerArray
			wait()
		
			while num ~= 6 and db1  do
				wait(2)
				playerCevent:Fire(num)
			
				
				end
									
				
		
			if #playerArray == 6  then
				
			db1 = false
			wait()
				playerCevent2:Fire()
				
				
			for i, v in pairs(playerArray) do
				wait()
				v:MoveTo(part.Position)		
			local player = players:GetPlayerFromCharacter(v)
				player.CameraMode = "LockFirstPerson"
				
			end		
			
			
			
			
			wait(3)
			
			if db3 then
				db3 = false
			
			local num = math.random(1,#playerArray)
			
			local mafia = playerArray[num]
			local event = game.ServerStorage.mafia
			local gameover = game.ServerStorage.gameover
			event:Fire(mafia)
				
			
			-- 포인트 올리는 부분
			local chr1 = playerArray[1]
			local chr2 = playerArray[2]
			local chr3 = playerArray[3]
			local chr4 = playerArray[4]
			local chr5 = playerArray[5]
			local chr6 = playerArray[6]
			local hum1 = chr1:FindFirstChild("Humanoid")
			local hum2 = chr2:FindFirstChild("Humanoid")
			local hum3 = chr3:FindFirstChild("Humanoid")
			local hum4 = chr4:FindFirstChild("Humanoid")
			local hum5 = chr5:FindFirstChild("Humanoid")
			local hum6 = chr6:FindFirstChild("Humanoid")
			
			hum1.Died:Connect(function()
				local mp = players:GetPlayerFromCharacter(mafia)
				
					mp.leaderstats.MP.Value = mp.leaderstats.MP.Value + 100
					
					table.remove(playerArray, 1)
					db = false
			
				
			end)
			
			hum2.Died:Connect(function()
				local mp = players:GetPlayerFromCharacter(mafia)
			
					mp.leaderstats.MP.Value = mp.leaderstats.MP.Value + 100
					table.remove(playerArray, 2)
					db = false
				
				
			end)
			
			hum3.Died:Connect(function()
				local mp = players:GetPlayerFromCharacter(mafia)
				
					mp.leaderstats.MP.Value = mp.leaderstats.MP.Value + 100
					table.remove(playerArray, 3)
					db = false
				
				
			end)
			
			hum4.Died:Connect(function()
				local mp = players:GetPlayerFromCharacter(mafia)
				
					mp.leaderstats.MP.Value = mp.leaderstats.MP.Value + 100
					table.remove(playerArray, 4)
					db = false
				
			end)
			
			hum5.Died:Connect(function()
				local mp = players:GetPlayerFromCharacter(mafia)
		
					mp.leaderstats.MP.Value = mp.leaderstats.MP.Value + 100
					table.remove(playerArray, 5)
					db = false
				
					
			end)
			
			hum6.Died:Connect(function()
				local mp = players:GetPlayerFromCharacter(mafia)
				
					mp.leaderstats.MP.Value = mp.leaderstats.MP.Value + 100
					table.remove(playerArray, 6)
					db = false
				
				end)
				
				
				
				
				
				gameOver.Event:Connect(function(num)
					local db = true
					local jero = 0
					print("ccc")
					if db and num == jero then
					for i, v in pairs(playerArray) do
						wait()
						v:MoveTo(winner.Position)		
						local player = players:GetPlayerFromCharacter(v)
							player.CameraMode = "Classic"
							db = false

				end
				
			end
										
					
					
				end)
					
					
			
			wait()
			
			local num1 = math.random(1,#playerArray)
			local player1 = playerArray[num1]
			local event1 = game.ServerStorage.player1
			
			event1:Fire(player1)
		
			wait()
			
			local num2 = math.random(1,#playerArray)
			local player2 = playerArray[num2]
			local event2 = game.ServerStorage.player2

			event2:Fire(player2)
			
			wait()
			
			local num3 = math.random(1,#playerArray)
			local player3 = playerArray[num3]
			local event3 = game.ServerStorage.player3
			
			event3:Fire(player3)
			
			wait()
			
			local num4 = math.random(1,#playerArray)
			local player4 = playerArray[num4]
			local event4 = game.ServerStorage.player4

			event4:Fire(player4)
			
			wait()
			
			local num5 = math.random(1,#playerArray)
			local player5 = playerArray[num5]
			local event5 = game.ServerStorage.player5

			event5:Fire(player5)
			
			wait()
						
			                                
			end
		
			end
			
			db = false
			end
		end)  		
	
end)
