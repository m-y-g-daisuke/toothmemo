FactoryBot.define do
  factory :post do
    recorded_at {Faker::Date.between(from: 2.days.ago, to: Date.today) }
    animal_id {1}
    animal
  end
end
