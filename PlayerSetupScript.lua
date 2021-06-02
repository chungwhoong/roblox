--플레이어 변수를 보여주는 리더보드를 만듭니다.

local function onPlayerJoin(player)
	local leaderstats=Instance.new("Folder") --새 폴더 인스턴스인 leaderstats 생성
	leaderstats.Name='leaderstats' --leaderstats의 이름을 leadersdtats로 설정
	leaderstats.Parent=player --leaderstats이 플레이어에게 귀속되도록 설정
	
	local point=Instance.new('IntValue') --정수값인 point 생성
	point.Name='Point' --포인트의 이름을 Point로 설정
	point.Value=0 --초기값은 0
	point.Parent=leaderstats --포인트는 leaderstats에 귀속
end

game.Players.PlayerAdded:Connect(onPlayerJoin)
