# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :wall do
    life 1
    name "Wall"
    rase_type "goblin"
    count_in_deck 3
  end
end
