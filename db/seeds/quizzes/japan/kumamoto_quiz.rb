kumamoto = TestCategory.create!(title: "熊本", region: "japan")

#---------問題1--------------------------------------------------------------------★
quiz1 = Quiz.create!(
  content: "①くまモンに会いに熊本に来ています。約1時間前に念願のくまモンに会えました！今、その余韻に浸っています。くまモンは彼自身に関するある衝撃的な事実を教えてくれました。それは何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: kumamoto 
)

QuizChoice.create!(
  content: "昔、痩せていた",
  correct_answer: true,
  explanation: "初代のくまモンは痩せていたようです。近づくと子供が泣くという情報も...今のくまモンとは想像がつきませんね！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/kumamoto/q1_exp.jpg",
  quiz: quiz1
)

QuizChoice.create!(
  content: "昔、結婚していた",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "昔、会社員だった",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

#---------問題2--------------------------------------------------------------------★
quiz2 = Quiz.create!(
  content: "②くまモンから熊本について色々と教えてもらいました。旅の思い出にメモをしました！\n
        【メモ1：熊本市は水道をひねれば◯◯が飲める】\n
        この○○とはなんでしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: kumamoto 
)

QuizChoice.create!(
  content: "緑茶",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "デコポンジュース",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "ミネラルウォーター",
  correct_answer: true,
  explanation: "市販されているミネラルウォーターと水道で採水した水を比較すると、採水した水のほうが圧倒的にミネラルの数値が高いというデータがあります。熊本市に行ったら水道水を飲んでみたいですね。",
  image_url: nil,
  quiz: quiz2
)

#---------問題3--------------------------------------------------------------------★
quiz3 = Quiz.create!(
  content: "③【メモ2：観光地で有名な阿蘇の草原はあることによって維持されている】\n
        あることとは、なんでしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: kumamoto 
)

QuizChoice.create!(
  content: "草刈り",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "放置",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "野焼き",
  correct_answer: true,
  explanation: "阿蘇の草原は毎年野焼きで草原状態を保っています。野焼きをすることによって、ダニなど人畜に有害な虫を駆除してくれます。また、それと合わせて牛や馬の餌のための新しい草を育てます。そんな阿蘇の草原ですが、野焼きの後継者不足などで草原維持が危惧されています。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/kumamoto/q3_exp.jpg",
  quiz: quiz3
)

#---------問題4--------------------------------------------------------------------★
quiz4 = Quiz.create!(
  content: "④【メモ3：阿蘇のカルデラ（火山の噴火によってできた大きく丸くへこんだ場所のこと）は日本で◯番目に大きい】\n
        何番目でしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: kumamoto 
)

QuizChoice.create!(
  content: "1",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "2",
  correct_answer: true,
  explanation: "④約27万年前から約9万年前の間までに4回も大きな噴火が起きたと言われています。1番大きいカルデラは北海道の屈斜路カルデラです。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/kumamoto/q4_exp.jpg",
  quiz: quiz4
)

QuizChoice.create!(
  content: "3",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

#---------問題5--------------------------------------------------------------------★
quiz5 = Quiz.create!(
  content: "⑤【メモ4：熊本弁で「肥後もっこす」はある性格を表現している】\n
        何を表現しているでしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: kumamoto 
)

QuizChoice.create!(
  content: "寛大な者を表す",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "太っている者を表す",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "頑固者を表す",
  correct_answer: true,
  explanation: "ただの「頑固者」ではなく、「純粋な面を持った性格」「正義感が強い」などとよい意味でも使われます。「もっこす」とだけ言うこともできます。\n
        *肥後：昔の熊本県の呼び名\n
        *もっこす：頑固者",
  image_url: nil,
  quiz: quiz5
)

#---------問題6--------------------------------------------------------------------★
quiz6 = Quiz.create!(
  content: "⑥熊本に関する知識が増えました（嬉しい）！馬刺しを食べてから帰ろうと思います。熊本は馬刺しが有名ですが、県民はあるイベントで必ずといっていいほど馬刺しを食べます。さて、そのイベントは何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: kumamoto 
)

QuizChoice.create!(
  content: "お正月",
  correct_answer: true,
  explanation: "熊本ではハレの日に馬刺しを食べます。中でもお正月に馬刺しは欠かせません。馬刺しが食べられるようになったのは、熊本藩の初代藩主の加藤清正が朝鮮出兵した際に、食料がなくなり仕方なく軍馬を食べ、意外にも美味しかったので帰国後それを広めたと言われています（いろんな諸説があります）。\n
        馬刺しの他にからしレンコンも有名ですが、お正月にしか食べないご家庭もあるようです。\n
        美しい自然に癒されて、美味しいお水を飲んで、そして美味しい馬刺しを食べに熊本はいかがですか？",
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "運動会の後",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "十五夜",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)
