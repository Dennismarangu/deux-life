require 'faker'

# Generate 10 room records
10.times do
  Room.create(
    room_name: Faker::Lorem.word,
    room_description: Faker::Lorem.sentence,
    room_price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
    is_booked: Faker::Boolean.boolean
  )
end
