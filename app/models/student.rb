class Student < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  # require 'carrierwave/orm/activerecord'
end
