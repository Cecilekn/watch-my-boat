class Boat < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :manager, class_name: 'User', optional: true
  belongs_to :owner, class_name: 'User'
  belongs_to :dimension
  belongs_to :category
  has_many :bookings, dependent: :destroy

  validates :name, :address, :photo, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
