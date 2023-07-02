class Customer < ApplicationRecord

  has_many :bookings
  has_many :rooms, through: :bookings
  has_many :customer_services
  has_many :services, through: :customer_services
end
