# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
require "open-uri"


# ride : nom, category, description, addresse, availability (default true), price_per_day, user_id
puts "cleaning db"
Booking.destroy_all
Ride.destroy_all
puts 'cleaning user'
User.destroy_all

puts 'creating user'

user1 = User.create(
  username: "paulineride",
  email: "pauline@lewagon.com",
  password: "1234567",
  age: 25,
  image_url: "https://avatars.githubusercontent.com/u/106176972?v=4"
)

user2 = User.create(
  username: "anneride",
  email: "anne@lewagon.com",
  password: "1234567",
  age: 45,
  image_url: "https://avatars.githubusercontent.com/u/109987907?v=4"
)

user3 = User.create(
  username: "williamride",
  email: "william@lewagon.com",
  password: "1234567",
  age: 19,
  image_url: "https://avatars.githubusercontent.com/u/115219328?v=4"
)

users = [user1, user2, user3]

puts 'creating ride'

unicorn = Ride.create(
  name: 'Sweety Rainbow Unicorn',
  category: 'Magical Creatures',
  description: 'Ride a beautiful unicorn. Sweety Rainbow runs fast and can even fly to the moon. Ride Sweety only during nights as it sleeps during daytime.',
  address: '120, rue de paris 92100 Boulogne',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

dragon = Ride.create(
  name: 'Dragon Fire',
  category: 'Magical Creatures',
  description: 'Ride a scary dragon. If you like taking risks you can tickle Dragon Fire to make him spit fire.',
  address: '12, rue Oberkampf 75011 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

troll = Ride.create(
  name: 'Troll Out',
  category: 'Magical Creatures',
  description: 'Ride Trollout. On top of being completely crazy Troll Out knows how to fight. So bring him with you if you want to make a walk in dangerous lands.',
  address: '50, rue Robespierre 93100 Montreuil',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

    ninjaTurtle = Ride.create(
      name: 'Greeny Ninja Turle',
      category: 'Magical Creatures',
      description: 'Ride Turtle Ninja Greeny. Greeny is a true clone from the tv-series. It has been created and brought to life by a scientist expert in creating magical creatures from movies and tv-series.',
      address: '50, avenue Pasteur 93100 Montreuil',
      availability: true,
      price_per_day: rand(50..100),
      user: users.sample
    )

werewolf = Ride.create(
  name: 'Werewolf',
  category: 'Magical Creatures',
  description: 'Ride Werewolf, one of the most iconic creature of all times. Werefolf can be ride only one night per month during moonlight.',
  address: '50, avenue Pasteur 93100 Montreuil',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

sombral = Ride.create(
  name: 'Sombral Sad',
  category: 'Magical Creatures',
  description: 'Sombral can be seen by people who have seen the death or felt it from an emotional perspective. If you are un this case, ride this so sad but so gentle creature.',
  address: '18, rue Robespierre 93100 Montreuil',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

totoro = Ride.create(
  name: 'Totoro',
  category: 'Magical Creatures',
  description: 'Totoro looks like a mix of a gigantic panda and cat. He is the spirit of the oldest country from Japan and he loves to ride its guests through the airs.',
  address: '25, avenue de la providence 92160 Antony',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

noface = Ride.create(
  name: 'NoFace',
  category: 'Magical Creatures',
  description: 'NoFace will ride you wherever you want in his almost unvisible state.',
  address: '48, avenue de wagram 75017 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

hedwige = Ride.create(
  name: 'Howl Hedwige',
  category: 'Magical Creatures',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare arcu dui vivamus arcu felis bibendum. Adipiscing tristique risus nec feugiat in fermentum posuere urna nec.',
  address: '5, rue de la Durance 75012 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

nazgul = Ride.create(
  name: 'Nazgul',
  category: 'Magical Creatures',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '25, rue de la Seine 75006 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

superDestroyer = Ride.create(
  name: 'Super Destroyer Executor',
  category: 'Spaceships',
  description: 'Ride a super stellar Destroyer the most beautiful starship in ze universe. It goes super fast and you will be able to join Venus in less than 10 hours.',
  address: '58, avenue Parmentier 75011 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

snowspeeder = Ride.create(
  name: 'Snowspeeder',
  category: 'Spaceships',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '5, rue de Rivoli 75004 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

awing = Ride.create(
  name: 'A-Wing RZ-1',
  category: 'Spaceships',
  description: 'Ride an A-Wing RZ-1. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '10, avenue des Champs-Elysées 75008 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

nebulon = Ride.create(
  name: 'Nebulon-B Fregate',
  category: 'Spaceships',
  description: 'Ride a Nebulon-B Fregate. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '12, rue du champs de mars 75007 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

constellation = Ride.create(
  name: 'Constellation',
  category: 'Spaceships',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '42, rue Charcot 75013 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

republic = Ride.create(
  name: 'Republic',
  category: 'Spaceships',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '42, rue Madame 75006 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

enterprise = Ride.create(
  name: 'Enterprise',
  category: 'Spaceships',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '42, rue Jacob 75006 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

voyager = Ride.create(
  name: 'Voyager',
  category: 'Spaceships',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '5, rue Mabillon 75006 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

excalibur = Ride.create(
  name: 'Excalibur',
  category: 'Spaceships',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '18, rue de la gaité 75014 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

yorktown = Ride.create(
  name: 'Yorktown',
  category: 'Spaceships',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '18, rue Beaurepaire 75010 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

canoe = Ride.create(
  name: 'Canoe redspeed',
  category: 'Unusual vehicles',
  description: 'Ride Ze most beautiful canoe in the world. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '17, rue de varenne 75007 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

balloon = Ride.create(
  name: 'Hot Air Ballon',
  category: 'Unusual vehicles',
  description: 'Ride an amazing hot air balloon. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '50, avenue Dausmenil 75012 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

unicycle = Ride.create(
  name: 'Unicycle ME',
  category: 'Unusual vehicles',
  description: 'Ride a super dangerous unicycle. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '30, avenue Corentin Cariou 75019 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

carriage = Ride.create(
  name: 'Unicycle ME',
  category: 'Unusual vehicles',
  description: 'Ride a super dangerous unicycle. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '30, avenue Mathurin Moreau 75019 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

hangglider = Ride.create(
  name: 'Hang-Glider',
  category: 'Unusual vehicles',
  description: 'Ride a super dangerous unicycle. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '6, quai de Gesvres 75004 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

tractor = Ride.create(
  name: 'Tractor',
  category: 'Unusual vehicles',
  description: 'Ride a super dangerous unicycle. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '6, quai Watier 78400 Chatou',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

barge = Ride.create(
  name: 'Barge',
  category: 'Unusual vehicles',
  description: 'Ride a super dangerous unicycle. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '6, rue du Delta 75009 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

sidecar = Ride.create(
  name: 'Sidecar',
  category: 'Unusual vehicles',
  description: 'Ride a super dangerous unicycle. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '6, rue du Montparnasse 75006 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

tuktuk = Ride.create(
  name: 'Tuk-Tuk',
  category: 'Unusual vehicles',
  description: 'Ride a super dangerous unicycle. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '2, rue de Viarmes 75001 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample
)

rocket = Ride.new(
  name: 'Super Rocket',
  category: 'Unusual vehicles',
  description: 'Ride a super dangerous unicycle. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '2, rue de la fontaine au roi 75011 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
)

rocket.photo.attach(io: URI.open("https://product-image.juniqe-production.juniqe.com/media/catalog/product/seo-cache/x800/642/28/642-28-301X__CENTER/Rocket-Paul-Fuentes-Impression-sur-toile.jpg"), filename: "rocket.png", content_type: 'image/png')
rocket.save



puts 'finished !!'
