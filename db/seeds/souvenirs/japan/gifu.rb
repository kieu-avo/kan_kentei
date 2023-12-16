gifu = TestCategory.find_by(title: "岐阜")

gift1 = SouvenirPhoto.create!(
  name: "栗きんとん", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/gifu/q6_exp.jpg",
  test_category: gifu
)

gift2 = SouvenirPhoto.create!(
  name: "村瀬のたじみあられ", 
  explanation: "多治見のお土産として有名です。スーパーでも購入ができます！",
  image_url: nil,
  test_category: gifu
)

gift3 = SouvenirPhoto.create!(
  name: "日本酒三千盛", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/gifu/sake_sou.jpg",
  test_category: gifu
)

gift4 = SouvenirPhoto.create!(
  name: "五平餅", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/gifu/q5_exp.jpg",
  test_category: gifu
)


