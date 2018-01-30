# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "employees", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", limit: 30
    t.string "designation", limit: 30
    t.integer "salary"
  end

  create_table "employees_projects", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "employee_id"
    t.integer "project_id"
    t.index ["employee_id"], name: "employee_id"
    t.index ["project_id"], name: "project_id"
  end

  create_table "projects", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "name", limit: 30
  end

  add_foreign_key "employees_projects", "employees", name: "employees_projects_ibfk_1"
  add_foreign_key "employees_projects", "projects", name: "employees_projects_ibfk_2"
end
