class ChangeColumnToEnrolls < ActiveRecord::Migration[6.0]
  def change
    change_column :enrolls, :grade, :integer
  end
end
