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

ActiveRecord::Schema.define(version: 2019_06_03_102306) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendees", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "attendee_id"
    t.bigint "event_id"
    t.index ["attendee_id"], name: "index_attendees_on_attendee_id"
    t.index ["event_id"], name: "index_attendees_on_event_id"
  end

  create_table "chat_rooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country_name"
    t.string "card_photo"
    t.string "cover_photo"
  end

  create_table "city_guides", force: :cascade do |t|
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_city_guides_on_city_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "city_id"
    t.bigint "owner_id"
    t.text "description"
    t.datetime "starts"
    t.datetime "ends"
    t.string "category"
    t.string "photo"
    t.float "latitude"
    t.float "longitude"
    t.index ["city_id"], name: "index_events_on_city_id"
    t.index ["owner_id"], name: "index_events_on_owner_id"
  end

  create_table "interests", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_interests_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "chat_room_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_room_id"], name: "index_messages_on_chat_room_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "user_interests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "interest_id"
    t.index ["interest_id"], name: "index_user_interests_on_interest_id"
    t.index ["user_id"], name: "index_user_interests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.bigint "current_location_id"
    t.bigint "from_id"
    t.bigint "moving_to_id"
    t.string "profile_pic"
    t.string "cover_photo"
    t.text "about"
    t.index ["current_location_id"], name: "index_users_on_current_location_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["from_id"], name: "index_users_on_from_id"
    t.index ["moving_to_id"], name: "index_users_on_moving_to_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "attendees", "events"
  add_foreign_key "attendees", "users", column: "attendee_id"
  add_foreign_key "city_guides", "cities"
  add_foreign_key "events", "cities"
  add_foreign_key "events", "users", column: "owner_id"
  add_foreign_key "interests", "users"
  add_foreign_key "messages", "chat_rooms"
  add_foreign_key "messages", "users"
  add_foreign_key "user_interests", "interests"
  add_foreign_key "user_interests", "users"
  add_foreign_key "users", "cities", column: "current_location_id"
  add_foreign_key "users", "cities", column: "from_id"
  add_foreign_key "users", "cities", column: "moving_to_id"
end
