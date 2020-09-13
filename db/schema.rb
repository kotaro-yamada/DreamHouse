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

ActiveRecord::Schema.define(version: 2020_09_12_091757) do

  create_table "buyers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name_kanji"
    t.string "first_name_kanji"
    t.string "last_name_kana"
    t.string "first_name_kana"
    t.string "zip_code"
    t.string "address"
    t.string "phone_number"
    t.index ["email"], name: "index_buyers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_buyers_on_reset_password_token", unique: true
  end

  create_table "cities", force: :cascade do |t|
    t.integer "prefecture_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefecture_id"], name: "index_cities_on_prefecture_id"
  end

  create_table "houses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "price"
    t.string "zip_code"
    t.string "address"
    t.integer "category"
    t.integer "floor_plan"
    t.integer "old"
    t.string "land_area"
    t.string "building_area"
    t.integer "sales_status"
    t.string "image_id"
    t.integer "seller_id"
    t.integer "prefecture_id"
    t.integer "city_id"
    t.index ["prefecture_id"], name: "index_houses_on_prefecture_id"
  end

  create_table "photos", force: :cascade do |t|
    t.integer "house_id"
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
  end

  create_table "purchase_offers", force: :cascade do |t|
    t.integer "buyer_id"
    t.integer "house_id"
    t.integer "price"
    t.integer "order_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "zip_code"
    t.string "address"
    t.string "phone_number"
    t.string "first_name_kanji"
    t.string "last_name_kanji"
    t.string "first_name_kana"
    t.string "last_name_kana"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name_kanji"
    t.string "first_name_kanji"
    t.string "last_name_kana"
    t.string "first_name_kana"
    t.string "zip_code"
    t.string "address"
    t.string "phone_number"
    t.index ["email"], name: "index_sellers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_sellers_on_reset_password_token", unique: true
  end

  create_table "visit_offers", force: :cascade do |t|
    t.integer "house_id"
    t.integer "buyer_id"
    t.integer "amount"
    t.integer "order_status"
    t.string "last_name_kanji"
    t.string "first_name_kanji"
    t.string "last_name_kana"
    t.string "first_name_kana"
    t.string "zip_code"
    t.string "address"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
