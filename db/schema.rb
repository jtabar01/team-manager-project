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

ActiveRecord::Schema.define(version: 20161111203454) do

  create_table "email_addresses", force: :cascade do |t|
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jerseys", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "team_id"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_jerseys_on_person_id"
    t.index ["team_id"], name: "index_jerseys_on_team_id"
  end

  create_table "organization_teams", force: :cascade do |t|
    t.integer  "organization_id"
    t.integer  "team_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["organization_id"], name: "index_organization_teams_on_organization_id"
    t.index ["team_id"], name: "index_organization_teams_on_team_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "gender"
    t.integer  "height_in_inches"
    t.integer  "weight_in_pounds"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "people_roles", id: false, force: :cascade do |t|
    t.integer "person_id"
    t.integer "role_id"
    t.index ["person_id", "role_id"], name: "index_people_roles_on_person_id_and_role_id"
  end

  create_table "person_email_addresses", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "email_address_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["email_address_id"], name: "index_person_email_addresses_on_email_address_id"
    t.index ["person_id"], name: "index_person_email_addresses_on_person_id"
  end

  create_table "person_phones", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "phone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_person_phones_on_person_id"
    t.index ["phone_id"], name: "index_person_phones_on_phone_id"
  end

  create_table "person_postal_addresses", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "postal_address_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["person_id"], name: "index_person_postal_addresses_on_person_id"
    t.index ["postal_address_id"], name: "index_person_postal_addresses_on_postal_address_id"
  end

  create_table "phones", force: :cascade do |t|
    t.string   "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "postal_addresses", force: :cascade do |t|
    t.string   "street_line_1"
    t.string   "street_line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "age_group"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
