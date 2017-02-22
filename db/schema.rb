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

ActiveRecord::Schema.define(version: 20170222174846) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "sitter_id"
    t.integer  "calendar_id"
    t.integer  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["calendar_id"], name: "index_bookings_on_calendar_id", using: :btree
    t.index ["sitter_id"], name: "index_bookings_on_sitter_id", using: :btree
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
  end

  create_table "calendars", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean  "available"
    t.integer  "sitter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sitter_id"], name: "index_calendars_on_sitter_id", using: :btree
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "photo"
    t.integer  "age"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pets_on_user_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "sitter_grade"
    t.string   "sitter_review"
    t.string   "owner_review"
    t.integer  "user_id"
    t.integer  "sitter_id"
    t.integer  "booking_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id", using: :btree
    t.index ["sitter_id"], name: "index_reviews_on_sitter_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end


  create_table "sitters", force: :cascade do |t|
    t.string   "pet_size"
    t.string   "pet_type"
    t.integer  "fare"
    t.integer  "missions"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sitters_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "photo"
    t.string   "phone"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "token"
    t.datetime "token_expiry"
    t.text     "about"
    t.float    "latitude"
    t.float    "longitude"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "bookings", "calendars"
  add_foreign_key "bookings", "sitters"
  add_foreign_key "bookings", "users"
  add_foreign_key "calendars", "sitters"
  add_foreign_key "pets", "users"
  add_foreign_key "reviews", "bookings"
  add_foreign_key "reviews", "sitters"
  add_foreign_key "reviews", "users"
  add_foreign_key "sitters", "users"
end
