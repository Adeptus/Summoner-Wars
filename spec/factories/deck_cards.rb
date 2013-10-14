# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :deck_card do
    deck_id 1
    card_type "Unit"
    card_id 1
    status "in_deck"
  end
end
