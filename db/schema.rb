# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_28_075348) do

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "job_role"
    t.decimal "salary"
    t.decimal "insentive"
    t.string "sex"
    t.datetime "hire_date", precision: 6
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "department_id", null: false
    t.index ["department_id"], name: "index_employees_on_department_id"
  end

  create_table "managers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "department_id", null: false
    t.integer "Employee_id", null: false
    t.index ["Employee_id"], name: "index_managers_on_Employee_id"
    t.index ["department_id"], name: "index_managers_on_department_id"
  end

  create_table "records", force: :cascade do |t|
    t.string "contact_no"
    t.string "email"
    t.date "birth_date"
    t.string "qualificatiion"
    t.date "joining_date"
    t.date "resigning_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "Employee_id", null: false
    t.index ["Employee_id"], name: "index_records_on_Employee_id"
  end

  add_foreign_key "employees", "departments"
  add_foreign_key "managers", "Employees"
  add_foreign_key "managers", "departments"
  add_foreign_key "records", "Employees"
end
