# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'


# 5.times do
#   user = User.new({
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     street_address: Faker::Address.street_address,
#     city: Faker::Address.city,
#     zipcode: Faker::Address.zip_code,
#     phone: Faker::PhoneNumber.cell_phone,
#     email: Faker::Internet.email,
#     password: Faker::Number.number(6),
#     about: Faker::Lorem.paragraphs,
#     photo: Faker::Avatar.image,
#   })
#   user.save!
# end


user_1 = User.new({
    first_name: "Pedro",
    last_name: "Andrade",
    street_address: "Duque Estrada, 41",
    city: "Rio de Janeiro",
    zipcode: "909090",
    phone: "(41) 9988 0733",
    email: "pedro@pedro.com",
    password: 123456,
    about: "Gifted in researching spit-takes in Deltona, FL. Developed several new methods for analyzing junk food in Salisbury, MD. Practiced in the art of promoting Magic 8-Balls in the government sector.",
    remote_photo_url: "http://powellong.com/data/wallpapers/65/WDF_1102596.jpg",
  })

user_2 = User.new({
    first_name: "Maria Eduarda",
    last_name: "Magalhaes",
    street_address: "Francisco Sá, 5",
    city: "Rio de Janeiro",
    zipcode: "808080",
    phone: "(41) 8888 0553",
    email: "maria@maria.com",
    password: 123456,
    about: "Spent childhood getting to know carp with no outside help. Gifted in analyzing dandruff in Los Angeles, CA.",
    remote_photo_url: "http://widopublishing.com/wp-content/uploads/2013/01/Square-Profile-pic-2011edit.jpg",
  })

user_3 = User.new({
    first_name: "Alice",
    last_name: "Almeida",
    street_address: "Almirante Guilhem, 378",
    city: "Rio de Janeiro",
    zipcode: "308080",
    phone: "(41) 9888 0553",
    email: "alice@alice.com",
    password: 123456,
    about: "Spent the 80's lecturing about salsa in the UK. Spent childhood importing bongos in Washington, DC. Spent 2001-2007 importing wool in Los Angeles, CA.",
    remote_photo_url: "https://globalhealth.duke.edu/sites/default/files/styles/dghi_medium/public/profiles/nash_mepukori_student_profile_cropped.jpg?itok=XR2CoJon.jpg",
  })

user_4 = User.new({
    first_name: "Roberto",
    last_name: "Procópio",
    street_address: "Rua Humaitá, 275",
    city: "Rio de Janeiro",
    zipcode: "308080",
    phone: "(41) 9888 0553",
    email: "roberto@roberto.com",
    password: 123456,
    about: "Spent 2001-2007 consulting about toy planes for fun and profit. Prior to my current job I was building toy elephants for fun and profit.",
    remote_photo_url: "https://media.creativemornings.com/uploads/user/avatar/49419/Bechtel_Profile_Square.jpg",
  })

user_5 = User.new({
    first_name: "Caroline",
    last_name: "Arcement",
    street_address: "Place Georges-Pompidou",
    city: "Paris",
    zipcode: "308080",
    phone: "33 9888 0553",
    email: "carol@carol.com",
    password: 123456,
    about: "Spent the 80's lecturing about salsa in the UK. Spent childhood importing bongos in Washington, DC. Spent 2001-2007 importing wool in Los Angeles, CA.",
    remote_photo_url: "http://www.cl.cam.ac.uk/women/profile/mateja.JPG",
  })

user_6 = User.new({
    first_name: "Marie",
    last_name: "Cauchon",
    street_address: "2 Rue Palatine",
    city: "Paris",
    zipcode: "308080",
    phone: "33 9888 0553",
    email: "marie@marie.com",
    password: 123456,
    about: "Spent the 80's lecturing about salsa in the UK. Spent childhood importing bongos in Washington, DC. Spent 2001-2007 importing wool in Los Angeles, CA.",
    remote_photo_url: "http://img14.deviantart.net/fb93/i/2011/273/5/5/autumn_by_bionic_woman-d4be3b6.jpg",
  })

user_7 = User.new({
    first_name: "David",
    last_name: "Desper",
    street_address: "129 Rue de Grenelle",
    city: "Paris",
    zipcode: "308080",
    phone: "33 9888 0553",
    email: "david@david.com",
    password: 123456,
    about: "Spent the 80's lecturing about salsa in the UK. Spent childhood importing bongos in Washington, DC. Spent 2001-2007 importing wool in Los Angeles, CA.",
    remote_photo_url: "http://wp.production.patheos.com/blogs/thepangeablog/files/2011/12/Kurt-Profile-Image-Square-Brick-1024x1024.jpg",
  })

user_8 = User.new({
    first_name: "Bernard",
    last_name: "Deman",
    street_address: "17 Place du Trocadéro et du 11 Novembre",
    city: "Paris",
    zipcode: "308080",
    phone: "33 9888 0553",
    email: "bernard@bernard.com",
    password: 123456,
    about: "Spent the 80's lecturing about salsa in the UK. Spent childhood importing bongos in Washington, DC. Spent 2001-2007 importing wool in Los Angeles, CA.",
    remote_photo_url: "http://r.fod4.com/c=sq/s=w1000,pd1/o=80/http://p.fod4.com/p/channels/kuoiu/profile/s=w1200/o=95/Teq89AnQSNW2Vp5hwori_Phil_Augusta_Jackson.jpg",
  })

users = [user_1, user_2, user_3, user_4, user_5, user_6, user_7, user_8 ]

users.each do |user|
  user.save
  Sitter.new(user_id:user.id).save
end

