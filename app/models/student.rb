class Student < ApplicationRecord
  belongs_to :user
  has_many :semester_curricula
  has_many :enrolls , through: :semester_curricula
  mount_uploader :image, ImageUploader
  # require 'carrierwave/orm/activerecord'
end
