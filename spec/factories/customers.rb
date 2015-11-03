FactoryGirl.define do
  factory :customer do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone { Faker::Number.number(10) }
    email { Faker::Internet.email }
    zip_code { Faker::Address.zip_code }
    birthday { Faker::Date.backward(100) }
  end
end
