FactoryBot.define do
  factory :user do
    name { "Mike" }
    sequence(:email) { |n| "mike#{n}@example.com" }
    password { "mikemike" }
    password_confirmation { password }
  end
end
