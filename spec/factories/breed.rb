require 'faker'

FactoryBot.define do
  factory :breed do
    family     {Faker::Creature::Dog.breed}
  end
end
