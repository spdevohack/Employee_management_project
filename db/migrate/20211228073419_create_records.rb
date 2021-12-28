class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.string :contact_no
      t.string :email
      t.date :birth_date
      t.string :qualificatiion
      t.date :joining_date
      t.date :resigning_date

      t.timestamps
    end
  end
end
