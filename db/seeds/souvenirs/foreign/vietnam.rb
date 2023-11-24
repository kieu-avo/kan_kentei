vietnam = TestCategory.find_by(title: "ベトナム")

gift1 = SouvenirPhoto.create!(
  name: "Cà phê sữa đá", 
  explanation: "練乳入りのアイスコーヒーです。甘さと苦さが絶妙で美味しいです！読み方は「カフェ　スア　ダー」です。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/vietnam/caphesuda_sou.jpg",
  test_category: vietnam
)

gift2 = SouvenirPhoto.create!(
  name: "333", 
  explanation: "ベトナムビールです。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/vietnam/q8_exp.png",
  test_category: vietnam
)

gift3 = SouvenirPhoto.create!(
  name: "chôm chôm", 
  explanation: "読み方は「チョム　チョム」で、日本ではランブータンと言います。甘くてわずかに酸味のある味わいが特徴のフルーツです。ビタミンCが豊富です。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/vietnam/chomchom_sou.jpg",
  test_category: vietnam
)

gift4 = SouvenirPhoto.create!(
  name: "chả giò", 
  explanation: "揚げ春巻きです。日本の揚げ春巻きは餡にとろみがありますが、ベトナムのはとろみはありません。挽肉、海老、野菜、春雨などが入っており、程よいしょっぱさでご飯とお酒がすすみます。読み方は「チャー　ヨア」で、南部は「ヨア」と発音しますが、北部では「ゾア」と発音をします。地域によっては呼び方が違います。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/vietnam/chalam_sou.jpg",
  test_category: vietnam
)

gift5 = SouvenirPhoto.create!(
  name: "chè", 
  explanation: "ベトナムのぜんざいです。写真のぜんざいは白玉、生姜、落花生が入っています。読み方は「チェー」です。フルーツのぜんざいや野菜が入ったぜんざいもあります。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/vietnam/che_sou.jpg",
  test_category: vietnam
)

gift6 = SouvenirPhoto.create!(
  name: "nón", 
  explanation: "ベトナムの伝統的な葉傘です。",
  image_url: "https://kan-kentei-bucket.s3.ap-northeast-1.amazonaws.com/vietnam/nonla_sou.jpg",
  test_category: vietnam
)


