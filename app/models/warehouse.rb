class Warehouse < ApplicationRecord
  belongs_to :customer
  has_many :products
  has_many :warehouse_locations, dependent: :destroy
  has_many :stocks, through: :warehouse_locations


  def self.import_agunsa_warehouses(warehouses)
    warehouses.each do |warehouse_data|
      customer = Customer.where( "client_code like (?)", warehouse_data['codigo_cliente'].tr(" ", "") ).first
      if customer
        customer.warehouses.create_or_find_by({ name: warehouse_data['codigo_bodega'].tr(" ", "") })
      else
        puts "No hay Cliente #{warehouse_data['codigo_cliente'].tr(" ", "")}"
      end
    end
  end
  

end
