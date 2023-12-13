FactoryBot.define do
  factory :test_category do
    title { "フィンランド" }#サンプル問題として表示するためデフォルトに設定
    region { "foreign" }

    trait :canada do
      title { "カナダ" }
      region { "foreign" }
    end

    trait :kumamoto do
      title { "熊本" }
      region { "japan" }
    end

    trait :mie do
      title { "三重" }
      region { "japan" }
    end
  end
end
