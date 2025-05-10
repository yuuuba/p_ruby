while,until

||=
&&=

# Q1. 以下の変数 `x` を初期化したい。
# `x` が nil または false のときは 100 を代入、それ以外ならそのままにするコードを書け。
# ここにコードを書く↓
x = nil
x ||= 100

# Q2. 以下の変数 `flag` を「true だったら false に変える」ようなコードを書け。
# false や nil のときは何もしないこと。
# ここにコードを書く↓
flag = true
flag &&= false


# Q3. メソッド `default_name` を定義せよ。
# 引数 `name` が nil または false のときは "ゲスト" を返す。
# それ以外は `name` をそのまま返すように、||= を使って実装せよ。
# ここにコードを書く↓
def default_name(name)
  name ||= "ゲスト"
end

puts default_name(nil)


# Q4. 以下のような Hash `settings` がある。
# `:timeout` キーがなければ 30 を代入するような1行コードを書け。
settings = {}
# ここにコードを書く↓
setting[:timeout] ||= 30


# Q5. 以下の2つの変数がある。
# `a` が truthy のときだけ `b` に 50 を代入するコードを書け（&&= を使うこと）
a = "OK"
b = nil
# ここにコードを書く↓
# a &&= b = 50

b = 50 if a

# Q1. 整数 `n` が偶数かどうかを判定せよ。
n = 10
n.even?

# Q2. 整数 `n` が 100〜999 の間にあるかを判定せよ（両端含む）。
n = 321
n.between?(100, 999)


# Q3. `a` を `b` で割った商と余りを同時に出力せよ（divmod使用）。
a = 57
b = 10
a.divmod(b)

# Q4. 配列 `nums = [1, 2, 3]` の合計値を求めよ。
nums = [1, 2, 3]
nums.sum

# Q5. `x` を整数に変換した上で、偶数かどうか判定せよ。
x = "42"
x.to_i.even?

# Q6. 数字 `n` の各桁を配列で取り出せ（digits使用）
n = 5432
n.digits.reverse



# Q7. `price` が100の倍数でなければ、100の倍数に切り上げる。
price = 1541
after_ceil = (price / 100.0).ceil * 100 if price.modulo(100) != 0
puts after_ceil



# Q8. 0〜100の範囲外なら、0〜100の中に収めるように値を調整せよ（clamp使用）。
value = 123
value.clamp(0,100)

# Q9. 1から`n`までの合計を計算せよ（1 + 2 + ... + n）
n = 10
(1..10).sum

(1..10).inject

# Q10. 1からnまでのうち、3の倍数だけ出力せよ
n = 20
(1..n).each do |num|
  puts num if  num.modulo(3) == 0
end

# Q11. 配列 `nums` の偶数の合計を求めよ
nums = [1, 2, 3, 4, 5, 6]
after_num = []
nums.each do |num|
  after_num << num if num.even?
end
puts after_num.sum

nums.select(&:even?).sum

# Q12. 小数の合計値を、少数第2位で四捨五入して出力せよ。
scores = [1.233, 3.499, 2.666]
scores.sum.round(2)

# Q13. 文字列 `"12345"` を各桁の整数配列 `[1,2,3,4,5]` に変換せよ
s = "12345".chars



# Q14. 数字 `n` の桁数を求めよ（例: 123 → 3）
n = 123
n.to_s.length

# Q15. 以下のコードで、nが3の倍数であれば “Fizz” を表示せよ。
n = 9
"Fizz" if n.modulo(3) == 0

# Q16. 単位が「円」の金額を3桁区切りにして表示せよ（例: 1234567 → "1,234,567円"）
yen = 1234567
yen.to_s.insert(-4, ",")

# Q17. `n` を2倍して、それが100未満のときだけ出力せよ。
n = 40
puts n * 2 if n < 100

# Q18. `num` の値がnilなら0を代入する（||= を使用）
num = nil
num ||= 0

# Q19. `a` が truthy のときだけ `b` に 10 を代入する（&&= を使用）
a = true
b = nil
a &&= b = 10

# Q20. 小数で割り算したい。1 / 3 を正確な小数にして出力せよ（fdivを使う）
1.fdiv(0.3)
ちょっと捻ったの出して欲しいしこれらを前提として問題解くみたいなレベル感の問題20問くらい出して欲しい

・ceil,floor,round,何ちゃら
・inject,reduce,sum,count,min,max,times,upto,downto,step
・map,select,reject,find,all?,any?,each_with_index,(&:)のやつ、
・ブロック渡すタイプの組み込みメソッド
・シンプルによく使う組み込みメソッド

・シンプルにintでよく使う種類別組み込みメソッド　丸め込み系、繰り返し系、map系、ブロック渡す系、よく使う系みたいな感じで分類できる？これは他の組み込みめそっどもおなじ？
・ブロック渡す処理変わるやつ
・現場でよくある「合っているけどもっと書き方ある」系のやつ組み込みクラス別で網羅的にたくさん教えて欲しい
✅ 1. 丸め系（ceil, floor, round, truncate）

