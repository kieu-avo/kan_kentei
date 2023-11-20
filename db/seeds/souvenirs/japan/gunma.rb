gunma = TestCategory.find_by(title: "群馬")

gift1 = SouvenirPhoto.create!(
  name: "旅がらす", 
  explanation: "ミルククリームをサンドしたお煎餅です。",
  image_url: nil,
  test_category: gunma
)

gift2 = SouvenirPhoto.create!(
  name: "かりんとう饅頭", 
  explanation: "揚げられているので外側がカリッとしていて美味しいお饅頭です!",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/gunma/karinto_sou.jpg",
  test_category: gunma
)

gift3 = SouvenirPhoto.create!(
  name: "ガトーフェスタハラダのラスク", 
  explanation: "サクサクとした食感とバターの香りが最高のラスクです！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/gunma/rusk_sou.jpg",
  test_category: gunma
)