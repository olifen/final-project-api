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

ActiveRecord::Schema.define(version: 20161215142953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "no_of_places"
    t.time     "start_time"
    t.time     "end_time"
    t.date     "date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "name"
    t.integer  "venue_id"
    t.float    "price"
    t.index ["user_id"], name: "index_games_on_user_id", using: :btree
    t.index ["venue_id"], name: "index_games_on_venue_id", using: :btree
  end

  create_table "games_venues", id: false, force: :cascade do |t|
    t.integer "venue_id", null: false
    t.integer "game_id",  null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_memberships_on_game_id", using: :btree
    t.index ["user_id"], name: "index_memberships_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "location"
    t.string   "lat"
    t.string   "lng"
    t.string   "image"
    t.string   "phone_number"
  end

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "google_place_id"
    t.float    "lat"
    t.float    "lng"
    t.string   "postcode"
  end

  add_foreign_key "games", "users"
  add_foreign_key "games", "venues"
  add_foreign_key "memberships", "games"
  add_foreign_key "memberships", "users"
end
