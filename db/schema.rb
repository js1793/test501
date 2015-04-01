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

ActiveRecord::Schema.define(version: 20150331190815) do

  create_table "coach_orders", force: :cascade do |t|
    t.string   "coach_role", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "coaches", force: :cascade do |t|
    t.string   "first_name",     limit: 255
    t.string   "middle_initial", limit: 255
    t.string   "last_name",      limit: 255
    t.integer  "coach_gid",      limit: 4
    t.integer  "school_id",      limit: 4
    t.string   "email",          limit: 255
    t.text     "comments",       limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "cycles", force: :cascade do |t|
    t.string   "cycle_name", limit: 255
    t.text     "comments",   limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "days", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "emails", force: :cascade do |t|
    t.integer  "leader_id",     limit: 4
    t.string   "email_account", limit: 255
    t.integer  "email_type",    limit: 4
    t.text     "comments",      limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "facilitators", force: :cascade do |t|
    t.integer  "group_id",   limit: 4
    t.integer  "leader_id",  limit: 4
    t.integer  "role_id",    limit: 4
    t.integer  "title_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "group_gid",   limit: 255
    t.string   "cycle_id",    limit: 255
    t.integer  "school_id",   limit: 4
    t.text     "comments",    limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "type_id",     limit: 4
    t.integer  "meridian_id", limit: 4
  end

  create_table "leaders", force: :cascade do |t|
    t.string   "first_name",     limit: 255
    t.string   "middle_initial", limit: 255
    t.string   "last_name",      limit: 255
    t.integer  "leader_gid",     limit: 4
    t.integer  "school_id",      limit: 4
    t.text     "comments",       limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "meridians", force: :cascade do |t|
    t.string   "meridian_name", limit: 255
    t.text     "comments",      limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "phones", force: :cascade do |t|
    t.integer  "leader_id",    limit: 4
    t.string   "phone_number", limit: 255
    t.integer  "phone_type",   limit: 4
    t.text     "comments",     limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "leader_role", limit: 255
    t.text     "comments",    limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "school_name",    limit: 255
    t.integer  "school_gid",     limit: 4
    t.text     "comments",       limit: 65535
    t.string   "school_address", limit: 255
    t.string   "school_url",     limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "sec_lists", force: :cascade do |t|
    t.integer  "number",     limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "secs", force: :cascade do |t|
    t.string   "num_session",  limit: 255
    t.string   "day_session",  limit: 255
    t.string   "time_session", limit: 255
    t.text     "comments",     limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "seniorities", force: :cascade do |t|
    t.string   "coach_role", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "supervisors", force: :cascade do |t|
    t.integer  "group_id",     limit: 4
    t.integer  "coach_id",     limit: 4
    t.integer  "seniority_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "titles", force: :cascade do |t|
    t.string   "leader_title", limit: 255
    t.text     "comments",     limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "trainings", force: :cascade do |t|
    t.string   "leader_id",   limit: 255
    t.integer  "menu_id",     limit: 4
    t.string   "registered",  limit: 255
    t.string   "attended",    limit: 255
    t.string   "day",         limit: 255
    t.string   "payment",     limit: 255
    t.string   "certificate", limit: 255
    t.text     "comments",    limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "day_id",      limit: 4
  end

  create_table "types", force: :cascade do |t|
    t.string   "type_name",  limit: 255
    t.text     "comments",   limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
