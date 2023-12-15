FactoryBot.define do
  factory :souvenir_photo do
    association :test_category
    
    name { ["ムーミングッズ", "オーナメント", "北欧雑貨"].sample }
  end
end
