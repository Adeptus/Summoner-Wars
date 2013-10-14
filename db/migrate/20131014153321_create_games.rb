class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to  :player_one
      t.belongs_to  :player_two
      t.belongs_to  :current_player
      t.datetime :finished_at
      t.datetime :started_at
      t.belongs_to  :player_one_deck
      t.belongs_to  :player_two_deck      
      t.belongs_to  :winner

      t.timestamps
    end
  end
end
