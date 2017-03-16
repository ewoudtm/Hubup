require 'faker'

Photo.delete_all
Category.delete_all
Event.delete_all
Profile.delete_all
User.delete_all



miriam = User.create!(
  email: "miriam@hubup.com",
  password: "abcd1234",
)

#photos
photo1 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489671699/2310969291_d4149e60db_o_uliiw2.jpg")
photo2 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489671699/5824862885_0e7c2dd835_b_hycly8.jpg")
photo3 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489671699/8493514125_9e36b12a64_b_jo2kl4.jpg")
photo4 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489671699/7474850234_6f220d249e_b_zwt5nh.jpg")
photo5 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489671698/5123265912_094e68529a_b_inggzy.jpg")
photo6 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489671698/9317661230_6df728381e_z_net1hf.jpg")
photo7 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489671698/6851047085_af9d084b08_b_nfkxy5.jpg")
photo8 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489671699/15781646439_e7266d9451_k_pdqjt5.jpg")
photo9 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489671698/5086325483_026545690c_b_qw7suo.jpg")


event = Event.create!(
  name: "Monthly Yoga Weekend",
  description: "Let's come together and practice some asanas together in the woods!",
  location: "Amsterdam",
  includes_food: false,
  includes_drinks: true,
  price: 10.00,
  starts_at: 10.days.from_now,
  ends_at: 12.days.from_now,
  capacity: 100,
  active: true,
  user: miriam,
  photos: [photo1, photo2, photo3]
)

theme = Category.create!([
  { name: "Movements" },
  { name: "Outdoors & Adventure" },
  { name: "Tech" },
  { name: "Family" },
  { name: "Health & Wellness" },
  { name: "Sports & Fitness" },
  { name: "Learning" },
  { name: "Photography" },
  { name: "Food & Drink" }
])

event = Event.find_by(name: "Monthly Yoga Weekend")
event.categories << Category.find_by(name: "Outdoors & Adventure")
event.categories << Category.find_by(name: "Sports & Fitness")


for i in 1..6 do
  first_name = Faker::Name.first_name
  user = User.create!(
  email: "#{first_name}@hubup.com",
  password: "abcd1234"
  )

  profile = Profile.create!(
  first_name: first_name,
  last_name: Faker::Name.last_name,
  bio: Faker::ChuckNorris.fact
  )

  for x in 1..(Faker::Number.between(2,4)) do
    event = Event.create!(
    name: Faker::Book.title,
    description: Faker::Lorem.paragraph,
    location: "Amsterdam",
    includes_food: false,
    includes_drinks: true,
    price: Faker::Commerce.price,
    starts_at: Date.today.next_day(Faker::Number.between(5,10)),
    ends_at: Date.today.next_day(Faker::Number.between(11,45)),
    capacity: (Faker::Number.between(1, 10))*5,
    active: true,
    user: user
    )

    event.categories << Category.find_by(name: "Outdoors & Adventure")
    event.categories << Category.find_by(name: "Sports & Fitness")

    # for y in 1..(Faker::Number.between(1, 3)) do
    #   event.categories << theme[Faker::Number.between(1, 9)]
    # end
    # Faker::Number.unique.clear
  end

end
