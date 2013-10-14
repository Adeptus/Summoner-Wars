require 'spec_helper'

describe Game do
  it { should belong_to(:player_one) }
  it { should belong_to(:player_two) }
  it { should belong_to(:current_player) }
  it { should belong_to(:player_one_deck) }
  it { should belong_to(:player_two_deck) }

  it "has a valid factory" do
    FactoryGirl.create(:game).should be_valid
  end   
end
