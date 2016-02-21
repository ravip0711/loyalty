FactoryGirl.define do
  factory :customer do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone { Faker::Number.number(10) }
    email { Faker::Internet.email }
    zip_code { Faker::Number.number(5) }
    birthday { Faker::Date.backward(30) }
  end
end
