class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string  :name
      t.integer :life
      t.integer :power
      t.integer :summon_cost
      t.string  :unit_type
      t.string  :wepon_type
      t.integer :skill_id
      t.string  :rase_type
      t.integer :count_in_deck

      t.timestamps
    end
  end
end
