class CreateWarehouseLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :warehouse_locations do |t|
      t.references :warehouse, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.string :name
      t.decimal :height, default: 0
      t.decimal :width, default: 0
      t.decimal :depth, default: 0
      t.string :type
      t.string :kind
      t.decimal :volume, default: 0
      t.decimal :area, default: 0
      t.decimal :pallet, default: 0

      t.timestamps
    end
  end
end
