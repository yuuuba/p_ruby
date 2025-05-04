1. 引数なしメソッド
	1.	文字列を返すメソッドを作成してください。このメソッドは引数を受け取らず、“Hello, World!“という文字列を返します。
  def return_str
    "Hello,World!"
  end
  puts return_str
	2.	引数なしで、1から10までの整数をランダムで返すメソッドを作成してください。
  def random_num
    rand(1..10)
  end
  puts random_num
	3.	引数なしで、“Ruby”という文字列の長さを返すメソッドを作成してください。
  def str_length
    "Ruby".length
  end
  puts str_length

	•	クラスの問題1
Greetingクラスを作成し、greetというメソッドを定義してください。このメソッドは引数なしで「こんにちは！」と表示します。
class Greeting
  def greet
    "こんにちは"
  end
end
example_greeting = Greeting.new
example_greeting.greet

	•	クラスの問題2
Clockクラスを作成し、current_timeというメソッドを定義してください。このメソッドは引数なしで「現在の時刻はxx時xx分です。」と表示します。
class Clock
  def current_time
    time = Time.now
    "現在時刻:#{time.hour}時#{time.min}分"
  end
end

now = Clock.new
puts now.current_time
2. 単一引数のメソッド
	1.	引数として受け取った整数を2倍にして返すメソッドを作成してください。
    def twice(num)
      num * 2
    end
    puts twice(4)
	2.	引数として受け取った文字列を、大文字にして返すメソッドを作成してください。
    def up_str(str)
      str.upcase
    end
    puts up_str("test")
	3.	引数として受け取った整数が偶数かどうかを判定するメソッドを作成してください。偶数なら”Even”、奇数なら”Odd”を返します。
    def int_even?(num)
      num.even? ? "Even" : "Odd"
    end
    puts int_even?(3)

後置ifは一つの処理をかける、三項演算子は二つの処理をかける、どっちもif文の書き方

3. 複数引数のメソッド
	1.	2つの数値を引数に受け取り、その合計を返すメソッドを作成してください。
  def sum_num(num1,num2)
    num1 + num2
  end
  puts sum_num(3,4)
	2.	2つの文字列を引数に受け取り、結合した文字列を返すメソッドを作成してください。
    def sum_str(str1,str2)
      str1 + str2
      # "#{str1}  #{str2}"
    end
    puts sum_str("iida","taro")
	3.	3つの整数を引数に受け取り、その平均を返すメソッドを作成してください。
    # def three_avg_num(int1,int2,int3)
    #   (int1 + int2 + int3) / 3
    # end
    # puts three_avg_num(2,3,4)

    def three_avg_num(nums)
      nums.inject(:+) / nums.size.to_f
    end
    nums = [1,3,5,6]
    puts three_avg_num(nums)
4. デフォルト引数のメソッド
	1.	文字列を受け取り、“Hello, (名前)!“という挨拶のメッセージを返すメソッドを作成してください。名前が指定されない場合は、“Hello, Guest!“を返します。
    def greet(name = "Guest")
      "Hello,#{name}!"
    end
    puts greet("yoshida")
  2.	数字を受け取り、指定された数の平方を返すメソッドを作成してください。デフォルトでは2の平方を返すようにしてください。
  def square_root(num = 4)
    num.abs2
  end
  puts square_root # デフォルト引数に処理書いてメソッドにも処理書くと２重になる
	3.	引数として渡された数値が10より大きいかどうかでメッセージを変えて返すメソッドを作ってください。
      引数が指定されなかった場合はデフォルトで5を使って判定してください。

      def greater_than_10(num = 5)
        num >= 10 ? "10より大きいです" : "10未満です"
      end

      puts greater_than_10(10)

5. 可変長引数のメソッド
実引数と仮引数
メソッド定義側が仮引数  （値がまだ渡ってなく仮で定義しているから）
メソッド呼び出し側が実引数（実際に渡る値を書いているから）
🔹  *（1個）は：位置引数を受け取る → 配列になる！
🔹 **（2個）は：キーワード引数を受け取る → ハッシュになる！

キーワード引数はキーとバリュー形式で渡すメソッドに渡す引数の種類


hello(name: "ゆうや") メソッドにキーバリュー形式で値を渡しているのは”キーワード引数”
{name: "ゆうや"}      みたいな見た目が似ているシンボルをキーとしたハッシュは”ハッシュの話”

クラス変数ら辺と一緒でまたの名を・・がある


仮引数（def ～ の中に書くやつ）
├─ 位置引数（順番で渡すやつ）
│   ├─ 単数の位置引数         name
│   ├─ デフォルト値付き       name = "ゆうや"
│   └─ 可変長位置引数         *args         → 配列で受け取る
│
├─ キーワード引数（キー: 値 の形で渡すやつ）
│   ├─ 単数のキーワード引数   name:
│   ├─ デフォルト値付き       name: "ゆうや"
│   └─ 可変長キーワード引数   **kwargs      → ハッシュで受け取る
│
└─ ブロック引数
    └─ &block                             → Procオブジェクトで受け取る


実引数（メソッド呼び出しのときに渡すやつ）
├─ 位置引数
│   ├─ 値を直接渡す           hello("ゆうや")
│   └─ 配列を展開して渡す     array = [1, 2, 3]
│                              hello(*array)
│
├─ キーワード引数
│   ├─ 値を直接渡す           hello(name: "ゆうや")
│   └─ ハッシュを展開して渡す hash = { name: "ゆうや", age: 28 }  （キーワード引数を使ったとき、内部的には「キーがシンボルのハッシュ」として処理される）
│                              hello(**hash)
│
└─ ブロック引数
    ├─ ブロックを直接渡す     hello { puts "Hi!" }
    └─ Procを展開して渡す     proc = -> { puts "Hi!" }
                               hello(&proc)

