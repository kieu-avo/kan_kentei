mie = TestCategory.create!(title: "三重", region: "japan")

#---------問題1--------------------------------------------------------------------★
quiz1 = Quiz.create!(
  content: "①最近良いご縁がないので、三重出身の友人に相談したところ、三重の鳥羽市に有名な縁結び神社をお勧めされました。今、その神社でお参りしています。さて、その神社の名前は何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: mie
)

QuizChoice.create!(
  content: "伊射波神社",
  correct_answer: true,
  explanation: "鳥羽市には、女性の願いを叶えてくれると言われる三柱の女神様がいます。\n
      ●縁結びの神様「かぶらこさん」（伊射波神社）\n
      ●女性特有の病や安産の神様「彦瀧さん」（彦瀧大明神）\n
      ●女性の願いなら一つは叶えてくれる神様「石神さん」（神明神社）\n
      の三女神様です。各神社とも歴史は古く、地元の女性たちから信仰を受けてきました。三女神すべてを巡るとご利益がさらに増すと言われていますが、３つの神社はそれぞれ離れた位置にあるため、全てをまわるには１日がかりになることがあります。相差町「石神さん」付近には宿泊・食事等施設が充実しているため、石神さんを拠点に鳥羽三女神を巡るのがおすすめです！",
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: " 彦瀧大明神",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "神明神社",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

#---------問題2--------------------------------------------------------------------★
quiz2 = Quiz.create!(
  content: "②お参りが終わりました。いいエネルギーをいただいたので、きっと近日にいいご縁があると思います（期待）！次は朝熊山に向かいます。ここはある映画のロケ地にもなっています。何の映画でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: mie
)

QuizChoice.create!(
  content: "砂時計",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "弱虫ペダル",
  correct_answer: true,
  explanation: "朝熊山へ行く伊勢志摩スカイライン（天空のドライブウェイとも言われています）は地元民おすすめのドライブウェイです。朝熊山までの景色が絶景です！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/mie/q2_exp.jpg",
  quiz: quiz2
)

QuizChoice.create!(
  content: "るろうに剣心",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

#---------問題3--------------------------------------------------------------------★
quiz3 = Quiz.create!(
  content: "③絶景を堪能したので、次は2021年にできた三重で話題の「癒・食・知」を備えた商業リゾート施設に行きます。その施設の名前は何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: mie
)

QuizChoice.create!(
  content: "VINCENT",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "VISON",
  correct_answer: true,
  explanation: "敷地面積は東京ドーム24個分で、自然豊かな環境で日本の伝統を重んじた温泉・食・ショッピング等ができる宿泊＆観光施設です。VISONは英語ではなく、「美しい村」=「美村」が名前の由来です。",
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "VIOLET ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

#---------問題4--------------------------------------------------------------------★
quiz4 = Quiz.create!(
  content: "④鳥羽に来たら絶対に牡蠣を食べてほしい！と友人が教えてくれたので、夕飯は牡蠣の食べ放題です！鳥羽市浦村地区は牡蠣の養殖が盛んな地域で、○○○ロードと呼ばれていますが、それは何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: mie
)

QuizChoice.create!(
  content: "オイスターロード",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "パールロード",
  correct_answer: true,
  explanation: "三重県の鳥羽には新鮮な牡蠣・生牡蠣食べ放題のお店が沢山あります！鳥羽市浦村地区は名古屋から車で約2時間、大阪から車で約3時間のところにあり、牡蠣の養殖が盛んな地域です。パールロードと呼ばれる海沿いの道には牡蠣小屋が軒を連ね、栄養たっぷりの牡蠣をお腹いっぱい食べられるお店がたくさんあります！お店によっては食べ放題コースにカキフライやカキ飯、佃煮などのサービスメニューが付くお店があります。三重に訪れた際は、牡蠣を食べるのを忘れないで下さいね。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/mie/q4_exp.jpg",
  quiz: quiz4
)

QuizChoice.create!(
  content: "オイシイロード",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

#---------問題5--------------------------------------------------------------------★
quiz5 = Quiz.create!(
  content: "⑤2日目です。昨日は沢山動いて疲れたので、気づいたら13時間も寝ていました。ぐっすりでした！時刻は10:30でお腹が空いています。三重県津市一志町にある「とんかつ 馬の背」という美味しいトンカツ屋さんがあると聞きました。今からそのトンカツを食べに行きます。このお店の営業は他の店舗と少し違いがあります。それは何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: mie
)

QuizChoice.create!(
  content: "営業時間が短い",
  correct_answer: true,
  explanation: "とにかくボリューミーで美味しくて地元民に愛されているお店です。大きなトンカツだけでなくご飯も1杯お代わり無料で、お持ち帰りもできます！営業時間は11:00～13:00なので、行く際は時間に余裕を持っていきましょう！\n https://tabelog.com/mie/A2401/A240101/24000770/",
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "食べ切れるまで帰らせてくれない",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "お店に入れるのは1日に5名まで",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

#---------問題6--------------------------------------------------------------------★
quiz6 = Quiz.create!(
  content: "⑥トンカツの後は甘いものを食べるのがお決まりですよね！ということで、今から甘いものを食べにいきます。三重と言えば赤福！一般的によく見る赤福だけでなく、赤福を使ったアレンジメニューは県民にも人気があります。それは何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: mie
)

QuizChoice.create!(
  content: "かき氷",
  correct_answer: true,
  explanation: "⑥赤福氷以外に赤福ぜんざいも人気です。どちらも季節限定で実際に店舗に行かないと食べられません！ 赤福氷は甘すぎない抹茶と赤福のあんこが美味しくて毎年必ず食べたくなる美味しさです。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/mie/q6_exp.jpg",
  quiz: quiz6
)

QuizChoice.create!(
  content: "せんべい",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "まんじゅう",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)
