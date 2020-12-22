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

ActiveRecord::Schema.define(version: 2020_12_22_224356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movie_infos", force: :cascade do |t|
    t.string "title"
    t.string "rating"
    t.decimal "total_gross"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.date "released_on"
    t.text "location"
    t.string "director"
    t.string "duration"
    t.string "image_file_name", default: "placeholder.png"
    t.text "capacity"
  end

  create_table "registrations", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "how_heard"
    t.bigint "movie_infos_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_infos_id"], name: "index_registrations_on_movie_infos_id"
  end

  add_foreign_key "registrations", "movie_infos", column: "movie_infos_id"
end
