gifu = TestCategory.create!(title: "岐阜", region: "japan")

#---------問題1--------------------------------------------------------------------★
quiz1 = Quiz.create!(
  content: "①岐阜県多治見市に詳しい友人の話を聞いて、多治見市に行きたくなり、今旅行に来ています。友人にすすめられたところをメモしたので、全部巡りたいと思います！\n

          \n【メモ1：うながっぱに会いに行く】\n
          うながっぱは多治見市のマスコットキャラクターです。このキャラクターは、とても有名なアニメの作者によってデザインされました。誰だと思いますか？\n
          「お腹がすいて力が出ない〜」というセリフをよく耳にするアニメがヒントです。",
  youtube_url: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/gifu/q1.jpg",
  test_category: gifu
)

QuizChoice.create!(
  content: "やなせたかしさん",
  correct_answer: true,
  explanation: "アンパンマンの作者である、やなせたかしさんがデザインをしました。うながっぱは、うなぎとかっぱのハーフだと言われています。",
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "藤子・F・不二雄さん",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "手塚治虫さん",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

#---------問題2--------------------------------------------------------------------★
quiz2 = Quiz.create!(
  content: "②【メモ2：朝食はあるところでとる】\n
          どこでしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: gifu
)

QuizChoice.create!(
  content: "鰻屋さん",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "喫茶店",
  correct_answer: true,
  explanation: "岐阜はモーニング文化（喫茶店で朝食をとる）が根付いており、多くの喫茶店やチェーン店で充実したモーニングセットを楽しむことができます。朝は喫茶店で美味しい朝食を楽しみながら、おしゃべりするのが地元の定番です！",
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "マクドナルド",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

#---------問題3--------------------------------------------------------------------★
quiz3 = Quiz.create!(
  content: "③【メモ3：多治見修道院にいく】\n
          この修道院では特定の種類のお酒が作られています。何のお酒だと思いますか？",
  youtube_url: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/gifu/q3.jpg",
  test_category: gifu
)

QuizChoice.create!(
  content: "ワイン",
  correct_answer: true,
  explanation: "日本男子三大修道院のひとつが多治見修道院です。修道院周辺にはぶどう畑があり、修道院で醸造されたワインやお菓子は売店で購入ができます。毎年修道院でワインフェスタが開催されており、賑わっています！",
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "日本酒",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "ビール",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

#---------問題4--------------------------------------------------------------------★
quiz4 = Quiz.create!(
  content: "④【メモ4：虎渓山永保寺で紅葉を見る】\n
          このお寺の庭園は国から○○の指定を受けています。○○は何でしょう？",
  youtube_url: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/gifu/q4.jpg",
  test_category: gifu
)

QuizChoice.create!(
  content: "名勝",
  correct_answer: true,
  explanation: "虎渓山永保寺は秋が見頃で紅葉がきれいです。朝早いですが、坐禅会も開催されています。帰りに灯屋でお茶をするのがおすすめです！",
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "史跡",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "紅葉の絶景スポット",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

#---------問題5--------------------------------------------------------------------★
quiz5 = Quiz.create!(
  content: "⑤【メモ5：○○餅を食べる】\n
          何餅だと思いますか？",
  youtube_url: nil,
  image_url: nil,
  test_category: gifu
)

QuizChoice.create!(
  content: "羽二重餅",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "五平餅",
  correct_answer: true,
  explanation: "五平餅は中部地方でよく食べられています。もち米を円盤状に成形し、竹串に刺して炭火で焼き、味噌ベースのタレで味付けをするというシンプルながら風味豊かです。\n
          多治見の桜と言えば、修道院の桜と虎渓公園の桜です。どちらも近い距離なので、両方見に行き、虎渓公園近くの若松屋さんで五平餅を食べるのが定番です。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/gifu/q5_exp.jpg",
  quiz: quiz5
)

QuizChoice.create!(
  content: "バター餅",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

#---------問題6--------------------------------------------------------------------★
quiz6 = Quiz.create!(
  content: "⑥【メモ6：岐阜発祥の和菓子○○を食べる】\n
          この和菓子は何だと思いますか？",
  youtube_url: nil,
  image_url: nil,
  test_category: gifu
)

QuizChoice.create!(
  content: "最中",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "栗きんとん",
  correct_answer: true,
  explanation: "栗きんとんは岐阜発祥の和菓子です。多治見には多くの栗きんとんのお店があり、それぞれ独自の味を楽しむことができます。栗きんとん巡りをして、あなたのお気に入りの一品を見つけてみてはいかがでしょうか？",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/gifu/q6_exp.jpg",
  quiz: quiz6
)

QuizChoice.create!(
  content: "おはぎ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)