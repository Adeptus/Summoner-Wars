# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :unit do
    name "MyString"
    life 1
    power 1
    summon_cost 1
    unit_type "MyString"
    wepon_type "MyString"
    skill_id 1
    rase_type "Cave Goblin"
    count_in_deck 2
  end
end
