class RemoveColumnFromSemesterCurriculums < ActiveRecord::Migration[6.0]
  def change
    remove_column :semester_curriculums, :student_id
  end
end
