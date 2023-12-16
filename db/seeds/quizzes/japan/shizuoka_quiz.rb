shizuoka = TestCategory.create!(title: "静岡", region: "japan")

#---------問題1--------------------------------------------------------------------★
quiz1 = Quiz.create!(
  content: "①テレビで紹介された静岡の漁師めしに惹かれて、どうしても食べたくなり、静岡に来ました。この漁師めしは伊東市宇佐美漁港周辺で食べられるそうです。さて、何の魚を使った料理でしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: shizuoka 
)

QuizChoice.create!(
  content: "サーモン",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "うずわ",
  correct_answer: true,
  explanation: "『うずわ』はソウダガツオのことを指し、最大体長は50cmで、一般的なカツオと比べると小さいです。この魚は静岡県東部地域でうずわと呼ばれています。鮮度落ちが早いため、生で食べられるのは水揚げ地周辺地域に限られます。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/shizuoka/q1_exp.jpg",
  quiz: quiz1
)

QuizChoice.create!(
  content: "牡蠣",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

#---------問題2--------------------------------------------------------------------★
quiz2 = Quiz.create!(
  content: "②お店のテレビを見ながら美味しく漁師めしを食べていたところ、古館寛治さんが出演するCMが流れました。とても独特で、最後まで見ても何のCMかわからなかったので、お店の人に聞いたらあるチェーン店のCMでした。さて、何のチェーン店でしょうか？\n
          ヒント：「中毒性があり、知らずにお金がなくなる...」",
  youtube_url: nil,
  image_url: nil,
  test_category: shizuoka 
)

QuizChoice.create!(
  content: "パチンコのお店",
  correct_answer: true,
  explanation: "静岡には『コンコルド』というパチンコチェーンがあり、そのCMは非常に独特です。色々なパターンがあり、音楽やセリフもすごく独特です。静岡に住んでいる人なら皆さん知っているはずです！このCMに出ている俳優さん（古舘寛治さん）は、コンコルドのCMにしか出ていなかったはずなのに、何故か最近ドラマの脇役とかに少し出ます。",
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "お酒のお店",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "タバコのお店",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

#---------問題3--------------------------------------------------------------------★
quiz3 = Quiz.create!(
  content: "③漁師めしを食べ終わりそうな頃に店員さんが「お茶を飲むだら？」と聞いてきました。さて、店員さんは何と言っているでしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: shizuoka 
)

QuizChoice.create!(
  content: "お茶を飲むよね？",
  correct_answer: true,
  explanation: "静岡県は「東部」「中部」「西部」に分けられ、それぞれの地域で方言が異なります。東京よりが東部、愛知県よりが西部です。東部と西部でも車で2時間程かかり、方言も異なります。\n
          ●東部（御殿場市〜富士市、伊豆）は語尾に「〜だら（だよね、だろう）」「〜ら（しろ、しよう）」\n
          ●中部（静岡市〜島田市）は「〜だもんで（だから）」\n
          ●西部（浜松市）は頭に「ど（話し手の意向や気持ちを強調する。）」。例えば、「どやばい」\n
          などがあります。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/shizuoka/q3_exp.jpg",
  quiz: quiz3
)

QuizChoice.create!(
  content: "お茶を飲まないよね？",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "③お茶のおかりは？",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)


#---------問題4--------------------------------------------------------------------★
quiz4 = Quiz.create!(
  content: "④お腹が満たされて幸せです。中部の島田市にはある乗り物が見られるということで、今それを見に向かっています。さて、何の乗り物が見られるでしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: shizuoka 
)

QuizChoice.create!(
  content: "飛行機",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "蒸気機関車",
  correct_answer: true,
  explanation: "静岡県での観光と言えば、伊豆や熱海などが有名ですが、静岡県の中部にある島田市も魅力的な観光地です。景色を眺めたり、温泉に行きたいと思っている方は是非島田市もおすすめです！蒸気機関車も見ることが出来たりと、地元民も楽しめる観光スポットになっています。移動は車があると便利です。",
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "旅客船",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

#---------問題5--------------------------------------------------------------------★
quiz5 = Quiz.create!(
  content: "⑤島田市を堪能しました！時刻は5時になり、お腹が空いてきました。漁師めしを食べたところの店員さんは静岡に来たのであれば、「さわやか」というレストランの○○を食べるべきだと教えてもらいました。さて、それは何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: shizuoka 
)

QuizChoice.create!(
  content: "ステーキ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "ハンバーグ",
  correct_answer: true,
  explanation: "静岡県と言えば、炭焼きレストラン「さわやか」のハンバーグが有名です！休日の待ち時間は180分と、テーマパーク並みの時もあります。お隣の愛知県の方は週末にさわやかのハンバーグを食べに静岡へ来る方もいらっしゃいます。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/shizuoka/q5_exp.jpg",
  quiz: quiz5
)

QuizChoice.create!(
  content: "焼肉",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

#---------問題6--------------------------------------------------------------------★
quiz6 = Quiz.create!(
  content: "⑥ご飯を食べていたら、どこかで小さい男の子が「ママ、○○はんぺんを食べたい！」と泣きながらお母さんに訴えていました。通常のはんぺんは白いのに、その男の子が指摘したはんぺんには色がついていました。はんぺんと言ったら白なので、とても驚いています。さて男の子が言ったはんぺんは何色でしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: shizuoka 
)

QuizChoice.create!(
  content: "黄",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "黒",
  correct_answer: true,
  explanation: "黒はんぺんは、名前とは異なり、実際には灰色をしています。灰色なのは魚の皮や骨などが全て入っているからです。ご当地グルメである静岡おでんに黒はんぺんは欠かせません！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/shizuoka/q6_exp.jpg",
  quiz: quiz6
)

QuizChoice.create!(
  content: "緑",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)












