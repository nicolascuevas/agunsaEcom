class ChangeClientToCustomerInProducts < ActiveRecord::Migration[6.0]
  def change
  	rename_column :products, :client_id, :customer_id
  end
end
