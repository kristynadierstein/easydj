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

puts "creating user..."
peter_pan = User.create!(
  first_name: "Peter",
  last_name: "Peterson",
  username: "peter_pan",
  email: "peter_pan@fairy.com",
  password: "user_peter_pan",
  remote_photo_url: "https://res.cloudinary.com/dgbyx82it/image/upload/v1558722969/photos/dj_jvpipc.jpg"
  )

cindy = User.create!(
  first_name: "Cinderella",
  last_name: "The Princess",
  username: "Cindy",
  email: "cindy@swamp.cz",
  password: "user_cindy",
  remote_photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/rowb3acggdlhtsgzaafs.jpg")

puts "creating items..."
speaker = Item.create!(
  location: "Montreal - Laval",
  name: "Powerfull Speaker",
  description: "Set of 2 speakers Yamaha, great for garden party, super cool sound.",
  price: 10,
  condition: "1 year old. Great condition. Small hole on the top from cigarette butt.",
  deposit: 100,
  remote_photo_url: "https://icdn2.digitaltrends.com/image/poster-for-5780497362001-720x720.jpg",
  delivery: "pick up at my place",
  policies: "if you break it or there is another hole from cigarette butt, you will buy me a new one",
  user_id: peter_pan.id,
  start_date:"2019-06-23",
  end_date: "2019-06-27"
)
mixer = Item.create!(
  location: "Le Plateau-Mont Royal",
  name: "Mixer Plus Speakers",
  description: "Rockville gb1 gig-in-a-box portable pa system mixer/amp plus speakers plus stands plus mic plus case 600 watts (300 x 2 channel) 7 combination XLR 1/4-inch inputs Bluetooth.",
  price: 200,
  condition: "5 year old. Great condition.",
  deposit: 500,
  remote_photo_url: "https://img.letgo.com/images/2e/1f/e5/a5/2e1fe5a5ec9a8f4b49d57862cc96dcf7.jpeg?impolicy=img_600",
  delivery: "pick up at my place",
  policies: "if you spill water the deposit will be gone",
  user_id: peter_pan.id,
  start_date:"2019-06-23",
  end_date: "2019-06-27"
)
mix_package = Item.create!(
  location: "Montreal",
  name: "DJ Equipment Pack",
  description: "Speakers+Denon MC6000 Controller+Headphones+Stands +Facade+Mic.",
  price: 150,
  condition: "4 year old. Ok condition. Headphones fairly worn a",
  deposit: 300,
  remote_photo_url: "https://images.unsplash.com/photo-1461784180009-21121b2f204c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
  delivery: "drop off at your place",
  policies: "missing cables will result in a fee of $10",
  user_id: cindy.id,
  start_date:"2019-06-27",
  end_date: "2019-06-30"
)
cd_player = Item.create!(
  location: "Montreal - Laval",
  name: "CD player",
  description: "RELOOP RMP-2 RMP 2 CD PLAYER DJ MP3 USED with ORIGINAL BOX NO USB.",
  price: 50,
  condition: "3 years old. fair condition.",
  deposit: 150,
  remote_photo_url: "https://images.unsplash.com/photo-1545855210-84c197e3b00f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1491&q=80",
  delivery: "pick up at my place, or drop off available",
  policies: "if you break I will ask for all the deposit",
  user_id: peter_pan.id,
  start_date:"2019-07-2",
  end_date: "2019-07-4"
)
microphone = Item.create!(
  location: "Montreal - Laval",
  name: "Microphone kit",
  description: "This kit is used in very good condition. Physically, the mics look great
  in person, with a couple of very light scratches that can only be seen from a very close distance.
  Electronically, the mics work perfectly and sound very good. This kit includes both
  the 990 and 991 microphones, mic clips for each mic, and plastic carrying case as pictured..",
  price: 90,
  condition: "1 year old. Great condition.",
  deposit: 300,
  remote_photo_url: "https://images.unsplash.com/photo-1525431301226-f824535d4953?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80",
  delivery: "drop off",
  policies: "Be careful with the lose the mic clips for each mic, and plastic carrying case as pictured.",
  user_id: peter_pan.id,
  start_date:"2019-06-24",
  end_date: "2019-07-10"
)
ball = Item.create!(
  location: "Montreal - Laval",
  name: "Mirror Ball",
  description: "About Chauvet DJ Rotosphere Q3 RGBW LED Mirror Ball Simulator Effect Rotosphere Q3 is an easy to use mirror ball simulator with high-power, quad-color LEDs. 3 LED zones emit up to 3 different colors simultaneously and slow rotation speed creates a romantic atmosphere.",
  price: 50,
  condition: "3 year old. Great condition.",
  deposit: 300,
  remote_photo_url: "https://images.unsplash.com/photo-1503218751919-1ea90572e609?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
  delivery: "pick up at my place, or drop off",
  policies: "do not spill water",
  user_id: cindy.id,
  start_date:"2019-06-23",
  end_date: "2019-06-27"
)

dj_set = Item.create!(
  location: "Toronto",
  name: "DJ set",
  description: "DJ set for a weekend discotheque",
  price: 80,
  condition: "You get a perfect table to play your cool shit",
  deposit: 500,
  remote_photo_url: "https://wingsofhopeinc.org/wp-content/uploads/2018/07/Manual-Mixer-Djm-600-Pioneer-Dj-Set-810x517.jpg",
  delivery: "pick up at Toronto, Maple Leaves stadium",
  policies: "dont break it",
  user_id: cindy.id,
  start_date:"2019-06-25",
  end_date: "2019-06-27"
  )
smoke = Item.create!(
  location: "Toronto",
  name: "Piano Keyboard",
  description: "Pro FOGGER SMOKE MACHINE & Remote Party Stage - 1000W 3000 cu.Ft/pre used . Condition is Used. Shipped with USPS First Class Package.",
  price: 80,
  condition: "You get a perfect table to play your cool shit",
  deposit: 150,
  remote_photo_url: "https://images.unsplash.com/photo-1522870389523-7e83c0065eaf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
  delivery: "pick up at Toronto, Maple Leaves stadium",
  policies: "dont break it",
  user_id: cindy.id,
  start_date:"2019-06-25",
  end_date: "2019-06-27"
  )
recorder = Item.create!(
  location: "Toronto",
  name: "Vocal Recording",
  description: "To record the vocals, I set up a stand in the vocal booth of the recording studio with one AKG 414 mic, facing towards me, set to the cardiod polar pattern.",
  price: 50,
  condition: "Fairly Used",
  deposit: 100,
  remote_photo_url: "https://images.unsplash.com/photo-1467196271131-42c8c8499d72?ixlib=rb-1.2.1&auto=format&fit=crop&w=1368&q=80",
  delivery: "pick up at Toronto, Maple Leaves stadium",
  policies: "dont break it",
  user_id: cindy.id,
  start_date:"2019-06-25",
  end_date: "2019-06-27"
  )

puts "creating rentals..."
random_a = Rental.create!(
  status: "pending",
  user_id: peter_pan.id,
  item_id: dj_set.id,
  start_date:"2019-06-25",
  end_date: "2019-06-26"
  )

random_b = Rental.create!(
  status: "confirmed",
  user_id: cindy.id,
  item_id: speaker.id,
  start_date:"2019-06-26",
  end_date: "2019-06-27"
  )

random_c = Rental.create!(
  status: "cancelled",
  user_id: cindy.id,
  item_id: mixer.id,
  start_date:"2019-06-26",
  end_date: "2019-06-27"
  )


random_d = Rental.create!(
  status: "confirmed",
  user_id: cindy.id,
  item_id: cd_player.id,
  start_date:"2019-06-26",
  end_date: "2019-06-27"
  )

random_e = Rental.create!(
  status: "confirmed",
  user_id: peter_pan.id,
  item_id: recorder.id,
  start_date:"2019-06-26",
  end_date: "2019-06-27"
  )

random_f = Rental.create!(
  status: "confirmed",
  user_id: peter_pan.id,
  item_id: smoke.id,
  start_date:"2019-06-26",
  end_date: "2019-06-27"
  )

puts "finished"
