mie = TestCategory.find_by(title: "三重")

gift1 = SouvenirPhoto.create!(
  name: "赤福", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/mie/akahuku_sou.jpg",
  test_category: mie 
)

gift2 = SouvenirPhoto.create!(
  name: "おかげ犬サブレ", 
  explanation: "江戸時代にお蔭参り（伊勢神宮を参詣すること）に行けない家族の代わりに行った犬を「おかげ犬」と言います。このサブレはその犬たちをモチーフに作られており、首輪の代わりにしめ縄がつけられています。可愛いサブレです！",
  image_url: nil,
  test_category: mie 
)

gift3 = SouvenirPhoto.create!(
  name: "伊勢うどん", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/mie/iseudon_sou.jpg",
  test_category: mie 
)

gift4 = SouvenirPhoto.create!(
  name: "シュルレーヌ", 
  explanation: "G7三重・伊勢志摩交通大臣会合の休憩時のお供として選定されました。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/mie/shelllemu_sou.jpgs",
  test_category: mie 
)

gift5 = SouvenirPhoto.create!(
  name: "縁結びのお守り", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/mie/charm_sou.jpg",
  test_category: mie 
)