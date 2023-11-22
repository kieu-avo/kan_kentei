TestCategory.all.each do |test_category|
  #if Review.where(test_category_id: test_category.id).empty?
    Review.create!(test_category_id: test_category.id, content: "①検定は難しかったですか？")
    Review.create!(test_category_id: test_category.id, content: "②同じ級で違う問題にもチャレンジしてみたいですか？")
    Review.create!(test_category_id: test_category.id, content: "③合格した級に行ってみたいですか？")
  #end
end
