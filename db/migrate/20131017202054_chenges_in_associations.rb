class ChengesInAssociations < ActiveRecord::Migration
  def change
    remove_column :games, :player_one_deck_id, :integer
    remove_column :games, :player_two_deck_id, :integer
    remove_column :games, :player_one_id, :integer
    remove_column :games, :player_two_id, :integer
    rename_column :games, :current_player_id, :current_deck_id
    add_column    :decks, :game_id, :integer
    add_column    :decks, :player_id, :integer
  end
end
