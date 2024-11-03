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
# 複数の整数配列が与えられたとき、それらすべてに共通する要素を配列として返すプログラムを作成してください。
