FactoryBot.define do
  factory :role do
    code { Faker::Lorem.word }
    name { Faker::Lorem.word.capitalize }
  end
end
