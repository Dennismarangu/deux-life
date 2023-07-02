class Room < ApplicationRecord
  has_many :bookings
  has_many :customers, through: :bookings
end
