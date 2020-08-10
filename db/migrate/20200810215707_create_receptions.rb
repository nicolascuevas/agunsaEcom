class CreateReceptions < ActiveRecord::Migration[6.0]
  def change
    create_table :receptions do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :warehouse, null: false, foreign_key: true
      t.integer :rrp_number
      t.integer :guia_aga_o_fa
      t.string :customer_reference_document
      t.string :recepcion_backup_document
      t.datetime :start_unload
      t.datetime :finish_unload
      t.datetime :digitation_date
      t.integer :reception_number
      t.string :origin
      t.integer :recepcion_order_number
      t.string :reception_observation
      t.string :rrp_observation
      t.string :reception_order_observation
      t.string :container_seal
      t.datetime :recepcion_order_date
      t.string :reception_order_backup_document
      t.integer :ctnr_code

      t.timestamps
    end
  end
end
