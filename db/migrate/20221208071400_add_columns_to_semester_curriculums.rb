class AddColumnsToSemesterCurriculums < ActiveRecord::Migration[6.0]
  def change
    add_column :semester_curriculums, :student_id, :integer
  end
end
