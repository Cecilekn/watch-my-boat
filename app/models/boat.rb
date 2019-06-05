class Boat < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :manager, class_name: 'User'
  belongs_to :owner, class_name: 'User'
  has_many :bookings, dependent: :destroy

  CATEGORIES = ["Voilier", "Moteur"]
  SIZE = ["< 10m", "entre 10 et 20m", "> 20m"]

  validates :name, :address, :photo, :category, :size, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  validates :size, inclusion: { in: SIZE }
end
