class RemoveColumnToSemesterCurriculums < ActiveRecord::Migration[6.0]
  def change
    remove_column :semester_curriculums, :grade
  end
end
