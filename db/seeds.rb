# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 25.times do
    url = "http://loremflickr.com/320/240/cocktail"
    cocktail = Cocktail.new(name: Faker::Beer.name)
    cocktail.remote_picture_url = url
    cocktail.save  
 end

  50.times do
    Ingredient.create(name: Faker::Food.ingredient)  
  end