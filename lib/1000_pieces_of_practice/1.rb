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

# ユニークな文字列
# 与えられた文字列に含まれるすべての文字がユニーク（重複なし）であるかどうかを
# 判定するプログラムを作成してください。ユニークであればtrue、そうでなければfalseを返します。

# 文字のカウント
# 入力された文字列内に含まれる特定の文字の出現回数をカウントして出力するプログラムを作成してください。
# 例えば、"apple"の中で"p"が何回出てくるかを数えます。
