sample = TestCategory.create!(title: "サンプル問題(ベトナム級)", region: "sample")

#---------問題１--------------------------------------------------------------------
quiz1 = Quiz.create!(
  content: "①今飛行機でベトナムの首都に向かっています。首都の名前は?",
  youtube_url: nil,
  image_url: nil,
  test_category: sample
)

QuizChoice.create!(
  content: "ホーチミン",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "ハノイ",
  correct_answer: true,
  explanation: "よくホーチミンと勘違いされますが、首都はハノイです。ホーチミンは南部に位置し、ハノイは北部に位置しています。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/vietnam/q1_exp.png",
  quiz: quiz1
)

QuizChoice.create!(
  content: "ダナン",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

#---------問題２--------------------------------------------------------------------
quiz2 = Quiz.create!(
  content: "②ベトナム人の友達の家に遊びに行きました。明日はその友達の誕生日なので、あるものをプレゼントしたら微妙な反応をされました。そのプレゼントとは？",
  youtube_url: nil,
  image_url: nil,
  test_category: sample
)

QuizChoice.create!(
  content: "ハンカチ",
  correct_answer: true,
  explanation: "ベトナム語でハンカチ（khăn）は「困難（khó khăn）」と発音が似ているため、ハンカチをプレゼントすると喜ばれないことがあります。\n
              他にも避けるべきものがありますので、ベトナム人にプレゼントを贈る際は注意が必要です！",
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "ハンドクリーム",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "ペン",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

#---------問題３--------------------------------------------------------------------
quiz3 = Quiz.create!(
  content: "③その友達には生後3ヶ月の赤ちゃんがいます。赤ちゃんに向かって「かわいい〜」と褒めたら友達に怒られました。どうして？",
  youtube_url: nil,
  image_url: nil,
  test_category: sample
)

QuizChoice.create!(
  content: "褒めるのが下手だから",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "褒めると赤ちゃんは不細工になるから",
  correct_answer: true,
  explanation: "ベトナムには、赤ちゃんを褒めると将来その通りにならないという迷信があります。褒めたい時は反対の言葉を使います。",
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "褒めると赤ちゃんは可愛くなりすぎて将来困るから",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)
