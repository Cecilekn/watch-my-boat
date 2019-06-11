class Booking < ApplicationRecord
  belongs_to :boat
  belongs_to :package
  has_many :tasks, dependent: :destroy
  has_many :pictures, dependent: :destroy

  validates :date, presence: true

  monetize :amount_cents
end
