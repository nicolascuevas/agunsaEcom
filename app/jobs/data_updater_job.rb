class DataUpdaterJob < ApplicationJob
  queue_as :default

  def perform(customer)
    Stock.where(warehouse_location_id: customer.warehouse_locations.ids).delete_all
    WarehouseLocation.where(warehouse_id: customer.warehouses.ids).delete_all
    Product.import_agunsa_products(customer)
    Warehouse.import_agunsa_warehouse_info(customer)
    Reception.import_agunsa_receptions(customer)
    DeliveredOrder.import_agunsa_delivered_orders(customer)
  end



  


  

end
