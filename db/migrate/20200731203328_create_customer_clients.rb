class CreateCustomerClients < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_clients do |t|
      t.references :customer, null: false, foreign_key: true
      t.string :name
      t.string :last_name
      t.string :identifier
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
