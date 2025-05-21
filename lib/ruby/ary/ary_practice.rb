# 以下の配列に「grape」を追加し、「banana」を削除してください。

fruits = ["apple", "banana", "orange"]

fruits.delete("banana")
fruits.push("grape")

p fruits

# 以下の配列から、3文字以上の単語だけを取り出して新しい配列を作ってください。

words = ["hi", "cat", "house", "a", "dog"]

words.select do |word|
  word.length >= 3
end

# あなたはAPIから次のようなユーザー情報を受け取りました。 この中から「30歳以上のユーザーの名前一覧」を文字列で出力してください（カンマ区切り）。
users = [
  { name: "佐藤", age: 28 },
  { name: "鈴木", age: 35 },
  { name: "田中", age: 42 },
  { name: "高橋", age: 22 }
]

# => "鈴木, 田中"

names = users
    .select { |user| user[:age] >= 30 }
    .map    { |user| user[:name] }

問題2：全ユーザーの名前を「さん付け」で配列にして with_suffix に代入してください（{}使って）
with_suffix = users
    .map    { |user| user[:name].concat("さん") }

※配列のハッシュの形を崩さずさん付けする場合

hoge = users
  .map { |user| user[:name] << "さん" }

✅ 1. 追加・削除系
# Q1-1: 配列 [1, 2, 3] に 4 を末尾に追加せよ。
[1, 2, 3].push(4)
[1, 2, 3] << 4
# Q1-2: 配列 ["a", "b", "c"] の先頭に "z" を追加せよ。
["a","b","c"].unshift("z")
# Q1-3: 配列 [1, 2, 3, 4] の末尾を削除せよ。
[1,2,3,4].pop
✅ 2. 検索・抽出・条件系
# Q2-1: 配列 [5, 10, 15, 20] に 10 が含まれているか調べよ。
[5, 10, 15, 20].include?(10)
# Q2-2: 配列 [1, 3, 5, 8] から偶数を取り出して新しい配列にせよ。
[1,3,5,8].select {|n| n.even? }
# Q2-3: 配列 [4, 7, 9, 12] で最初に3の倍数になる数を返せ。
[4,7,9,12].find {|n| n % 3 == 0 }
✅ 3. 変換・マッピング系
# Q3-1: 配列 [1, 2, 3] を2倍した新しい配列を作れ。
[1,2,3].map {|n| n * 2 }
# Q3-2: 配列 ["a", "b", "c"] を ["A", "B", "C"] に変換せよ。
['a','b','c'].map { |s| s.upcase }
['a','b','c'].map(&:upcase)
# Q3-3: ネスト配列 [[1,2],[3,4]] をフラットにせよ。
[[1,2],[3,4]].flatten
[[1,2],[3,4]].each do |ary|
  ary.map {|n| n * 2}
end
# Q3: each を使って new_array に2倍した値を追加していく形にせよ

new_array = []
[5, 10, 15].each do |n|
  new_array << n * 2
end

