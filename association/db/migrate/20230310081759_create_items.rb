class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.references :category, null: false, foreign_key: true
      t.integer :stock_quantity
      t.boolean :status

      t.timestamps
    end
  end
end
