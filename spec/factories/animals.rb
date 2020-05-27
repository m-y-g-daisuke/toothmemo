require 'faker'
FactoryBot.define do
  factory :animal do
    name {Faker::Creature::Dog.breed}
    birth {Faker::Date.birthday(min_age: 0, max_age: 25)}
    sex {"オス"}
    image {Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.png'))}
    association :breed
    association :user
  end
end
