# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

restaurants = Restaurant.create!([
  {
    name: "La Tour d'Argent", address: "Paris", phone_number: "0123456789", category: "french"
  },
  {
    name: "Le Dragon de Jade", address: "Saint-Denis", phone_number: "0123454545", category: "chinese"
  },
  {
    name: "Le Plomb du Cantal", address: "Paris", phone_number: "0123456666", category: "french"
  },
  {
    name: "La Pizza Calzone", address: "Paris", phone_number: "0123456788", category: "italian"
  }
])
reviewTour = Review.new
reviewTour.content = "Excellentissime! Tout est délicieux, le chef est un prodige et l'équipe est au petit soins"
reviewTour.rating = 5
reviewTour.restaurant = restaurants.first
reviewTour.save

reviewMcDo = Review.new
reviewMcDo.content = "Désastreux, j'ai emmené ma copine là pour notre anniversaire et elle m'a quité"
reviewMcDo.rating = 1
reviewMcDo.restaurant = restaurants[1]
reviewMcDo.save

reviewPlomb = Review.new
reviewPlomb.content = "C'est bon, c'est gras, c'est la vie!"
reviewPlomb.rating = 3
reviewPlomb.restaurant = restaurants[2]
reviewPlomb.save

reviewTour = Review.new
reviewTour.content = "Une pizza vite fait! pas exceptionnel mais réconfortant"
reviewTour.rating = 3
reviewTour.restaurant = restaurants.last
reviewTour.save