puts new_array.inspect
✅ 4. 並び替え・逆順系
# Q4-1: 配列 [3, 1, 4, 2] を昇順に並び替えよ。
[3,1,4,2].sort
# Q4-2: 配列 ["z", "x", "y"] をランダムにシャッフルせよ。
[3,1,4,2].shuffle
# Q4-3: 配列 [1, 2, 3] を逆順にせよ。
[1,2,3].reverse
✅ 5. 重複処理系
# Q5-1: 配列 [1, 1, 2, 2, 3] から重複を除け。
.uniq
# Q5-2: 配列 ["a", "b", "a", "c"] の各要素の出現回数を求めよ。
['a','b','a','c'].tally
# Q5-3: 配列 [1, 1, 2] のユニーク化を破壊的に実行せよ。
[1,1,2].uniq!
✅ 6. 集計・数値処理系
# Q6-1: 配列 [1, 2, 3] の合計を求めよ。
[1,2,3].sum
# Q6-2: 配列 [3, 5, 7] の最大値を求めよ。
[3,5,7].max
# Q6-3: 配列 [10, 20, 30] を inject で合計せよ。
✅ 7. 論理判定系
# Q7-1: 配列 [2, 4, 6] のすべてが偶数か？
[2,4,6].all? { |n| n.even? }
# Q7-2: 配列 [1, 3, 5, 8] に偶数が含まれているか？
[1,3,5,8].any? { |n| n.even? }
# Q7-3: 配列 [1, 3, 5] に 10 未満でない数が1つでもあるか？
[1,3,5].any? { |n| n >= 10 }
✅ 8. 変更・代入・スライス系
# Q8-1: 配列 [10, 20, 30] の2番目の要素を100に変更せよ。
[10,20,30].insert(1,100)
# Q8-2: 配列 [1, 2, 3, 4] から index 1〜2 の部分配列を取得せよ。
nums = [1,2,3,4]
nums[1..2]
# Q8-3: 配列 [0, 0, 0] をすべて "a" に置き換えよ。
[0,0,0].fill('a')
✅ 9. 結合・分割系
# Q9-1: 配列 ["a", "b", "c"] を "-" で連結せよ。
['a','b','c'].join('-')
# Q9-2: 配列 [1, 2] と ["a", "b"] を組み合わせてペア配列を作れ。about:blank#blocked
[1,2].zip(['a','b'])
# Q9-3: 配列 [1, 2, 3] と [3, 4] の和集合を求めよ。
[1,2,3] | [3,4]
✅ 10. ブロック・繰り返し系
# Q10-1: 配列 ["a", "b", "c"] を each で1つずつ出力せよ。
['a','b','c'].each { |s| puts s }
# Q10-2: 配列 [10, 20, 30] を each_with_index で表示せよ。
[10,20,30].each_with_index { |num, idx| p [num,idx] }
# Q10-3: 配列 [1, 2, 3] を each_with_object で {"1"=>"odd", "2"=>"even"...} に変換せよ。
[1,2,3].each_with_object({}) { |n, hash| hash[n.to_s] = n.even? ? 'even' : 'odd' }

🔢 1. inject / reduce 系（集約）

Q1-1: 配列 [2, 4, 6] の合計を inject を使って求めよ。
[2,4,6].inject { |result, item| result + item }
Q1-2: 配列 [2, 3, 4] の積（全部掛けた値）を inject を使って求めよ。
[2,3,4].inject { |result, item| result * item }
Q1-3: 配列 [5, 1, 9, 3] の最大値を inject で求めよ。
[5,1,9,3].max
# Q11-1: 配列 [1, 2, 3, 4] の合計を inject を使って求めよ。
[1,2,3,4].inject { |result, n| result + n }
[1,2,3,4].sum
# Q11-2: 配列 [2, 3, 4] の積（全部かけた結果）を inject で求めよ。
[2,3,4].inject { |result, num| result * num }
# Q11-3: 配列 ["a", "b", "c"] を連結して "abc" にせよ（inject 使用）。
['a','b','c'].inject { |result, str| result + str }
['a','b','c'].join
⸻

🧮 2. group_by（分類）

Q2-1: 配列 [1, 2, 3, 4, 5, 6] を「奇数」と「偶数」で分類せよ。
[1,2,3,4,5,6].group_by { |num| num.odd? ? '奇数' : '偶数'}
Q2-2: 配列 %w[apple banana avocado] を頭文字で分類せよ。
%w[apple banana avocado].group_by { |str| str.chr }
Q2-3: 配列 [2, 4, 6, 9, 11] を 3 の倍数とそれ以外で分類せよ。
result = [2,4,6,9,11].group_by { |num| num % 3 == 0 ? '3の倍数' : 'それ以外'} #返り値のキーの順番がぐちゃぐちゃ
result.sort.to_h

# Q12-1: 配列 ["apple", "banana", "avocado"] を、先頭文字ごとにグループ化せよ。
['apple','banana','avocado'].group_by { |str| str.chr }
# Q12-2: 配列 [1, 2, 3, 4, 5, 6] を「偶数」「奇数」でグループ化せよ。
[1,2,3,4,5,6].group_by {|num| num.even? ? '偶数' : '奇数' }
# Q12-3: 配列 ["cat", "cow", "dog", "deer",'deen'] を先頭1文字でグループ化せよ。
['cat','cow','dog','deer','deen'].group_by { |str| str.char }

