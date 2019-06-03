class Task < ApplicationRecord
  belongs_to :provider
  belongs_to :booking
  belongs_to :item
end
