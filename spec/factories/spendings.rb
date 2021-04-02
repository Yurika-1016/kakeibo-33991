FactoryBot.define do
  factory :spending do
    spending_category_id { Faker::Number.between(from: 1, to: 11) }
    price { Faker::Number.between(from: 0, to: 9_999_999) }
    association :user
  end
end
