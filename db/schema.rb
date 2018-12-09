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

ActiveRecord::Schema.define(version: 20181209083630) do

  create_table "agents", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_agents_on_deleted_at"
  end

  create_table "phone_calls", force: :cascade do |t|
    t.string "status"
    t.integer "phone_number_id"
    t.integer "agent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agent_id"], name: "index_phone_calls_on_agent_id"
    t.index ["phone_number_id"], name: "index_phone_calls_on_phone_number_id"
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.string "number"
    t.string "nickname"
    t.boolean "enabled", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_phone_numbers_on_deleted_at"
  end

end
