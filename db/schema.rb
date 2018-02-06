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

ActiveRecord::Schema.define(version: 20180206113759) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contractors", force: :cascade do |t|
    t.string "name"
    t.text "projects", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "overtimes", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.time "othour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "supervisors", default: [], array: true
    t.float "salary"
    t.time "over_time"
    t.float "total_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supervisors", force: :cascade do |t|
    t.string "name"
    t.text "projects", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "userid"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string "name"
    t.float "wage"
    t.string "contractor"
    t.string "designation"
    t.string "scheme"
    t.float "otmult"
    t.float "otinc"
    t.text "projects", default: [], array: true
    t.float "advance"
    t.float "deduction"
    t.float "pf"
    t.time "overtime"
    t.float "incentive"
    t.float "otamount"
    t.float "inceamount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
