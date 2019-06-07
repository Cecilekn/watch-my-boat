class Package < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :services, through: :items
  belongs_to :dimension, optional: true
  belongs_to :category, optional: true

  validates :kind, inclusion: { in: ["abonnement", "offre", "autre"] }
end
