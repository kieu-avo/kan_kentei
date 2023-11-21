netherlands  = TestCategory.create!(title: "オランダ", region: "foreign")

#---------問題1--------------------------------------------------------------------★
quiz1 = Quiz.create!(
  content: "①首都アムステルダムに到着しました。早速これから、オランダで生まれたある有名な画家の美術館に行きます。その画家は誰でしょうか？",
  youtube_url: nil,
  image_url: nil,
  test_category: netherlands 
)

QuizChoice.create!(
  content: "クロード・モネ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "パブロ・ピカソ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "フィンセント・ファン・ゴッホ",
  correct_answer: true,
  explanation: "首都アムステルダムにゴッホ美術館（Van Gogh Museum）があります。有名なひまわりの絵の素描や、手紙、絵画などが約200点以上が展示されています。ゆっくり見る場合は一日はかかります。音声ガイドを聞きながらみると面白いのでおすすめです（会場でレンタルができます）。お土産コーナーも充実していますので、最後に立ち寄るのをお忘れずに！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/netherlands/q1_exp.jpeg",
  quiz: quiz1
)

#---------問題2--------------------------------------------------------------------★
quiz2 = Quiz.create!(
  content: "②芸術の余韻に浸りながら街中を散歩していたら、日本でも有名なビールのブリュワリーの前を通りました。そのビールはオランダが発祥です。そのビールは何ですか？ ",
  youtube_url: nil,
  image_url: nil,
  test_category: netherlands 
)

QuizChoice.create!(
  content: "ハイネケン",
  correct_answer: true,
  explanation: "ビール工場の見学ができたり、ゴッホとコラボしたビールボトルがありますので、気になった方はオランダに来たら是非立ち寄ってみてください。行かれる際は事前にチケットを購入した方がスムーズに入場ができるのでお勧めです。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/netherlands/q2_exp.jpeg",
  quiz: quiz2
)

QuizChoice.create!(
  content: "ギネス",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "コロナ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

#---------問題3--------------------------------------------------------------------★
quiz3 = Quiz.create!(
  content: "③アムステルダムは街並みが綺麗で歩くのがとても楽しいです！街にはあちこち運河が流れています。アムステルダムには幾つの運河が流れていると言われているでしょうか？",
  youtube_url: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/netherlands/q3.jpeg",
  test_category: netherlands 
)

QuizChoice.create!(
  content: "149",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "157",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz3
)

QuizChoice.create!(
  content: "165",
  correct_answer: true,
  explanation: "約165の運河が流れていると言われています。クルージングしているお客さんに手を振ると振り返ってきます。これはアムステルダムの散策時のお楽しみポイントです。みなさんもクルージングをしたら是非歩いている人に手を振ってみてください！",
  image_url: nil,
  quiz: quiz3
)

#---------問題4--------------------------------------------------------------------★
quiz4 = Quiz.create!(
  content: "④明日は一日中何も予定がないので、とてもイケメンなホテルのスタッフにお勧めの場所を聞いたところ、日本でも人気があるキャラクターのミュージアムをお勧めされました。ということで、明日はそのミュージアムに行くことにします。そのキャラクターとは何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: netherlands 
)

QuizChoice.create!(
  content: "ミッフィー",
  correct_answer: true,
  explanation: "ミッフィーの故郷はオランダです。Utrecht（読：ユトレヒト）にはナインチェ・ミュージアムと言うミッフィーミュージアムがあります（ナインチェはうさちゃんという意味です）。この周辺の信号はミッフィーが表示されていて、とても可愛いです！首都アムステルダムから車で約１時間で行けます。",
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "スヌーピー",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

QuizChoice.create!(
  content: "ムーミン",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz4
)

#---------問題5--------------------------------------------------------------------★
quiz5 = Quiz.create!(
  content: "⑤イケメンスタッフはもう一つお勧めの場所を教えてくれました。第二の都市ロッテルダムには、ユニークで有名な可愛らしい家があるとのことです。明後日そこに行こうと思います。そのお家の名前は何でしょう？",
  youtube_url: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/netherlands/q5.jpg",
  test_category: netherlands 
)

QuizChoice.create!(
  content: "キューブハウス",
  correct_answer: true,
  explanation: "⑤一件のみが見学用として公開されていますが、他は人が住んでいます。中に入ってみると、意外と斜めになっている感覚がありません。とても不思議な家です！",
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "イエローハウス",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

QuizChoice.create!(
  content: "ブロックハウス",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz5
)

#---------問題6--------------------------------------------------------------------★
quiz6 = Quiz.create!(
  content: "⑥イケメンスタッフのお気に入りの場所を聞いたところ、風車で世界遺産にもなっているところでした。これも行くしかありません！その場所の名前は何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: netherlands 
)

QuizChoice.create!(
  content: "ザーンセ・スカンス",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)

QuizChoice.create!(
  content: "キンデルダイク＝エルスハウト",
  correct_answer: true,
  explanation: "⑥キンデルダイク＝エルスハウトの風車群は世界遺産に登録されています。18世紀に建てられた19基の風車のうち、現在も稼働しているのは数機だけです。現在でも稼働しているのは珍しいことです。風車の中は住居となっており、当時の生活を見ることができます。「Kinderdijk UNESCO Official」というアプリをダウンロードすると、歴史などを教えてくれます。周囲はのどかで平和で、ゆっくりとした時間を過ごすことができます！キンデルダイク以外にも風車を見られるところはあります。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/netherlands/q6_exp.jpeg",
  quiz: quiz6
)


QuizChoice.create!(
  content: "スキーダム",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz6
)