hyougo = TestCategory.find_by(title: "兵庫")

gift1 = SouvenirPhoto.create!(
  name: "明石焼き", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/hyougo/q3_exp.jpg",
  test_category: hyougo
)

gift1 = SouvenirPhoto.create!(
  name: "たこせんべい", 
  explanation: nil,
  image_url: nil,
  test_category: hyougo
)

gift1 = SouvenirPhoto.create!(
  name: "神戸プリン", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/hyougo/puddin_sou.jpg",
  test_category: hyougo
)

gift1 = SouvenirPhoto.create!(
  name: "神戸牛", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/hyougo/kobebeef_sou.jpg",
  test_category: hyougo
)

gift1 = SouvenirPhoto.create!(
  name: "明石のり", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/hyougo/seaweed_sou.jpg",
  test_category: hyougo
)
