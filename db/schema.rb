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

ActiveRecord::Schema.define(version: 2023_03_15_204249) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "legal_pages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title_en"
    t.string "title_fr"
    t.string "title_de"
    t.string "title_nl"
  end

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
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
