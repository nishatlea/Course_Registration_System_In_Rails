class SemesterCurriculum < ApplicationRecord
  belongs_to :semester
  belongs_to :curriculum
  belongs_to :student
  belongs_to :enroll

end
