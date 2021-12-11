# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

restaurants = Restaurant.create!([
  {
    name: "La Tour d'Argent", address: "Paris", phone_number: "0123456789", category: "french", img_url: "https://media-cdn.tripadvisor.com/media/photo-s/10/c0/36/2e/salle-du-restaurant.jpg"
  },
  {
    name: "Le Dragon de Jade", address: "Saint-Denis", phone_number: "0123454545", category: "chinese", img_url: "https://saveursasie.com/wp-content/uploads/restaurant-chinois-japonais-st-herblain.jpg"
  },
  {
    name: "Le Plomb du Cantal", address: "Paris", phone_number: "0123456666", category: "french", img_url: "https://cdn.shopify.com/s/files/1/2588/4636/files/home_a0d0eac6-017d-4002-9669-a29eb9210694.jpg?v=1607532323"
  },
  {
    name: "La Pizza Calzone", address: "Paris", phone_number: "0123456788", category: "italian", img_url: "https://www.brasserielatomate.com/wp-content/uploads/2020/01/pizza-calzone2_ok-scaled.jpg"
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