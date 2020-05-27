require 'faker'

FactoryBot.define do
  password = Faker::Internet.password(min_length: 8) 
  factory :user do
    name  {Faker::FunnyName.name}
    email {Faker::Internet.email}
    password {password}
    password_confirmation {password}
  end
end
