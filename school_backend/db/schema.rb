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

ActiveRecord::Schema.define(version: 2022_03_07_034852) do

  create_table "appointments", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "student_id"
    t.date "date"
    t.index ["student_id"], name: "index_appointments_on_student_id"
    t.index ["teacher_id"], name: "index_appointments_on_teacher_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "school_name"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "student_name"
    t.integer "age"
    t.string "gender"
    t.string "phone"
    t.boolean "active"
    t.integer "school_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "teacher_name"
    t.string "subject"
  end

end
