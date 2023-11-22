sample = TestCategory.create!(title: "サンプル問題(ベトナム級)", region: "sample")

#---------問題１--------------------------------------------------------------------
quiz1 = Quiz.create!(
  content: "①日本で友達になったベトナム人の友人に会うために、ベトナムの首都へ向かっています。初めてのベトナム旅行で少し緊張していますが、10年ぶりに友人に会えるのがとても楽しみです！さて、首都の名前はなんでしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: sample 
)

QuizChoice.create!(
  content: "ホーチミン(Hồ Chí Minh)",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "ハノイ(Hà Nội)",
  correct_answer: true,
  explanation: "よくホーチミンと間違えられますが、首都はハノイです。ホーチミンは南部に位置し、ハノイは北部に位置しています。東京と大阪のように、ハノイとホーチミンの発音が違います。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/vietnam/q1_exp.png",
  quiz: quiz1
)

QuizChoice.create!(
  content: "ダナン(Đà Nẵng)",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

#---------問題２--------------------------------------------------------------------
quiz2 = Quiz.create!(
  content: "②無事に友人宅に到着しました。明日はその友人の誕生日なので、あるものをプレゼントしたらびっくりされました。その反応は嬉しいものではなく、ショックな反応でした。そのプレゼントとは何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: sample 
)

QuizChoice.create!(
  content: "ハンカチ",
  correct_answer: true,
  explanation: "ベトナム語でハンカチ（khăn）は「困難（khó khăn）」と発音が似ています。このため、ハンカチを贈ることは、その人の未来の涙や苦しみを予見していると解釈されることがあり、喜ばれない場合があります。その他にも避けるべきプレゼントがありますので、ベトナム人への贈り物を選ぶ際には注意が必要です！",
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
  content: "③その友達には生後3ヶ月の赤ちゃんがいます。ニコニコしていて可愛かったので、「かわいい〜」と言って赤ちゃんを褒めたら、友達に注意されました。これはなぜでしょうか？",
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
  explanation: "ベトナムには、赤ちゃんを褒めるとその子が将来その通りにならないという迷信があります。褒めたいときは反対の言葉を使うことが一般的です。ベトナムの赤ちゃんを褒める時は緊張しますね...!",
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
