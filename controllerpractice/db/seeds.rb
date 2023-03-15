# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Product.destroy_all

product = Product.create(
    product_name: 'Cadbury Silk',
    product_price: 60,
    product_desc: 'Chocolate'
)


product = Product.create(
    product_name: 'Kitkat',
    product_price: 20,
    product_desc: 'Chocolate'
)


product = Product.create(
    product_name: 'BlackForest',
    product_price: 450,
    product_desc: 'Sponge Cake'
)


5.times do
    product= Product.create(
        product_name: Faker::Commerce.product_name, 
        product_price: Faker::Commerce.price,
        product_desc: Faker::Lorem.sentence
        
    )
end
