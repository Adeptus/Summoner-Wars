class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string  :name
      t.integer :skill_id
      t.string  :rase_type
      t.integer :count_in_deck

      t.timestamps
    end
  end
end
