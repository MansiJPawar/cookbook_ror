# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_19_100038) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.string "profile"
    t.text "letter"
    t.boolean "immediate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "elections", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.date "date_of_birth"
    t.bigint "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "adult"
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "name"
    t.text "service"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ponies", force: :cascade do |t|
    t.string "name"
    t.string "profession"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text "body"
    t.datetime "start", precision: 6
    t.datetime "end", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "tittle"
    t.text "instructions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vote_records", force: :cascade do |t|
    t.integer "voter_id"
    t.integer "question_id"
    t.boolean "is_yes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "voters", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
