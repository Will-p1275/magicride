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
  user: users.sample,
  photo: 'https://www.superprof.fr/blog/wp-content/uploads/2021/03/dessin-illustration-licorne.jpg'
)

dragon = Ride.create(
  name: 'Dragon Fire',
  category: 'Magical Creatures',
  description: 'Ride a scary dragon. If you like taking risks you can tickle Dragon Fire to make him spit fire.',
  address: '12, rue Oberkampf 75011 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://m.media-amazon.com/images/I/61+FHcqEOYL.jpg'
)

troll = Ride.create(
  name: 'Troll Out',
  category: 'Magical Creatures',
  description: 'Ride Trollout. On top of being completely crazy Troll Out knows how to fight. So bring him with you if you want to make a walk in dangerous lands.',
  address: '50, rue Robespierre 93100 Montreuil',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://p.turbosquid.com/ts-thumb/Qv/Vx9E3b/LO/p2.jpgdff35091b4d14345a606d2f18e4d47d1zoom/jpg/1651332373/600x600/fit_q87/16ce572e89a392623925200466eb8a6bc4c5c82d/p2.jpgdff35091b4d14345a606d2f18e4d47d1zoom.jpg'
)

ninjaTurtle = Ride.create(
  name: 'Greeny Ninja Turle',
  category: 'Magical Creatures',
  description: 'Ride Turtle Ninja Greeny. Greeny is a true clone from the tv-series. It has been created and brought to life by a scientist expert in creating magical creatures from movies and tv-series.',
  address: '50, avenue Pasteur 93100 Montreuil',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://fr.web.img6.acsta.net/newsv7/20/07/01/12/28/1133031.jpg'
)

werewolf = Ride.create(
  name: 'Werewolf',
  category: 'Magical Creatures',
  description: 'Ride Werewolf, one of the most iconic creature of all times. Werefolf can be ride only one night per month during moonlight.',
  address: '50, avenue Pasteur 93100 Montreuil',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://static.wikia.nocookie.net/underworld/images/5/59/Kiki.jpg/revision/latest?cb=20110215181201&path-prefix=fr'
)

sombral = Ride.create(
  name: 'Sombral Sad',
  category: 'Magical Creatures',
  description: 'Sombral can be seen by people who have seen the death or felt it from an emotional perspective. If you are un this case, ride this so sad but so gentle creature.',
  address: '18, rue Robespierre 93100 Montreuil',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://static.wikia.nocookie.net/harrypotter/images/6/6c/Sombral_2.jpg/revision/latest/scale-to-width-down/799?cb=20100122210256&path-prefix=fr'
)

totoro = Ride.create(
  name: 'Totoro',
  category: 'Magical Creatures',
  description: 'Totoro looks like a mix of a gigantic panda and cat. He is the spirit of the oldest country from Japan and he loves to ride its guests through the airs.',
  address: '25, avenue de la providence 92160 Antony',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://cdn.suwalls.com/wallpapers/anime/my-neighbor-totoro-27257-1920x1080.jpg'
)

noface = Ride.create(
  name: 'NoFace',
  category: 'Magical Creatures',
  description: 'NoFace will ride you wherever you want in his almost unvisible state.',
  address: '48, avenue de wagram 75017 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf8G-SqaVPoC8C4ZTucYEoYpjA1XnVvKVqNA&usqp=CAU'
)

hedwige = Ride.create(
  name: 'Howl Hedwige',
  category: 'Magical Creatures',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ornare arcu dui vivamus arcu felis bibendum. Adipiscing tristique risus nec feugiat in fermentum posuere urna nec.',
  address: '5, rue de la Durance 75012 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://focus.courrierinternational.com/2022/02/05/0/0/1364/588/1280/0/60/0/013ba7c_1644060202638-hedwige.jpg'
)

nazgul = Ride.create(
  name: 'Nazgul',
  category: 'Magical Creatures',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '25, rue de la Seine 75006 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://i.pinimg.com/550x/5c/1b/2b/5c1b2b7748bf1a7f943c351eab636f3b.jpg'
)

