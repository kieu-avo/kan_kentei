canada = TestCategory.find_by(title: "canada")

gift1 = SouvenirPhoto.create!(
  name: "アイスワイン", 
  image_url: nil,
  test_category: canada
)

gift2 = SouvenirPhoto.create!(
  name: "チートス（ハラーペーニョー味）", 
  image_url: nil,
  test_category: canada
)

gift3 = SouvenirPhoto.create!(
  name: "Coffee Crisp", 
  image_url: nil,
  test_category: canada
)

gift3 = SouvenirPhoto.create!(
  name: "オゴポゴ（ケロウナのアイドル）", 
  image_url: nil,
  test_category: canada
)