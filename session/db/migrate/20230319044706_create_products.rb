class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :rating

      t.timestamps
    end


    Product.create(name: 'Icecream', price: 100)
    Product.create(name: 'Coffee', price: 80)
    Product.create(name: 'Pizza', price: 500)
  end
end
