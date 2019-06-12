class Booking < ApplicationRecord
  belongs_to :boat
  belongs_to :package
  has_many :tasks, dependent: :destroy
  has_many :pictures, dependent: :destroy

  monetize :amount_cents
end
