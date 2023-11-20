malta = TestCategory.find_by(title: "マルタ")

gift1 = SouvenirPhoto.create!(
  name: "ゴゾ島のはちみつ", 
  explanation: "濃厚でとっても美味しいです。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/malta/honey_sou.jpg",
  test_category: malta
)

gift2 = SouvenirPhoto.create!(
  name: "ヌガー", 
  explanation: "ナッツ等が入ったキャラメルの様な甘いお菓です。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/malta/nougat_sou.jpg",
  test_category: malta
)

gift3 = SouvenirPhoto.create!(
  name: "塩", 
  explanation: "陶器のかわいい容器に入っており、インテリアにもなります。",
  image_url: nil,
  test_category: malta
)
