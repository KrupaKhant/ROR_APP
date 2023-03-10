class CreateItemModifiers < ActiveRecord::Migration[7.0]
  def change
    create_table :item_modifiers do |t|
      t.references :item_id, null: false, foreign_key: true
      t.references :modifier_id, null: false, foreign_key: true
     

      t.timestamps
    end
  end
end
