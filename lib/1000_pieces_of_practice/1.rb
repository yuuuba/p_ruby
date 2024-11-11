require 'pry-byebug'

# def prime_number?(num)
#   if num.is_a?(Numeric)
#     Math.sqrt(num)
#     true
#   else
#     false
#   end
# end

# prime_number?(4)

def prime_number(num)
  is_prime = true

  if valid_number?(num)
    (2..Math.sqrt(num)).each do |i|
      is_prime = false if num % i == 0
    end
  else
    is_prime = false
  end

  is_prime
end

def valid_number?(num)
  num.is_a?(Numeric) && num > 1
end

def num_sum(ary)
  ary.sum
end

num = [2, 3]
num_sum(num)

def factorial(num)
  box = []
  if num >= 1
    num.downto(1) { |n| box << n }
    box.inject(&:*)
  else
    1
  end
end

# フィボナッチ数列
# 与えられた整数nに対して、n番目のフィボナッチ数を返すプログラムを再帰で作成してください。
# フィボナッチ数列は、1, 1, 2, 3, 5, 8, ... と続きます。

# 配列のソート（バブルソート）
# 任意の数値が入った配列を受け取り、
# バブルソートアルゴリズムを使って昇順に並び替えるプログラムを作成してください。
def bubble_sort(ary)
  # 昇順に並び替える
  # each1回目であればboxにドンと入れる
  # 2回目からboxの要素1個目と比較、小さければunshift,大きければpush,
  # 3回目からeachで回して1個目と小さいか大きいか、小さければunshift,大きければpush
  # 入れた要素の次の要素に要素があるか、あれば小さければunshift,大きければpush
  # box = [] #[2,4,3]
  # ary.each do |num|
  #   num.push if box.empty?
  #   break if box.first.equal?(num)
  #   box.each do |val|
  #     if val < num
  #       box.push(num)
  #     elsif val > num
  #       box.unshift(num)

  # gpt
  (array.size - 1).times do
    (0...(array.size - 1)).each do |i|
      array[i], array[i + 1] = array[i + 1], array[i] if array[i] > array[i + 1]
    end
  end
end

# ユニークな文字列
# 与えられた文字列に含まれるすべての文字がユニーク（重複なし）であるかどうかを
# 判定するプログラムを作成してください。ユニークであればtrue、そうでなければfalseを返します。
def uniq_check(str)
  # 文字列の一文字一文字それぞれが重複がないか確認する
  chara_str = str.chars
  # pp chara_str
  # ユニークは重複なし、重複ありであれば真を返すコードで真を返したらtrueが返ってくる
  # falseは重複ありではない
  chara_str.uniq.count == str.size
end

# 文字のカウント
# 入力された文字列内に含まれる特定の文字の出現回数をカウントして出力するプログラムを作成してください。
# 例えば、"apple"の中で"p"が何回出てくるかを数えます。
def count_char(str, char)
  str.count(char)
end

# 問題 19: 配列を指定した数で分割
# 整数の配列と正の整数 n が与えられたとき、
# 配列を n 個ずつのチャンクに分割して2次元配列を返すプログラムを作成してください。
# 最後のチャンクが n 個未満になる場合は、そのままにしてください。
# 例えば、[1, 2, 3, 4, 5, 6, 7] と n = 3 が与えられた場合、[[1, 2, 3], [4, 5, 6], [7]] を返します。

class Division
  def initialize(ary, num)
    @ary = ary
    @num = num
  end

  def division_check
    after_ary = []
    @ary.each_slice(@num) { |n| after_ary << n }
    after_ary
  end
end

ary = [1, 2, 3, 4, 5, 6, 7]
num = 3

test1 = Division.new(ary, num)
test1.division_check

# 問題 20: 複数の配列の共通部分を返す
# 複数の整数配列が与えられたとき、
# それらすべてに共通する要素を配列として返すプログラムを作成してください。
def common_elements(*ary)
  ary.reduce(&:&)
end

ary1 = [1, 2, 3, 4, 5]
ary2 = [1, 2, 5, 78]
ary3 = [1, 2, 6, 7, 4]

common_elements(ary1, ary2, ary3)

# 問題26: 配列の合計が特定の数になる組み合わせ
# 整数の配列とターゲットとなる整数が与えられたとき、
# 配列の要素の中から2つの数を選んでその合計がターゲットと一致するか
# どうかを判定するプログラムを作成してください。
# NOTE: 配列など複数の要素がある時のtrue,falseを返すときは「any?」で全体調べれる、combinationメソッド

