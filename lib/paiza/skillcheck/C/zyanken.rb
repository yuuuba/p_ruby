number_of_games = gets.chomp.to_i
game_results = []
number_of_games.times do
  game_results << gets.chomp.to_s
end
win_count = 0

# 配列の配列状態になる、eachで回す
game_results.each do |game_result|
  alice_wins = ["G C", "C P", "P G"]
  alice_wins = { win: "G C" || "C P" || "P G" }
  alice_wins.each do |comparison|
    win_count += 1 if comparison.eql?(game_result)
  end
end

puts win_count
# アリス勝ち状態を定義する
# 勝ち状態と比較して同じならカウントを増やす、違うなら何もしない、ループ
