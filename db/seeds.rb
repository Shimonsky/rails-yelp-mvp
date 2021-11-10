# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating restaurants...'
lentrecote = { name: "L'entrecôte", address: '4 cours du 30 Juillet, Bordeaux', phone_number: 64846119, category: 'french' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: 75334684, category: 'belgium' }
madonna_me_focacceria = { name: 'Madonna me Focacceria', address: '134 Cr Balguerie Stuttenberg', phone_number: 68131381, category: 'italian'}
edible_island = { name: 'Edible Island', address: '9701 Shore Front Pkwy, Queens, NY 11693, Etats-Unis', phone_number: 465484864, category: 'japanese'}
restoran_yarar = { name: 'Yarar', address: 'Unnamed Road, Bilibino, Chukotka Autonomous Okrug, Russie, 689450', phone_number: 684947, category: 'chinese'}

[lentrecote, pizza_east, madonna_me_focacceria, edible_island, restoran_yarar].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
