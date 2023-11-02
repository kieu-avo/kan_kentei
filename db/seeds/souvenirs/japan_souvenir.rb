TestCategory.all.each do |test_category|
  Review.create!(test_category_id: test_category.id, content: "①検定は難しかったですか？")
  Review.create!(test_category_id: test_category.id, content: "②同じ級で違う問題もチャレンジしてみたいですか？")
  Review.create!(test_category_id: test_category.id, content: "③合格した級に行ってみたいですか？")
end
