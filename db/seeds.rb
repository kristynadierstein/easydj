# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rental.destroy_all
Item.destroy_all
User.destroy_all


peter_pan = User.create!(
  first_name: "Peter",
  last_name: "Peterson",
  username: "peter_pan",
  email: "peter_pan@fairy.com",
  password: "user_peter_pan",
  remote_photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/quaaqkoxit0ddk7pdupp.jpg"
  )

cindy = User.create!(
  first_name: "Cinderella",
  last_name: "The Princess",
  username: "Cindy",
  email: "cindy@swamp.cz",
  password: "user_cindy",
  remote_photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/rowb3acggdlhtsgzaafs.jpg")


speaker = Item.create!(
  location: "Montreal - Laval",
  name: "Great Powerfull Speaker",
  description: "Set of 2 speakers Yamaha, great for garden party, super cool sound.",
  price: 10,
  condition: "1 year old. Great condition. Small hole on the top from cigarette butt.",
  deposit: 100,
  remote_photo_url: "https://www.listeningpost.co.nz/assets/Yamaaha-NS-5000-Speakers-Pair_183108_5.jpg",
  delivery: "pick up at my place",
  policies: "if you break it or there is another hole from cigarette butt, you will buy me a new one",
  user_id: peter_pan.id,
  start_date:"2019-06-23",
  end_date: "2019-06-27"
)
speaker = Item.create!(
  location: "Le Plateau-Mont Royal",
  name: "Rockville GB1 Portable Powered PA System with Mixer Plus Speakers Plus Stands Plus Mic DJ Package",
  description: "Rockville gb1 gig-in-a-box portable pa system mixer/amp plus speakers plus stands plus mic plus case 600 watts (300 x 2 channel) 7 combination XLR 1/4-inch inputs Bluetooth.",
  price: 200,
  condition: "5 year old. Great condition.",
  deposit: 500,
  remote_photo_url: "https://www.picclickimg.com/d/l400/pict/303069431753_/Rockville-RPG082K-Dual-8-Powered-PA-System-Speakers-Bluetooth-Mic-Stands-Mixer.jpg",
  delivery: "pick up at my place",
  policies: "if you spill water the deposit will be gone",
  user_id: peter_pan.id,
  start_date:"2019-06-23",
  end_date: "2019-06-27"
)
speaker = Item.create!(
  location: "Montreal",
  name: "DJ Equipment Packages - Portable Pa",
  description: "Speakers+Denon MC6000 Controller+Headphones+Stands +Facade+Mic.",
  price: 150,
  condition: "4 year old. Ok condition. Headphones fairly worn a",
  deposit: 300,
  remote_photo_url: "https://i.ebayimg.com/00/s/MTQ4MFgxNjAw/z/29UAAOSwVKhcc8QO/$_1.JPG",
  delivery: "drop off at your place",
  policies: "missing cables will result in a fee of $10",
  user_id: cindy.id,
  start_date:"2019-06-27",
  end_date: "2019-06-30"
)
speaker = Item.create!(
  location: "Montreal - Laval",
  name: "RELOOP RMP 2,5 alpha platine dj",
  description: "RELOOP RMP-2 RMP 2 CD PLAYER DJ MP3 USED with ORIGINAL BOX NO USB.",
  price: 50,
  condition: "3 years old. fair condition.",
  deposit: 150,
  remote_photo_url: "https://www.picclickimg.com/d/l400/pict/303097138201_/RELOOP-RMP-2-RMP-2-CD-PLAYER-DJ-MP3.jpg",
  delivery: "pick up at my place, or drop off available",
  policies: "if you break I will ask for all the deposit",
  user_id: peter_pan.id,
  start_date:"2019-07-2",
  end_date: "2019-07-4"
)
speaker = Item.create!(
  location: "Montreal - Laval",
  name: "VG used MXL 990 / 991 condenser microphone kit",
  description: "This kit is used in very good condition. Physically, the mics look great
  in person, with a couple of very light scratches that can only be seen from a very close distance.
  Electronically, the mics work perfectly and sound very good. This kit includes both
  the 990 and 991 microphones, mic clips for each mic, and plastic carrying case as pictured..",
  price: 90,
  condition: "1 year old. Great condition.",
  deposit: 300,
  remote_photo_url: "https://sc02.alicdn.com/kf/HTB1DOo4QpXXXXa5XpXXq6xXFXXXQ.jpg",
  delivery: "drop off",
  policies: "Be careful with the lose the mic clips for each mic, and plastic carrying case as pictured.",
  user_id: cindy.id,
  start_date:"2019-06-24",
  end_date: "2019-07-10"
)
speaker = Item.create!(
  location: "Montreal - Laval",
  name: "Chauvet DJ Rotosphere Q3 Mirror Ball Type Effect",
  description: "About Chauvet DJ Rotosphere Q3 RGBW LED Mirror Ball Simulator Effect Rotosphere Q3 is an easy to use mirror ball simulator with high-power, quad-color LEDs. 3 LED zones emit up to 3 different colors simultaneously and slow rotation speed creates a romantic atmosphere.",
  price: 50,
  condition: "3 year old. Great condition.",
  deposit: 300,
  remote_photo_url: "https://www.avshop.ca/bmz_cache/6/6d5d19749a728ff14221ac1d4d924160.image.500x500.jpg",
  delivery: "pick up at my place, or drop off",
  policies: "do not spill water",
  user_id: cindy.id,
  start_date:"2019-06-23",
  end_date: "2019-06-27"
)

dj_set = Item.create!(
  location: "Toronto",
  name: "Hercules DJ Control Inpulse 300",
  description: "DJ set for a weekend discotheque",
  price: 80,
  condition: "You get a perfect table to play your cool shit",
  deposit: 500,
  remote_photo_url: "https://images-na.ssl-images-amazon.com/images/I/514J8t-BCSL._SL1032_.jpg",
  delivery: "pick up at Toronto, Maple Leaves stadium",
  policies: "dont break it",
  user_id: cindy.id,
  start_date:"2019-06-25",
  end_date: "2019-06-27"
  )
dj_set = Item.create!(
  location: "Toronto",
  name: "Pro FOGGER SMOKE MACHINE & Remote Party Stage - 1000W 3000 cu.Ft/pre used.",
  description: "Pro FOGGER SMOKE MACHINE & Remote Party Stage - 1000W 3000 cu.Ft/pre used . Condition is Used. Shipped with USPS First Class Package.",
  price: 80,
  condition: "You get a perfect table to play your cool shit",
  deposit: 150,
  remote_photo_url: "https://www.picclickimg.com/d/l400/pict/303087541976_/Pro-FOGGER-SMOKE-MACHINE-Remote-Party-Stage.jpg",
  delivery: "pick up at Toronto, Maple Leaves stadium",
  policies: "dont break it",
  user_id: cindy.id,
  start_date:"2019-06-25",
  end_date: "2019-06-27"
  )
dj_set = Item.create!(
  location: "Toronto",
  name: "SP1. Vocal Recording and Processing.",
  description: "To record the vocals, I set up a stand in the vocal booth of the recording studio with one AKG 414 mic, facing towards me, set to the cardiod polar pattern.",
  price: 50,
  condition: "Fairly Used",
  deposit: 100,
  remote_photo_url: "https://jeru100.files.wordpress.com/2010/11/vox-mic1.jpg",
  delivery: "pick up at Toronto, Maple Leaves stadium",
  policies: "dont break it",
  user_id: cindy.id,
  start_date:"2019-06-25",
  end_date: "2019-06-27"
  )

# random_a = Rental.create!(
#   status: "pending",
#   user_id: peter_pan.id,
#   item_id: dj_set.id,
#   start_date:"2019-06-25",
#   end_date: "2019-06-26"
#   )

# random_b = Rental.create!(
#   status: "approved",
#   user_id: cindy.id,
#   item_id: speaker.id,
#   start_date:"2019-06-26",
#   end_date: "2019-06-27"
#   )

