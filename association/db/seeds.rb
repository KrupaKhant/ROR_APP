# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Category.destroy_all
Item.destroy_all
Rating.destroy_all
Modifier.destroy_all

  5.times do
    Category.create(name: Faker::Commerce.department)
  end
  
  10.times do
      item=Item.create(
        name: Faker::Commerce.product_name,
        price: Faker::Commerce.price,
        category_id: Category.all.sample.id,
        stock_quantity: Faker::Number.between(from: 1, to: 100),
        status: Faker::Boolean.boolean
      )
      item.rating = Rating.new(rating: rand(1..5))
  end
  
  15.times do
      Modifier.create(
          name: Faker::Commerce.product_name, 
          price: Faker::Commerce.price,
          stock_quantity: Faker::Number.between(from: 1, to: 100),
      )
  end