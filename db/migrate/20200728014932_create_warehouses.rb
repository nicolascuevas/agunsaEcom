class CreateWarehouses < ActiveRecord::Migration[6.0]
  def change
    create_table :warehouses do |t|
      t.references :customer, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
