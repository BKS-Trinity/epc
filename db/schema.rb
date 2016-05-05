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

ActiveRecord::Schema.define(version: 20160503170417) do

  create_table "diseases", force: true do |t|
    t.string   "name"
    t.string   "icd10"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", force: true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.date     "dateofbirth"
    t.string   "sex"
    t.string   "email"
    t.string   "phone"
    t.string   "mobile"
    t.string   "street"
    t.string   "city"
    t.string   "postcode"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drugs", force: true do |t|
    t.string   "name"
    t.string   "atc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medical_cases", force: true do |t|
    t.date     "onsetofdisease"
    t.integer  "medical_record_id"
    t.integer  "disease_id"
    t.integer  "doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "medical_cases", ["disease_id"], name: "index_medical_cases_on_disease_id"
  add_index "medical_cases", ["doctor_id"], name: "index_medical_cases_on_doctor_id"
  add_index "medical_cases", ["medical_record_id"], name: "index_medical_cases_on_medical_record_id"

  create_table "medical_records", force: true do |t|
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "medical_records", ["patient_id"], name: "index_medical_records_on_patient_id"

  create_table "nurses", force: true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.date     "dateofbirth"
    t.string   "sex"
    t.string   "email"
    t.string   "phone"
    t.string   "mobile"
    t.string   "street"
    t.string   "city"
    t.string   "postcode"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.date     "dateofbirth"
    t.string   "sex"
    t.string   "email"
    t.string   "phone"
    t.string   "mobile"
    t.string   "street"
    t.string   "city"
    t.string   "postcode"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
