class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :product_price
      t.string :product_desc

      t.timestamps
    end
  end
end
