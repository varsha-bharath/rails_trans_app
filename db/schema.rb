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

ActiveRecord::Schema.define(version: 20150928071100) do

  create_table "accessories", force: :cascade do |t|
    t.string   "name"
    t.float    "cost"
    t.string   "model"
    t.integer  "vehicle_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "serial_no"
    t.string   "invoice_image_file_name"
    t.string   "invoice_image_content_type"
    t.integer  "invoice_image_file_size"
    t.datetime "invoice_image_updated_at"
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
    t.string   "pan"
    t.string   "bank_account"
    t.string   "ifsc_code"
    t.integer  "driver_salary"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "route_locations", force: :cascade do |t|
    t.integer  "route_id"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string   "name"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vehicle_clients", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.integer  "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_drivers", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.integer  "driver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_payments", force: :cascade do |t|
    t.string   "amount_type"
    t.float    "amount_paid"
    t.date     "payment_date"
    t.string   "mode_of_payment"
    t.integer  "vehicle_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "vehicle_records", force: :cascade do |t|
    t.string   "record_type"
    t.date     "expiration_date"
    t.integer  "vehicle_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "vehicle_routes", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.integer  "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "name"
    t.string   "vehicle_type"
    t.string   "reg_no"
    t.string   "chassis_no"
    t.string   "engine_no"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.date     "rc_expiration_date"
    t.date     "insurance_expiration_date"
    t.date     "emission_expiration_date"
    t.string   "rc_image_file_name"
    t.string   "rc_image_content_type"
    t.integer  "rc_image_file_size"
    t.datetime "rc_image_updated_at"
    t.string   "insurance_image_file_name"
    t.string   "insurance_image_content_type"
    t.integer  "insurance_image_file_size"
    t.datetime "insurance_image_updated_at"
    t.string   "emission_image_file_name"
    t.string   "emission_image_content_type"
    t.integer  "emission_image_file_size"
    t.datetime "emission_image_updated_at"
  end

end
