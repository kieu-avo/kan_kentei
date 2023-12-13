sample = TestCategory.find_by(title: "サンプル問題(フィンランド級)")

gift1 = SouvenirPhoto.create!(
  name: "カフェスーダー（練乳入りアイスコーヒー）", 
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/vietnam/caphesuda_sou.jpg",
  test_category: sample
)

gift2 = SouvenirPhoto.create!(
  name: "333（ベトナムビール）", 
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/vietnam/q8_exp.png",
  test_category: sample
)

gift3 = SouvenirPhoto.create!(
  name: "ランブータン", 
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/vietnam/chomchom_sou.jpg",
  test_category: sample
)
