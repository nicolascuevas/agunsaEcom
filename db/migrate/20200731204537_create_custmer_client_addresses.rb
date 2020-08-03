class CreateCustmerClientAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :custmer_client_addresses do |t|
      t.references :customer_client, null: false, foreign_key: true
      t.references :commune, null: false, foreign_key: true
      t.string :street
      t.string :number
      t.string :address_detail
      t.decimal :lat
      t.decimal :long

      t.timestamps
    end
  end
end
