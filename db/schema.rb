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

ActiveRecord::Schema.define(version: 2023_07_05_072001) do

  create_table "bookings", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "room_id"
    t.date "check_in_date"
    t.date "check_out_date"
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
  end

  create_table "customer_services", force: :cascade do |t|
    t.date "request_date"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "service_id"
    t.float "total_price"
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_customer_services_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "password_digest"
  end

  create_table "rooms", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "room_name"
    t.string "room_description"
    t.decimal "room_price", precision: 10, scale: 2
    t.boolean "is_booked"
  end

  create_table "services", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "service_name", null: false
    t.decimal "service_cost", precision: 8, scale: 2, default: "0.0", null: false
    t.text "service_description", limit: 255
    t.string "head_of_service", null: false
    t.string "image_url"
  end

end
