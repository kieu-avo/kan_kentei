FactoryBot.define do
  factory :user_review_answer do
    association :user
    association :review

    rating { Faker::Number.between(from: 1, to: 5) }
  end
end
