class CreateCommunes < ActiveRecord::Migration[6.0]
  def change
    create_table :communes do |t|
      t.references :region, null: false, foreign_key: true
      t.string :name
      t.string :sil_code

      t.timestamps
    end
  end
end