# Rangeと配列の範囲の話
(1..10)
ary = [1,2,3,4,5]
ary[1..3]
ary[1...3]
ary[1,2]

(1..5).to_a
[1,2,3,4,5].slice(1,3)
ary = "abcdefg".chars
ary[0,3]

"abcdefg".chars[0..3]
"abcdefg".chars[0,3] #idxとlengthのハーフ
"abcdefg".chars[0...4] #ミッツは未満


⸻

🧱 3. each_with_object（ハッシュ作成）

Q3-1: 配列 [“a”, “b”, “c”] を { “a” => 1, “b” => 2, “c” => 3 } にせよ（値はindex+1）
['a','b','c'].each_with_object([]) { |str, result| result << str * 2 }
Q3-2: 配列 [1, 2, 3] を { “1” => “odd”, “2” => “even”, … } に変換せよ。
[1,2,3].each_with_object({}) { |num, result| result[num] = num.even? ? "even" : "odd" }

['a','b','c'].each_with_object({}) { |str, result| result[str.to_sym] = str * 2 } #キーをシンボルとしたーのやつ

Q3-3: 配列 %w[d e f] を {“D”=>true, “E”=>true, “F”=>true} にせよ（キーは大文字）
%w[d e f].each_with_object({}) { |str, result| result[str] = true }
# Q14-1: [1, 2, 3, 4, 5] を {1=>"odd", 2=>"even", ...} の形にせよ。
[1,2,3,4,5].each_with_object({}) {|num, result| result[num] = num.odd? ? 'odd' : 'even' }

# Q14-2: ["a", "b", "c"] を {"a"=>1, "b"=>2, "c"=>3} にせよ（1から始まるカウント付き）。
['a','b','c'].each_with_object({}).with_index(1) { |(str, result), idx| result[str] = idx }
# Q14-3: [1, 2, 3, 4, 5] を 2 で割った余りごとに要素を分類したハッシュを作れ。
# 例: {1=>[1,3,5], 0=>[2,4]}
[1,2,3,4,5].each_with_object({}) do |num, result|
  result[num % 2] ||= []
  result[num % 2] << num
end

#with_indexを絡めた問題
# Q1
# 配列 ["x", "y", "z"] を {1=>"x", 2=>"y", 3=>"z"} に変換せよ。
data1 = ["x", "y", "z"]
result1 =
data1.each_with_object({}).with_index(1) do |(str, result), idx|
  result[idx] = str
end
puts result1

# Q2
# 配列 ["a", "b", "c"] を ["1: a", "2: b", "3: c"] に変換せよ。
data2 = ["a", "b", "c"]
result2 = data2.each_with_object([]).with_index(1) do |(str, result), idx|
  result << "#{idx}: #{str}"
end
p result2

["a", "b", "c"].map.with_index(1) { |str, idx| "#{idx}: #{str}" } #配列はmapでいい

# Q3
# 配列 [10, 20, 30] を {10=>0, 20=>1, 30=>2} に変換せよ（値がインデックス）。
data3 = [10, 20, 30]
data3.each_with_object({}).with_index do |(num, result), idx|
  result[num] = idx
end

# Q4
# 配列 ["apple", "banana", "cherry"] を ["apple (0)", "banana (1)", "cherry (2)"] に変換せよ。
data4 = ["apple", "banana", "cherry"]
# data4.each_with_object([]).with_index do |(str, result), idx|
#   result << "#{str} (#{idx})"
# end

str_and_idx = data4.map.with_index do |str, idx|
  "#{str} (#{idx})"
end

# Q5
# 配列 ["dog", "cat", "fox"] を {0=>"DOG", 1=>"CAT", 2=>"FOX"} に変換せよ（大文字に変換）。
data5 = ["dog", "cat", "fox"]
str_with_index = data5.each_with_object({}).with_index do |(str, result), idx|
  result[idx] = str.upcase
end

