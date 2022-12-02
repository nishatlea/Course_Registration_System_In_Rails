class CreateCurriculums < ActiveRecord::Migration[6.0]
  def change
    create_table :curriculums do |t|
      t.string :coursename
      t.integer :courseid
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
