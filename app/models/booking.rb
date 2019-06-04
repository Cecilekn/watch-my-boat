class Booking < ApplicationRecord
  belongs_to :boat
  belongs_to :package
  has_many :tasks, dependent: :destroy
  has_many :pictures, dependent: :destroy

  STATUS = ["En attente de validation", "A venir", "En cours", "Réalisé", "Suspendu"]
  validates :date, :status, presence: true
  validates :status, inclusion: { in: STATUS }
end
