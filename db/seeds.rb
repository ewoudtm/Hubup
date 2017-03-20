require 'faker'

Registration.delete_all
Photo.delete_all
Category.delete_all
Event.delete_all
Profile.delete_all
User.delete_all

#users

miriam = User.create!(email: "miriam@hubup.com", password: "abcd1234")
danika = User.create!(email: "danika@hubup.com", password: "abcd1234")
jackson = User.create!(email: "jackson@hubup.com", password: "abcd1234")
walton = User.create!(email: "walton@hubup.com", password: "abcd1234")
derek = User.create!(email: "derek@hubup.com", password: "abcd1234")
vilma = User.create!(email: "vilma@hubup.com", password: "abcd1234")


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
photo10 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703379/8269076712_7149b8f73a_z_vutm7j.jpg")
photo11 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703379/5_small_business_tips_for_2013_lecn7l.jpg")
photo12 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703378/shakehands_rund_qscmru.jpg")
photo13 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703377/Sow_Cub_Love_bysdip.jpg")
photo14 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703376/girl-803934_640_kvlbme.jpg")
photo15 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703377/1e0cb106d8e756d2fc53398f1e46786f_cxf4cp.jpg")
photo16 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703379/Asia-Nepal-Himalayas-Mountains-Landscape_cially.jpg")
photo17 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703378/MG_4778_qq4tub.jpg")
photo18 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703375/Edge-of-Lost-World-MAG1_ktcy24.jpg")
photo19 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703374/DSC_0494_riohua.jpg")
photo20 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703377/lhotse_tludzz.jpg")
photo21 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703375/Above-the-Monsoon-MAG1_l9lxnf.jpg")
photo22 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703374/consider-Michael-Anderson-Thamserku-Towers-Boreal-Forest-Nepal_btsitp.jpg")
photo23 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703374/2048-1-1500x1000_thyoko.jpg")
photo24 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703374/tumblr_n2vq5wa2Qm1qf3gpdo1_1280_fdfybj.jpg")
photo25 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703374/amazing-animal-art-bear-Favim.com-2371936_bfbpis.jpg")
photo26 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703374/homeless_and_pets_1_ulh5ls.jpg")
photo27 = Photo.create(remote_image_url:"http://res.cloudinary.com/ewoudtm/image/upload/v1489703374/dog-photo-by-grace-chon_yuimh8.jpg")

#photos = [photo4, photo5, photo6, photo7, photo8, photo9, photo10, photo11, photo12, photo13, photo14, photo15, photo16, photo17, photo18, photo19, photo20, photo21, photo22, photo23, photo24, photo25, photo26, photo27, ]

event1 = Event.create!(
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

event2 = Event.create!(
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

event3 = Event.create!(
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

event4 = Event.create!(
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

event5 = Event.create!(
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



#themes

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






#photo_counter = 0

# for i in 1..5 do
#   first_name = Faker::Name.first_name
#   user = User.create!(
#   email: "#{first_name}@hubup.com",
#   password: "abcd1234"
#   )
#
#   profile = Profile.create!(
#   first_name: first_name,
#   last_name: Faker::Name.last_name,
#   bio: Faker::ChuckNorris.fact
#   )
#
#   for x in 1..2 do
#
#     event = Event.create!(
#     name: Faker::Book.title,
#     description: Faker::Lorem.paragraph,
#     location: "Amsterdam",
#     includes_food: false,
#     includes_drinks: true,
#     price: Faker::Commerce.price,
#     starts_at: Date.today.next_day(Faker::Number.between(5,10)),
#     ends_at: Date.today.next_day(Faker::Number.between(11,45)),
#     capacity: (Faker::Number.between(1, 10))*5,
#     active: true,
#     user: user
#     )
#     photo_counter += 1
#     event.photos << photos[photo_counter]
#     photo_counter += 1
#     event.photos << photos[photo_counter]
#     event.categories << Category.find_by(name: "Outdoors & Adventure")
#     event.categories << Category.find_by(name: "Sports & Fitness")
#
#     # for y in 1..(Faker::Number.between(1, 3)) do
#     #   event.categories << theme[Faker::Number.between(1, 9)]
#     # end
#     # Faker::Number.unique.clear
#   end

  ## bookings

  Registration.create(event: event2, user: danika, price: event.price, guest_count: 3)
  Registration.create(event: event3, user: miriam, price: event.price, guest_count: 1)
  Registration.create(event: event1, user: walton, price: event.price, guest_count: 2)
  Registration.create(event: event2, user: derek, price: event.price, guest_count: 1)
  Registration.create(event: event5, user: miriam, price: event.price, guest_count: 2)
