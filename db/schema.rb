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

ActiveRecord::Schema.define(version: 2019_06_11_153044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boats", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "photo"
    t.float "latitude"
    t.float "longitude"
    t.bigint "owner_id"
    t.bigint "manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "dimension_id"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_boats_on_category_id"
    t.index ["dimension_id"], name: "index_boats_on_dimension_id"
    t.index ["manager_id"], name: "index_boats_on_manager_id"
    t.index ["owner_id"], name: "index_boats_on_owner_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "boat_id"
    t.bigint "package_id"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.boolean "completed", default: false
    t.integer "amount_cents", default: 0, null: false
    t.jsonb "payment"
    t.boolean "paid", default: false
    t.datetime "date"
    t.index ["boat_id"], name: "index_bookings_on_boat_id"
    t.index ["package_id"], name: "index_bookings_on_package_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dimensions", force: :cascade do |t|
    t.string "meter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.bigint "package_id"
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["package_id"], name: "index_items_on_package_id"
    t.index ["service_id"], name: "index_items_on_service_id"
  end

  create_table "packages", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.bigint "dimension_id"
    t.bigint "category_id"
    t.string "kind"
    t.integer "price_cents", default: 0, null: false
    t.index ["category_id"], name: "index_packages_on_category_id"
    t.index ["dimension_id"], name: "index_packages_on_dimension_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "photo"
    t.bigint "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_pictures_on_booking_id"
  end

  create_table "providers", force: :cascade do |t|
    t.bigint "manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["manager_id"], name: "index_providers_on_manager_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "provider_id"
    t.bigint "booking_id"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "manager_id"
    t.index ["booking_id"], name: "index_tasks_on_booking_id"
    t.index ["item_id"], name: "index_tasks_on_item_id"
    t.index ["provider_id"], name: "index_tasks_on_provider_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "photo"
    t.boolean "manager", default: false
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "description"
    t.date "birth_date"
    t.boolean "owner_subscribed"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "boats", "categories"
  add_foreign_key "boats", "dimensions"
  add_foreign_key "boats", "users", column: "manager_id"
  add_foreign_key "boats", "users", column: "owner_id"
  add_foreign_key "bookings", "boats"
  add_foreign_key "bookings", "packages"
  add_foreign_key "items", "packages"
  add_foreign_key "items", "services"
  add_foreign_key "packages", "categories"
  add_foreign_key "packages", "dimensions"
  add_foreign_key "pictures", "bookings"
  add_foreign_key "providers", "users", column: "manager_id"
  add_foreign_key "tasks", "bookings"
  add_foreign_key "tasks", "items"
  add_foreign_key "tasks", "providers"
end
