require 'faker'

7.times do
  customer = Customer.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number,
    password: 'password',
    password_confirmation: 'password'
  )
  puts "Created customer with email: #{customer.email}"
end
