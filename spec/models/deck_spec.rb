require 'spec_helper'

describe Deck do
 
  it { should belong_to(:game) }
  it { should belong_to(:player) }

  it "has a valid factory" do
    FactoryGirl.create(:deck).should be_valid
  end

  describe "generate_deck" do
    let(:deck) { FactoryGirl.create(:deck) }

    it "generate 34 cards - seeds test - all rases" do
      load "#{Rails.root}/db/seeds.rb"
      Unit.all.pluck(:rase_type).uniq.each do |rase_name|
        deck.generate_deck(rase_name)
        deck.deck_cards.count.should eq(34)
      end
    end

    it "have summoner - seeds test - all rases" do
      load "#{Rails.root}/db/seeds.rb"
      Unit.all.pluck(:rase_type).uniq.each do |rase_name|
        deck.generate_deck(rase_name)
        deck.unit_cards.where(unit_type: "Summoner").count.should eq(1)
      end
    end

    it "have 9 events - seeds test - all rases" do
      load "#{Rails.root}/db/seeds.rb"
      Unit.all.pluck(:rase_type).uniq.each do |rase_name|
        deck.generate_deck(rase_name)
        deck.event_cards.count.should eq(9)
      end
    end

    it "have 22 units - seeds test - all rases" do
      load "#{Rails.root}/db/seeds.rb"
      Unit.all.pluck(:rase_type).uniq.each do |rase_name|
        deck.generate_deck(rase_name)
        deck.unit_cards.count.should eq(22)
      end
    end        

    it "have corrent cards counts" do
      unit = FactoryGirl.create(:unit)
      deck.generate_deck(unit.rase_type)
      deck.deck_cards.where(card_id: unit.id, card_type: "Unit").count.should eq(unit.count_in_deck)
    end
  end
end
