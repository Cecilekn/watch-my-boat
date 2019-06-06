class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :owned_boats, class_name: 'Boat', foreign_key: 'owner_id', dependent: :destroy
  has_many :managed_boats, class_name: 'Boat', foreign_key: 'manager_id', dependent: :nullify
  has_many :managed_providers, class_name: 'Provider', foreign_key: 'manager_id'

  validates :first_name, :last_name, :phone_number, :email, :address, :photo, presence: true
  validates :email, uniqueness: true
  scope :manager, -> { where(manager: true) }
end
