class CreateWalls < ActiveRecord::Migration
  def change
    create_table :walls do |t|
      t.string  :name
      t.integer :life
      t.string  :rase_type
      t.integer :count_in_deck

      t.timestamps
    end
  end
end
