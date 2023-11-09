mie = TestCategory.create!(title: "三重", region: "japan")

#---------問題１--------------------------------------------------------------------★
quiz1 = Quiz.create!(
  content: "①これから「カナダのハワイ」と呼ばれているところに旅行をします。その場所の名前は？",
  youtube_url: nil,
  image_url: nil,
  test_category: mie
)

QuizChoice.create!(
  content: "モントリオール",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "カルガリー",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "ケロウナ",
  correct_answer: true,
  explanation: "カナダ人が老後に住みたい都市がケロウナです（お金持ちが集まる所、という噂も）。\n
          海はありませんが、巨大な湖（オカナガン湖）が流れています。夏になると自家用ボートを湖に浮かべて、家族や友人とボートの上でゆったりした時間を過ごします。\n
          ワインナリーが有名で、約数十ヶ所もあるそうです。ワインナリーに訪れた際はティスティングをお勧めします。ティスティングをするのに年齢確認をされますので、身分証明証は必ず持参してください！\n
          ティスティングをする気で行ったのに、身分証明書を忘れてティスティングができずに帰った、という悲しい経験をされた方もいます。。。\n
          もちろん、ワインを飲まなくてもワインナリーの景色だけを楽しむのもおすすめです！",
  image_url: nil,
  quiz: quiz1
)

#---------問題２--------------------------------------------------------------------
quiz2 = Quiz.create!(
  content: "②本場のものを食べたいということでレストランに入りました。カナダの食べ物と言ったら何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: mie
)

 QuizChoice.create!(
  content: "プラリネ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "プーティン",
  correct_answer: true,
  explanation: "プーティンはフライドポテトの上にグレイビーソース（肉汁のソース）をかけた、カナダの数少ない料理の一つです。\n
          ５〜１０口目までは美味しいと感じますが、その後はだんだん飽きてきます... やはり、普通のフライドポテトが一番美味しいとだんだん感じてきます。\n
          小さいサイズを選んでも食べきれないことがありますので、誰かとシェアすることをお勧めします！ちなみに、グレイビーソースが定番ですが、お店によっては色んなソースやトッピングをするお店もあります。",
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "プリン",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)
