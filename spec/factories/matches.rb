# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :match do
    round
    association :player, factory: :user
    association :opponent, factory: :user
  end
end