可変長引数は値の数厳密じゃなくていいよのやつ、可変長位置引数と可変長キーワード引数
さらに値を渡した後に配列になったりハッシュになったりする
ほいで仮引数にも実引数にも両方使える

ほいでキーワード引数はハッシュっぽい見た目のキー、バリューの値の渡し方



                               ✅ 判断の指針まとめ
                               こんな時に…	使うやつ
                               数が不定で、全部同じ意味の値を扱いたい	*args（配列になる）
                               意味の異なるオプションを柔軟に受けたい	**kwargs（ハッシュ）
                               明示的に引数の名前を指定したい	キーワード引数

                               *args は「配列として処理するなら使う」って覚えておけばOK！

                               **kwargs は「何の値かわからんの困るから、名前付けたい」ってときに使う

                               選ぶこと自体に慣れる→失敗する→あとから「あ、こっちがよかったかも」って修正する
                               ☝️ じゃあどうやってその「パターン感覚」身につけんの？
                               ①「書いてみる」→「人の書いたのを見る
                               自分で書いて「なんかしっくりこないなぁ」って思ったら、

                               他の人はどう書いてるか見て「うわ、こういう書き方あるんか！」って気づく。

                               たとえば：

                               ruby
                               コピーする
                               編集する
                               # 自分：
                               def greet(name, age = nil, title = nil)
                               end

                               # 他の人：
                               def greet(name:, age: nil, title: nil)
                               みたいに、「明示的に名前で受ける」ほうが意図伝わりやすいって経験でわかってくる。

                               ②「用途ベースで逆算する癖」をつける
                               たとえばこう：
                               「何をしたいメソッドなのか？」

                               → 「どんな引数を受け取るべき？」（配列か？オプションか？）

                               って流れで考える。

                               例：例：

                               def render_view(path, layout: true)
                               みたいに、「layout はおまけ的な設定だからキーワード引数だな」って感じで。

                               ③「とりあえず書いてみて、動かして、考え直す」


失敗してOKやねん。「*args で書いたけど、あれ、あとで key として取り出したいな」
→ 「あ、**kwargs で書いた方が扱いやすかったやん」
→ 直す。

これを繰り返していくうちに、「こういうときは最初から kwargs にしとこ」って判断が早くなる。
	1.	引数に渡された数値をすべて加算して返すメソッドを作成してください。
    def all_sum(*nums)
      nums.sum
    end

  puts all_sum(2,3,4,5,6)
	2.	任意の数の文字列を引数として受け取り、それらをスペースで結合して返すメソッドを作成してください。
    def sum_str(*args)
      args.join(" ")
    end

    puts sum_str("田中", "りんご", "サラダ")

	3.	任意の数の整数を受け取り、最大値を返すメソッドを作成してください。
    def max_int(*args)
      args.max
    end

    nums = [1,4,23,56,4,6,7]
    puts max_int(*nums)
6. キーワード引数のメソッド
	1.	引数として、nameとageをキーワード引数で受け取り、それを使って”Name: (name), Age: (age)“というフォーマットの文字列を返すメソッドを作成してください。
    def status(name:, age:)
      "Name: (#{name}), Age: (#{age})"
    end

    puts status(name: "yoshida", age: 23)
  2.	キーワード引数でtitleとauthorを受け取るメソッドを作成し、それを”Book Title: (title) by (author)“という形式で返すメソッドを作成してください。
    def book_information(title: , author:)
      "Book Title: #{title} by #{author}"
    end

    puts book_information(title: "ruby入門", author: "伊藤淳一")
  3.	widthとheightのキーワード引数を受け取り、長方形の面積を返すメソッドを作成してください。
    def rectangular_area(width:, height:)
      width * height
    end

    puts rectangular_area(width: 3, height: 8)
7. ブロック引数のメソッド
	1.	受け取った引数を使って、その値を2倍にする処理をブロックで実装するメソッドを作成してください。
	2.	ブロックを受け取り、そのブロックを3回実行するメソッドを作成してください。
	3.	受け取った引数をブロックに渡し、その結果を返すメソッドを作成してください。

  def register_user(name:, age:, role: "guest",**kwargs)
    <<~INFO
    "Name: #{name}"
    "Age: #{age}"
    "Role: #{role}"
    "Additional Info:"
    " email: #{kwargs[:email]}"
    " phone: #{kwargs[:phone]}"
    " country: #{kwargs[:country]}"
    INFO
  end

  ・動的に出力するやつやりたい
info = { name: "yoshida", age: 12, role: "admin" }

info.each do |key, value|
  puts "#{key.to_s.capitalize}: #{value}"
end


  書かない<改行コード混ぜて出力(ベタ書き)<ヒアドキュメント（固定的なレイアウト向け）<配列定義してその中にぶち込んでそれを出力,動的にkwargsをループさせて出力,map<each_with_objectとかinjectとか

  puts register_user(name: "yoshida", age: 23, email:"hogehoge@gmail.com", phone: "000-00000000", country: "JP")

・位置引数（普通のやつ）
・デフォルト引数
・可変長引数
・キーワード引数、初期値ありver
・任意のキーワード引数
・ブロック引数
・引数展開
・
