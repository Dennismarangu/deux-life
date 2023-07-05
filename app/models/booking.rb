class Booking < ApplicationRecord
  belongs_to :customer
  belongs_to :room

  validates :check_in_date, presence: true
  validates :check_out_date, presence: true
end
