# スペースで区切られた英単語列が与えられます。
# 英単語列に含まれる英単語の出現回数を出現した順番に出力してください。
# 入力例1
# red green blue blue green blue

# 出力例1
# red 1
# green 2
# blue 3

# wordsに対してeachでまわし、同じもののカウントをする、格納の箱を作っておく、もしその箱に同じ単語名があれば次の処理へ
def word_counter(words)
  after_words_box = []
  words.each do |word|
    num_count = words.count(word)
    if after_words_box.include?(word)
      false
    else
      after_words_box << "#{word} #{num_count}"
    end
  end
  after_words_box.uniq
end
words = gets.chomp.split
puts word_counter(words)


# ブロック外からは参照できない？メソッド作ってない時
  # →ブロック内で定義した変数はブロック内だけのスコープ、ブロック外で定義した変数はブロック内からも参照できる ブロック外はブロック定義してないから
# 19行目のリファクタリング
  # →word + " " + num_count.to_s
# 17行目もっと良くできなかったか
  # →nilガードとかhashとか使う
