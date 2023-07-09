require 'faker'
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
        image_url: Faker::LoremFlickr.image(size: "200x200", search_terms: ['food'])
      )
    end
  end
end

# Generate 10 room records
10.times do
  Room.create(
    room_name: Faker::Lorem.word,
    room_description: Faker::Lorem.sentence,
    room_price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
    is_booked: Faker::Boolean.boolean
  )
end

# Generate 5 booking records
5.times do
  customer = Customer.order(Arel.sql('RANDOM()')).first
  Booking.create!(
    user_name: Faker::Name.name,
    room_id: Room.pluck(:id).sample,
    check_in_date: Faker::Date.between(from: Date.today, to: Date.today + 30),
    check_out_date: Faker::Date.between(from: Date.today + 31, to: Date.today + 60)
  )
end
#Booking.create(
 # customer_id: 3,
  #room_id: 64,
  #check_in_date: Faker::Date.between(from: Date.today, to: Date.today + 30),
  #check_out_date: Faker::Date.between(from: Date.today + 31, to: Date.today + 60)
#)
#Booking.destroy_all
# Generate 5 booking records
#5.times do
  #customer = Customer.order(Arel.sql('RANDOM()')).first
 # Booking.create(
  #  customer_id: Customer.pluck(:id).sample,
   # room_id: Room.pluck(:id).sample,
    #check_in_date: Faker::Date.between(from: Date.today, to: Date.today + 30),
    #check_out_date: Faker::Date.between(from: Date.today + 31, to: Date.today + 60)
  #)
#end
CustomerService.destroy_all

  CustomerService.create(
    customer_id: 3,
    service_id: 17,
    request_date: Faker::Date.between(from: Date.today, to: Date.today + 30),
    quantity: Faker::Number.between(from: 1, to: 5)
  )