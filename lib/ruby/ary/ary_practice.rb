# 以下の配列に「grape」を追加し、「banana」を削除してください。

fruits = ["apple", "banana", "orange"]

fruits.delete("banana")
fruits.push("grape")

p fruits

# 以下の配列から、3文字以上の単語だけを取り出して新しい配列を作ってください。

words = ["hi", "cat", "house", "a", "dog"]

words.select do |word|
  word.length >= 3
end

# あなたはAPIから次のようなユーザー情報を受け取りました。 この中から「30歳以上のユーザーの名前一覧」を文字列で出力してください（カンマ区切り）。
users = [
  { name: "佐藤", age: 28 },
  { name: "鈴木", age: 35 },
  { name: "田中", age: 42 },
  { name: "高橋", age: 22 }
]

# => "鈴木, 田中"

names = users
    .select { |user| user[:age] >= 30 }
    .map    { |user| user[:name] }

問題2：全ユーザーの名前を「さん付け」で配列にして with_suffix に代入してください（{}使って）
with_suffix = users
    .map    { |user| user[:name].concat("さん") }

※配列のハッシュの形を崩さずさん付けする場合

hoge = users
  .map { |user| user[:name] << "さん" }
