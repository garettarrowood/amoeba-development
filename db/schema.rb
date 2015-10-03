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

ActiveRecord::Schema.define(version: 20150930174013) do

  create_table "acts", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "acts_amoebas", force: :cascade do |t|
    t.integer "act_id"
    t.integer "amoeba_id"
  end

  add_index "acts_amoebas", ["act_id"], name: "index_acts_amoebas_on_act_id"
  add_index "acts_amoebas", ["amoeba_id"], name: "index_acts_amoebas_on_amoeba_id"

  create_table "amoebas", force: :cascade do |t|
    t.string  "name"
    t.integer "generation"
    t.string  "avatar"
    t.integer "talent_id"
  end

  add_index "amoebas", ["talent_id"], name: "index_amoebas_on_talent_id"

  create_table "talents", force: :cascade do |t|
    t.string "name"
  end

end
