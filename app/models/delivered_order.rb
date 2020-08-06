class DeliveredOrder < ApplicationRecord
  belongs_to :customer
  belongs_to :warehouse
  belongs_to :customer_client
  has_many :delivered_order_products, dependent: :destroy
  has_many :products, through: :delivered_order_products


  def self.import_agunsa_delivered_orders(customer)
    
    orders_info = AgunsaManager::GetDeliveredOrders.call(customer.client_code, customer.delivered_orders.last.present? ? customer.delivered_orders.last.delivery_number : nil )
    warehouses = customer.warehouses
    puts orders_info.count
    
    i = 1
    while i <= orders_info.count do
      order_items = []
      order_items.push(orders_info[i-1])
      while ( i < orders_info.count && orders_info[i]['numero_despacho'] == order_items.last['numero_despacho'] )  do
        order_items.push(orders_info[i])
        i = i+1
      end
      DeliveredOrder.create_with_childs(order_items, warehouses)
      i = i+1
    end
  end

  def self.create_with_childs(orders_info, warehouses)
    warehouse = warehouses.select{ |warehouse| warehouse.name == orders_info[0]['codigo_bodega'] }.first
    commune = Commune.where("sil_code ILIKE ?", "%#{orders_info[0]['ldf']}%").first
    customer_client = CustomerClient.find_or_create_with_address(warehouse.customer_id,orders_info[0]['codigo_bodega'].split(" ")[0],orders_info[0]['codigo_bodega'].split(" ")[1],orders_info[0]['codigo_cliente_de_cliente'], commune.id,"","","")
    customer = warehouse.customer

    if( DeliveredOrder.where({ customer: customer, delivery_number: orders_info[0]['numero_despacho'].to_i }).empty? )
      delivered_order = DeliveredOrder.create({
        customer: customer,
        warehouse: warehouse,
        distribution_center_out_date: orders_info[0]['fecha_salida_cd'],
        digitation_date: orders_info[0]['fecha_digitacion'],
        customer_visit_date: orders_info[0]['fecha_visita_cliente'],
        order_programmed_date: orders_info[0]['fecha_hora_programada'],
        delivery_number:orders_info[0]['numero_despacho'].to_i,
        picking_order_number: orders_info[0]['numero_order_pickeo'].to_i,
        customer_client: customer_client,
        delivery_backup_document: orders_info[0]['documento_respaldo_en'],
        delivery_aditional_backup_document: orders_info[0]['documento_adicional_en'],
        delivery_observation: orders_info[0]['observaciones_en'],
        order_number: orders_info[0]['numero_orden_despacho'],
        order_backup_document: orders_info[0]['documento_respaldo_od'],
        aditional_order_backup_document: orders_info[0]['documento_adicional_od'],
        order_observation: orders_info[0]['observaciones_od'],
        delivery_route_number: orders_info[0]['numero_hr'].to_i
      })
      products_array = []
      orders_info.each do |order_info|
        products_array.push(
          {
            delivered_order_id: delivered_order.id,
            product_id: customer.products.where("product_code ILIKE ?", "%#{order_info['codigo_producto'].tr(" ","")}%").first.id,
            quantity: order_info['cantidad_salida_producto'].to_i,
            lot_code: order_info['codigo_lote'].tr(" ",""),
            observation: order_info['observaciones_od'],
            updated_at: DateTime.now,
            created_at: DateTime.now
          }
        )
      end
      ##we inser products to delivered order
      DeliveredOrderProduct.insert_all!(products_array)

    else
      puts "Already Exists"
    end

  end
  

end



#     t.bigint "delivered_order_id", null: false
#     t.bigint "product_id", null: false
#     t.integer "quantity"
#     t.string "lot_code"
#     t.string "observation"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["delivered_order_id"], name: "index_delivered_order_products_on_delivered_order_id"
#     t.index ["product_id"], name: "index_delivered_order_products_on_product_id"
