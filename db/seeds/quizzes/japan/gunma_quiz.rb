gunma = TestCategory.create!(title: "群馬", region: "japan")

#---------問題1--------------------------------------------------------------------★
quiz1 = Quiz.create!(
  content: "①今日は12月20日です。群馬県に美味しいものを食べにやってきました。運転中に驚いたことがあります。それは何でしょうか？ ",
  youtube_url: nil,
  image_url: nil,
  test_category: gunma
)

QuizChoice.create!(
  content: "ドライブスルーの種類が豊富",
  correct_answer: true,
  explanation: "群馬県はドライブスルーの種類が豊富で（クリーニング屋さん、お弁当屋さん等）、ドライブスルー天国とも言われています。群馬では一人一台車は必須です。場所にもよりますが、電車の本数が少なかったり駅があまり発達していなかったり…基本的に車がないとどこにも行けません。最寄駅までは徒歩約1時間かかることも。",
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "道端にぐんまちゃん（群馬のマスコットキャラクター）のぬいぐるみが置かれている",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "風船を飾る家が多い",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

#---------問題2--------------------------------------------------------------------★
quiz2 = Quiz.create!(
  content: "②群馬県には、日本三大うどんの一つとされる有名なうどんがあります。「日本〜」と付くものは気になりますよね！これからそのうどんを食べに行きますが、そのうどんの名前は何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: gunma
)

QuizChoice.create!(
  content: "水田うどん",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "水谷うどん",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "水沢うどん",
  correct_answer: true,
  explanation: "水沢うどんは日本三大うどんと言われています。コシが強いのが特徴で、舞茸の天ぷらと一緒に食べる風習があります。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/gunma/q2_exp.jpg",
  quiz: quiz2
)

#---------問題3--------------------------------------------------------------------★
quiz3 = Quiz.create!(
  content: "③うどんを食べに訪れたお店で、60代の店主と仲良くなりました。店主にお正月に群馬のかるたをしようと誘われました。群馬のかるたには名前がありますが、それは何でしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: gunma
)

QuizChoice.create!(
  content: "群かるた",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "上毛かるた ",
  correct_answer: true,
  explanation: "③上毛かるたは群馬県民なら誰でも知っているはずです！子ども向けや大人向けのかるた大会があります。以下のウェブサイトに上毛かるたの各札と解説がありますので、是非ご覧ください。群馬県についてもっと知ることができます！\n https://www.kingofjmk.jp/上毛かるた全札一覧/",
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "だるまかるた",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

#---------問題4--------------------------------------------------------------------★
quiz4 = Quiz.create!(
  content: "④気がつけば3時間もお店にいました。そろそろお店を出ようとしたところ、店主が群馬のソウルフードの焼きまんじゅうを出してくれました。とても美味しそうなので、これは食べるしかありません！実はこの焼きまんじゅうは普通のお饅頭とは違います。それは何でしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: gunma
)

QuizChoice.create!(
  content: "中にカレーが入っている",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "中にうどんが入っている",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "中に何も入ってない",
  correct_answer: true,
  explanation: "基本的にあんこは入っていません。パンみたいな生地のまんじゅうが串に刺さっていて、それを焼いたあと甘辛いタレにつけて食べます。何個でもいけるくらい美味しいという感想もあります。群馬にきたら焼きまんじゅうは無視はできませんね！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/gunma/q4_exp.jpg",
  quiz: quiz4
)

#---------問題5--------------------------------------------------------------------★
quiz5 = Quiz.create!(
  content: "⑤今度こそお店を出ようと立ち上がろうとしたところ、今度はかりんとう饅頭を出してくれました。丁度甘いのが欲しかったので、遠慮なく頂きました！閉店時間も近く、やっと店を出られました。帰り際、店主から群馬の有名なお土産をもらいましたが、それは何でしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: gunma
)

QuizChoice.create!(
  content: "ガトーフェスタハラダのラスク",
  correct_answer: true,
  explanation: "ガトーフェスタハラダのラスクは群馬で有名なお土産です。定番の『グーテ・デ・ロワ』も美味しいですが、ホワイトチョコがかかった『グーテ・デ・ロワ ホワイトチョコレート』もおすすめです！\n https://shop.gateaufesta-harada.com/shop/",
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: " 石屋製菓の白い恋人",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "梅林堂の生サブレ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

#---------問題6--------------------------------------------------------------------★
quiz6 = Quiz.create!(
  content: "⑥公園で群馬の空気を吸っていると、たまたま店主と再会しました。風が強くなってきたため、お正月に再会する約束をして別れました。店主は帰る際に、群馬で冬に吹く風の名前について教えてくれました。その風の名前は何でしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: gunma
)

QuizChoice.create!(
  content: "上州の空っ風",
  correct_answer: true,
  explanation: "群馬は地形の都合上、冬は乾いた強風が吹き荒れる日が多いです。上州は昔の群馬県の呼び名で、空っ風は激しく吹く湿気の少ない風のことを言います。",
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "群馬の空っ風",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: " 天狗の空っ風",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)
