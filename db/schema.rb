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

ActiveRecord::Schema.define(version: 20150403151416) do

  create_table "charges", force: true do |t|
    t.integer  "user_id"
    t.integer  "amount"
    t.integer  "listing_id"
    t.string   "stripe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "charges", ["listing_id"], name: "index_charges_on_listing_id"
  add_index "charges", ["user_id"], name: "index_charges_on_user_id"

  create_table "listings", force: true do |t|
    t.string   "title"
    t.string   "time"
    t.string   "date"
    t.integer  "seats"
    t.decimal  "price"
    t.string   "venue_name"
    t.text     "location"
    t.string   "additional_info"
    t.boolean  "projector",          default: false
    t.boolean  "cables",             default: false
    t.boolean  "laptops",            default: false
    t.boolean  "seating",            default: false
    t.boolean  "blinds",             default: false
    t.boolean  "lighting",           default: false
    t.boolean  "camcorder",          default: false
    t.boolean  "catering",           default: false
    t.boolean  "toilets",            default: false
    t.boolean  "fire",               default: false
    t.boolean  "internet",           default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "user_id"
    t.integer  "tickets",            default: 0
  end

  create_table "orders", force: true do |t|
    t.string   "address"
    t.string   "city"
    t.string   "postcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "listing_id"
    t.integer  "buyer_id"
    t.integer  "seller_id"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
