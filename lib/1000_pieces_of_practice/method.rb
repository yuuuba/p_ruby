require 'pry-byebug'
# 組み込みメソッドの組み合わせでなんとか解ける問題を出してもらう、アルゴリズム系はなし

# 文字列の中で最も多く出現する文字を返すメソッドを作成してください。
# 入力：
# 1行目に文字列 s（長さは 1 以上 1000 以下）が与えられます。
# 文字列は英小文字で構成されています。
# 出力：
# 最も多く出現する文字を 1 文字出力してください。
# 出現回数が同じ文字が複数ある場合は、最初に出現した文字を返してください。
# 制約：
# 1 ≤ |s| ≤ 1000（文字列の長さ）
#
# group_byでとく

def many_str_output(str)
  # countでキーバリューを求める、キーの数字が一番大きいやつを出す
  # そのキーに対するバリューの最初の要素を返す
  str_box = []
  str.chars.group_by { |s| s.count(s) if str_box.include?(s) }
end

# 16. アナグラム判定
# 問題: 2つの文字列がアナグラムかどうかを判定するメソッド anagram? を作成してください。
# アナグラムとは単語の文字を並べ替えて別の単語にしたものです（例: "listen" と "silent"）。
# 入力例:
# anagram?("listen", "silent")
# 出力例:
# true
def anagram?(str1, str2)
  # 要素の一つが要素2に全て含まれているか、
  if str1.length.eql?(str2.length)
    str1.chars.sort == str2.chars.sort
  else
    false
  end
  # str1.chars.each { |str| str.include?(str2.slice!(0)) }
end

# p anagram?('listen', 'silent')

# 32. 文字列の左右対称チェック
# 問題: 与えられた文字列が左右対称 (回文) であるかどうかを判定するメソッド
# is_palindrome を作成してください。
# 入力例:
# is_palindrome("madam")
# 出力例:
# true
def is_palindrome(str)
  str == str.reverse
end

# 35. 文字列の単語の逆順
# 問題: 与えられた文字列内の単語の順序を逆にして返すメソッド
# reverse_words を作成してください。
# 入力例:
# reverse_words("Hello world this is Ruby")
# 出力例:
# "Ruby is this world Hello"
# NOTE: join

def reverse_words(str)
  # 文字を空白区切りにして配列にunshiftで入れる、配列出力
  # str.split.each { |s| reverse_str << s.unshift }
  str.split.reverse.join(' ')
end

# p reverse_words('Hello world this is Ruby')

# 4. 文字列内の数値の置換
# 問題: 与えられた文字列内で、各数字をその次の数字に置き換えるメソッド increment_digits を作成してください。9は0に置き換えます。数字以外の文字はそのまま残します。
# 入力例:
# increment_digits("abc123xyz45")
# 出力例:
# "abc234xyz56"

# 1. 文字列の圧縮
# 問題: 与えられた文字列を圧縮するメソッド compress_string を作成してください。文字列内の連続する同じ文字は、その文字とその文字の出現回数に置き換えます。例えば、"aabbbcccc" は "a2b3c4" に圧縮されます。ただし、出現回数が1の文字はそのまま出力します。
# 入力例:
# compress_string("aabbbcccc")
# 出力例:
# "a2b3c4"

# 1. 文字列の圧縮
# 問題: 与えられた文字列を圧縮するメソッド compress_string を作成してください。文字列内の連続する同じ文字は、その文字とその文字の出現回数に置き換えます。例えば、"aabbbcccc" は "a2b3c4" に圧縮されます。ただし、出現回数が1の文字はそのまま出力します。
# 入力例:
# compress_string("aabbbcccc")
# 出力例:
# "a2b3c4"

# 2. 部分文字列の並べ替えで一致するか
# 問題: 与えられた2つの文字列のうち、1つ目の文字列の部分文字列が、2つ目の文字列の並べ替えによって作成できるかを判定するメソッド can_form_by_rearrangement を作成してください。
# 入力例:
# can_form_by_rearrangement("abc", "cba")
# 出力例:
# true

# 3. 数値を英語表記に変換
# 問題: 与えられた1から9999までの整数を、英語で表現するメソッド number_to_english を作成してください。例えば、123は "one hundred twenty three" と表現します。
# 入力例:
# number_to_english(123)
# 出力例:
# "one hundred twenty three"
