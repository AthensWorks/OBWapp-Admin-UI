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

ActiveRecord::Schema.define(version: 20160422023010) do

  create_table "beers", force: :cascade do |t|
    t.string  "name",            limit: 100
    t.integer "ibu",             limit: 2
    t.float   "abv",             limit: 24
    t.boolean "limited_release"
    t.text    "description",     limit: 65535
    t.integer "brewery_id",      limit: 4
  end

  create_table "breweries", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.string   "addresses",   limit: 255
    t.float    "lat",         limit: 24
    t.float    "lon",         limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "establishments", force: :cascade do |t|
    t.string "name",        limit: 100
    t.float  "lat",         limit: 24
    t.float  "lon",         limit: 24
    t.string "address",     limit: 100
    t.text   "description", limit: 65535
  end

  create_table "futuredata", force: :cascade do |t|
    t.float    "lat",         limit: 24
    t.float    "lon",         limit: 24
    t.string   "device_guid", limit: 255
    t.integer  "beer_id",     limit: 4
    t.integer  "age",         limit: 2
    t.integer  "like_type",   limit: 1
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "likes", force: :cascade do |t|
    t.string  "device_guid", limit: 255
    t.integer "beer_id",     limit: 4
    t.integer "like_type",   limit: 1
  end

  create_table "reportstate", id: false, force: :cascade do |t|
    t.string   "device_guid",        limit: 255
    t.integer  "establishment_id",   limit: 4
    t.integer  "beer_id",            limit: 4
    t.integer  "report_count",       limit: 4
    t.datetime "last_report_update"
  end

  create_table "statuses", force: :cascade do |t|
    t.integer  "establishment_id",   limit: 4
    t.integer  "beer_id",            limit: 4
    t.integer  "status",             limit: 1
    t.integer  "report_countdown",   limit: 4
    t.integer  "reported_out_count", limit: 4
    t.datetime "last_out_update"
  end

  create_table "usertoken", id: false, force: :cascade do |t|
    t.string "username", limit: 255
    t.string "email",    limit: 255
    t.string "token",    limit: 255
  end

end
