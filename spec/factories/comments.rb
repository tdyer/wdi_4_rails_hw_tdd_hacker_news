# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    content { Faker::Lorem.words(rand(1..4)).join(' ') }
    submitted_at { DateTime.now }
    article
  end
end
