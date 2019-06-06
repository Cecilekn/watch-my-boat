class Boat < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :manager, class_name: 'User', optional: true
  belongs_to :owner, class_name: 'User'
  has_many :bookings, dependent: :destroy

  CATEGORIES = ["Voilier", "Moteur"]
  SIZE = ["< 10m", "10-20m", "> 20m"]

  validates :name, :address, :photo, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :size, presence: true, inclusion: { in: SIZE }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