#eachとmapの練習
# Q1: 配列 ["a", "b", "c"] をそれぞれ大文字に変換して表示せよ
["a", "b", "c"].each { |str| puts str.upcase }
# Q2: 配列 ["a", "b", "c"] を ["A", "B", "C"] に変換せよ
map
# Q3: 配列 [1, 2, 3] を使って、"1番目", "2番目", "3番目" という配列を作れ
new_ary = [1,2,3].map { |num| "#{num}番目"}
# Q4: 配列 [1, 2, 3] を使って、各要素を2倍にした結果を表示せよ

# Q5: 配列 ["ruby", "rails"] を使って、文字数を表示せよ
['ruby','rails'].each do |str|
  puts str.length
end
# Q6: 配列 ["ruby", "rails"] を ["RUBY!", "RAILS!"] に変換せよ

# Q7: 配列 [5, 10, 15] を ["No.0: 5", "No.1: 10", "No.2: 15"] に変換せよ
[5,10,15].map.with_index do |num, idx|
  "No.#{idx}: #{num}"
end
# Q8: 配列 [2, 4, 6] を [4, 16, 36] に変換せよ
[2,4,6].map { |num| num ** 2}
# Q9: 配列 ["dog", "cat", "fox"] を {0=>"DOG", 1=>"CAT", 2=>"FOX"} に変換せよ
['dog','cat','fox'].each_with_object({}).with_index do |(str, result), idx|
  result[idx] = str
end
# Q10: 配列 ["x", "y", "z"] を {"x"=>0, "y"=>1, "z"=>2} に変換せよ
#each_with_indexの練習
# Q1
# 配列 ["dog", "cat", "fox"] の各要素にインデックスを付けて
# ["dog0", "cat1", "fox2"] のような新しい配列を作成せよ。
animals = ["dog", "cat", "fox"]
after_animals = animals.map.each_with_index do |str, idx|
  str + idx.to_s
end

# Q2
# 配列 [5, 10, 15, 20] の各要素を、インデックスの2倍と掛けて
# [0, 20, 60, 120] を作成せよ。
numbers = [5, 10, 15, 20]
after_nums = numbers.map.each_with_index do |num, idx|
  num * (idx * 2)
end


# Q3
# 配列 ["a", "b", "c", "d"] を {0=>"a", 1=>"b", 2=>"c", 3=>"d"} に変換せよ。
letters = ["a", "b", "c", "d"]
result3 = nil


Q12: group_by でグルーピング

# Q12-1: 配列 ["apple", "banana", "avocado"] を、先頭文字ごとにグループ化せよ。
['apple','banana','avocado'].group_by { |str| str.chr }
# Q12-2: 配列 [1, 2, 3, 4, 5, 6] を「偶数」「奇数」でグループ化せよ。
[1,2,3,4,5,6].group_by { |num| num.even? ? '偶数' : '奇数' }
# Q12-3: 配列 ["cat", "cow", "dog", "deer"] を先頭1文字でグループ化せよ。

Q13: to_h
# Q13-1: [["name", "Yuuya"], ["job", "engineer"]] をハッシュに変換せよ。
[["name", "Yuuya"], ["job", "engineer"]] .to_h
# Q13-2: [[:a, 1], [:b, 2]] をハッシュにせよ。

# Q13-3: [["x", 10], ["y", 20], ["z", 30]] をハッシュに変換せよ。

Q15: map + to_h のコンビネーション
# Q15-1: ["ruby", "python", "go"] を {"ruby"=>4, "python"=>6, "go"=>2} にせよ。
['ruby','python','go'].each_with_object({}) do | str, result |
  result[str] = str.length
end

['ruby', 'python', 'go'].map { |str| [str, str.length] }.to_h
# Q15-2: ["dog", "cat", "bat"] を {"DOG"=>3, "CAT"=>3, "BAT"=>3} にせよ（大文字キー＋文字数）。
['dog','cat','bat'].map {|str| [str.upcase, str.length] }.to_h
# Q15-3: ["x", "y", "z"] を [1,2,3] と組み合わせて {"x"=>1, "y"=>2, "z"=>3} を作れ。
nums = [1,2,3]
['x','y','z'].zip(nums).to_h
