class CreateEnrolls < ActiveRecord::Migration[6.0]
  def change
    create_table :enrolls do |t|
      t.integer :student_id
      t.integer :semester_id
      t.integer :curriculum_id
      t.string :grade
      t.references :semester_curriculums, null: false, foreign_key: true

      t.timestamps
    end
  end
end
