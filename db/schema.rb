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

ActiveRecord::Schema.define(version: 2019_10_21_150634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adopters", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "zip"
    t.string "image_url"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "adoptions", force: :cascade do |t|
    t.bigint "adopter_id", null: false
    t.bigint "pet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["adopter_id"], name: "index_adoptions_on_adopter_id"
    t.index ["pet_id"], name: "index_adoptions_on_pet_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "adopter_id", null: false
    t.bigint "pet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["adopter_id"], name: "index_favorites_on_adopter_id"
    t.index ["pet_id"], name: "index_favorites_on_pet_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.bigint "shelter_id", null: false
    t.text "description"
    t.string "image_url"
    t.boolean "adoption_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shelter_id"], name: "index_pets_on_shelter_id"
  end

  create_table "shelters", force: :cascade do |t|
    t.string "name"
    t.string "zip"
    t.string "image_url"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "adoptions", "adopters"
  add_foreign_key "adoptions", "pets"
  add_foreign_key "favorites", "adopters"
  add_foreign_key "favorites", "pets"
  add_foreign_key "pets", "shelters"
end
