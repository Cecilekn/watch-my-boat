class Package < ApplicationRecord
  has_many :items
  has_many :bookings
end
