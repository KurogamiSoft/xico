FactoryBot.define do
  factory :language do
    code { Faker::Nation.flag }
    name { Faker::Nation.language }
  end
end