superDestroyer = Ride.create(
  name: 'Super Destroyer Executor',
  category: 'Spaceships',
  description: 'Ride a super stellar Destroyer the most beautiful starship in ze universe. It goes super fast and you will be able to join Venus in less than 10 hours.',
  address: '58, avenue Parmentier 75011 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://static.wikia.nocookie.net/frstarwars/images/3/30/Executor_BF2.png/revision/latest?cb=20210516202820'
)

snowspeeder = Ride.create(
  name: 'Snowspeeder',
  category: 'Spaceships',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '5, rue de Rivoli 75004 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://c-3d.niceshops.com/upload/image/product/large/default/12330_fb2b67f9.jpg'
)

awing = Ride.create(
  name: 'A-Wing RZ-1',
  category: 'Spaceships',
  description: 'Ride an A-Wing RZ-1. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '10, avenue des Champs-Elysées 75008 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://static.wikia.nocookie.net/frstarwars/images/7/7a/A-Wing_RZ-2_BF2.png/revision/latest?cb=20171203154741'
)

nebulon = Ride.create(
  name: 'Nebulon-B Fregate',
  category: 'Spaceships',
  description: 'Ride a Nebulon-B Fregate. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '12, rue du champs de mars 75007 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://lumiere-a.akamaihd.net/v1/images/nebulon-b-frigate_dce53bc2.jpeg?region=0%2C0%2C1181%2C664&width=960'
)

constellation = Ride.create(
  name: 'Constellation',
  category: 'Spaceships',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '42, rue Charcot 75013 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://static.wikia.nocookie.net/startrek/images/9/95/StargazerReunion.jpg/revision/latest?cb=20180422014342'
)

republic = Ride.create(
  name: 'Republic',
  category: 'Spaceships',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '42, rue Madame 75006 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/135cb28c-5b2b-4d6f-8715-e938fd4de8b2/de75att-969f0602-fe94-4d99-8ce8-db807c8cae14.png/v1/fill/w_1024,h_576,q_80,strp/star_trek__republic_class_federation_starship_by_stingra_de75att-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzEzNWNiMjhjLTViMmItNGQ2Zi04NzE1LWU5MzhmZDRkZThiMlwvZGU3NWF0dC05NjlmMDYwMi1mZTk0LTRkOTktOGNlOC1kYjgwN2M4Y2FlMTQucG5nIiwiaGVpZ2h0IjoiPD01NzYiLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS53YXRlcm1hcmsiXSwid21rIjp7InBhdGgiOiJcL3dtXC8xMzVjYjI4Yy01YjJiLTRkNmYtODcxNS1lOTM4ZmQ0ZGU4YjJcL3N0aW5ncmEtNC5wbmciLCJvcGFjaXR5Ijo5NSwicHJvcG9ydGlvbnMiOjAuNDUsImdyYXZpdHkiOiJjZW50ZXIifX0.n_qriX3IJR439DZFxNpOiQ-8O_oZC9KaH0LQ5fPVcrE'
)

enterprise = Ride.create(
  name: 'Enterprise',
  category: 'Spaceships',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '42, rue Jacob 75006 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://www.lemagducine.fr/wp-content/uploads/2014/06/Star-Trek-Enterprise-critique-series.jpg'
)

voyager = Ride.create(
  name: 'Voyager',
  category: 'Spaceships',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '5, rue Mabillon 75006 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://static.wikia.nocookie.net/memoryalpha/images/5/57/Voyager-arri%C3%A8re.jpg/revision/latest?cb=20070702161926&path-prefix=fr'
)

excalibur = Ride.create(
  name: 'Excalibur',
  category: 'Spaceships',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '18, rue de la gaité 75014 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://static.wikia.nocookie.net/stexpanded/images/a/a7/Excalibur.jpg/revision/latest?cb=20080327044217'
)

yorktown = Ride.create(
  name: 'Yorktown',
  category: 'Spaceships',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '18, rue Beaurepaire 75010 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://s3.amazonaws.com/files.enjin.com/305813/modules/wiki/34020820/USS_Yorktown_%2898300%29.png'
)

canoe = Ride.create(
  name: 'Canoe redspeed',
  category: 'Unusual vehicles',
  description: 'Ride Ze most beautiful canoe in the world. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '17, rue de varenne 75007 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://api.wbez.org/v2/images/5c1f164c-d15c-42ae-b94f-b992bf1f6006.jpg?width=1600&height=1066&mode=FILL'
)

