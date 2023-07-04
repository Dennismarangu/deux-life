class Room < ApplicationRecord
  has_many :bookings
  has_many :customers, through: :bookings

  validates :is_booked, inclusion: { in: [true, false] }
end
