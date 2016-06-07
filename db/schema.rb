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

ActiveRecord::Schema.define(version: 20160602153727) do

  create_table "activities", force: :cascade do |t|
    t.string   "activity_name", limit: 255
    t.float    "activity_cost", limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "activities_orders", id: false, force: :cascade do |t|
    t.integer "activity_id", limit: 4,  null: false
    t.integer "order_id",    limit: 4,  null: false
    t.float   "quantity",    limit: 24
  end

  create_table "installers", force: :cascade do |t|
    t.string   "employee_key", limit: 255
    t.string   "first_name",   limit: 255
    t.string   "last_name",    limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "location_name", limit: 255
    t.string   "municipio",     limit: 255
    t.string   "state",         limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "order_kinds", force: :cascade do |t|
    t.string   "order_kind_name", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "account",        limit: 4
    t.string   "work_order",     limit: 255
    t.date     "check_in"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "location_id_id", limit: 4
    t.integer  "location_id",    limit: 4
    t.integer  "installer_id",   limit: 4
    t.integer  "order_kind_id",  limit: 4
  end

  add_index "orders", ["installer_id"], name: "index_orders_on_installer_id", using: :btree
  add_index "orders", ["location_id"], name: "index_orders_on_location_id", using: :btree
  add_index "orders", ["location_id_id"], name: "index_orders_on_location_id_id", using: :btree
  add_index "orders", ["order_kind_id"], name: "index_orders_on_order_kind_id", using: :btree

  add_foreign_key "orders", "installers"
  add_foreign_key "orders", "locations"
  add_foreign_key "orders", "order_kinds"
end
