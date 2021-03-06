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

ActiveRecord::Schema.define(version: 20170210000556) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educations", force: :cascade do |t|
    t.string   "school"
    t.integer  "person_id"
    t.string   "degree"
    t.string   "concentration"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "advisors"
    t.string   "honors"
    t.string   "extracurriculars"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["person_id"], name: "index_educations_on_person_id", using: :btree
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "main_description"
    t.string   "personal_bio"
    t.string   "teaching_philosophy"
    t.string   "cv_link"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "publications", force: :cascade do |t|
    t.string   "title"
    t.integer  "person_id"
    t.string   "collaborators"
    t.string   "location"
    t.string   "date"
    t.string   "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["person_id"], name: "index_publications_on_person_id", using: :btree
  end

  create_table "research_items", force: :cascade do |t|
    t.string   "title"
    t.integer  "person_id"
    t.string   "collaborators"
    t.string   "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["person_id"], name: "index_research_items_on_person_id", using: :btree
  end

  create_table "teachings", force: :cascade do |t|
    t.string   "subject"
    t.string   "school"
    t.string   "description"
    t.integer  "person_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["person_id"], name: "index_teachings_on_person_id", using: :btree
  end

  add_foreign_key "educations", "people"
  add_foreign_key "publications", "people"
  add_foreign_key "research_items", "people"
  add_foreign_key "teachings", "people"
end
