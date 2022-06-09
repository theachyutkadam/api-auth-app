FactoryGirl.define do
  factory :item do
    name { Faker::Name.name }
    description { Faker::Lorem.characters(number: 300) }
  end
end
