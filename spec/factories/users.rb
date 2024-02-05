# spec/factories/users.rb
FactoryBot.define do
  factory :user do
    username { Faker::Internet.username }
    email { Faker::Internet.email }
    password { 'password123' }
    role
  end
end
