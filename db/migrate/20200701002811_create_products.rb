class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :client_id
      t.string :product_code
      t.string :name
      t.string :super_family
      t.string :family
      t.string :sub_family
      t.boolean :is_expire
      t.decimal :liters
      t.string :state
      t.decimal :units_per_box
      t.decimal :weight
      t.decimal :height
      t.decimal :width
      t.decimal :depth
      t.integer :boxes_per_pallet
      t.integer :boxes_per_pallet_floor

      t.timestamps
    end
  end
end
