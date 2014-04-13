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

ActiveRecord::Schema.define(version: 20140413185653) do

  create_table "cards", force: true do |t|
    t.string   "person_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.text     "description"
    t.string   "hospital"
    t.string   "section"
    t.integer  "persons_required"
    t.string   "issuer_name"
    t.boolean  "visible",            default: false,          null: false
    t.string   "contact_number"
    t.string   "kin"
    t.date     "collection_date"
    t.boolean  "archived",           default: false
    t.string   "type",               default: "BloodRequest"
  end

  create_table "donations", force: true do |t|
    t.integer  "blood_request_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "full_name"
    t.string   "gender"
    t.datetime "birthdate"
    t.string   "blood_group"
    t.string   "blood_rh"
    t.string   "phone"
    t.string   "email"
    t.string   "id_number"
    t.datetime "donate_at"
    t.string   "code"
  end

  create_table "shortlinks", force: true do |t|
    t.integer  "card_id"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.boolean  "staff",                  default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
