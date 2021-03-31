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

ActiveRecord::Schema.define(version: 2021_03_30_135654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "health_care_company_id", null: false
    t.index ["health_care_company_id"], name: "index_doctors_on_health_care_company_id"
  end

  create_table "health_care_companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hours", force: :cascade do |t|
    t.string "weekday"
    t.string "opening_hour"
    t.string "opening_minute"
    t.string "closing_hour"
    t.string "closing_minute"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "doctor_id", null: false
    t.bigint "health_care_company_id", null: false
    t.index ["doctor_id"], name: "index_hours_on_doctor_id"
    t.index ["health_care_company_id"], name: "index_hours_on_health_care_company_id"
  end

  add_foreign_key "doctors", "health_care_companies"
  add_foreign_key "hours", "doctors"
  add_foreign_key "hours", "health_care_companies"
end