Q1. 次の小数 x = 3.141 を小数第2位で四捨五入せよ。
x = 3.141
x.round(2)

Q2. 次の小数 x = 9.876 を小数第1位で切り上げせよ。
x = 9.876
x.ceil(1)

Q3. 次の小数 x = 5.499 を整数に切り捨てせよ。
x = 5.499
x.floor

Q4. 次の小数 x = -3.7 を0に近い方向に丸めよ。
x = -3.7
x.truncate

✅ 2. 数値系繰り返し（times, upto, downto, step）
Q2-2. 3 から 1 まで 1 ずつ減らしながら各数字を配列に格納せよ。
  # after_nums = []
  # 3.downto(1) do |num|
  #   after_nums << num
  # end
  # p after_nums

  3.downto(1).to_a
Q2-3. 0 から 10 まで 2 ずつ増やしながら、偶数だけを出力せよ。
  # 0.step(10,2) {|num| p num if num.even? }
  nums = 0.step(10, 2).to_a
  p nums
✅ 3. 数列合計・統計（sum, inject, reduce, count, min, max）
Q3-1. 配列 [3, 1, 4, 1, 5] の最小値と最大値を求めよ。
  nums = [3,1,4,1,5]
  nums.minmax
Q3-2. 配列 [2, 4, 6, 8] の合計値を inject で求めよ。
  nums = [2,4,6,8]
  nums.inject { |result, item| result + item }
Q3-3. 配列 [1, 2, 3, 4, 5] の中に、3以上の数が何個あるかを count を使って求めよ
  [1,2,3,4,5].count { |num| num >= 3 }
✅ 4. 選択・変換（map, select, reject, find, each_with_index, &:記法）
Q4-1. 配列 [1, 2, 3] をすべて2倍に変換して新しい配列を作れ。
  [1,2,3].map { |num| num * 2 }
Q4-2. 配列 [3, 6, 9, 10, 12] から3の倍数を除外せ。
  [3,6,9,10,12].reject { |num| num.modulo(3) == 0 }
Q4-3. 配列 ["apple", "banana", "cherry"] を、それぞれの文字数に変換して配列にせよ（&:length 使用可）。
  ["apple","banana","cherry"].map(&:length)
✅ 5. 条件確認（all?, any?）
Q5-1. 配列 [2, 4, 6, 8] がすべて偶数か調べよ。
  [2,4,6,8].all? { |num| num.even? }
Q5-2. 配列 [1, 3, 5, 7, 10] に偶数が1つでも含まれているか判定せよ。
  [1,3,5,7,10].any? { |num| num.even? }
Q5-3. 配列 [1, 2, 3] にすべて 0 より大きい数が入っているかを調べよ。
  [1,2,3].all? { |num| num > 0 }
✅ 6. よく使う整数メソッド（even?, odd?, digits, to_s, length）
Q6-1. 整数 12345 の桁数を求めよ。
  12345.to_s.length
Q6-2. 数字 2468 を各桁の配列 [8, 6, 4, 2] に変換せよ。
  2468.digits
Q6-3. 数値 n = 9 が奇数か偶数かを判定し、文字列で "odd" か "even" を出力せよ。
  n = 9
  n.even? ? "even" : "odd"
✅ 7. ブロック渡し系まとめ練習
Q7-1. 10.times を使って 0 から 9 のうち奇数だけを出力せよ。
  10.times do |num|
    puts num if num.odd?
  end
Q7-2. 1.upto(5) を使って数字とその2乗のペアを配列に格納せよ（例: [ [1,1], [2,4], ... ]）
  (1..5).map { |n| [n ** 2] }
Q7-3. 6.downto(1) を使って “カウントダウン: n” という文字列を1行ずつ表示せよ。
  6.downto(1) do |num|
    puts "カウントダウン: #{num}"
  end
✅ 8. 型変換・小数計算系
Q8-1. 整数 5 を浮動小数点に変換して 1.5 と割り、小数で出力せよ。
  5.to_f / 1.5
Q8-2. 10 を 3 で割った結果を有理数（Rational）として出力せよ。
  10.to_r / 3
Q8-3. 22 を 7 で割った有理数の分子と分母をそれぞれ求めよ。
  r = Rational(22, 7)
  r.numerator
  r.denominator
✅ 9. ビット演算・比較系（&, |, ^, ~, <<, >>, bit_length）
Q9-1. 6 & 3 のビット積を計算せよ。
Q9-2. 数字 5 を左に1ビットシフトして出力せよ。
Q9-3. 整数 1023 のビット長（bit_length）を求めよ。
✅ 10. 文字列処理・フォーマット寄り（整数から文字列関連）
Q10-1. 数字 65 を文字に変換して出力せよ（例: "A"）。
Q10-2. 数字 1234567 を "1,234,567" の形式で3桁区切りにして出力せよ。
Q10-3. 7 を "%05d" でゼロ埋めして出力せよ。
