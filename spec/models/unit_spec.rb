require 'spec_helper'

describe Unit do
  it { should validate_presence_of :name }
  it { should validate_presence_of :life }
  it { should validate_presence_of :power }
  it { should validate_presence_of :summon_cost }
  it { should validate_presence_of :unit_type }
  it { should validate_presence_of :wepon_type }
  it { should validate_presence_of :rase_type }
  it { should validate_presence_of :count_in_deck }

  #it { should validate_presence_of :skill_id }  

  it "has a valid factory" do
    FactoryGirl.create(:unit).should be_valid
  end   
end
