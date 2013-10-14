require 'spec_helper'

describe Event do
  it { should validate_presence_of :rase_type }
  it { should validate_presence_of :count_in_deck }
end
