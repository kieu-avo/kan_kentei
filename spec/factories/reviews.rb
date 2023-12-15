FactoryBot.define do
  factory :review do
    association :test_category
    
    content { "①検定は難しかったですか？" }

    trait :content2 do
      content { "②同じ級で違う問題にもチャレンジしてみたいですか？" }
    end

    trait :content3 do
      content { "③合格した級に行ってみたいですか？" }
    end
  end
end



