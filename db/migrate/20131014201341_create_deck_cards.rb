class CreateDeckCards < ActiveRecord::Migration
  def change
    create_table :deck_cards do |t|
      t.belongs_to  :deck
      t.string      :card_type
      t.integer     :card_id
      t.string      :status
      t.integer     :position_x
      t.integer     :position_y
      t.integer     :current_live

      t.timestamps
    end
  end
end
