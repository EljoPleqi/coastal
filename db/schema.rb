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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2022_05_23_120607) do
=======
ActiveRecord::Schema.define(version: 2022_05_23_121931) do
>>>>>>> f37133d528dbf3f0b80a40efd05131ba0154edf6

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boats", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.integer "price"
    t.string "city"
    t.string "address"
    t.integer "size"
    t.string "description"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

<<<<<<< HEAD
  create_table "bookings", force: :cascade do |t|
    t.date "check_in"
    t.date "check_out"
    t.integer "boat_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

=======
>>>>>>> f37133d528dbf3f0b80a40efd05131ba0154edf6
  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

<<<<<<< HEAD
=======
  add_foreign_key "boats", "users"
>>>>>>> f37133d528dbf3f0b80a40efd05131ba0154edf6
end
