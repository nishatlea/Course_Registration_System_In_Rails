class Semester < ApplicationRecord
  belongs_to :user
  has_many :semester_curricula
  has_many :enrolls , through: :semester_curricula
end
