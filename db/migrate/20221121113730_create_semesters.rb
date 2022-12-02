class CreateSemesters < ActiveRecord::Migration[6.0]
  def change
    create_table :semesters do |t|
      t.string :semestername
      t.integer :semesterid
      t.text :description
      t.binary :current_semester
      t.references :user, null: false, foreign_key: true


      t.timestamps
    end
  end
end
