FactoryGirl.define do
  factory :course do
    name Faker::Name.name
    description  Faker::Lorem.sentence(3, false, 0)
    status Faker::Number.between(0, 1)
  end
end