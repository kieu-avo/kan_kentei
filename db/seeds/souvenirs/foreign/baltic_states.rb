baltic_states = TestCategory.find_by(title: "バルト三国")

gift1 = SouvenirPhoto.create!(
  name: "Halva", 
  explanation: "Halvaは、セサミペーストやナッツバターと甘味料を主成分とする菓子です。中東、南アジア、中央アジア、東ヨーロッパなど多くの地域で人気があります。質感はややドライからクリーミーまで様々で、伝統的なお祝い事や宗教行事で重宝されています。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/baltic+states/halve_sou.jpg",
  test_category: baltic_states
)

gift2 = SouvenirPhoto.create!(
  name: "琥珀を使った製品", 
  explanation: "リトアニアは「琥珀の海岸」として知られており、様々な形や色の琥珀製品が人気です。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/baltic+states/amber_sou.jpg",
  test_category: baltic_states
)

gift3 = SouvenirPhoto.create!(
  name: "リガブラックバルサム", 
  explanation: "ラトビアの伝統的なハーブリキュールで、独特の風味が特徴です。",
  image_url: nil,
  test_category: baltic_states
)

gift4 = SouvenirPhoto.create!(
  name: "Kalevのチョコレート", 
  explanation: "Kalevのチョコレートは、エストニアの老舗ブランドです。スーパーマーケットでも販売されており、国民に広く愛されています。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/baltic+states/kelve_sou.jpg",
  test_category: baltic_states
)
