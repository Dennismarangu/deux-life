class Customer < ApplicationRecord

  has_many :bookings
  has_many :rooms, through: :bookings
  has_many :customer_services
  has_many :services, through: :customer_services

  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone, length: { maximum: 10 }
end
