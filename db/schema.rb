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

ActiveRecord::Schema.define(version: 20171101152004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acts", force: :cascade do |t|
    t.string "key"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "areas", force: :cascade do |t|
    t.integer "position"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libcompls", force: :cascade do |t|
    t.bigint "area_id"
    t.bigint "act_id"
    t.date "date"
    t.string "compliance_task"
    t.text "compliance_details"
    t.string "frequency"
    t.boolean "demo", default: true
    t.boolean "review", default: true
    t.integer "employees"
    t.integer "workmen"
    t.integer "contractors"
    t.string "ref"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["act_id"], name: "index_libcompls_on_act_id"
    t.index ["area_id"], name: "index_libcompls_on_area_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "key"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
