class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :client_code
      t.string :address

      t.timestamps
    end
  end
end
