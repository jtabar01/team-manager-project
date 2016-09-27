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

ActiveRecord::Schema.define(version: 20160927032106) do

  create_table "certifications", force: :cascade do |t|
    t.integer  "person_id_id"
    t.string   "certification_name"
    t.date     "expiration_date"
    t.text     "note"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["person_id_id"], name: "index_certifications_on_person_id_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.integer  "person_id_id"
    t.string   "coach_type"
    t.date     "coach_year_began"
    t.date     "coach_year_ended"
    t.integer  "coach_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["person_id_id"], name: "index_coaches_on_person_id_id"
  end

  create_table "emails", force: :cascade do |t|
    t.string   "email"
    t.integer  "person_id_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["person_id_id"], name: "index_emails_on_person_id_id"
  end

  create_table "event_property_maps", force: :cascade do |t|
    t.integer  "event_id_id"
    t.string   "key"
    t.string   "value"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["event_id_id"], name: "index_event_property_maps_on_event_id_id"
  end

  create_table "event_types", force: :cascade do |t|
    t.integer  "event_type_id"
    t.string   "type_description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "event_type_id"
    t.date     "event_datetime"
    t.integer  "team_id_id"
    t.integer  "created_by"
    t.boolean  "open_to_public"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["event_type_id"], name: "index_events_on_event_type_id"
    t.index ["team_id_id"], name: "index_events_on_team_id_id"
  end

  create_table "organization_teams", force: :cascade do |t|
    t.integer  "organization_id_id"
    t.integer  "team_id_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["organization_id_id"], name: "index_organization_teams_on_organization_id_id"
    t.index ["team_id_id"], name: "index_organization_teams_on_team_id_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.integer  "organization_id"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "parent_children", force: :cascade do |t|
    t.integer  "parent_id_id"
    t.integer  "child_id_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["child_id_id"], name: "index_parent_children_on_child_id_id"
    t.index ["parent_id_id"], name: "index_parent_children_on_parent_id_id"
  end

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "addr_route"
    t.string   "addr_city"
    t.string   "addr_state"
    t.integer  "addr_zip"
    t.string   "username"
    t.string   "pass_hash"
    t.string   "pass_salt"
    t.text     "bio"
    t.date     "birth_date"
    t.string   "gender"
    t.integer  "height_in_inches"
    t.integer  "weight_in_pounds"
    t.string   "shoe_size"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.string   "phone"
    t.integer  "person_id_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["person_id_id"], name: "index_phone_numbers_on_person_id_id"
  end

  create_table "player_statistics", force: :cascade do |t|
    t.integer  "player_id_id"
    t.string   "statistic_type"
    t.string   "statistic_value"
    t.date     "date_recorded"
    t.integer  "stat_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["player_id_id"], name: "index_player_statistics_on_player_id_id"
  end

  create_table "players", force: :cascade do |t|
    t.integer  "player_coach_id_id"
    t.integer  "player_jersey_id"
    t.date     "team_join_date"
    t.date     "team_left_date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["player_coach_id_id"], name: "index_players_on_player_coach_id_id"
  end

  create_table "team_people", force: :cascade do |t|
    t.integer  "person_id_id"
    t.integer  "team_id_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["person_id_id"], name: "index_team_people_on_person_id_id"
    t.index ["team_id_id"], name: "index_team_people_on_team_id_id"
  end

  create_table "teams", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "organization_id"
    t.string   "team_name"
    t.boolean  "competitive"
    t.string   "age_group"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
