require "faker"

Category.delete_all
Event.delete_all
Profile.delete_all
User.delete_all

miriam = User.create!(
  email: "miriam@hubup.com",
  password: "abcd1234",
)

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
  user: miriam
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
    name: Faker::Company.buzzword,
    description: Faker::Company.bs,
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
