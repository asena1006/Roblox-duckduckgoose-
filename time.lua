local playerCevnet = game.ServerStorage.playercount
local playerCevnet2 =game.ServerStorage.playercount2
local gameover = game.ServerStorage.gameover
local timerstart = true
local jero = 300
local textlabel = script.Parent
local db = true



playerCevnet.Event:Connect(function(num)

	if num == 1 then
	
		textlabel.Text = "1/6 is Waiting"
	end

	if num == 2 then
		textlabel.Text = "2/6 is Waiting"
	end

	if num == 3 then
		textlabel.Text = "3/6 is Waiting"
	end

	if num == 4 then
		textlabel.Text = "4/6 is Waiting"
	end

	if num == 5 then
		textlabel.Text = "5/6 is Waiting"
	end

	if num == 6 then
		textlabel.Text = "6/6 is Waiting"
	end
end)



playerCevnet2.Event:Connect(function()
		if timerstart then

		
		timerstart = false
		textlabel.Text = jero
		local timenum = tonumber(textlabel.Text)

		while db do
			wait(1)
			timenum = timenum - 1
			textlabel.Text = tostring(timenum)
			if timenum == 0 then
				
				print("aa12")
				gameover:Fire(timenum)
				db = false
				end
				
				
				
			end
			
		end
	
	
	


end)
