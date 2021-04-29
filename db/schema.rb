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

ActiveRecord::Schema.define(version: 20210428005547) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alimentations", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "university_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["university_id"], name: "index_alimentations_on_university_id", using: :btree
  end

  create_table "campus", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.integer  "university_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["university_id"], name: "index_campus_on_university_id", using: :btree
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "difficulty"
    t.integer  "university_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["university_id"], name: "index_courses_on_university_id", using: :btree
  end

  create_table "student_entities", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "university_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["university_id"], name: "index_student_entities_on_university_id", using: :btree
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "occupation_area"
    t.integer  "university_id",   null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["university_id"], name: "index_teachers_on_university_id", using: :btree
  end

  create_table "universities", force: :cascade do |t|
    t.string   "name"
    t.string   "acronyn"
    t.string   "description"
    t.string   "condition"
    t.string   "dependency_name"
    t.string   "uf"
    t.date     "creation_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.integer  "university_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["university_id"], name: "index_users_on_university_id", using: :btree
  end

  add_foreign_key "alimentations", "universities"
  add_foreign_key "campus", "universities"
  add_foreign_key "courses", "universities"
  add_foreign_key "student_entities", "universities"
  add_foreign_key "teachers", "universities"
  add_foreign_key "users", "universities"
end
