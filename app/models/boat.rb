class Boat < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :manager, class_name: 'User'
  belongs_to :owner, class_name: 'User'
  has_many :bookings, dependent: :destroy

  validates :name, :address, :photo, :category, :size, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
