malta = TestCategory.create!(title: "マルタ", region: "foreign")

#---------問題1--------------------------------------------------------------------★
quiz1 = Quiz.create!(
  content: "①これから、マルタにバカンスに行きます。飛行機で出会った超絶美人なイタリア人女性から、『マルタ』は実は正式名称ではないことを聞きました。正式名称は何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: malta
)

QuizChoice.create!(
  content: "マルタ共和国",
  correct_answer: true,
  explanation: "イタリアの南下に位置するとても小さな国です。ヨーロッパでありながら、公用語が英語とマルタ語であり、ヨーロッパ圏の人々が英語を学びに来ます。日本でも近年、語学留学先として人気な国です。",
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "マルタ社会主義共和国",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "マルタ人民共和国",
  correct_answer: false,
  explanation: nil,
  quiz: quiz1
)

#---------問題2--------------------------------------------------------------------★
quiz2 = Quiz.create!(
  content: "②その超絶美女から、この時期にマルタに行くのが最適よ！と言われました。マルタのベストシーズンはいつですか？",
  youtube_url: nil,
  image_url: nil,
  test_category: malta
)

QuizChoice.create!(
  content: "11月〜12月",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "1月〜3月",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "4月〜10月",
  correct_answer: true,
  explanation: "マルタのベストシーズンは4月〜10月です。夏のシーズンはヨーロッパ人の観光地として人気な国です。観客は海水浴や水中アクティビティなどを楽しみます！他国の人気観光地と比較するとアジア系観光客は少ない印象です。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/malta/q2_exp.jpeg",
  quiz: quiz2
)

#---------問題3--------------------------------------------------------------------★
quiz3 = Quiz.create!(
  content: "③マルタの首都バレッタに到着し、街を散策していたら、飛行機で会った超絶美女に再会しました！これは運命かもしれません。彼女からバレッタがあることで有名だと教えてもらいました。それは何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: malta
)

QuizChoice.create!(
  content: "街全体が世界ギネス",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "街全体が世界遺産",
  correct_answer: true,
  explanation: "首都バレッタは16世紀に造られた要塞都市でとても歴史が深く、街全体が世界遺産に登録されています。まるで中世ヨーロッパの様な街並みで、特に夜の海沿いの夜景はとても綺麗です！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/malta/q3_exp.jpeg",
  quiz: quiz3
)

QuizChoice.create!(
  content: "街全体がカラフル",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

#---------問題4--------------------------------------------------------------------★
quiz4 = Quiz.create!(
  content: "④超絶美女と一緒に散策することになりました（嬉しいけど美しすぎて前しか見られません）。突然彼女が、「マルタにはいくつ教会があると思う？」と質問してきました。いくつありますか？",
  youtube_url: nil,
  image_url: nil,
  test_category: malta
)

QuizChoice.create!(
  content: "259",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "359",
  correct_answer: true,
  explanation: "マルタには全部で359の教会があり、中でも一際素晴らしいのが首都バレッタにある”聖ヨハネ大聖堂”です。外見は街に馴染む古き良き見た目ですが、内装は驚くほど豪華絢爛で見応えがあります。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/malta/q4_exp.jpeg",
  quiz: quiz4
)

QuizChoice.create!(
  content: "459",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

#---------問題5--------------------------------------------------------------------★
quiz5 = Quiz.create!(
  content: "⑤超絶美女はある動物が大好きで、マルタにはその動物があちこちにいます。彼女はとても嬉しそうにその動物の写真を撮っています。その動物は何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: malta
)

QuizChoice.create!(
  content: "ハリネズミ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "犬",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "猫",
  correct_answer: true,
  explanation: "島には猫が沢山住んでいます。誰か特定の人が飼う、というよりも”皆んなの猫”という形で街中に猫用のケージ等が多く見受けられます。夏の昼間は暑くて隠れていますが、夜になるにつれて、街のあちこちで猫に遭遇することが出来ます。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/malta/q5_exp.jpeg",
  quiz: quiz5
)

#---------問題6--------------------------------------------------------------------★
quiz6 = Quiz.create!(
  content: "⑥一緒にランチをしよう！と食事に誘われました（とても嬉しいけど、緊張して喉が通るか心配...）。マルタではどんな料理が有名でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: malta
)

QuizChoice.create!(
  content: "肉料理",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "エスニック料理",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "シーフード料理",
  correct_answer: true,
  explanation: "地中海にあるため、シーフード料理が盛んです。また、イタリアが近いためパスタやピザ等、シーフードを使ったイタリアン料理が多く見られます。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/malta/q6_exp.jpeg",
  quiz: quiz6
)



