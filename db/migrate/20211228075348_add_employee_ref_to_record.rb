class AddEmployeeRefToRecord < ActiveRecord::Migration[7.0]
  def change
    add_reference :records, :Employee, null: false, foreign_key: true
  end
end
