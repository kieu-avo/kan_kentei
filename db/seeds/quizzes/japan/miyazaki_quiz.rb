miyazaki = TestCategory.create!(title: "宮崎", region: "japan")

#---------問題1--------------------------------------------------------------------★
quiz1 = Quiz.create!(
  content: "①宮崎県にやってきました。今回の旅の目的は、有名な芋焼酎の工場見学とその美味しい芋焼酎の試飲です！さて、宮崎県で最も有名な芋焼酎を作っているメーカーはどこでしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: miyazaki
)

QuizChoice.create!(
  content: "薩摩酒造",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "霧島酒造",
  correct_answer: true,
  explanation: "芋焼酎で有名な黒霧島を製造している霧島酒造は、鹿児島県と勘違いされますが、実は宮崎県（都城市）にあります。",
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "濵田酒造",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

#---------問題2--------------------------------------------------------------------★
quiz2 = Quiz.create!(
  content: "②昼間は美味しい芋焼酎を楽しみましたが、夜も飲みたいと思い居酒屋に来ています。一人で飲んでいると、おじさん集団に声をかけられました。彼らは宮崎について色々なことを教えてくれ、宮崎は○○○のふるさとで有名だと教えてくれました。それは一体何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: miyazaki
)

QuizChoice.create!(
  content: "神話のふるさと",
  correct_answer: true,
  explanation: "宮崎は神話のふるさとと言われています。特に、天孫降臨の話は宮崎と深く関連しています。宮崎を訪れた際は、神話巡りをするのもいいですね。",
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "長寿のふるさと",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "酒のふるさと",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

#---------問題3--------------------------------------------------------------------★
quiz3 = Quiz.create!(
  content: "③かつて、宮崎には世界最大の室内ウォーターパーク施設があり、世界ギネスにも登録されていました。その施設の名前は何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: miyazaki
)

QuizChoice.create!(
  content: "オーシャンドーム",
  correct_answer: true,
  explanation: "オーシャンドームは1993年に開業しましたが、入場者数の減少により2007年に閉鎖されました。オーシャンドームに行ったことがある方にとって、施設がなくなるのは悲しいことですね... ",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/miyazaki/q3_exp.jpg",
  quiz: quiz3
)

QuizChoice.create!(
  content: "ウォータードーム",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "メガオーシャンドーム",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

#---------問題4--------------------------------------------------------------------★
quiz4 = Quiz.create!(
  content: "④おじさんたちによると、宮崎県の木に指定されている木はアメリカから来たそうです。その木の名前は何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: miyazaki
)

QuizChoice.create!(
  content: "フェニックス",
  correct_answer: true,
  explanation: "県の木とされている『フェニックス』は、自生していたのではなく、大正時代にアメリカから種を輸入して育てられたものです。フェニックスはヤシ科の樹木で、病害虫に強く、寿命が長いことから『フェニックス』と名付けられました。",
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "メープル",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "フォニックス",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

#---------問題5--------------------------------------------------------------------★
quiz5 = Quiz.create!(
  content: "⑤おじさんたちは宮崎が大好きですが、一点不満を漏らしていました。その不満とは何でしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: miyazaki
)

QuizChoice.create!(
  content: "カラオケが少ない",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "新幹線が通ってない",
  correct_answer: true,
  explanation: "県民の方はもちろん、他県の方も感じています。宮崎県に対して、交通の便が悪いので新幹線を開通してほしいという声が届いており、県は開通できるように国などに要望活動を行っているそうです。早く開通してほしいですね。\n https://www.pref.miyazaki.lg.jp/kense/koho/kenminnokoe/koe_page/20201002113044.html",
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "自転車を使ってはいけない",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

#---------問題6--------------------------------------------------------------------★
quiz6 = Quiz.create!(
  content: "⑥お店が閉まる時間になり、おじさんたちと別れを告げました。あるおじさんがお土産にある宮崎の有名な果物をプレゼントしてくれました。宮崎は何の果物が有名でしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: miyazaki
)

QuizChoice.create!(
  content: "ブルーベリー",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)


QuizChoice.create!(
  content: "マンゴー",
  correct_answer: true,
  explanation: "宮崎は日本でマンゴー生産量が第二位です。沖縄から栽培方法を取り入れ、品種改良と技術革新を行った結果、高品質なマンゴーの生産が可能になりました。最も有名なブランドは「太陽のたまご」で、ふるさと納税の返礼品にもなっています。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/miyazaki/q6_exp.jpg",
  quiz: quiz6
)

QuizChoice.create!(
  content: "ランブータン",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

