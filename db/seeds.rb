# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts "Cleaning database..."
# Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '0612123412', category: 'japanese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St', phone_number: '062343235215',
               category: 'italian' }
lady_puppies =  { name: 'Inglourios Bast', address: '42AV Joe Boey', phone_number: '0623249210', category: 'lebanese' }
salomon_corp =  { name: 'Salomon Corp', address: '15 Av Billy Bob', phone_number: '06234252234', category: 'israeli' }
looty_woof = { name: 'Looty Woof', address: '1 St Burger Kiing', phone_number: '062342132412', category: 'turk' }

[dishoom, pizza_east, lady_puppies, salomon_corp, looty_woof].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
