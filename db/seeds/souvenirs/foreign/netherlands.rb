netherlands = TestCategory.find_by(title: "オランダ")

gift1 = SouvenirPhoto.create!(
  name: "Heineken", 
  explanation: "ハイネケンビールです。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/netherlands/heineken_sou.jpg",
  test_category: netherlands
)

gift2 = SouvenirPhoto.create!(
  name: "ミッフィーのマスコット", 
  explanation: "ゴッホのひまわりとコラボです！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/netherlands/miffy_sou.jpeg",
  test_category: netherlands
)

gift3 = SouvenirPhoto.create!(
  name: "自転車のベル", 
  explanation: "ゴッホの「花咲くアーモンドの木の枝」とコラボです！",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/netherlands/bell_sou.jpeg",
  test_category: netherlands
)

gift4 = SouvenirPhoto.create!(
  name: "pannekok", 
  explanation: "オランダのパンケーキです。写真のパンケーキは、ほうれん草のソース、野菜、ベーコンが入っています。読み方は「パンネクック」です。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/netherlands/pancake_sou.jpeg",
  test_category: netherlands
)