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
    unicorn = Ride.create
    name: 'Sweety Rainbow',
    category: 'Magical Creatures',
    description: 'Ride a beautiful unicorn',
    address: '120, rue de paris 92100 Boulogne',
    availability: true,
    price_per_day: rand(50..100),
    user: users.sample

    dragon = Ride.create
    name: 'Dragon Fire',
    category: 'Magical Creatures',
    description: 'Ride a scary dragon',
    address: '12, rue Oberkampf 75011 Paris',
    availability: true,
    price_per_day: rand(50..100),
    user: users.sample

    troll = Ride.create
    name: 'TrollOut',
    category: 'Magical Creatures',
    description: 'Ride a Troll',
    address: '50, rue Robespierre 93100 Montreuil',
    availability: true,
    price_per_day: rand(50..100),
    user: users.sample

    ninjaTurtle = Ride.create
    name: 'Greeny Ninja Turle',
    category: 'Magical Creatures',
    description: 'Ride a Turtle Ninja',
    address: '50, avenue Pasteur 93100 Montreuil',
    availability: true,
    price_per_day: rand(50..100),
    user: users.sample

    superDestroyer = Ride.create
    name: 'Super Destroyer Executor',
    category: 'Starship',
    description: 'Ride a super stellar Destroyer',
    address: '58, avenue Parmentier 75011 Paris',
    availability: true,
    price_per_day: rand(50..100),
    user: users.sample

    snowspeeder = Ride.create
    name: 'Snowspeeder',
    category: 'Starship',
    description: 'Ride a Snowspeeder',
    address: '5, rue de Rivoli 75004 Paris',
    availability: true,
    price_per_day: rand(50..100),
    user: users.sample

    awing = Ride.create
    name: 'A-Wing RZ-1',
    category: 'Starship',
    description: 'Ride an A-Wing RZ-1',
    address: '10, avenue des Champs-Elysées 75008 Paris',
    availability: true,
    price_per_day: rand(50..100),
    user: users.sample

    nebulon = Ride.create
    name: 'Nebulon-B Fregate',
    category: 'Starship',
    description: 'Ride a Nebulon-B Fregate',
    address: '12, rue du champs de mars 75007 Paris',
    availability: true,
    price_per_day: rand(50..100),
    user: users.sample

    canoe = Ride.create
    name: 'Canoe redspeed',
    category: 'Unusual vehicles',
    description: 'Ride Ze most beautiful canoe in the world',
    address: '17, rue de varenne 75007 Paris',
    availability: true,
    price_per_day: rand(50..100),
    user: users.sample

    balloon = Ride.create
    name: 'Hot Air Ballon',
    category: 'Unusual vehicles',
    description: 'Ride an amazing hot air balloon',
    address: '50, avenue Dausmenil 75012 Paris',
    availability: true,
    price_per_day: rand(50..100),
    user: users.sample

    unicycle = Ride.create
    name: 'Unicycle ME',
    category: 'Unusual vehicles',
    description: 'Ride a super dangerous unicycle',
    address: '30, avenue Corentin Cariou 75019 Paris',
    availability: true,
    price_per_day: rand(50..100),
    user: users.sample

    carriage = Ride.create
    name: 'Unicycle ME',
    category: 'Unusual vehicles',
    description: 'Ride a super dangerous unicycle',
    address: '30, avenue Mathurin Moreau 75019 Paris',
    availability: true,
    price_per_day: rand(50..100),
    user: users.sample

puts 'finished !!'
