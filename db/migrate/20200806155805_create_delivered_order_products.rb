class CreateDeliveredOrderProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :delivered_order_products do |t|
      t.references :delivered_order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.string :lot_code
      t.string :observation

      t.timestamps
    end
  end
end
