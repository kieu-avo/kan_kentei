canada = TestCategory.find_by(title: "カナダ")

gift1 = SouvenirPhoto.create!(
  name: "アイスワイン", 
  explanation: "ブドウの収穫は気温が氷点下になったあとに行われるため、ブドウは凍った状態で収穫されることからアイスワインと呼ばれています。デザートワインとも呼ばれている程とても甘く、お酒を感じにくいです。バニラアイスにかけたり、ダークチョコレートと一緒に飲むのがおすすめです！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/canada/icewine_sou.jpg",
  test_category: canada
)

gift2 = SouvenirPhoto.create!(
  name: "チートス（ハラペーニョ味）", 
  explanation: "日本でも販売されているチートスはチーズ味ですが、カナダにはハラペーニョという味（メキシコを代表する青唐辛子）が販売されています。辛いです。おやつとしても良いですが、お酒との組み合わせが特におすすめです！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/canada/cheetos_sou.jpeg",
  test_category: canada
)

gift3 = SouvenirPhoto.create!(
  name: "Coffee Crisp", 
  explanation: "Nestlé社の商品で、カナダで人気のあるチョコレートバーです。カナダ国内で主に販売されています。コーヒーと一緒に食べると更に美味しいです！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/canada/coffecrisp_sou.jpg",
  test_category: canada
)

gift4 = SouvenirPhoto.create!(
  name: "オゴポゴのマスコット", 
  explanation: "ケロウナのアイドルです。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/canada/ogopogo_sou.jpg",
  test_category: canada
)

gift5 = SouvenirPhoto.create!(
  name: "ビーバーテール", 
  explanation: "形がカナダの国獣のビーバーの尻尾に似ていることから名付けられました。揚げパンにシナモンシュガーなどの甘いトッピングを加えたもので、甘くて香ばしい風味が特徴のカナダのスイーツです。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/canada/beavertail_sou.jpeg",
  test_category: canada
)

gift6 = SouvenirPhoto.create!(
  name: "メープルシロップ", 
  explanation: nil,
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/canada/maplesyrup_sou.jpeg",
  test_category: canada
)