hyougo = TestCategory.create!(title: "兵庫", region: "japan")

#---------問題1--------------------------------------------------------------------★
quiz1 = Quiz.create!(
  content: "①友人の結婚式に参加するために兵庫に来ています。結婚式は昨日で、今日は帰りの夜行バスの時間まで兵庫を観光する予定です。昨日の結婚式で、友人が両親へ向けた感動的な手紙を読む場面で、大号泣しました。その影響でまだ目が腫れています。お昼から居酒屋でお酒を楽しんでいたところ、知らないお姉さんが心配そうに『大丈夫！？誰に泣かされたの！？』と声をかけてきました。昨日の出来事を話したら、何故か神戸牛を食べに行こうと誘われました。神戸牛はある牛の種類のお肉ですが、その牛の種類とはどれでしょう？",
  youtube_url: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/hyougo/q1_exp.jpg",
  test_category: hyougo
)

QuizChoice.create!(
  content: "但馬牛",
  correct_answer: true,
  explanation: "神戸牛と呼んでいるので、神戸の牛と思うかもしれませんが、但馬という牛のお肉です。但馬牛の中で厳格な基準をクリアしたお肉は神戸牛と呼ばれて世に送り出されます。基準に満たしていないお肉は但馬牛として販売されます。神戸牛は日本で一番厳しい審査基準で、2009年に海外のメディアで世界で最も高価な9種類の食べ物として神戸牛がランクインしました。兵庫県民も「神戸牛激うま」と感動しています。高いですが、人生に一度は食べてみたいですよね！",
  image_url: "",
  quiz: quiz1
)

QuizChoice.create!(
  content: "米沢牛",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "松阪牛",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

#---------問題2--------------------------------------------------------------------★
quiz2 = Quiz.create!(
  content: "②神戸牛を食べたことがないので、お姉さんの誘いに乗りました。お姉さんは兵庫の人で、オリックスの大ファンです。「○○のファンでないと、自己主張がしづらい...」と悲しそうに言っていました。さて、その○○のプロ野球チームはどこでしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: hyougo
)

QuizChoice.create!(
  content: "阪神",
  correct_answer: true,
  explanation: "※あくまでもアンケートにご協力頂いた方の意見です。",
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "オリックス",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "ソフトバンク",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

#---------問題3--------------------------------------------------------------------★
quiz3 = Quiz.create!(
  content: "③神戸牛を堪能したあとは明石市の郷土料理である明石焼きを一緒に食べに行くことになりました。実は、明石焼きにはもう一つの呼び名があります。さて、それは何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: hyougo
)

QuizChoice.create!(
  content: "丸焼き",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "たこ丸焼き",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "玉子焼",
  correct_answer: true,
  explanation: "③地元の明石では玉子焼と呼ばれることもあります。たこ焼きが生まれたのは明石焼きがヒントになっているとも言われています。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/hyougo/q3_exp.jpg",
  quiz: quiz3
)

#---------問題4--------------------------------------------------------------------★
quiz4 = Quiz.create!(
  content: "④酔ったお姉さんは、兵庫のことをどんどん紹介してくれました。兵庫の明石市はあることで有名なまちです。その有名なこととは？",
  youtube_url: nil,
  image_url: nil,
  test_category: hyougo
)

QuizChoice.create!(
  content: "チョコレートが美味しいと有名",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "子午線があることで有名",
  correct_answer: true,
  explanation: "日本標準時のまち」や「時のまち」とも知られています。子午線郵便局で手紙を出すと風景印（消印）を押してくれます。大切な方に手紙や葉書を書いて子午線郵便局から送るのはいかがですか？もちろん、自分宛でも！また、マンホールの絵が可愛いので、訪れた際は見てみてください！",
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "美女が多いと有名",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

#---------問題5--------------------------------------------------------------------★
quiz5 = Quiz.create!(
  content: "⑤「兵庫には島がある！」と自慢気に紹介してくれました。その島はとても有名ですが、名前は何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: hyougo
)

QuizChoice.create!(
  content: "桜島",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "淡路島",
  correct_answer: true,
  explanation: "淡路島は玉ねぎが有名で「玉ねぎの島」とも知られています。淡路島の玉ねぎは柔らかくて甘く、さらに辛み成分が少ないのが特徴です。玉ねぎのオブジェがあるので、淡路島に来られた際は是非写真に収めてください！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/hyougo/q5_exp.jpg",
  quiz: quiz5
)

QuizChoice.create!(
  content: "明石島",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

#---------問題6--------------------------------------------------------------------★
quiz6 = Quiz.create!(
  content: "⑥夜行バスに乗る時間が近づいてきたので、残念ながら解散することにしました。お姉さんもそうですが、兵庫県民は面白くて優しい人が多いなと感じました。帰り際に、お姉さんは最後に神戸弁と大阪弁の違いを教えてくれました。例えば、LINEの返事がこない時の「こない」を大阪弁では「けーへん（LINE の返事けーへん）」と言いますが、神戸弁ではどう言いますか？",
  youtube_url: nil,
  image_url: nil,
  test_category: hyougo
)

QuizChoice.create!(
  content: "きーへん",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "くーへん",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "こーへん",
  correct_answer: true,
  explanation: "他に、何している？は、神戸弁で「何しとぉ？」ですが、大阪弁は「何しとん？」です。方言の違いは興味深いですね！",
  image_url: nil,
  quiz: quiz6
)
