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

ActiveRecord::Schema.define(version: 20150111120725) do

  create_table "messages", force: true do |t|
    t.integer  "user1"
    t.integer  "user2"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["user1"], name: "index_messages_on_user1"
  add_index "messages", ["user2"], name: "index_messages_on_user2"

  create_table "relations", force: true do |t|
    t.integer "user1"
    t.integer "user2"
  end

  add_index "relations", ["user1"], name: "index_relations_on_user1"

  create_table "users", force: true do |t|
    t.string   "nickname",             default: "newbie",           null: false
    t.string   "email",                default: "newbie@email.com", null: false
    t.integer  "age",        limit: 3, default: 0,                  null: false
    t.integer  "sex",        limit: 1, default: 0,                  null: false
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "password",             default: "password",         null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
