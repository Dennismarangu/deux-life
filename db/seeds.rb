require 'faker'

dennis/service
# Create restaurant-food services
restaurant_food_categories = ['Food Menu']
restaurant_food_categories.each do |category|
['Breakfast', 'Lunch', 'Dinner'].each do |meal|
5.times do
Service.create!(
service_name: "#{category} - #{meal} - #{Faker::Food.dish}",
service_cost: Faker::Number.decimal(l_digits: 2),
service_description: Faker::Food.description,
head_of_service: Faker::Name.name,
image_url: Faker::LoremPixel.image(size: "200x200", is_gray: false)
)
end
end
end

# Create other services
other_categories = ['Transport', 'Cinema', 'Recreational Amenities']
other_categories.each do |category|
case category
when 'Transport'
service_description = 'Order an exclusive hotel cab to transport you anywhere you need to be.'
when 'Cinema'
service_description = 'Enjoy a movie screening experience with a variety of films to choose from.'
else
service_description = Faker::Lorem.sentence(word_count: 10)
end

Service.create!(
service_name: "#{category} - #{Faker::Lorem.word}",
service_cost: Faker::Number.decimal(l_digits: 2),
service_description: service_description,
head_of_service: Faker::Name.name,
image_url: Faker::LoremPixel.image(size: "200x200", is_gray: false)
)
end

# Create specific recreational amenities
recreational_amenities = [
{
name: 'Tennis Courts',
description: 'Enjoy a game of tennis on our well-maintained courts.',
},
{
name: 'Spa Services',
description: 'Indulge in a relaxing spa experience with our professional therapists.',
},
{
name: 'Swimming Pools',
description: 'Take a refreshing swim in our sparkling pools.',
},
{
name: '24-hour Fitness Centers',
description: 'Stay active and fit with our state-of-the-art fitness facilities.',
}
]

recreational_amenities.each do |amenity|
Service.create!(
service_name: "Recreational Amenities - #{amenity[:name]}",
service_cost: Faker::Number.decimal(l_digits: 2),
service_description: amenity[:description],
head_of_service: Faker::Name.name,
image_url: Faker::LoremPixel.image(size: "200x200", is_gray: false)
)
=======
# Generate 10 room records
10.times do
  Room.create(
    room_name: Faker::Lorem.word,
    room_description: Faker::Lorem.sentence,
    room_price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
    is_booked: Faker::Boolean.boolean
  )
main
end

5.times do
  Booking.create!(
    user_name: Faker::Name.name,
    room_id: Room.pluck(:id).sample,
    check_in_date: Faker::Date.between(from: Date.today, to: Date.today + 30),
    check_out_date: Faker::Date.between(from: Date.today + 31, to: Date.today + 60)
  )
end
