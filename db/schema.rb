# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150619174303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.string   "description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "clinics", force: :cascade do |t|
    t.string   "nome"
    t.string   "tipo_logradouro"
    t.string   "nome_logradouro"
    t.string   "numero_logradouro"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cep"
    t.string   "municipio"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "telefone_1"
    t.string   "telefone_2"
    t.string   "e_mail"
    t.string   "publico_atendido"
    t.string   "grupo_especifico"
    t.string   "qual_grupo_especifico"
    t.string   "sexo_do_publico"
    t.string   "modalidade"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "user_id"
    t.integer  "state_id"
  end

  add_index "clinics", ["state_id"], name: "index_clinics_on_state_id", using: :btree
  add_index "clinics", ["user_id"], name: "index_clinics_on_user_id", using: :btree

  create_table "drugs", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "drug_type"
    t.string   "origin"
    t.string   "average_ingest"
    t.string   "ingestion_form"
    t.string   "duration"
    t.string   "effect_high"
    t.string   "dependence_psychological"
    t.string   "dependence_phisical"
    t.string   "tolerance"
    t.string   "long_effects"
    t.string   "medical_use"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.float    "usage_percentage"
    t.float    "death_rate"
    t.float    "dependency_rate"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "parsers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "content"
    t.integer  "counter"
    t.boolean  "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "uf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testimonials", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.integer  "testimonial_authenticate"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "password_digest"
    t.integer  "level_user"
    t.integer  "user_authenticate"
    t.string   "solicit_association"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
