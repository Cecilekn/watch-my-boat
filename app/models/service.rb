class Service < ApplicationRecord
  has_many :items, dependent: :destroy
end
