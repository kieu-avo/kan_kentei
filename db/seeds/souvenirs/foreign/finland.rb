finland = TestCategory.find_by(title: "フィンランド")

gift1 = SouvenirPhoto.create!(
  name: "北欧雑貨", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/finland/zakka_sou.jpg",
  test_category: finland
)

gift2 = SouvenirPhoto.create!(
  name: "ムーミングッズ", 
  explanation: "ムーミンの作者がフィンランド生まれなので、いろんなムーミングッズが売っています!",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/finland/moomin_sou.jpeg",
  test_category: finland
)

gift2 = SouvenirPhoto.create!(
  name: "クリスマスオーナメント", 
  explanation: "サンタ村にはかわいいクリスマスグッズがたくさん売っています！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/finland/ornament_sou.jpg",
  test_category: finland
)
