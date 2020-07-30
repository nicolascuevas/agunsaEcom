class AddIndexToWarehouses < ActiveRecord::Migration[6.0]
  def change
    add_index :warehouses, [:customer_id, :name], unique: true
    add_index :stocks, [:warehouse_location_id, :product_id, :lot_code, :lot_elaboration_date, :lot_expiration_date], unique: true, name: 'location_product_lot_index'
    add_index :warehouse_locations, [:warehouse_id, :name], unique: true
  end
end
