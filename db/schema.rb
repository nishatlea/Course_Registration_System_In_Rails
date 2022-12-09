# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_12_09_082819) do

  create_table "curriculums", force: :cascade do |t|
    t.string "coursename"
    t.integer "courseid"
    t.text "description"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_curriculums_on_user_id"
  end

  create_table "enrolls", force: :cascade do |t|
    t.integer "student_id"
    t.integer "semester_id"
    t.integer "curriculum_id"
    t.integer "grade"
    t.integer "semester_curriculums_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["semester_curriculums_id"], name: "index_enrolls_on_semester_curriculums_id"
  end

  create_table "semester_curriculums", force: :cascade do |t|
    t.integer "semester_id", null: false
    t.integer "curriculum_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "student_id"
    t.index ["curriculum_id"], name: "index_semester_curriculums_on_curriculum_id"
    t.index ["semester_id"], name: "index_semester_curriculums_on_semester_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.string "semestername"
    t.integer "semesterid"
    t.text "description"
    t.binary "current_semester"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_semesters_on_user_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "fathers_name"
    t.string "mothers_name"
    t.string "email"
    t.string "mobile"
    t.string "image"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "is_admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "curriculums", "users"
  add_foreign_key "enrolls", "semester_curriculums", column: "semester_curriculums_id"
  add_foreign_key "semester_curriculums", "curriculums"
  add_foreign_key "semester_curriculums", "semesters"
  add_foreign_key "semesters", "users"
  add_foreign_key "students", "users"
end