def ary_combination(ary)
  target = 6
  ary.combination(2).to_a.each do |combi|
    combi.sum.eql?(target)
  end
  # ary.combination(2).any? { |combi| combi.sum.eql?(target) }
end

ary = [1, 2, 3, 4, 5]
ary_combination(ary)

# 問題31: 文字列のアナグラム判定
# 与えられた2つの文字列がアナグラムかどうかを判定するプログラムを作成してください。
# アナグラムの場合は true を、
# そうでない場合は false を返します。大文字と小文字は区別しません。
# 入力: "listen", "silent" → 出力: true
# NOTE: 文字をそれぞれ比較かつ同じ文字数であれば同じ

# def anagram(ary)
#   first_str = ary[0].chars
#   second_str = ary[1].chars
#   first_str.each do |str|
#     str.each do |s_str|
#       str.any?.eql?(s_str)
#     end
#   end
# end

# ary = %w[listen silent]

# 問題32: 文字列の圧縮

# 文字列を圧縮して、連続する同じ文字をその文字と連続回数で表すプログラムを作成してください。
# たとえば、"aaabbccccd" という文字列が与えられた場合、圧縮後は "a3b2c4d1" となります。

# 例

# 入力: "aabcccccaaa"
# 出力: "a2b1c5a3"
# ただし、圧縮後の文字列が元の文字列よりも長くなる場合は、元の文字列をそのまま返してください。

# chars,同じやつ削除、それを箱に入れる
# 加工したやつeachで元の文字列に対して回す、
# 元のやつに対してcount,

def compress_string(str)
  compressed = str.chars.uniq.map do |char|
    "#{char}#{str.count(char)}"
  end.join

  compressed.length < str.length ? compressed : str
end

compress_string('aabcccccaaa')

# 問題34: 文字列のキャピタライズ
# 複数の単語で構成された文字列が与えられたとき、各単語の最初の文字だけを大文字にし、
# 他の文字は小文字にして返すプログラムを作成してください。

# 例
# 入力: "hello world from ruby"
# 出力: "Hello World From Ruby"
# NOTE: 関係ないけどany?は真があれば直ちに真を返す、all?は要素が全部真で初めて真を返す

def str_capitalize(str)
  str.split.each do |after_str|
    after_str.capitalize!
  end
end

str_capitalize('hello world from ruby')

# 問題 32: 値の頻度を求める
# 整数の配列が与えられたとき、各値が何回出現しているかをハッシュで返すメソッドを作成せよ。
# たとえば [1, 2, 2, 3, 3, 3] が入力なら、{1 => 1, 2 => 2, 3 => 3} を返すように。
def num_tally(ary)
  ary.tally
end
num_tally([1, 2, 2, 3, 3, 3])

# 問題34: スパイラル行列
# 問題
# サイズ n x n の正方行列を、1から順にスパイラル状に埋めた行列を生成してください。
# スパイラル状とは、行列の左上から始まり、右、下、左、上の順に進む方法です。
# 入力例
# 入力: n = 3
# 出力:
# [
#   [1, 2, 3],
#   [8, 9, 4],
#   [7, 6, 5]
# ]

# 入力: n = 4
# 出力:
# [
#   [1,  2,  3, 4],
#   [12, 13, 14, 5],
#   [11, 16, 15, 6],
#   [10,  9,  8, 7]
# ]

# 問題 36: パリンドローム部分列の長さ
# 文字列が与えられたときに、その文字列内で最長のパリンドローム（前から読んでも後ろから読んでも同じ）
# 部分列を見つけ、その長さを返すプログラムを作成してください。

# 入力例

# 文字列 "babad" の場合、最長のパリンドローム部分列は "bab" または "aba" で、長さは 3 です。
# 文字列 "cbbd" の場合、最長のパリンドローム部分列は "bb" で、長さは 2 です。
# 出力例

# 文字列 "babad" の場合、出力は 3
# 文字列 "cbbd" の場合、出力は 2

def max_palindrome(str)
  # strの文字列数をカウント、カウントした文字数から2までdowncaseで繰り返し
  # その文字列とその文字列をrevberseしたものが同じか判定、
  # 同じであればその文字列をcountしたものを返す、最後までtrueがなければ1を返す
end
