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

ActiveRecord::Schema.define(version: 20160903044654) do

  create_table "bands", force: :cascade do |t|
    t.string   "name"
    t.float    "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.string   "name"
    t.string   "pre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requesthcs", force: :cascade do |t|
    t.integer  "user_id"
    t.float    "amount"
    t.integer  "to_currency"
    t.integer  "from_currency"
    t.boolean  "variable"
    t.float    "floor"
    t.float    "ceiling"
    t.string   "to_user_email"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_requesthcs_on_user_id"
  end

  create_table "requestlcs", force: :cascade do |t|
    t.integer  "user_id"
    t.float    "amount"
    t.integer  "to_currency"
    t.integer  "from_currency"
    t.boolean  "variable"
    t.float    "floor"
    t.float    "ceiling"
    t.string   "to_user_email"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_requestlcs_on_user_id"
  end

  create_table "requestmcs", force: :cascade do |t|
    t.integer  "user_id"
    t.float    "amount"
    t.integer  "to_currency"
    t.integer  "from_currency"
    t.boolean  "variable"
    t.float    "floor"
    t.float    "ceiling"
    t.string   "to_user_email"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_requestmcs_on_user_id"
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "user_id"
    t.float    "amount"
    t.integer  "to_currency"
    t.integer  "from_currency"
    t.boolean  "variable"
    t.float    "floor"
    t.float    "ceiling"
    t.string   "to_user_email"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "to_user"
    t.date     "date_completed"
    t.float    "rate_achieved"
    t.float    "charges"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.float    "amount"
    t.boolean  "direction"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "address"
    t.string   "ssn"
    t.integer  "band"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
