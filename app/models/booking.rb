class Booking < ApplicationRecord
  belongs_to :room

  validates :user_name, presence: true
  validates :check_in_date, presence: true
  validates :check_out_date, presence: true
end
