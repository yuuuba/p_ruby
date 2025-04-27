# 🧠 お題：「カウントダウンタイマー」クラスを作れ！
# 🔧 要件
# クラス名：CountdownTimer

# インスタンス生成時に「開始秒数」を渡す（例：CountdownTimer.new(10)）

# 以下のメソッドを実装せよ：

# tick
# → 1秒減らして、残り秒数を返す（例：9 → 8 → ...）

# finished?
# → 残り秒数が0以下なら true、それ以外は false

# reset
# → 最初に渡された秒数に戻す

class CoutndownTimer
  attr_reader :time

  def initialize(time)
    @time = time
    @initial_time = time
  end

  def tick
    time -= -1
  end

  def finished?
    true if time.eql?(0)
  end

  def reset
    time = @initial_time
  end
end

set1 = CountdownTimer.new(10)
until set1.time.eql?(0)
  while set1.time.eql?(0)
    set1.tick
  end
end

日本語にしてコード書き始めるを噛み砕く

🪜 ステップ0：「主語と動詞」を日本語で考える
例）
「タイマーが1秒ずつ減る」
→ 主語：タイマー（＝クラス）
→ 動詞：減る（＝メソッド）
→ 必要なデータ：秒数

@time          # 残り時間
@initial_time  # リセット時に戻す値


🪜 ステップ1：状態（＝インスタンス変数）を決める
何を「持たせる」必要があるか？

「状態の変化」が発生するもの＝インスタンス変数にすべき

tick       # 1秒減らす
reset      # 初期状態に戻す
finished?  # 終わってるかどうか確認する

🪜 ステップ3：どう使われるかを先に書く（←ここ超重要）
つまり 「使う側のコード（呼び出し側）」を先に書く
→ これで「何が必要か」がはっきりする！

📝 例：

timer = CountdownTimer.new(5)
until timer.finished?
  puts timer.time
  timer.tick
end
↑これ書いてから、足りないパーツをクラスに実装してく！

🪜 ステップ4：実装する
外から呼ばれるメソッドに注目して、状態を変える or 返すように書く

「何を引数に受け取って、何を変更するのか or 返すのか」だけに集中する

🌟 まとめ：クラス設計の筋道
コピーする
編集する
① 主語と動詞を日本語で書く
↓
② 必要な状態（変数）を決める
↓
③ 呼び出す側のコードを書く
↓
④ 実装する

class CountdownTimer
  attr_reader :time

  def initialize(time)
    @time = time
  end

  def tick
    @time -= 1
  end
end

timer = CountdownTimer.new(3)
3.times do
  puts "残り: #{timer.tick}"
end



クラス内のインスタンメソッドはインスタンスに対して呼べる（IntegerなりStringなりに呼ぶとNoMethodErrorとかなる）
インスタンスに対してインスタンスメソッドよんでさらにインスタンスメソッド使いたい場合はよんだメソッドの戻り値がインスタンス(self)であればさらにメソッドチェーンでインスタンスメソッドが呼べる（戻り値がインスタンスだから）
だから「戻り値を変える方法」は大きく分けて

最後の式を何にするか（@time -= 1／self／"done"…）

必要なら return で上書き（if文混ぜてこの場合はreturnで指定の値を返すとか）
の２ステップで考えればOKやで👍

ーーーー
✅ 新しい要件
	1.	現在の進捗をパーセンテージで出せるようにする
	•	例：5秒中3秒減ってたら → 60%
	•	progress メソッドで取得できる
	2.	タイマーが finished になったら、自動で reset するモードを追加できる
	•	例：CountdownTimer.new(5, auto_reset: true) とかで初期化できる
	•	tick の中で @time <= 0 になったら reset される

最終的な要件：
タイマーが任意の時間からカウントダウンして０になったらfinishと表示して元の時間にリセットできる

class CountdownTimer
  attr_reader :time

  def initialize(time)
    @time = time
    @initial_time = time
  end

  def tick
    @time -= 1
    self
  end

  def finished?
    @time <= 0
  end

  def reset
    @time = @initial_time
    self
  end
end

timer = CountdownTimer.new(5)

until timer.finished?
  puts timer.time
  timer.tick
end

puts "finish"

timer.reset
puts "リセット後の時間: #{timer.time}"  # => 5

タイマーが任意の時間からカウントダウンして０になったらfinishと表示して元の時間にリセットできる


class Timer
  attr_reader :remaining_sec, :initial_sec

  def initialize(hour: , min:, sec: )
    @initial_sec = hour * 3600 + min * 60 + sec
    @remaining_sec = @initial_sec
  end

  # 初期値の設定
  def current_time
    h, rem = @remaining_sec.divmod(3600)
    m, s   = rem.divmod(60)
    "#{h}時間#{m}分#{s}秒"
  end

  # 1秒ずつ減らす
  def tick
    @remaining_sec -= 1 if @remaining_sec > 0
  end

  # 残り秒数が0か判断
  def finish?
    @remaining_sec.eql?(0)
  end

  # 残り秒数を初期値へ戻す
  def time_reset
    @remaining_sec = @initial_sec
  end
end

class TimerAccessory
  def initialize(timer)
    @timer = timer
  end

  def time_percent
    remaining = @timer.remaining_sec
    initial   = @timer.initial_sec
    percent = (remaining.to_f / initial * 100).round(1)
    "#{percent}%"
  end
end

# タイマーが任意の時間からカウントダウンして０になったらfinishと表示して元の時間にリセットできる

timer = Timer.new(hour: 1, min: 20, sec: 45)
percent = TimerAccessory.new(timer)
until timer.finish?
  timer.tick
  if timer.finish?
    puts "finish"
    timer.time_reset
  end
  puts percent.time_percent
end
