class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :job_role
      t.decimal :salary
      t.decimal :insentive
      t.string :sex
      t.datetime :hire_date
      t.boolean :active

      t.timestamps
    end
  end
end
