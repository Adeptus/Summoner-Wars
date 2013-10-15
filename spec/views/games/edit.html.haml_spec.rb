require 'spec_helper'

describe "games/edit" do
  before(:each) do
    @game = assign(:game, stub_model(Game))
  end

  it "renders the edit game form" do
    pending
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", game_path(@game), "post" do
    end
  end
end
