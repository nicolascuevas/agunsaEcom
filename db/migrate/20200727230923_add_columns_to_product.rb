class AddColumnsToProduct < ActiveRecord::Migration[6.0]
  def change
  add_column :products, :floors_per_pallet, :integer, default: 0
    add_column :products, :box_volume, :decimal, default: 0
    add_column :products, :item_height, :decimal, default: 0
    add_column :products, :item_width, :decimal, default: 0
    add_column :products, :item_depth, :decimal, default: 0
    add_column :products, :item_weight, :decimal, default: 0
    add_column :products, :items_per_box, :integer, default: 0
    add_column :products, :customer_price, :integer, default: 0
    add_column :products, :unit_type, :string, default: "UNIT"
    add_column :products, :alternative_code, :string
  end
end
