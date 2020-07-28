class ChangeTypeToLocationtypeInWarehouseLocations < ActiveRecord::Migration[6.0]
  def change
    rename_column :warehouse_locations, :type, :location_type
  end
end