balloon = Ride.create(
  name: 'Hot Air Ballon',
  category: 'Unusual vehicles',
  description: 'Ride an amazing hot air balloon. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '50, avenue Dausmenil 75012 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://media.smartbox.com/pim/1000001967971201770883.jpg'
)

unicycle = Ride.create(
  name: 'Unicycle ME',
  category: 'Unusual vehicles',
  description: 'Ride a super dangerous unicycle. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '30, avenue Corentin Cariou 75019 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://static.fnac-static.com/multimedia/Images/A3/A3/C4/2F/3130531-3-1520-2/tsp20201203164902/Monocycle-Qu-Ax-Luxus-20-Chrome.jpg'
)

carriage = Ride.create(
  name: 'Unicycle ME',
  category: 'Unusual vehicles',
  description: 'Ride a super dangerous unicycle. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '30, avenue Mathurin Moreau 75019 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://thumbs.dreamstime.com/z/carrosse-%C3%A0-cheval-vue-arri%C3%A8re-d-une-cal%C3%A8che-traditionnelle-de-l-%C3%A9poque-victorienne-ferm%C3%A9e-avec-deux-chevaux-noirs-sur-all%C3%A9e-161676204.jpg'
)

hangglider = Ride.create(
  name: 'Hang-Glider',
  category: 'Unusual vehicles',
  description: 'Ride a super dangerous unicycle. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '6, quai de Gesvres 75004 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://static.sciencelearn.org.nz/images/images/000/000/301/embed/FLT_LKC_ART_04_Hanggliders_HandGlider.jpg?1522293665'
)

tractor = Ride.create(
  name: 'Tractor',
  category: 'Unusual vehicles',
  description: 'Ride a super dangerous unicycle. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '6, quai Watier 78400 Chatou',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDOaN6-uk8mJbuucuQCDOnCDSHELWMRsDDSBbLNm4pidI1H_kXsyxW2PuNdYnm7p12nX4&usqp=CAU'
)

barge = Ride.create(
  name: 'Barge',
  category: 'Unusual vehicles',
  description: 'Ride a super dangerous unicycle. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '6, rue du Delta 75009 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://parispeniches.fr/wp-content/uploads/2020/08/peniche_albatros_img1-1.jpg'
)

sidecar = Ride.create(
  name: 'Sidecar',
  category: 'Unusual vehicles',
  description: 'Ride a super dangerous unicycle. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '6, rue du Montparnasse 75006 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://www.lac-annecy.com/cache/images/11855334_apidae-ficheGallery.jpg'
)

tuktuk = Ride.create(
  name: 'Tuk-Tuk',
  category: 'Unusual vehicles',
  description: 'Ride a super dangerous unicycle. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '2, rue de Viarmes 75001 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://c8.alamy.com/compfr/fj1g4g/tuk-tuk-taxis-lisbonne-portugal-fj1g4g.jpg'
)

rocket = Ride.create(
  name: 'Super Rocket',
  category: 'Unusual vehicles',
  description: 'Ride a super dangerous unicycle. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nibh praesent tristique magna sit amet purus gravida quis. Et pharetra pharetra massa massa ultricies. Suspendisse potenti nullam ac tortor. Leo integer malesuada nunc vel risus commodo. Volutpat odio facilisis mauris sit amet massa. Tristique nulla aliquet enim tortor at auctor urna nunc id. Adipiscing enim eu turpis egestas pretium aenean pharetra magna. Eu mi bibendum neque egestas congue quisque egestas. Purus semper eget duis at tellus at urna condimentum mattis. Dolor magna eget est lorem ipsum dolor sit amet consectetur. Non tellus orci ac auctor augue mauris augue neque. Bibendum est ultricies integer quis auctor elit sed. Tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra.',
  address: '2, rue de la fontaine au roi 75011 Paris',
  availability: true,
  price_per_day: rand(50..100),
  user: users.sample,
  photo: 'https://cdn.mos.cms.futurecdn.net/qTmvroik2NtHVGsfCHyyxF-1200-80.jpg'
)

puts 'finished !!'
