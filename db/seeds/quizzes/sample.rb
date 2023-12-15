sample = TestCategory.create!(title: "サンプル問題(フィンランド級)", region: "sample")

#---------問題１--------------------------------------------------------------------★
quiz1 = Quiz.create!(
  content: "①子供の頃からサンタさんが大好きで、大人になった今もその気持ちは変わっていません！本物のサンタさんに会うのが夢です。その夢を叶えるために今、フィンランドのサンタ村に向かっています。さて、そのサンタ村がある都市の名前はなんでしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: sample
)

QuizChoice.create!(
  content: "ヘルシンキ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "ロバニエミ",
  correct_answer: true,
  explanation: "フィンランドの首都はヘルシンキですが、もう少し北上してロバニエミという市に、サンタ村があります。名前の通り、サンタさんがいます！そして、サンタさんに会えます！更に、サンタさんと記念撮影もできます。辺り一面が銀世界で、幻想的な素敵な場所です。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/finland/q1_exp.jpg",
  quiz: quiz1
)

QuizChoice.create!(
  content: "サンタクロース",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

#---------問題2--------------------------------------------------------------------★
quiz2 = Quiz.create!(
  content: "②サンタさんと会えてたので、今とても幸せです！サンタさんはとても優しくていい人でした。今回のフィンランド旅行はサンタさんに会うためだけに来たので、他のところを観光するつもりはなかったのですが、サンタさんからフィンランドのあれこれを聞いたら観光したくなりました。なので、急遽、航空券を取り直してフィンランド滞在を延長しました！これからサンタさんにおすすめされたところを巡ります。\n
  
          \n【サンタさんのおすすめその1：ある施設に行くべし】\n
          その施設は日本でも大人気です。その施設はなんでしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: sample
)

QuizChoice.create!(
  content: "カラオケ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "ジム",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "サウナ",
  correct_answer: true,
  explanation: "日本の温泉やスパに当たり前のようにあるサウナはフィンランドが発祥です。実は「サウナ」はフィンランド語です！フィンランドの国会議事堂や、一般家庭の家にもサウナがあり、その文化は根強いです。なので、サウナに関わることわざもいくつかあります。\n
          ●「サウナで治らない病気は治らない」\n
          ●「女性が1番美しいのは、サウナを出た1時間後」（サウナで血行がよくなるので）",
  image_url: nil,
  quiz: quiz2
)

#---------問題3--------------------------------------------------------------------★
quiz3 = Quiz.create!(
  content: "③【サンタさんのおすすめその2：○○を見るべし】\n
          これは限られた場所でしか見られません。それはなんでしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: sample
)

QuizChoice.create!(
  content: "オーロラ",
  correct_answer: true,
  explanation: "フィンランドの有名な観光の一つがオーロラです。
          他の国（カナダなど）のオーロラも綺麗ですが、フィンランドのオーロラも負けず劣らず非常に綺麗です。現地のオーロラ鑑賞ツアーもあり、ガイドもつくため、危険もなくオーロラ鑑賞ができます！3日に1日は見られると言われていて、見られたときは圧巻です。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/finland/q3_exp.jpg",
  quiz: quiz3
)

QuizChoice.create!(
  content: "トナカイ村",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "氷の料理",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)