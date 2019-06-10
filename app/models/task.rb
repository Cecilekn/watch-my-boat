class Task < ApplicationRecord
  belongs_to :provider
  belongs_to :booking
  belongs_to :item
  belongs_to :manager, class_name: 'User', optional: true
end
