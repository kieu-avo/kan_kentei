vietnam = TestCategory.create!(title: "ベトナム", region: "foreign")

#---------問題１--------------------------------------------------------------------
quiz1 = Quiz.create!(
  content: "①今飛行機でベトナムの首都に向かっています。首都の名前は?",
  youtube_url: nil,
  image_url: nil,
  test_category: vietnam
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
  test_category: vietnam
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
  test_category: vietnam
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


#---------問題４--------------------------------------------------------------------
quiz4 = Quiz.create!(
  content: "④赤ちゃん以外に、その友達には4歳の子供がいます。とてもいい子なので頭を撫でました。そうしたらまた友達に怒られました。どうして？",
  youtube_url: nil,
  image_url: nil,
  test_category: vietnam
)

QuizChoice.create!(
  content: "頭を撫でると頭が悪くなるから",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "頭は神聖な部位だから",
  correct_answer: true,
  explanation: "人の頭を触ることは失礼な行為です。これは子供の頭に限らず大人も同様です。気をつけましょう！",
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "汚れた手で撫でているから",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

#---------問題５--------------------------------------------------------------------
quiz5 = Quiz.create!(
  content: "⑤友達がベトナムの家庭料理を作ってくれました。出された魚介スープの中にあるフルーツが入っていて、あなたはとても驚いています。そのフルーツとは？",
  youtube_url: nil,
  image_url: nil,
  test_category: vietnam
)

QuizChoice.create!(
  content: "マンゴー",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "ドリアン",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "パイナップル",
  correct_answer: true,
  explanation: "このスープはタマリンドが入っており、甘酸っぱい味わいが特徴です。これは「canh chua」と呼ばれる魚介スープです。大体の日本人は苦手だそうです。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/vietnam/q5_exp.jpg",
  quiz: quiz5
)

#---------問題６--------------------------------------------------------------------
quiz6 = Quiz.create!(
  content: "⑥今日は10月20日です。散歩をしていたら、あちこちで花が売られています。今日は何の日？",
  youtube_url: nil,
  image_url: nil,
  test_category: vietnam
)

QuizChoice.create!(
  content: "女性の日",
  correct_answer: true,
  explanation: "10月20日はベトナムの女性の日です。職場の女性に花やプレゼントを渡さないと睨まれたり、評価が下がることもあります。\n
            ベトナムで生活することになったら、この日を忘れないようにしましょう。特に男性は注意が必要です！",
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "男性の日",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "子供の日",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

#---------問題７--------------------------------------------------------------------
quiz7 = Quiz.create!(
  content: "⑦今日は徒歩で市内のお土産屋さんを巡ります。バイクが多くて道を渡るタイミングがわかりません。側にいるおじさんが渡るコツを教えてくれました。そのコツとは？",
  youtube_url: nil,
  image_url: nil,
  test_category: vietnam
)

QuizChoice.create!(
  content: "走って渡る",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz7
)

QuizChoice.create!(
  content: "バイクの流れが途切れるのを待つ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz7
)

QuizChoice.create!(
  content: "バイクの運転手にアイコンタクトをしながらゆっくり渡る",
  correct_answer: true,
  explanation: "最初は渡るタイミングが分からないかもしれませんが、2回経験すれば3回目からはスムーズに渡れるようになります。\n
          走ったり、途中で引き返したりするのは非常に危険ですのでやめましょう。バイクの運転手にこれから渡るというアイコンタクトをしながら、落ち着いて渡るのコツです。不安な方は、他の人の後ろについていくのが安心です。",
  image_url: nil,
  quiz: quiz7
)

#---------問題８--------------------------------------------------------------------
quiz8 = Quiz.create!(
  content: "⑧旅の締めはやはりビール！という事で、屋台でベトナムのビールを注文しました。ベトナムのビールと言えば？",
  youtube_url: nil,
  image_url: nil,
  test_category: vietnam
)

QuizChoice.create!(
  content: "333",
  correct_answer: true,
  explanation: "このビールは国内シェア率70%以上を誇る人気者です。ブランド名の読み方は「バーバーバー」で、これはベトナム語で数字の「3」を意味します。\n
            「333」だけでなく他にも多くのベトナムビールがありますので、興味があればぜひ現地でお試しください。日本国内でも購入することが可能です！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/vietnam/q8_exp.png",
  quiz: quiz8
)

QuizChoice.create!(
  content: "444",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz8
)

QuizChoice.create!(
  content: "555",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz8
)










