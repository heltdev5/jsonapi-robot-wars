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

ActiveRecord::Schema.define(version: 20150901175301) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "jobs", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.integer  "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "laser_guns", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.integer  "durability"
    t.integer  "quality"
    t.integer  "power"
    t.string   "type"
    t.string   "rarity"
    t.uuid     "owner_id"
    t.string   "owner_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "planet_id"
    t.string   "cords_x"
    t.string   "cords_y"
    t.uuid     "entity_id"
    t.string   "entity_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "locations", ["entity_id", "entity_type"], name: "index_locations_on_entity_id_and_entity_type", unique: true, using: :btree

  create_table "planets", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.string   "cords_x"
    t.string   "cords_y"
    t.string   "cords_z"
    t.integer  "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "power_armors", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.integer  "durability"
    t.integer  "quality"
    t.integer  "armor"
    t.string   "type"
    t.string   "rarity"
    t.uuid     "owner_id"
    t.string   "owner_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "robot_models", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "robots", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name_first"
    t.string   "name_last"
    t.date     "creation_date"
    t.uuid     "job_id"
    t.uuid     "robot_model_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "spaceship_models", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "speed"
    t.integer  "cargo"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spaceships", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.integer  "durability"
    t.integer  "quality"
    t.uuid     "pilot_id"
    t.string   "pilot_type"
    t.uuid     "spaceship_model_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
