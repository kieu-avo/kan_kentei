tochigi = TestCategory.create!(title: "栃木", region: "japan")

#---------問題1--------------------------------------------------------------------★
quiz1 = Quiz.create!(
  content: "①日頃の疲れを癒すために日光東照宮でパワースポット巡りをしています。そこで週に3日はパワースポット巡りをしている地元のおばあちゃんに出会いました。おばあちゃんは96歳ですが、とてもパワフルです。これはきっとパワースポット巡りのおかげかもしれません...栃木県に関してあまり知らないので、おばあちゃんに教えてもらいました。\n
  
          日光市はあるスポーツで日本初のプロチームが誕生したそうです。そのスポーツとは何でしょう？ ",
  youtube_url: nil,
  image_url: nil,
  test_category: tochigi
)

QuizChoice.create!(
  content: "アイスホッケー",
  correct_answer: true,
  explanation: "世界遺産の日光東照宮で有名な日光は、実はスポーツでも有名です。「H.C.栃木日光アイスバックス」は、日本初のプロアイスホッケーチームとして誕生しました。現在はアジアリーグにも参加していて、国内国外でプレーしています。氷上の格闘技と言われるアイスホッケー、ぜひリンクに足を運んでみてください！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/tochigi/q1_exp.jpg",
  quiz: quiz1
)

QuizChoice.create!(
  content: "バスケットボール",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "カーリング",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

#---------問題2--------------------------------------------------------------------★
quiz2 = Quiz.create!(
  content: "②栃木県には日本一位のものがいくつかあります。ある野菜の生産量が日本一位ですが、それはなんだと思いますか？",
  youtube_url: nil,
  image_url: nil,
  test_category: tochigi
)

QuizChoice.create!(
  content: "豆",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "かんぴょう",
  correct_answer: true,
  explanation: "栃木県は、いちごの生産量全国一位で有名で「とちおとめ」は全国で知られています。それだけではなく、「かんぴょう」の生産量全国一位でもあります（国内のかんぴょうの9割は栃木県で生産されています）！節分の時期、恵方巻きにかんぴょうは欠かせませんね。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/tochigi/q2_exp.jpg",
  quiz: quiz2
)

QuizChoice.create!(
  content: "海苔",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

#---------問題3--------------------------------------------------------------------★
quiz3 = Quiz.create!(
  content: "③その他に、節分に欠かせない食べ物の生産量が日本一位です。それはなんでしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: tochigi
)

QuizChoice.create!(
  content: "唐辛子",
  correct_answer: true,
  explanation: "大田原市は唐辛子の生産が日本一位で、栃木三鷹とうがらしを生産しています。唐辛子コロッケ・唐辛子餃子・唐辛子水羊羹など、唐辛子に関連する食べ物がたくさんあります。\n
          辛いものが好きな方、栃木県に訪れた際は大田原に立ち寄るのをお忘れなく！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/tochigi/chilipepper_sou.jpg",
  quiz: quiz3
)

QuizChoice.create!(
  content: "わさび",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "ねぎ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

#---------問題4--------------------------------------------------------------------★
quiz4 = Quiz.create!(
  content: "④おばあちゃんの好物はアイスクリームだそうです。その中でも栃木県のお祭りの定番の○○アイスが大好きだそうです。さて、その定番のアイスの名前はなんでしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: tochigi
)

QuizChoice.create!(
  content: "雪だるまアイス",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "レインボーアイス",
  correct_answer: true,
  explanation: "栃木県でお祭りの定番といえば、レインボーアイスクリーム！その名の通り、レインボーでカラフルなアイスクリームです。懐かしい味なのでぜひ食べてみてください！",
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "キラキラアイス",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

#---------問題5--------------------------------------------------------------------★
quiz5 = Quiz.create!(
  content: "⑤おばあちゃんと一緒に宇都宮で美味しい餃子を食べに行くことになりました。実は宇都宮には別名があります。それは何だと思いますか？",
  youtube_url: nil,
  image_url: nil,
  test_category: tochigi
)

QuizChoice.create!(
  content: "餃子市",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "雷都",
  correct_answer: true,
  explanation: "県庁所在地の宇都宮市は、春から夏にかけて雷がとても多く「雷都」と呼ばれるほどです。雷、雨とともに雹が降ることもしばしば...旅行の際は天気予報に注意してください。もし雷が鳴ったら、慌てず屋内に避難してくださいね。",
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "アイス町",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

#---------問題6--------------------------------------------------------------------★
quiz6 = Quiz.create!(
  content: "⑥おばあちゃんのお話を聞くのが大好きですが、時々栃木弁が入るので理解ができない時もあります。餃子を食べ終わったあと一緒に散歩をしましたが、突然おばあちゃんが「こわいわ〜！」と言い出しました。この、「こわい」は「怖い」という意味ではありません。何の意味だと思いますか？",
  youtube_url: nil,
  image_url: nil,
  test_category: tochigi
)

QuizChoice.create!(
  content: "お腹が空いた",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)


QuizChoice.create!(
  content: "眠い",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "疲れた",
  correct_answer: true,
  explanation: "栃木県では高齢の方をはじめ、栃木弁を話す方が多いです。その中でもいくつか面白い方言があります。栃木弁で「こわい」は「疲れた」、「だいじ」は「大丈夫」という意味です。聞いてびっくりすることがあると思いますが、思い切って使ってみてください！ちなみに、「怖い」は「おっかない」です。\n
          急に「こわい〜！」と言われたらおっかないですね！",
  image_url: nil,
  quiz: quiz6
)