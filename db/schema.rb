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

ActiveRecord::Schema.define(version: 2020_07_28_024551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "client_code"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_code"], name: "index_customers_on_client_code", unique: true
  end

  create_table "products", force: :cascade do |t|
    t.integer "customer_id"
    t.string "product_code"
    t.string "name"
    t.string "super_family"
    t.string "family"
    t.string "sub_family"
    t.boolean "is_expire"
    t.decimal "liters"
    t.string "state"
    t.decimal "units_per_box"
    t.decimal "weight"
    t.decimal "height"
    t.decimal "width"
    t.decimal "depth"
    t.integer "boxes_per_pallet"
    t.integer "boxes_per_pallet_floor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "floors_per_pallet", default: 0
    t.decimal "box_volume", default: "0.0"
    t.decimal "item_height", default: "0.0"
    t.decimal "item_width", default: "0.0"
    t.decimal "item_depth", default: "0.0"
    t.decimal "item_weight", default: "0.0"
    t.integer "items_per_box", default: 0
    t.integer "customer_price", default: 0
    t.string "unit_type", default: "UNIT"
    t.string "alternative_code"
    t.index ["customer_id", "product_code"], name: "index_products_on_customer_id_and_product_code", unique: true
  end

  create_table "stocks", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "warehouse_location_id", null: false
    t.integer "quantity"
    t.integer "incoming_quantity"
    t.integer "outgoing_quantity"
    t.integer "blocked_quantity"
    t.string "lot_code"
    t.datetime "lot_elaboration_date"
    t.datetime "lot_expiration_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_stocks_on_product_id"
    t.index ["warehouse_location_id", "product_id"], name: "index_stocks_on_warehouse_location_id_and_product_id", unique: true
    t.index ["warehouse_location_id"], name: "index_stocks_on_warehouse_location_id"
  end

  create_table "warehouse_locations", force: :cascade do |t|
    t.bigint "warehouse_id", null: false
    t.bigint "customer_id", null: false
    t.string "name"
    t.decimal "height", default: "0.0"
    t.decimal "width", default: "0.0"
    t.decimal "depth", default: "0.0"
    t.string "type"
    t.string "kind"
    t.decimal "volume", default: "0.0"
    t.decimal "area", default: "0.0"
    t.decimal "pallet", default: "0.0"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_warehouse_locations_on_customer_id"
    t.index ["warehouse_id", "name"], name: "index_warehouse_locations_on_warehouse_id_and_name", unique: true
    t.index ["warehouse_id"], name: "index_warehouse_locations_on_warehouse_id"
  end

  create_table "warehouses", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id", "name"], name: "index_warehouses_on_customer_id_and_name", unique: true
    t.index ["customer_id"], name: "index_warehouses_on_customer_id"
  end

  add_foreign_key "stocks", "products"
  add_foreign_key "stocks", "warehouse_locations"
  add_foreign_key "warehouse_locations", "customers"
  add_foreign_key "warehouse_locations", "warehouses"
  add_foreign_key "warehouses", "customers"
end
