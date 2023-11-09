canada = TestCategory.create!(title: "カナダ", region: "foreign")

#---------問題１--------------------------------------------------------------------★
quiz1 = Quiz.create!(
  content: "①これから「カナダのハワイ」と呼ばれているところに旅行をします。その場所の名前は？",
  youtube_url: nil,
  image_url: nil,
  test_category: canada
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
  test_category: canada
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

#---------問題３--------------------------------------------------------------------
quiz3 = Quiz.create!(
  content: "③今、トロントに旅行しています。無性に牛乳が飲みたくなってきたのでスーパーに入りました。\n
          牛乳コーナーに行くと、あなたはある事に驚いています。それは？",
  youtube_url: nil,
  image_url: nil,
  test_category: canada
)

QuizChoice.create!(
  content: "牛乳がバケツに入っている",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "牛乳がプラスチックの袋に入っている",
  correct_answer: true,
  explanation:"専用ピッチャーに袋のままを入れてコップに注いで飲みます。何だが、不思議ですね！\n
          ちなみに、西部（バンクーバーがあるところ）ではプラスチックの袋に入った牛乳は販売されていません。",
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "牛乳がコップに入っている",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

#---------問題４-------------------------------------------------------------------
quiz4 = Quiz.create!(
  content: "④せっかくカナダに来たので、首都に行こうと思います。首都の名前は？",
  youtube_url: nil,
  image_url: nil,
  test_category: canada
)

QuizChoice.create!(
  content: "オタワ",
  correct_answer: true,
  explanation: "カナダの首都はオタワです。「オワタ」と言いたくなりますが、正しくは「オタワ」ですのでご注意を。\n
          バンクーバーとトロントが目立ちすぎて少し存在感が薄いですが、田舎過ぎず都会すぎずゆったりしているところです。",
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "バンクーバー",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "ビクトリア",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

#---------問題５-------------------------------------------------------------------
quiz5 = Quiz.create!(
  content: "⑤知り合ったカナダ人にカナダの有名な冬スポーツ観戦に誘われました。そのスポーツとは？",
  youtube_url: nil,
  image_url: nil,
  test_category: canada
)

QuizChoice.create!(
  content: "フィギアスケート",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "アイスホッケー",
  correct_answer: true,
  explanation: "カナダの冬のスポーツと言えばアイスホッケーです。\n
          時々殴り合いになることもあるので、運が悪ければそれを見ることになるかもしれません。",
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "カーリング",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

#---------問題６-------------------------------------------------------------------
quiz6 = Quiz.create!(
  content: "⑥住宅街を散歩していたら可愛い動物を会いました！日本では動物園に行かないと見られません。その動物は？",
  youtube_url: nil,
  image_url: nil,
  test_category: canada
)

QuizChoice.create!(
  content: "モモンガ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "孔雀",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "リス",
  correct_answer: true,
  explanation: "公園や住宅街で野生のリスを見ることができます。\n
          その他にアライグマ（凶暴）やスカンク（かわいいけど臭い）なども見られます。リスの方が見る確率は高いです。",
  image_url: nil,
  quiz: quiz6
)

#---------問題７-------------------------------------------------------------------
quiz7 = Quiz.create!(
  content: "⑦ハリファックス（カナダ本土の右端に位置している）という港町にやって来ました。実はある有名な映画と縁がある場所です。その映画とは？",
  youtube_url: nil,
  image_url: nil,
  test_category: canada
)

QuizChoice.create!(
  content: "アバター",
  correct_answer: false,
  explanation: nil,
  quiz: quiz7
)

QuizChoice.create!(
  content: "パイレーツ・オブ・カリビアン",
  correct_answer: false,
  explanation: nil,
  quiz: quiz7
)

QuizChoice.create!(
  content: "タイタニック",
  correct_answer: true,
  explanation: "Halifaxはタイタニック号が沈んだところから一番近い港町で、沈没時に救助をしていたそうです。\n
          Maritime Museum（海事博物館）にはタイタニック号にあった物や客船の持ち物が展示されています。",
  quiz: quiz7
)

#---------問題８-------------------------------------------------------------------
quiz8 = Quiz.create!(
  content: "⑧カフェに来ています。通信障害でクレジットカードが使えません。現金で支払うことになったのですが、そこで、あなたは硬貨のあることに驚きました。それは？",
  youtube_url: nil,
  image_url: nil,
  test_category: canada
)

QuizChoice.create!(
  content: "５セント（約５円）は１０セント（約１０円）より硬貨のサイズが大きい",
  correct_answer: true,
  explanation: "なぜかカナダでは５セントは１０セントより大きいです。\n
          そのため、現金で払う時はよく間違えます。今後カナダに行かれる方、気をつけてください！",
  quiz: quiz8
)

QuizChoice.create!(
  content: "１ドル（約１００円）は５セントより硬貨が小さい",
  correct_answer: false,
  explanation: nil,
  quiz: quiz8
)

QuizChoice.create!(
  content: "３ドル（約３００円）の硬貨がある",
  correct_answer: false,
  explanation: nil,
  quiz: quiz8
)












