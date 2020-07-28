class AddIndexToWarehouses < ActiveRecord::Migration[6.0]
  def change
    add_index :warehouses, [:customer_id, :name], unique: true
    add_index :stocks, [:warehouse_location_id, :product_id], unique: true
    add_index :warehouse_locations, [:warehouse_id, :name], unique: true
  end
end
