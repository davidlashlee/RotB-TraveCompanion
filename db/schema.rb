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

<<<<<<< HEAD
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 0) do
=======
ActiveRecord::Schema.define(version: 20141014002008) do
ActiveRecord::Schema.define(version: 20141013071354) do
=======
ActiveRecord::Schema.define(version: 20141014063208) do

  create_table "destinations", force: true do |t|
    t.string   "location"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "user_id"
  end
>>>>>>> fc662a75d56fa4f8acdef201930411c241f9b47a

  create_table "messages", force: true do |t|
    t.integer  "reciever"
    t.integer  "sender"
    t.string   "title"
    t.string   "message_text"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "gender"
    t.string   "seeking_gender"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
<<<<<<< HEAD
>>>>>>> 8f3e5827ac49f27b95dd1fe7e0e7c1ba8be922f9
=======
>>>>>>> fc662a75d56fa4f8acdef201930411c241f9b47a

end
