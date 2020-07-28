class AddIndexToCustomersAndProducts < ActiveRecord::Migration[6.0]
  def change
    add_index :customers, :client_code, unique: true
    add_index :products, [:customer_id, :product_code], unique: true
  end
end
