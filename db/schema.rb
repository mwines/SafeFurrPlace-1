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

ActiveRecord::Schema.define(version: 20160502221127) do

  create_table "activities", force: :cascade do |t|
    t.integer  "trackable_id",   limit: 4
    t.string   "trackable_type", limit: 255
    t.integer  "owner_id",       limit: 4
    t.string   "owner_type",     limit: 255
    t.string   "key",            limit: 255
    t.text     "parameters",     limit: 65535
    t.integer  "recipient_id",   limit: 4
    t.string   "recipient_type", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string   "filename",      limit: 255
    t.string   "content_type",  limit: 255
    t.binary   "file_contents", limit: 65535
    t.string   "animalname",    limit: 255
    t.string   "animalabout",   limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "registraions", force: :cascade do |t|
    t.string   "first_name",  limit: 255
    t.string   "last_name",   limit: 255
    t.integer  "phoneNumber", limit: 4
    t.string   "city",        limit: 255
    t.string   "state",       limit: 255
    t.string   "email",       limit: 255
    t.integer  "count_pets",  limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",           limit: 255
    t.string   "email",              limit: 255
    t.string   "encrypted_password", limit: 255
    t.string   "salt",               limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "welcomes", force: :cascade do |t|
    t.string   "first_name",  limit: 255
    t.string   "last_name",   limit: 255
    t.integer  "phoneNumber", limit: 4
    t.string   "city",        limit: 255
    t.string   "state",       limit: 255
    t.string   "email",       limit: 255
    t.integer  "count_pets",  limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
