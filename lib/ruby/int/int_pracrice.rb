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
