class Item < ApplicationRecord
  belongs_to :package
  belongs_to :service
end
