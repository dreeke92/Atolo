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

ActiveRecord::Schema.define(version: 2022_11_10_153313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "messages", force: :cascade do |t|
    t.string "name"
    t.string "company"
    t.string "email"
    t.string "content"
    t.boolean "copy"
    t.boolean "robot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
  end

  create_table "products", force: :cascade do |t|
    t.string "name_en"
    t.string "group"
    t.string "description_en"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.string "name_fr"
    t.string "name_de"
    t.string "name_nl"
    t.string "content_nl"
    t.string "content_de"
    t.string "content_fr"
    t.string "description_nl"
    t.string "description_de"
    t.string "description_fr"
    t.integer "ranking"
    t.string "subtitle_en"
    t.string "subtitle_nl"
    t.string "subtitle_fr"
    t.string "subtitle_de"
    t.text "learnings_en"
    t.text "learnings_fr"
    t.text "learnings_nl"
    t.text "learnings_de"
    t.text "practice_en"
    t.text "practice_fr"
    t.text "practice_nl"
    t.text "practice_de"
    t.text "long_description_en"
    t.text "long_description_fr"
    t.text "long_description_nl"
    t.text "long_description_de"
    t.string "cta_en"
    t.string "cta_fr"
    t.string "cta_nl"
    t.string "cta_de"
    t.string "long_cta_en"
    t.string "long_cta_fr"
    t.string "long_cta_nl"
    t.string "long_cta_de"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
