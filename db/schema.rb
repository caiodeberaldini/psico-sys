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

ActiveRecord::Schema.define(version: 20181108003018) do

  create_table "administrators", force: :cascade do |t|
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apostilles", force: :cascade do |t|
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subjects_id"
    t.string "filename"
    t.string "content_type"
    t.binary "data"
    t.index ["subjects_id"], name: "index_apostilles_on_subjects_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subjects_id"
    t.integer "tipo"
    t.string "filename"
    t.string "content_type"
    t.binary "data"
    t.index ["subjects_id"], name: "index_materials_on_subjects_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name", null: false
    t.date "birth_date", null: false
    t.string "cpf", null: false
    t.string "phone"
    t.string "cell_phone", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.integer "scholarship", null: false
    t.integer "scholarship_need", null: false
    t.integer "situation", null: false
    t.string "email", null: false
    t.string "classe", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name", null: false
    t.date "birth_date", null: false
    t.string "cpf", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "phone"
    t.string "cell_phone", null: false
    t.string "disciplina", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "password_digest", null: false
    t.integer "papel", default: 0, null: false
    t.string "role_type"
    t.integer "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_type", "role_id"], name: "index_users_on_role_type_and_role_id"
  end

end
