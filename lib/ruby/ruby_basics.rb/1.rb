# ①変数、定数、if unless case,繰り返し(whileとかuntile loop break next)、

# 変数
グローバル、メソッド、クラス
hoge = 1

def hoge
  hoge = 1
  hoge += 1
end

class Hoge
  attr_reader :num
  @@count = 0

  def initialize(num)
    @num = num
    @@count += 1
  end

  def num_sum
    hoge = 2
    hoge + num #numはself.numの略、アクセサメソッド定義しているからよべる
  end

  def
end

class Hoge < Huga
end

test = Hoge.new(2)
test2 = Huga.new
test2.
test.num_sum
