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

ActiveRecord::Schema.define(version: 20150904113838) do

  create_table "accessories", force: :cascade do |t|
    t.string   "name"
    t.float    "cost"
    t.string   "model"
    t.integer  "vehicle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "p_o_c"
    t.string   "email"
    t.string   "phone"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "blood_group"
    t.string   "mobile_no"
    t.string   "emergency_contact"
    t.string   "address"
    t.date     "dl_expiration"
    t.boolean  "back_ground_check",     default: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "image_p_file_name"
    t.string   "image_p_content_type"
    t.integer  "image_p_file_size"
    t.datetime "image_p_updated_at"
    t.string   "image_dl_file_name"
    t.string   "image_dl_content_type"
    t.integer  "image_dl_file_size"
    t.datetime "image_dl_updated_at"
  end

  create_table "routes", force: :cascade do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "possition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_clients", force: :cascade do |t|
    t.integer  "vehicles_id"
    t.integer  "clients_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "vehicle_drivers", force: :cascade do |t|
    t.integer  "vehicles_id"
    t.integer  "drivers_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "vehicle_payments", force: :cascade do |t|
    t.string   "amount_type"
    t.float    "amount_paid"
    t.date     "payment_date"
    t.string   "mode_of_payment"
    t.integer  "vehicle_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "vehicle_records", force: :cascade do |t|
    t.string   "record_type"
    t.date     "expiration_date"
    t.integer  "vehicle_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "vehicle_routes", force: :cascade do |t|
    t.integer  "vehicles_id"
    t.integer  "routes_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "name"
    t.string   "vehicle_type"
    t.string   "reg_no"
    t.string   "chassis_no"
    t.string   "engine_no"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end