local players= game.Players
local chair1 = workspace.Chair1
local chair2 = workspace.Chair2
local chair3 = workspace.Chair3
local chair4 = workspace.Chair4
local chair5 = workspace.Chair5
local db = true
		

chair1.Seat.ChildAdded:Connect(function(seatweld)
	db = true
	local a = seatweld.Part1
	local chr = a.Parent
	local plr = players:GetPlayerFromCharacter(chr)
	while db do
		wait(1)
		plr.leaderstats.CP.Value = plr.leaderstats.CP.Value + 1
					
		end	
end)
chair1.Seat.ChildRemoved:Connect(function()
		db = false
end) 



chair2.Seat.ChildAdded:Connect(function(seatweld)
	db = true
	local a = seatweld.Part1
	local chr = a.Parent
	local plr = players:GetPlayerFromCharacter(chr)
	while db do
		wait(1)
		plr.leaderstats.CP.Value = plr.leaderstats.CP.Value + 1

	end	
end)
chair2.Seat.ChildRemoved:Connect(function()
	db = false
end) 



chair3.Seat.ChildAdded:Connect(function(seatweld)
	db = true
	local a = seatweld.Part1
	local chr = a.Parent
	local plr = players:GetPlayerFromCharacter(chr)
	while db do
		wait(1)
		plr.leaderstats.CP.Value = plr.leaderstats.CP.Value + 1

	end	
end)
chair3.Seat.ChildRemoved:Connect(function()
	db = false
end) 



chair4.Seat.ChildAdded:Connect(function(seatweld)
	db = true
	local a = seatweld.Part1
	local chr = a.Parent
	local plr = players:GetPlayerFromCharacter(chr)
	while db do
		wait(1)
		plr.leaderstats.CP.Value = plr.leaderstats.CP.Value + 1

	end	
end)
chair4.Seat.ChildRemoved:Connect(function()
	db = false
end) 



chair5.Seat.ChildAdded:Connect(function(seatweld)
	db = true
	local a = seatweld.Part1
	local chr = a.Parent
	local plr = players:GetPlayerFromCharacter(chr)
	while db do
		wait(1)
		plr.leaderstats.CP.Value = plr.leaderstats.CP.Value + 1

	end	
end)
chair5.Seat.ChildRemoved:Connect(function()
	db = false
end) 
