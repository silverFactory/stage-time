# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_30_182417) do

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "support_id"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hosts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "open_mic_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "instruments", force: :cascade do |t|
    t.integer "open_mic_id"
    t.string "name"
    t.text "description"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "open_mics", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.string "location"
    t.string "day"
    t.string "time"
    t.string "stage_time"
    t.string "sign_up_protocol"
    t.integer "cover"
    t.string "drink_or_food_minimum"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "supports", force: :cascade do |t|
    t.integer "user_id"
    t.integer "open_mic_id"
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "missed_connection"
    t.boolean "lend_a_hand"
  end

  create_table "updates", force: :cascade do |t|
    t.integer "open_mic_id"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "stage_name"
    t.boolean "host"
    t.string "pic"
    t.text "bio"
    t.string "email"
    t.boolean "email_public"
    t.string "facebook_link"
    t.string "instagram_link"
    t.string "youtube_link"
    t.string "bandcamp_link"
    t.string "spotify_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "uid"
  end

end
