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

ActiveRecord::Schema.define(version: 2020_09_21_212029) do

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "comment_date"
    t.string "comment_text"
  end

  create_table "event_comments", force: :cascade do |t|
    t.integer "event_id"
    t.integer "comment_id"
  end

  create_table "event_questions", force: :cascade do |t|
    t.integer "event_id"
    t.integer "question_id"
  end

  create_table "events", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "description"
    t.integer "sport"
    t.datetime "date"
    t.integer "location"
  end

  create_table "location_comments", force: :cascade do |t|
    t.integer "location_id"
    t.integer "comment_id"
  end

  create_table "location_questions", force: :cascade do |t|
    t.integer "location_id"
    t.integer "question_id"
  end

  create_table "locations", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "description"
    t.string "location_info"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "question_date"
    t.string "question_text"
  end

  create_table "sports", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
