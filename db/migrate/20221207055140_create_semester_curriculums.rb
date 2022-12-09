class CreateSemesterCurriculums < ActiveRecord::Migration[6.0]
  def change
    create_table :semester_curriculums do |t|
      t.string :grade
      t.references :semester, null: false, foreign_key: true
      t.references :curriculum, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
