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

ActiveRecord::Schema.define(version: 20181214172317) do

  create_table "administrators", force: :cascade do |t|
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apostilles", force: :cascade do |t|
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "filename"
    t.string "content_type"
    t.binary "data"
    t.integer "subject_id"
    t.index ["subject_id"], name: "index_apostilles_on_subject_id"
  end

  create_table "archives", force: :cascade do |t|
    t.string "description"
    t.integer "tipo"
    t.string "filename"
    t.string "content_type"
    t.binary "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subject_id"
    t.integer "tipo"
    t.string "filename"
    t.string "content_type"
    t.binary "data"
    t.index ["subject_id"], name: "index_materials_on_subject_id"
  end

  create_table "matriculas", force: :cascade do |t|
    t.string "name"
    t.date "birth_date"
    t.string "cpf"
    t.string "phone"
    t.string "cell_phone"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "scholarship_need"
    t.string "email"
    t.string "classe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rg"
    t.string "lugar_escolaridade"
    t.string "escolaridade"
    t.string "ano_escolaridade"
    t.string "custo_transporte"
    t.string "tempo_transporte"
    t.string "acesso_internet"
    t.string "declaracao_cor"
    t.string "declaracao_sexo"
    t.string "declaracao_trans"
    t.string "egresso"
    t.string "refugiado"
  end

  create_table "notices", force: :cascade do |t|
    t.string "title", null: false
    t.text "notice_text", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "rg"
    t.string "numero_matricula"
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
