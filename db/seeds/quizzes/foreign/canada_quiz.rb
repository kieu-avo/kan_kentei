canada = TestCategory.create!(title: "カナダ", region: "foreign")

#---------問題１--------------------------------------------------------------------★
quiz1 = Quiz.create!(
  content: "①カナダにやってきました！今回の旅の始まりは「カナダのハワイ」と呼ばれる所からです。さて、その場所の名前は何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: canada
)

QuizChoice.create!(
  content: "モントリオール(Montreal)",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "カルガリー(Calgary)",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "ケロウナ(Kelowna)",
  correct_answer: true,
  explanation: "ケロウナはカナダ人が老後に住みたい都市の一つです。海はありませんが、巨大なオカナガン湖が流れています。夏になると自家用ボートを湖に浮かべて、家族や友人とボートの上でゆったりした時間を過ごします。 ワインナリーが有名で、約数十ヶ所もあるそうです。ワインのティスティングがおすすめですが、もちろんワインを飲まなくてもワインナリーの景色やレストランを楽しむのもおすすめです！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/canada/q1_exp.jpg",
  quiz: quiz1
)

#---------問題２--------------------------------------------------------------------
quiz2 = Quiz.create!(
  content: "②カナダの国会議事堂はきれいと聞くので、それを見に首都に来ています。首都の名前は何ですか？",
  youtube_url: nil,
  image_url: nil,
  test_category: canada
)

 QuizChoice.create!(
  content: "バンクーバー(Vancouver)",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "オタワ(Ottawa)",
  correct_answer: true,
  explanation: "カナダの首都はオタワです。「オワタ」と言いたくなりますが、正しくは「オタワ」ですのでご注意を。バンクーバーとトロントが目立ちすぎて少し存在感が薄いですが、田舎過ぎず都会すぎず落ち着いているところです。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/canada/q2_exp.jpg",
  quiz: quiz2
)

QuizChoice.create!(
  content: "ビクトリア(Victoria)",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

#---------問題３--------------------------------------------------------------------
quiz3 = Quiz.create!(
  content: "③次はトロント(Toronto)に旅行しています。突然牛乳が飲みたくなり、スーパーに入りました。牛乳コーナーに行くと、あることに驚いています。それは何でしょう？",
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
  explanation:"牛乳の袋を専用のピッチャーにセットして、そのままコップに注いで飲みます。日本では見ない光景ですね！ちなみに、バンクーバーがある西部ではプラスチックの袋に入った牛乳は販売されていません。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/canada/q3_exp.jpeg",
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
  content: "④カナダ本土の東端に位置する港町、ハリファックス（Halifax）にやって来ました。ここはある有名な映画と関連があります。その映画とはどれですか？",
  youtube_url: nil,
  image_url: nil,
  test_category: canada
)

QuizChoice.create!(
  content: "アバター",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "パイレーツ・オブ・カリビアン",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "タイタニック",
  correct_answer: true,
  explanation: "Halifaxはタイタニック号が沈んだところに最も近いカナダの港町で、沈没時に救助活動をしていたそうです。Maritime Museum（海事博物館）にはタイタニック号にあった物が展示されています。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/canada/q4_exp.jpeg",
  quiz: quiz4
)

#---------問題５-------------------------------------------------------------------
quiz5 = Quiz.create!(
  content: "⑤歩き疲れたのでカフェに来ましたが、通信障害でクレジットカードが使えず、現金で支払うことになりました。カナダに来て初めて現金を使いますが、硬貨のあることに驚いています。それは何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: canada
)

QuizChoice.create!(
  content: "5セント（約5円）は10セント（約10円）より硬貨のサイズが大きい",
  correct_answer: true,
  explanation: "カナダでは不思議なことに、5セントのコインが10セントよりも大きいです。そのため、現金で払う時はよく間違えます。コインの大きさに惑わされないでくださいね。",
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "1ドル（約100円）は5セントより硬貨が小さい",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "3ドル（約300円）の硬貨がある",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

#---------問題６-------------------------------------------------------------------
quiz6 = Quiz.create!(
  content: "⑥カフェで隣の席のかわいいおばあちゃんと仲良くなり、カナダの有名な冬のスポーツ観戦に誘われました。そのスポーツとは何ですか？",
  youtube_url: nil,
  image_url: nil,
  test_category: canada
)

QuizChoice.create!(
  content: "アイスホッケー",
  correct_answer: true,
  explanation: "カナダの冬のスポーツと言えばアイスホッケーです。 時々殴り合いになることもあるので、運が悪ければそれを見ることになるかもしれません。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/canada/q6_exp.jpeg",
  quiz: quiz6
)

QuizChoice.create!(
  content: "カーリング",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "フィギュアスケート",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

#---------問題７-------------------------------------------------------------------
quiz7 = Quiz.create!(
  content: "⑦試合が始まる前に、そのおばあちゃんと住宅街を散歩していると、可愛い動物に出会いました。日本の住宅街では見かけない種類の動物です。その動物は何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: canada
)

QuizChoice.create!(
  content: "モモンガ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz7
)

QuizChoice.create!(
  content: "クジャク",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz7
)

QuizChoice.create!(
  content: "リス",
  correct_answer: true,
  explanation: "⑦公園や住宅街で野生のリスを見ることができます。その他にアライグマ（かわいいけど凶暴）やスカンク（かわいいけど少し臭い）なども見られます。リスの方が見る確率は高いです。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/canada/q7_exp.jpg",
  quiz: quiz7
)

#---------問題８-------------------------------------------------------------------
quiz8 = Quiz.create!(
  content: "⑧今日はカナダ滞在の最終日です。まだ本場のものを食べていないので、これから食べに行きます。カナダの代表的な食べ物とはどれでしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: canada
)

QuizChoice.create!(
  content: "プラリネ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz8
)

QuizChoice.create!(
  content: "プーティン",
  correct_answer: true,
  explanation: "⑧プーティンはフライドポテトの上にグレイビーソース（肉汁のソース）をかけた、カナダの数少ない料理の一つです。最初の数口は美味しいのですが、後半は少し飽きてきて、やはり普通のフライドポテトが一番美味しいと感じることも。グレイビーソースが定番ですが、お店によっては色んなソースやトッピングを提供しているお店もあります。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/canada/q8_exp.jpg",
  quiz: quiz8
)

QuizChoice.create!(
  content: "プリン",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz8
)












