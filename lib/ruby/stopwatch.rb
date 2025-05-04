# 目的
# ユーザーが計測を開始して停止するまでの時間を測り、経過時間を表示する。

# ユーザー
# タイマーが計測をスタートする
# タイマーが計測を停止する
# タイマーがスタートから停止までの時間を測る
# タイマーが測った時間を表示させる

# ユーザー[User]
# タイマー[Timer]を開始(start)する
# タイマーを停止(stop) する
# タイマーをリセット(reset)する
# タイマーがスタート時間からストップした時間を計算して経過時間を返す(elapsed_time)



# ディスプレイ[Display]に経過時間を表示する


class User
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Timer
  attr_reader :timer_status, :initial_sec, :elapsed_time

  def initialize(timer_status)
    @timer_status = timer_status
    @elapsed_time = nil
  end

  def status_check
    @timer_status.eql?(false) ? true : false
  end

  def start
    @timer_status.eql?(true) if nil
    @start_time = Time.now
  end

  def stop
    @stop_time = Time.now
    @elapsed_time = @stop_time - @start_time
  end

  def reset
    @elapsed_time = nil
  end
end

class Display
  def initialize(timer)
    @timer = timer
  end

  def display_seconds
    "経過時間：#{@timer.elapsed_time.round(1)}秒"
  end
end

taro = User.new(taro)

# タイマーのステータス状態を渡す
stop_sec = rand(4)
taro_timer = Timer.new(false)
taro_disp = Display.new(taro_timer)

# スタートメソッドでタイマーをスタートし、任意の時にストップメソッドを使う、ストップを押した時に経過時間メソッドを使って、何秒か表示させる。その後タイマーをリセットさせる
if taro_timer.status_check.eql?(true)
  taro_timer.start
  sleep(stop_sec)
  taro_timer.stop
  puts taro_disp.display_seconds
  taro_timer.reset
end
