class AddDivisionsToWarehouseLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :warehouse_locations, :aisle, :string
    add_column :warehouse_locations, :section, :string
    add_column :warehouse_locations, :level, :string
  end
end
