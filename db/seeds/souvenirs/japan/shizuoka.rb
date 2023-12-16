shizuoka = TestCategory.find_by(title: "静岡")

gift1 = SouvenirPhoto.create!(
  name: "うなぎパイ", 
  explanation: "浜松市に工場があります。工場見学も可能でうなぎパイをお土産にもらえます！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/shizuoka/unagipie_sou.jpg",
  test_category: shizuoka
)

gift2 = SouvenirPhoto.create!(
  name: "こっこ", 
  explanation: "蒸しケーキです。抹茶味やバナナ味など色々な味があります！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/shizuoka/steamcake_sou.jpg",
  test_category: shizuoka
)

gift3 = SouvenirPhoto.create!(
  name: "治一郎 バウムクーヘン", 
  explanation: "現在は都内でも購入ができるのですが、実は発祥地は「静岡県浜松市」です。浜松市・静岡市に店舗があります。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/shizuoka/baumkuchen.jpg",
  test_category: shizuoka
)
