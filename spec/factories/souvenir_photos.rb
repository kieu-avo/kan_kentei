FactoryBot.define do
  factory :souvenir_photo do
    association :test_category
    
    name { "ムーミングッズ" }
    
    trait :name2 do
      name { "オーナメント" }
    end

    trait :name3 do
      name { "北欧雑貨" }
    end
  end
end
