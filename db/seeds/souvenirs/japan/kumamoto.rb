kumamoto = TestCategory.find_by(title: "熊本")

gift1 = SouvenirPhoto.create!(
  name: "香梅　武者がえし", 
  explanation: "バターが香るパイ生地にまろやかな味わいの皮剥ぎあずき餡を包んだ、熊本の銘菓です。",
  image_url: nil,
  test_category: kumamoto
)

gift2 = SouvenirPhoto.create!(
  name: "香梅　陣太鼓", 
  explanation: "あんこを求肥で包んだ、熊本の銘菓です。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/kumamoto/zindaiko_sou.jpeg",
  test_category: kumamoto
)

gift3 = SouvenirPhoto.create!(
  name: "馬刺し", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/kumamoto/basashi_sou.jpg",
  test_category: kumamoto
)


