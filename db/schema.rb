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

ActiveRecord::Schema.define(version: 20170719112253) do

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "logo_url"
    t.string "opening"
    t.string "closing"
    t.string "phone_number"
    t.text "introduce"
    t.decimal "price_from"
    t.decimal "price_to"
    t.string "county"
    t.string "address"
    t.float "avg_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "avatar_url"
    t.datetime "birthday"
    t.string "fb_token"
    t.string "google_token"
    t.text "introduce"
    t.string "phone_number"
    t.boolean "gender"
    t.integer "friend_count"
    t.string "last_login_ip"
    t.integer "total_login_time"
    t.datetime "last_login_date"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
