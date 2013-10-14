require 'spec_helper'

describe Deck do
 
  it "has a valid factory" do
    FactoryGirl.create(:deck).should be_valid
  end

  describe "generate_deck" do
    let(:deck) { FactoryGirl.create(:deck) }

    it "generate 30 cards" do

    end

    it "have summoner" do

    end

    it "have corrent cards counts" do
      unit = FactoryGirl.create(:unit)
      deck.generate_deck(unit.rase_type)
      deck.deck_cards.where(card_type: "Unit", card_id: unit.id).count.should eq(unit.count_in_deck)
    end
  end
end
