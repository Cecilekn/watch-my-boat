class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :owned_boats, class_name: 'Boat', foreign_key: 'owner_id', dependent: :destroy
  has_many :managed_boats, class_name: 'Boat', foreign_key: 'manager_id'
  has_many :managed_providers, class_name: 'Provider', foreign_key: 'manager_id'

  validates :first_name, :last_name, :phone_number, :email, :photo, :address, presence: true
  validates :email, uniqueness: true
end
