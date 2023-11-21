vietnam = TestCategory.create!(title: "ベトナム", region: "foreign")

#---------問題１--------------------------------------------------------------------
quiz1 = Quiz.create!(
  content: "①日本で友達になったベトナム人の友人に会うために、ベトナムの首都へ向かっています。初めてのベトナム旅行で少し緊張していますが、10年ぶりに友人に会えるのがとても楽しみです！さて、首都の名前はなんでしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: vietnam
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
  explanation: "よくホーチミンと勘違いされますが、首都はハノイです。ホーチミンは南部に位置し、ハノイは北部に位置しています。",
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
  test_category: vietnam
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


#---------問題４--------------------------------------------------------------------
quiz4 = Quiz.create!(
  content: "④赤ちゃん以外に、その友達には4歳の子供がいます。とてもいい子なので頭を撫でました。そうしたらまた友達に注意されました！どうしてですか？",
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
  content: "⑤友達がベトナムの家庭料理を作ってくれました。出された魚介スープの中にあるフルーツが入っていて、あなたはとても驚いています。そのフルーツとは何ですか？",
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
  explanation: "たっぷりの野菜と魚が入った甘酸っぱい味わいの魚介スープで、「canh （スープー）chua（酸っぱい）」とよびます。一部の日本人には好まれない傾向があります。",
  image_url: nil,
  quiz: quiz5
)

#---------問題６--------------------------------------------------------------------
quiz6 = Quiz.create!(
  content: "⑥今日は10月20日です。散歩をしていたら、あちこちで花が売られています。今日は何の日でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: vietnam
)

QuizChoice.create!(
  content: "女性の日",
  correct_answer: true,
  explanation: "⑥10月20日はベトナムの女性の日です。彼女や奥さんにプレゼントをするのはもちろん、職場の女性にもプレゼントを渡さないと評価が下がることもあります（もちろん地域や個人にもよります）。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/vietnam/q6_exp.jpg",
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
  content: "⑦お土産を買いに徒歩で市内のお土産屋さんを巡っています。バイクが多くて道を渡るタイミングがわかりません。側にいるおじさんが渡るコツを教えてくれました。そのコツとは何でしょう？",
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
  explanation: "最初は渡るタイミングが分からないかもしれませんが、慣れればスムーズに渡れるようになります（大体3〜5回経験をすると慣れます）。走ったり、途中で引き返したりするのは非常に危険ですのでやめましょう。バイクの運転手にこれから渡るというアイコンタクトをしながら、落ち着いて渡るのコツです。不安な方は、他の人の後ろについていくのが安心です。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/vietnam/q7_exp.jpg",
  quiz: quiz7
)

#---------問題８--------------------------------------------------------------------
quiz8 = Quiz.create!(
  content: "⑧旅の締めはやはりビール！という事で、屋台でベトナムのビールを注文しました。ベトナムのビールと言えばどれでしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: vietnam
)

QuizChoice.create!(
  content: "333",
  correct_answer: true,
  explanation: "⑧このビールは国内シェア率70％以上を誇る人気者です。読み方は「バーバーバー」です。ベトナム語では数字の3は「バー」と言います。333以外にもベトナムビールがあるので、興味がある方は現地で探してみてください。もちろん日本でも見つけることができます！",
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










