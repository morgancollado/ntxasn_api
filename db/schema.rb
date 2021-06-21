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

ActiveRecord::Schema.define(version: 2021_05_16_222438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street_address_1"
    t.string "street_address_2"
    t.integer "zipcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clinics", force: :cascade do |t|
    t.string "name"
    t.integer "address_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_clinics_on_address_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_drivers_on_user_id"
  end

  create_table "passengers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "address_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_passengers_on_address_id"
    t.index ["user_id"], name: "index_passengers_on_user_id"
  end

  create_table "ride_change_logs", force: :cascade do |t|
    t.integer "ride_id", null: false
    t.integer "prev_status"
    t.integer "updated_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ride_id"], name: "index_ride_change_logs_on_ride_id"
  end

  create_table "ride_requests", force: :cascade do |t|
    t.integer "passenger_id", null: false
    t.integer "address_id", null: false
    t.integer "clinic_id", null: false
    t.date "date"
    t.time "time"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_ride_requests_on_address_id"
    t.index ["clinic_id"], name: "index_ride_requests_on_clinic_id"
    t.index ["passenger_id"], name: "index_ride_requests_on_passenger_id"
  end

  create_table "rides", force: :cascade do |t|
    t.integer "passenger_id", null: false
    t.integer "driver_id", null: false
    t.integer "ride_request_id", null: false
    t.integer "status"
    t.integer "schedule_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["driver_id"], name: "index_rides_on_driver_id"
    t.index ["passenger_id"], name: "index_rides_on_passenger_id"
    t.index ["ride_request_id"], name: "index_rides_on_ride_request_id"
    t.index ["schedule_id"], name: "index_rides_on_schedule_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "day"
    t.time "begin_time"
    t.time "end_time"
    t.integer "status"
    t.integer "driver_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["driver_id"], name: "index_schedules_on_driver_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "phone_number"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "clinics", "addresses"
  add_foreign_key "drivers", "users"
  add_foreign_key "passengers", "addresses"
  add_foreign_key "passengers", "users"
  add_foreign_key "ride_change_logs", "rides"
  add_foreign_key "ride_requests", "addresses"
  add_foreign_key "ride_requests", "clinics"
  add_foreign_key "ride_requests", "passengers"
  add_foreign_key "rides", "drivers"
  add_foreign_key "rides", "passengers"
  add_foreign_key "rides", "ride_requests"
  add_foreign_key "rides", "schedules"
  add_foreign_key "schedules", "drivers"
end
