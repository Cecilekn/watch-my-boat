class Boat < ApplicationRecord
  belongs_to :manager, class_name: 'User'
  belongs_to :owner, class_name: 'User'
  has_many :bookings, dependent: :destroy

  validates :name, :address, :photo, presence: true

  mount_uploader :photo, PhotoUploader
end
