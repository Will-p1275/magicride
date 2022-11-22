# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# ride : nom, category, description, addresse, availability (default true), price_per_day, user_id
puts "cleaning db"
Ride.destroy_all
puts 'cleaning user'
User.destroy_all

puts 'creating user'

user1 = User.create(
  username: "paulineride",
  email: "pauline@lewagon.com",
  password: "1234567",
  age: 25
)

user2 = User.create(
  username: "anneride",
  email: "anne@lewagon.com",
  password: "1234567",
  age: 45
)

user3 = User.create(
  username: "williamride",
  email: "william@lewagon.com",
  password: "1234567",
  age: 19
)

users = [user1, user2, user3]

puts 'creating ride'
10.times do
  Ride.create!(
    name: "#{Faker::Vehicle.make} #{Faker::Alphanumeric.alpha(number: 5)}",
    category: 'vehicle',
    description: Faker::Vehicle.car_options,
    address: Faker::Address.city,
    availability: true,
    price_per_day: rand(50..100),
    user: users.sample
  )
end

10.times do
  Ride.create!(
    name: "#{Faker::Games::Pokemon.name} #{Faker::Alphanumeric.alpha(number: 5)}",
    category: 'pokemon',
    description: Faker::Games::Pokemon.move,
    address: Faker::Address.city,
    availability: true,
    price_per_day: rand(50..100),
    user: users.sample
  )
end

10.times do
  Ride.create!(
    name: "#{Faker::Movies::StarWars.vehicle} #{Faker::Alphanumeric.alpha(number: 5)}",
    category: 'starwars',
    description: Faker::Movies::StarWars.wookiee_sentence,
    address: Faker::Address.city,
    availability: true,
    price_per_day: rand(50..100),
    user: users.sample
  )
end

puts 'finished !!'
