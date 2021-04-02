FactoryBot.define do
  factory :user do
    nickname { Gimei.name }
    email { Faker::Internet.free_email }
    password { Faker::Lorem.characters(number: 6) }
    password_confirmation { password }
  end
end
