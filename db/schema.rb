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

ActiveRecord::Schema.define(version: 20181111205802) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accessories", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "discription"
    t.integer  "mobile_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["mobile_id"], name: "index_accessories_on_mobile_id", using: :btree
  end

  create_table "mobiles", force: :cascade do |t|
    t.string   "title"
    t.string   "model"
    t.string   "color"
    t.integer  "price"
    t.string   "discription"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "amount_paid"
    t.string   "amount_balance"
    t.string   "discription"
    t.integer  "accessories_id"
    t.integer  "mobile_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["accessories_id"], name: "index_orders_on_accessories_id", using: :btree
    t.index ["mobile_id"], name: "index_orders_on_mobile_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "accessories", "mobiles"
  add_foreign_key "orders", "accessories", column: "accessories_id"
  add_foreign_key "orders", "mobiles"
end
