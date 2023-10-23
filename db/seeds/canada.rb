canada = TestCategory.create!(title: "canada")

#---------問題１--------------------------------------------------------------------
quiz1 = Quiz.create!(
  content: "①カナダはメープルが有名ですが、どこの州が一番生産が盛んだと思いますか？",
  youtube_url: nil,
  image_url: nil,
  test_category: canada
)
#------選択肢--------
QuizChoice.create!(
  content: "British Columbia州(バンクーバーがある州)",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "Ontario州(トロントがある州)",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "Quebec州(モントリオールがある州)",
  correct_answer: true,
  explanation: "カナダのメープルシロップの生産はケベックが約90%占めています。
               メープルシロップの味比べができるツアーもありますので、興味がある方は是非！
               （喉が乾きますのでお水の持参をお勧めします！）",
  image_url: nil,
  quiz: quiz1
)

#---------問題２--------------------------------------------------------------------
quiz2 = Quiz.create!(
  content: "②カナダの食べ物と言ったら何でしょう？",
  youtube_url: nil,
  image_url: nil,
  test_category: canada
)

#------選択肢--------
 QuizChoice.create!(
  content: "プラリネ",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "プーティン",
  correct_answer: true,
  explanation: "プーティンはフライドポテトの上にグレイビーソース（肉汁のソース）をかけた、カナダの数少ない料理の一つです。
                5~10口目までは美味しいと感じますが、その後はだんだん飽きてきます...
                ソースをかけているので、ポテトがペチョぺチョです。やはり、普通のフライドポテトが一番と感じてくるかもしれません。
                小さいサイズを選んでも食べきれないことがあります（毎回ほぼ食べきれません...）ので、誰かとシェアすることをお勧めします！
                ちなみに、グレイビーソースが定番ですが、お店によっては色んなソースやトッピングをするお店もあります。",
  image_url: nil,
  quiz: quiz2
)

QuizChoice.create!(
  content: "プリン",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz2
)






