class AddEmployeeRefToManager < ActiveRecord::Migration[7.0]
  def change
    add_reference :managers, :Employee, null: false, foreign_key: true
  end
end
