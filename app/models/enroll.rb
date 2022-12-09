class Enroll < ApplicationRecord
  has_many :semester_curricula
  has_many :curricula, through: :semester_curricula
  has_many :semesters, through: :semester_curricula
  has_many :students, through: :semester_curricula
end
