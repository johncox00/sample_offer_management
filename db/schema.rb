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

ActiveRecord::Schema.define(version: 20161021170611) do

  create_table "offer_actions", force: :cascade do |t|
    t.integer  "offer_id"
    t.string   "action_type"
    t.string   "action_identifier"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["offer_id"], name: "index_offer_actions_on_offer_id"
  end

  create_table "offer_rules", force: :cascade do |t|
    t.integer  "offer_id"
    t.string   "user_method"
    t.string   "operator"
    t.string   "threshold"
    t.string   "field_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["offer_id"], name: "index_offer_rules_on_offer_id"
  end

  create_table "offers", force: :cascade do |t|
    t.string   "identifier"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "offer_type"
    t.boolean  "active"
    t.integer  "priority"
    t.integer  "durration_in_months"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "promotion_actions", force: :cascade do |t|
    t.integer  "promotion_id"
    t.float    "amount"
    t.string   "billing_description"
    t.string   "discount_type"
    t.string   "identifier"
    t.string   "type"
    t.integer  "coupon_duration"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["promotion_id"], name: "index_promotion_actions_on_promotion_id"
  end

  create_table "promotions", force: :cascade do |t|
    t.string   "identifier"
    t.integer  "code_length"
    t.string   "code_prefix"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "partner_name"
    t.integer  "redemption_count"
    t.integer  "redemption_limit"
    t.string   "type"
    t.boolean  "active"
    t.integer  "exclusivity_window"
    t.string   "offer_identifier"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
