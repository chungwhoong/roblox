local function onPlayerJoin(player)
	local leaderstats=Instance.new("Folder") --새 폴더 인스턴스인 leaderstats 생성
	leaderstats.Name='leaderstats' --leaderstats의 이름을 leadersdtats로 설정
	leaderstats.Parent=player --leaderstats이 플레이어에게 귀속되도록 설정

	local fire=Instance.new('IntValue') 
	fire.Name='Fire' 
	fire.Value=10 --초기값은 10
	fire.Parent=leaderstats --fire는 leaderstats에 귀속
end

game.Players.PlayerAdded:Connect(onPlayerJoin)
