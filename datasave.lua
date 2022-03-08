local data = game:GetService("DataStoreService") -- 서비스
local leader = data:GetDataStore("leaderboardsave")

local dontsave = {"Time Played", } -- 저장하기 싫은 리더보드 이름(대소문자 정확히)

function checkname(name) -- 저장하려는 리더보드 이름 확인
	for i, v in pairs(dontsave)do
		if v == name then return false end -- 4줄에 입력한 이름과 일치하는 게 있으면 거짓 내보냄
	end
	return true -- 4줄에 이름 없을 때 참으로 내보냄
end

function savedata(plr) -- 저장
	local runservice = game:GetService("RunService")
	if runservice:IsStudio() then return end
	-- 스튜디오에서 스크립트 실행하면 에러나기 때문에 스튜디오면 함수 취소

	if not plr:FindFirstChild("loaded") or plr.loaded.Value == false then return end
	--불러오기 했는지 1,2차 확인/ 불러오기 안한채로 저장하면 데이터 초기화되니까
	plr:WaitForChild("leaderstats") -- 리더보드 생성되길 기다리기
	for i, v in pairs(plr.leaderstats:GetChildren())do -- 리더보드 열어봄
		if string.find(v.ClassName, "Value") -- 제대로 된 value 오브젝트인지 구함
			and checkname(v.Name) then -- 저장하는 리더보드인지 확인(스크립트 4줄)

			repeat -- 반복
				local success = pcall(function()-- 성공했는지 알려주는 함수(pcall)와 변수(success)
					leader:SetAsync(plr.UserId..v.Name, v.Value) -- 저장
				end)
				wait(0.5) -- 약간의 기다림. 반복 딜레이가 너무 짧으면 서버 과부하됨
			until success --저장 성공할때까지

		end 
	end
end

function loaddata(plr) -- 불러오기
	local runservice = game:GetService("RunService")
	if runservice:IsStudio() then return end
	-- 스튜디오에서 스크립트 실행하면 에러나기 때문에 스튜디오면 함수 취소

	plr:WaitForChild("leaderstats") -- 리더보드 생성되길 기다림
	wait(1)-- 즉시 불러오기하면 에러날 수 있어서 뜸들임(시간 1초는 나중에 추가한거)
	for i, v in pairs(plr.leaderstats:GetChildren())do -- 리더보드 열어봄
		if string.find(v.ClassName, "Value") -- 제대로 된 value 오브젝트인지 구함
			and checkname(v.Name) then -- 저장하는 리더보드인지 확인(스크립트 4줄)
			local success = pcall(function() -- 성공했는지 알려주는 함수(pcall)와 변수(success)
				local data = leader:GetAsync(plr.UserId..v.Name) -- 불러오기(수정된 부분)
				if data ~= nil then -- 불러온 데이터가 있는 경우에만
					v.Value = data -- 불러온 값 적용
				end -- 이부분은 영상에 없었는데 나중에 추가함
			end)
			if not success then -- 불러오기 실패시
				wait(3) -- 기다렸다가 반복(영상에 없는데 나중에 추가함)
				local success = pcall(function() 
					local data = leader:GetAsync(plr.UserId..v.Name)
					if data ~= nil then 
						v.Value = data 
					end 
				end)
				if not success then -- 불러오기 실패시
					wait(3) -- 반복2
					local success = pcall(function()
						local data = leader:GetAsync(plr.UserId..v.Name) 
						if data ~= nil then
							v.Value = data
						end 
					end)
					if not success then
						wait(3) -- 반복3
						local success = pcall(function()
							local data = leader:GetAsync(plr.UserId..v.Name) 
							if data ~= nil then
								v.Value = data
							end 
						end)
						if not success then -- 4번이나 시도했는데 실패하면
							plr:Kick("리더보드 데이터 불러오기 실패, 재접하세요.") -- 강퇴(메세지 한국어로 바꿈)
							return -- 불러오기 함수 취소
						end
					end 
				end
			end

		end 
	end 
	local isloaded = Instance.new("BoolValue", plr) -- 불러오기 했다는 표시
	isloaded.Name = "loaded" -- 불러오기 했다는 표시
	isloaded.Value = true -- 2차 표시
end

game.Players.PlayerAdded:Connect(function(plr) -- 새 플레이어 접속
	local runservice = game:GetService("RunService")
	if runservice:IsStudio() then return end
	-- 스튜디오에서 스크립트 실행하면 에러나기 때문에 스튜디오면 함수 취소

	loaddata(plr) -- 불러오기
	while wait(300) do -- 300초마다  
		savedata(plr) -- 저장
		--(시간 바꿔도 되는데 최소 1분 이상은 유지할 것, 너무 자주 세이브하면 서버 과부하됨)
	end
end)

game.Players.PlayerRemoving:Connect(function(plr) -- 플레이어 나갈 때
	savedata(plr) -- 저장 
end)

game:BindToClose(function() -- 모종의 이유로 게임 서버가 닫힐 때(업데이트, 서버 폭발 등등)
	local runservice = game:GetService("RunService")
	if runservice:IsStudio() then return end
	-- 스튜디오에서 스크립트 실행하면 에러나기 때문에 스튜디오면 함수 취소

	for i, v in pairs(game.Players:GetPlayers())do -- 모든 플레이어 
		savedata(v) -- 저장
	end
	wait(30) -- 30초 기다려서 스크립트가 데이터 저장할 시간을 벌어줌
end)
