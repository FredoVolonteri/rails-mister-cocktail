# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'


url ="http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
user_serialized = open(url).read
user = JSON.parse(user_serialized)

user["drinks"].each do |use|
  ingredient = Ingredient.create(name: use["strIngredient1"])

end


Cocktail.destroy_all

url = '/assets/cocktail2.jpg'
cocktail = Cocktail.new(name: 'Mojito')
cocktail.image = url
cocktail.save



url = '/assets/cocktail3.jpg'
cocktail = Cocktail.new(name: 'Old Fashion')
cocktail.image = url
cocktail.save

url = '/assets/cocktail4.jpg'
cocktail = Cocktail.new(name: 'Caipirinha')
cocktail.image = url
cocktail.save

