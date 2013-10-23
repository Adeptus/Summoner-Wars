class AddfieldsToGames < ActiveRecord::Migration
  def change
    add_column :games, :phase, :integer, default: 0
    add_column :games, :turn, :integer, default: 0
  end
end
