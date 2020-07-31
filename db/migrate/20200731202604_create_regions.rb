class CreateRegions < ActiveRecord::Migration[6.0]
  def change
    create_table :regions do |t|
      t.references :country, null: false, foreign_key: true
      t.string :name
      t.string :sil_code

      t.timestamps
    end
  end
end
