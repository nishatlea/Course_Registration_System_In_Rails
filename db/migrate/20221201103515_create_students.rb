class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :fathers_name
      t.string :mothers_name
      t.string :email
      t.string :mobile
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
