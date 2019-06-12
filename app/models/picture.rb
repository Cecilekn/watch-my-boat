class Picture < ApplicationRecord
  belongs_to :booking
  mount_uploader :photo, PhotoUploader
end
