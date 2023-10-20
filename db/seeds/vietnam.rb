vietnam = JapanAndOverseasTestCategory.create!(title: "vietnam")

#---------問題１--------------------------------------------------------------------
quiz1 = Quiz.create!(
  content: "①ベトナムの首都はどこでしょうか？",
  youtube_url: nil,
  image_url: nil,
  japan_and_overseas_test_category: vietnam
)
#------選択肢--------
QuizChoice.create!(
  content: "ホーチミン",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "ハノイ",
  correct_answer: true,
  explanation: "よくホーチミンと勘違いされますが、首都は北部にあるハノイです",
  image_url: nil,
  quiz: quiz1
)

QuizChoice.create!(
  content: "ダナン",
  correct_answer: false,
  explanation: nil,
  image_url: nil,
  quiz: quiz1
)

#---------問題２--------------------------------------------------------------------
quiz2 = Quiz.create!(
  content: "②プレゼントで渡してもいけないもので、この中ではどれだと思いますか？",
  youtube_url: nil,
  image_url: nil,
  japan_and_overseas_test_category: vietnam
)

#------選択肢--------
 QuizChoice.create!(
  content: "ハンカチ",
  correct_answer: true,
  explanation: "ベトナム語でハンカチ(khăn)は「困難（khó khăn）」と発音が似ているため、
               ハンカチをプレゼントするのは喜ばれません。ベトナム人にプレゼントを贈るときは注意をしましょう！",
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






