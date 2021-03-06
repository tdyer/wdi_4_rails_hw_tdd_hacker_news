# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    title { Faker::Lorem.words(rand(1..4)).join(' ') }
    url { Faker::Internet.url }
    submitted_at { DateTime.now }
  end
end
