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
      if num % i == 0
        is_prime = false
      end
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

num = [2,3]
num_sum(num)

def factorial(num)
  box = []
  if num >= 1
    num.downto(1) {|n| box << n }
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

  #gpt
  (array.size - 1).times do
    (0...(array.size - 1)).each do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
      end
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
# 1. 素数のリスト
# 引数として与えられた数 n までの素数のリストを返す関数 primes_up_to(n) を作成してください。

# 2. 二分探索
# ソートされた配列とターゲットとなる数を引数に取り、
# その数が配列内に存在するかを判定する二分探索の関数
# binary_search(array, target) を作成してください。
# 存在すれば true、存在しなければ false を返します。

# 3. 文字列のアナグラム判定
# 二つの文字列がアナグラム（同じ文字を使って別の単語を作ること）であるかを判定する関数
#  anagram?(str1, str2) を作成してください。
#  アナグラムであれば true、そうでなければ false を返します。

# 4. 重複のない配列の作成
# 引数として与えられた配列から重複を取り除いた新しい配列を返す関数
#  unique_array(array) を作成してください。

# 5. 文字列内の単語数カウント
# 引数として与えられた文字列内に含まれる単語の数をカウントする関数
# count_words(string) を作成してください。単語はスペースで区切られたものとします。
