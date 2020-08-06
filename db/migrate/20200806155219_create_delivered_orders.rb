class CreateDeliveredOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :delivered_orders do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :warehouse, null: false, foreign_key: true
      t.datetime :distribution_center_out_date
      t.datetime :digitation_date
      t.datetime :customer_visit_date
      t.datetime :order_programmed_date
      t.integer :delivery_number
      t.integer :picking_order_number
      t.references :customer_client, null: false, foreign_key: true
      t.string :delivery_backup_document
      t.string :delivery_aditional_backup_document
      t.string :delivery_observation
      t.integer :order_number
      t.string :order_backup_document
      t.string :aditional_order_backup_document
      t.string :order_observation
      t.integer :delivery_route_number

      t.timestamps
    end
  end
end
