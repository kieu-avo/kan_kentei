tochigi = TestCategory.find_by(title: "栃木")

gift1 = SouvenirPhoto.create!(
  name: "レモン牛乳", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/tochigi/lemonmilk_sou.jpg",
  test_category: tochigi
)

gift2 = SouvenirPhoto.create!(
  name: "那須の御用邸チーズケーキ", 
  explanation: "常温で持ち運べるため、自宅用やお土産などにおすすめです。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/tochigi/cheesecake_sou.jpg",
  test_category: tochigi
)

gift3 = SouvenirPhoto.create!(
  name: "栃木三鷹唐辛子", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/tochigi/chilipepper_sou.jpg",
  test_category: tochigi
)

gift4 = SouvenirPhoto.create!(
  name: "宇都宮餃子", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/tochigi/gyoza_sou.png",
  test_category: tochigi
)


