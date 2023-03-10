class CreateModifiers < ActiveRecord::Migration[7.0]
  def change
    create_table :modifiers do |t|
      t.string :name
      t.integer :price
      t.integer :stock_quantity

      t.timestamps
    end
  end
end
