require 'spec_helper'

describe Wall do
  it { should validate_presence_of :name }
  it { should validate_presence_of :life }
  it { should validate_presence_of :rase_type }
  it { should validate_presence_of :count_in_deck }

   it "has a valid factory" do
    FactoryGirl.create(:wall).should be_valid
  end
end
