miyazaki = TestCategory.find_by(title: "宮崎")

gift1 = SouvenirPhoto.create!(
  name: "マンゴー", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/miyazaki/q6_exp.jpg",
  test_category: miyazaki
)

gift2 = SouvenirPhoto.create!(
  name: "プレミアム高千穂牛肉味噌", 
  explanation: "ご飯のお供でもよし、お酒のお供でもよし、野菜のお供でもよしと、宮崎のブランド黒毛和牛を使った万能な肉味噌です！",
  image_url: nil,
  test_category: miyazaki
)

gift3 = SouvenirPhoto.create!(
  name: "鶏のささみくんせい", 
  explanation: "雲海物産の鶏のささみくんせいは宮崎のお土産としておすすめです。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/miyazaki/chiken_smoke_sou.jpg",
  test_category: miyazaki
)

gift4 = SouvenirPhoto.create!(
  name: "ジャム フルーツバター 宮崎フルーツバター日向夏", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/miyazaki/jam_sou.jpg",
  test_category: miyazaki
)

gift5 = SouvenirPhoto.create!(
  name: "宮崎マンゴーラングドシャ", 
  explanation: "2020年と2021年にモンドセレクションで金賞を受賞した、宮崎県産マンゴー100%を使ったラングドシャです！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/miyazaki/languedecha_sou.jpg",
  test_category: miyazaki
)
