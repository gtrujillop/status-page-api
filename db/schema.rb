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

ActiveRecord::Schema.define(version: 2020_11_10_005328) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sites", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.bigint "type_id", null: false
    t.string "country"
    t.jsonb "status_data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country"], name: "index_sites_on_country"
    t.index ["name"], name: "index_sites_on_name"
    t.index ["status_data"], name: "index_sites_on_status_data", using: :gin
    t.index ["type_id"], name: "index_sites_on_type_id"
    t.index ["url"], name: "index_sites_on_url"
  end

# Could not dump table "types" because of following StandardError
#   Unknown type 'catalog_types' for column 'type'

  add_foreign_key "sites", "types"
end
