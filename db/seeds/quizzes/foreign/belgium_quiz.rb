belgium = TestCategory.create!(title: "ベルギー", region: "foreign")

#---------問題１--------------------------------------------------------------------★
quiz1 = Quiz.create!(
  content: "①これから「カナダのハワイ」と呼ばれているところに旅行をします。その場所の名前は？",
  youtube_url: nil,
  image_url: nil,
  test_category: belgium
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
