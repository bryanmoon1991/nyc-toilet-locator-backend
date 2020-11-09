# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_09_193031) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reviews", force: :cascade do |t|
    t.bigint "toilet_id", null: false
    t.string "content"
    t.string "date"
    t.string "name"
    t.integer "rating"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["toilet_id"], name: "index_reviews_on_toilet_id"
  end

  create_table "toilets", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.boolean "open_year_round"
    t.boolean "handicap_accessible"
    t.string "borough"
    t.integer "likes"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address"
    t.string "neighborhood"
  end

  add_foreign_key "reviews", "toilets"
end