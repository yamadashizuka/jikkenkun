# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140718012609) do

  create_table "buhins", force: true do |t|
    t.string   "hinmei"
    t.string   "hinban"
    t.string   "nouhin_sya"
    t.datetime "nouhin_day"
    t.string   "tantou"
    t.integer  "kosu"
    t.integer  "jikken_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jikkens", force: true do |t|
    t.string   "title"
    t.datetime "plan_start"
    t.datetime "plan_end"
    t.datetime "act_start"
    t.datetime "act_end"
    t.text     "memo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "syaryos", force: true do |t|
    t.string   "number_plate"
    t.string   "keeping_place"
    t.integer  "condition"
    t.text     "memo"
    t.integer  "status"
    t.integer  "jikken_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
