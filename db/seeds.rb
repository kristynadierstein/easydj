# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rental.destroy_all if Rails.env.development?
Item.destroy_all if Rails.env.development?





speaker = Item.create!(
  location: "Montreal - Laval",
  name: "Great Powerfull Speaker",
  description: "Set of 2 speakers Yamaha great for garden party super cool sound.",
  price: 10,
  condition: "1 year old. Great condition. Small hole on the top from cigarette butt.",
  deposit: 100,
  image_url: "https://www.listeningpost.co.nz/assets/Yamaaha-NS-5000-Speakers-Pair_183108_5.jpg",
  delivery: "pick up at my place",
  policies: "if you break it or there is another hole from cigarette butt, you will buy me a new one"
)

dj_set = Item.create!(
  location: "Toronto",
  name: "Hercules DJ Control Inpulse 300",
  description: "DJ set for a weekend discotheque",
  price: 80,
  condition: "You get a perfect table to play your cool shit",
  deposit: 500,
  image_url: "https://images-na.ssl-images-amazon.com/images/I/514J8t-BCSL._SL1032_.jpg",
  delivery: "pick up at Toronto, Maple Leaves stadium",
  policies: "dont break it"
  )



