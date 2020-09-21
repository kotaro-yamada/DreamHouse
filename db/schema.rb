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

ActiveRecord::Schema.define(version: 2020_09_19_163315) do

  create_table "buyers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name_kanji", null: false
    t.string "first_name_kanji", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", null: false
    t.integer "postcode"
    t.integer "prefecture_code"
    t.string "address_city"
    t.string "address_street"
    t.string "address_building"
    t.string "phone_number"
    t.index ["email"], name: "index_buyers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_buyers_on_reset_password_token", unique: true
  end

  create_table "cities", force: :cascade do |t|
    t.integer "prefecture_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefecture_id"], name: "index_cities_on_prefecture_id"
  end

  create_table "houses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "price", null: false
    t.string "postcode", null: false
    t.string "address", null: false
    t.integer "category", default: 0, null: false
    t.integer "floor_plan", default: 0
    t.integer "old"
    t.string "land_area"
    t.string "building_area"
    t.integer "sales_status", default: 0, null: false
    t.string "image_id"
    t.integer "seller_id", null: false
    t.integer "prefecture_id"
    t.integer "city_id", null: false
    t.index ["prefecture_id"], name: "index_houses_on_prefecture_id"
  end

  create_table "photos", force: :cascade do |t|
    t.integer "house_id", null: false
    t.integer "image_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
  end

  create_table "preperred_dates", force: :cascade do |t|
    t.integer "visit_offer_id", null: false
    t.datetime "first_choice"
    t.datetime "second_choice"
    t.datetime "third_choice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchase_offers", force: :cascade do |t|
    t.integer "buyer_id", null: false
    t.integer "house_id", null: false
    t.integer "price", null: false
    t.integer "order_status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "postcode", null: false
    t.string "address", null: false
    t.string "phone_number", null: false
    t.string "first_name_kanji", null: false
    t.string "last_name_kanji", null: false
    t.string "first_name_kana", null: false
    t.string "last_name_kana", null: false
  end

  create_table "sellers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name_kanji", null: false
    t.string "first_name_kanji", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", null: false
    t.integer "postcode"
    t.integer "prefecture_code"
    t.string "address_city"
    t.string "address_street"
    t.string "address_building"
    t.string "phone_number"
    t.index ["email"], name: "index_sellers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_sellers_on_reset_password_token", unique: true
  end

  create_table "visit_offers", force: :cascade do |t|
    t.integer "house_id", null: false
    t.integer "buyer_id", null: false
    t.integer "amount"
    t.integer "order_status", default: 0, null: false
    t.string "last_name_kanji", null: false
    t.string "first_name_kanji", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", null: false
    t.string "postcode", null: false
    t.string "address", null: false
    t.string "phone_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
