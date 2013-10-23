require 'spec_helper'

describe Game do
  it { should have_many(:decks) }
  it { should have_many(:players).through(:decks) }

  it "has a valid factory" do
    FactoryGirl.create(:game).should be_valid
  end   

  describe "before update" do

    it "should set current_deck if 2 decks" do
      
    end
    it "shouldn't set current_deck" do

    end
  end
end
