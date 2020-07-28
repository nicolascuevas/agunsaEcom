class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.references :product, null: false, foreign_key: true
      t.references :warehouse_location, null: false, foreign_key: true
      t.integer :quantity
      t.integer :incoming_quantity
      t.integer :outgoing_quantity
      t.integer :blocked_quantity
      t.string :lot_code
      t.datetime :lot_elaboration_date
      t.datetime :lot_expiration_date

      t.timestamps
    end
  end
end
