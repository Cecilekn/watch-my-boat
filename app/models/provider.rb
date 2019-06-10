class Provider < ApplicationRecord
  belongs_to :manager, class_name: 'User'
  has_many :tasks, dependent: :nullify
end
