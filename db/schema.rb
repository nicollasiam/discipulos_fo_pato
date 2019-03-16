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

ActiveRecord::Schema.define(version: 2019_03_16_203620) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expenditure_classifications", force: :cascade do |t|
    t.string "expenditure_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenditures", force: :cascade do |t|
    t.float "value"
    t.date "payment_date"
    t.string "reference_month"
    t.string "reference_year"
    t.string "information"
    t.boolean "planned"
    t.bigint "rich_id"
    t.bigint "expenditure_classification_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expenditure_classification_id"], name: "index_expenditures_on_expenditure_classification_id"
    t.index ["rich_id"], name: "index_expenditures_on_rich_id"
  end

  create_table "incomes", force: :cascade do |t|
    t.float "value"
    t.string "information"
    t.string "reference_month"
    t.string "reference_year"
    t.bigint "rich_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rich_id"], name: "index_incomes_on_rich_id"
  end

  create_table "plans", force: :cascade do |t|
    t.float "value"
    t.bigint "rich_id"
    t.bigint "expenditure_classification_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expenditure_classification_id"], name: "index_plans_on_expenditure_classification_id"
    t.index ["rich_id"], name: "index_plans_on_rich_id"
  end

  create_table "riches", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_riches_on_email", unique: true
    t.index ["reset_password_token"], name: "index_riches_on_reset_password_token", unique: true
  end

  add_foreign_key "expenditures", "expenditure_classifications"
  add_foreign_key "expenditures", "riches"
  add_foreign_key "incomes", "riches"
  add_foreign_key "plans", "expenditure_classifications"
  add_foreign_key "plans", "riches"
end
