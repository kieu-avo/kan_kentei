baltic_states = TestCategory.create!(title: "バルト三国", region: "foreign")

#---------問題１--------------------------------------------------------------------★
quiz1 = Quiz.create!(
  content: "①夢になぜかバルト三国が出てきました。これは何かのご縁なので、来年の夏休みに訪れることにしました。その前にバルト三国のことをもっと知りたいと思い、ヨーロッパに住んでいる友人に教えてもらいました！\n

          \n【リトアニア：公用語はリトアニア語だが、他の2言語も広く使われている】\n
          この2言語はどれとどれでしょうか？\n
  
          \n＊バルト三国はリトアニア、エストニア、ラトビアの三カ国を指し、ヨーロッパの北部に位置します。三カ国ともバルト海に面しているため、バルト三国と呼ばれています。",
  youtube_url: nil,
  image_url: nil,
  test_category: baltic_states
)

QuizChoice.create!(
  content: "英語・ロシア語",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "ロシア語・ポーランド語",
  correct_answer: true,
  explanation: "公用語はリトアニア語ですが、ロシア語とポーランド語も広く話されています。言語使用の割合は、リトアニア語が約80%以上、ロシア語が約8%、ポーランド語が約7%です。リトアニアは歴史的に多様な文化的および政治的影響を受けてきたため、このような言語状況が形成されています。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/baltic+states/q1_exp.jpg",
  quiz: quiz1
)

QuizChoice.create!(
  content: "フランス語・ポーランド語",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

#---------問題2--------------------------------------------------------------------★
quiz2 = Quiz.create!(
  content: "②【ラトビア：首都リガはある建築様式が有名】\n
          この建築様式は何でしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: baltic_states
)

QuizChoice.create!(
  content: "アール・ヌーヴォー建築",
  correct_answer: true,
  explanation: "首都リガはアール・ヌーヴォー建築で有名で、世界で最も多くのアール・ヌーヴォー建築を有する都市の一つです。\n

          \n＊アール・ヌーヴォー建築は19世紀末から20世紀初頭にかけて流行したスタイルです。自然の要素を模倣した流動的な曲線や詳細な装飾が特徴で、新しい材料の使用により革新的なデザインが可能になりました。このスタイルは建築だけでなく、インテリアや家具にも影響を与え、全体的な芸術作品としての統一感を持っています。アール・ヌーヴォーはモダニズム建築にも影響を与え、その独特な美学は今も多くの人々を魅了しています。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/baltic+states/q2_exp.jpg",
  quiz: quiz2
)

QuizChoice.create!(
  content: "ルネサンス建築",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "モダニズム建築",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

#---------問題3--------------------------------------------------------------------★
quiz3 = Quiz.create!(
  content: "③【エストニア：世界で初めてオンライン○○を実施した】\n
          この○○は何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: baltic_states
)

QuizChoice.create!(
  content: "ショッピング",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "留学",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "選挙",
  correct_answer: true,
  explanation: "エストニアはデジタル化が非常に進んだ国として知られており、世界で初めてオンライン選挙を実施した国です。また、人口当たりのスタートアップ企業の数が世界で最も多い国の一つであり、有名なスタートアップにはSkypeが含まれます。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/baltic+states/q3_exp.jpg",
  quiz: quiz3
)

#---------問題4--------------------------------------------------------------------★
quiz4 = Quiz.create!(
  content: "④【エストニア：公用語はエストニア語だが、もう1言語も広く使われている】\n
          このもう1言語はどれでしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: baltic_states
)

QuizChoice.create!(
  content: "ポーランド語",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "ロシア語",
  correct_answer: true,
  explanation: "エストニアではロシア人が多く住んでいるため、標識や商品にエストニア語だけでなくロシア語も多く使われています。",
  image_url: nil,
  quiz: quiz4
)


QuizChoice.create!(
  content: "エストニア語",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

#---------問題5--------------------------------------------------------------------★
quiz5 = Quiz.create!(
  content: "⑤【エストニア：フィンランド人は特定のものを買うために、わざわざ首都タリンまで訪れる】\n
          この「特定のもの」とは何だと思いますか？",
  youtube_url: nil,
  image_url: nil,
  test_category: baltic_states
)

QuizChoice.create!(
  content: "お菓子",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "お酒",
  correct_answer: true,
  explanation: "フィンランド人の多くがお酒を買うために、フェリーでタリンに行きます。これは、フィンランドのお酒にかかる税率が29%と高いためです。\n
          フィンランドの首都ヘルシンキの港からタリンまではフェリーで約2時間です。多くの人々が大量にお酒を購入してフェリーに乗る光景は、タリンではよく見られます。",
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "タバコ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

#---------問題6--------------------------------------------------------------------★
quiz6 = Quiz.create!(
  content: "⑥【バルト三国の共通点：多くの人々が上等な○○を所有している】\n
          それは何でしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: baltic_states
)

QuizChoice.create!(
  content: "車",
  correct_answer: true,
  explanation: "家は小さくても、多くの人々が上等な車を持っています。\n
          ※これはあくまでも情報提供者の個人的な意見です。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/baltic+states/q6_exp.jpg",
  quiz: quiz6
)

QuizChoice.create!(
  content: "ボート",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "電動自転車",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)


