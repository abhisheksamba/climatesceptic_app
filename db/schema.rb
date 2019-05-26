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

ActiveRecord::Schema.define(version: 20190503164947) do

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_accounts_on_email", unique: true
  end

  create_table "elite_cues", force: :cascade do |t|
    t.string "Date"
    t.float "CCSI"
    t.integer "Democrat_Statements"
    t.integer "Republican_Statements"
    t.integer "House_Hearings"
    t.integer "Senate_Hearings"
    t.float "LCV_Dem"
    t.float "LCV_Rep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media", force: :cascade do |t|
    t.string "Date"
    t.float "CCSI"
    t.integer "Media_Index"
    t.integer "Environmental_Magazines"
    t.integer "Conservative_Magazines"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recessions", force: :cascade do |t|
    t.date "Date"
    t.float "CCSI"
    t.float "Unemployment"
    t.float "GDPGrowth"
    t.float "Oil_Price"
    t.float "IPI"
    t.integer "Recession_Dates"
    t.float "Nonfarm_Payrolls"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sciences", force: :cascade do |t|
    t.string "Date"
    t.float "CCSI"
    t.integer "Scientific_Magazines"
    t.integer "Scientific_Reports"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "recession_id"
    t.float "prediction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
  end

  create_table "weathers", force: :cascade do |t|
    t.string "Date"
    t.float "CCSI"
    t.float "CEI"
    t.float "Warm_Areas"
    t.float "Cold_Areas"
    t.float "DSCI"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
