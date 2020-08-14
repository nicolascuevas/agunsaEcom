class DataUpdaterJob < ApplicationJob
  queue_as :default

  def perform(customer)
    customer.stocks.destroy_all
    customer.warehouse_locations.destroy_all
    Product.import_agunsa_products(customer)
    Warehouse.import_agunsa_warehouse_info(customer)
    Reception.import_agunsa_receptions(customer)
    DeliveredOrder.import_agunsa_delivered_orders(customer)
  end



  


  

end
