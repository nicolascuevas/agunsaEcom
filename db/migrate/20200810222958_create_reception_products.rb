class CreateReceptionProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :reception_products do |t|
      t.references :reception, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.string :lot_code

      t.timestamps
    end
  end
end
