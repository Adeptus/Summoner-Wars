require 'spec_helper'

describe DeckCard do
  it { should validate_presence_of :deck_id }
  it { should validate_presence_of :card_type }
  it { should validate_presence_of :card_id }
  it { should validate_presence_of :status }

  it "has a valid factory" do
    FactoryGirl.create(:deck_card).should be_valid
  end  
end
