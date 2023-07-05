require 'faker'

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