class Service < ApplicationRecord
  has_many :customer_services
  has_many :customers, through: :customer_services
end
