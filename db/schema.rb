# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_11_153255) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "address_one"
    t.string "address_two"
    t.string "address_three"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "post_code"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "clients", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "confirmations", force: :cascade do |t|
    t.integer "designer_confirmation"
    t.integer "client_confirmation"
    t.integer "payment_status"
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_confirmations_on_project_id"
  end

  create_table "designers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_designers_on_user_id"
  end

  create_table "details", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "mobile"
    t.integer "age"
    t.text "bio"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_details_on_user_id"
  end

  create_table "finalisations", force: :cascade do |t|
    t.integer "client_status"
    t.integer "designer_status"
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_finalisations_on_project_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "payment_status"
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_payments_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "brief", null: false
    t.integer "timeframe"
    t.integer "designer_accept"
    t.integer "client_accept"
    t.float "price", null: false
    t.bigint "designer_id"
    t.bigint "client_id"
    t.index ["client_id"], name: "index_projects_on_client_id"
    t.index ["designer_id"], name: "index_projects_on_designer_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "clients", "users"
  add_foreign_key "confirmations", "projects"
  add_foreign_key "designers", "users"
  add_foreign_key "details", "users"
  add_foreign_key "finalisations", "projects"
  add_foreign_key "payments", "projects"
  add_foreign_key "projects", "clients"
  add_foreign_key "projects", "designers"
end
