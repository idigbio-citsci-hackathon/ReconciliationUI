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

ActiveRecord::Schema.define(version: 20131211212328) do

  create_table "collections", force: true do |t|
    t.string   "collection_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "filenames", force: true do |t|
    t.string   "filename"
    t.integer  "collection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "filenames", ["collection_id"], name: "index_filenames_on_collection_id", using: :btree

  create_table "subjects", force: true do |t|
    t.string   "subject_id"
    t.integer  "collection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["collection_id"], name: "index_subjects_on_collection_id", using: :btree

  create_table "transcribed_records", force: true do |t|
    t.integer  "collection_id"
    t.integer  "user_id"
    t.integer  "filename_id"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.string   "source_id"
    t.text     "collector"
    t.string   "collector_number"
    t.string   "collection_date"
    t.string   "collection_date_begin"
    t.string   "collection_date_end"
    t.string   "scientific_name"
    t.string   "scientific_author"
    t.string   "host"
    t.text     "habitat"
    t.text     "notes"
    t.string   "elevation"
    t.string   "lat_lon"
    t.text     "location"
    t.string   "county"
    t.string   "state_province"
    t.string   "country"
    t.string   "registration_number"
    t.string   "page_number"
    t.string   "top_percent"
    t.datetime "updated_at"
  end

  add_index "transcribed_records", ["collection_id"], name: "index_transcribed_records_on_collection_id", using: :btree
  add_index "transcribed_records", ["filename_id"], name: "index_transcribed_records_on_filename_id", using: :btree
  add_index "transcribed_records", ["subject_id"], name: "index_transcribed_records_on_subject_id", using: :btree
  add_index "transcribed_records", ["user_id"], name: "index_transcribed_records_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "user_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
