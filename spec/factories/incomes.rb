FactoryBot.define do
  factory :income do
    income_category_id { Faker::Number.between(from: 1, to: 4) }
    price { Faker::Number.between(from: 0, to: 9_999_999) }
    association :user
  end
end
