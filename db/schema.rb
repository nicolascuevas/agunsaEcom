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

ActiveRecord::Schema.define(version: 2020_08_10_222958) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communes", force: :cascade do |t|
    t.bigint "region_id", null: false
    t.string "name"
    t.string "sil_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_id"], name: "index_communes_on_region_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "custmer_client_addresses", force: :cascade do |t|
    t.bigint "customer_client_id", null: false
    t.bigint "commune_id", null: false
    t.string "street"
    t.string "number"
    t.string "address_detail"
    t.decimal "lat"
    t.decimal "long"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["commune_id"], name: "index_custmer_client_addresses_on_commune_id"
    t.index ["customer_client_id"], name: "index_custmer_client_addresses_on_customer_client_id"
  end

  create_table "customer_clients", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.string "name"
    t.string "last_name"
    t.string "identifier"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_customer_clients_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "client_code"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_code"], name: "index_customers_on_client_code", unique: true
  end

  create_table "delivered_order_products", force: :cascade do |t|
    t.bigint "delivered_order_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.string "lot_code"
    t.string "observation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["delivered_order_id"], name: "index_delivered_order_products_on_delivered_order_id"
    t.index ["product_id"], name: "index_delivered_order_products_on_product_id"
  end

  create_table "delivered_orders", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "warehouse_id", null: false
    t.datetime "distribution_center_out_date"
    t.datetime "digitation_date"
    t.datetime "customer_visit_date"
    t.datetime "order_programmed_date"
    t.integer "delivery_number"
    t.integer "picking_order_number"
    t.bigint "customer_client_id", null: false
    t.string "delivery_backup_document"
    t.string "delivery_aditional_backup_document"
    t.string "delivery_observation"
    t.integer "order_number"
    t.string "order_backup_document"
    t.string "aditional_order_backup_document"
    t.string "order_observation"
    t.integer "delivery_route_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_client_id"], name: "index_delivered_orders_on_customer_client_id"
    t.index ["customer_id"], name: "index_delivered_orders_on_customer_id"
    t.index ["warehouse_id"], name: "index_delivered_orders_on_warehouse_id"
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

  create_table "reception_products", force: :cascade do |t|
    t.bigint "reception_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.string "lot_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_reception_products_on_product_id"
    t.index ["reception_id"], name: "index_reception_products_on_reception_id"
  end

  create_table "receptions", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "warehouse_id", null: false
    t.integer "rrp_number"
    t.integer "guia_aga_o_fa"
    t.string "customer_reference_document"
    t.string "recepcion_backup_document"
    t.datetime "start_unload"
    t.datetime "finish_unload"
    t.datetime "digitation_date"
    t.integer "reception_number"
    t.string "origin"
    t.integer "recepcion_order_number"
    t.string "reception_observation"
    t.string "rrp_observation"
    t.string "reception_order_observation"
    t.string "container_seal"
    t.datetime "recepcion_order_date"
    t.string "reception_order_backup_document"
    t.integer "ctnr_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_receptions_on_customer_id"
    t.index ["warehouse_id"], name: "index_receptions_on_warehouse_id"
  end

  create_table "regions", force: :cascade do |t|
    t.bigint "country_id", null: false
    t.string "name"
    t.string "sil_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_regions_on_country_id"
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
    t.index ["warehouse_location_id", "product_id", "lot_code", "lot_elaboration_date", "lot_expiration_date"], name: "location_product_lot_index", unique: true
    t.index ["warehouse_location_id"], name: "index_stocks_on_warehouse_location_id"
  end

  create_table "warehouse_locations", force: :cascade do |t|
    t.bigint "warehouse_id", null: false
    t.bigint "customer_id", null: false
    t.string "name"
    t.decimal "height", default: "0.0"
    t.decimal "width", default: "0.0"
    t.decimal "depth", default: "0.0"
    t.string "location_type"
    t.string "kind"
    t.decimal "volume", default: "0.0"
    t.decimal "area", default: "0.0"
    t.decimal "pallet", default: "0.0"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "aisle"
    t.string "section"
    t.string "level"
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

  add_foreign_key "communes", "regions"
  add_foreign_key "custmer_client_addresses", "communes"
  add_foreign_key "custmer_client_addresses", "customer_clients"
  add_foreign_key "customer_clients", "customers"
  add_foreign_key "delivered_order_products", "delivered_orders"
  add_foreign_key "delivered_order_products", "products"
  add_foreign_key "delivered_orders", "customer_clients"
  add_foreign_key "delivered_orders", "customers"
  add_foreign_key "delivered_orders", "warehouses"
  add_foreign_key "reception_products", "products"
  add_foreign_key "reception_products", "receptions"
  add_foreign_key "receptions", "customers"
  add_foreign_key "receptions", "warehouses"
  add_foreign_key "regions", "countries"
  add_foreign_key "stocks", "products"
  add_foreign_key "stocks", "warehouse_locations"
  add_foreign_key "warehouse_locations", "customers"
  add_foreign_key "warehouse_locations", "warehouses"
  add_foreign_key "warehouses", "customers"
end
