class Reception < ApplicationRecord
  belongs_to :customer
  belongs_to :warehouse
  has_many :reception_products






  def self.import_agunsa_receptions(customer)
    
    receptions_info = AgunsaManager::GetReceptions.call(customer.client_code, customer.receptions.last.present? ? customer.receptions.last.reception_number : nil )
    warehouses = customer.warehouses
    puts receptions_info.count
    
    i = 1
    while i <= receptions_info.count do
      reception_items = []
      reception_items.push(receptions_info[i-1])
      while ( i < receptions_info.count && receptions_info[i]['numero_re'] == reception_items.last['numero_re'] )  do
        reception_items.push(receptions_info[i])
        i = i+1
      end
      Reception.create_with_childs(reception_items, customer, warehouses)
      i = i+1
    end
  end


  def self.create_with_childs(reception_items, customer, warehouses)
    warehouse = warehouses.select{ |warehouse| warehouse.name == reception_items[0]['codigo_bodega'] }.first

    if( Reception.where({ customer: customer, reception_number: reception_items[0]['numero_re'].to_i }).empty? )
      reception = Reception.create({
        customer: customer,
        warehouse: warehouse,
        reception_number: reception_items[0]['numero_re'],
        rrp_number: reception_items[0]['numero_rrp'],
        guia_aga_o_fa: reception_items[0]['guia_aga_o_fa'],
        customer_reference_document: reception_items[0]['documento_referencia_cliente'],
        recepcion_backup_document: reception_items[0]['documento_respaldo_re'],
        start_unload: reception_items[0]['fecha_inicio_descarga'],
        finish_unload: reception_items[0]['fecha_termino_descarga'],
        digitation_date: reception_items[0]['fecha_digitacion'],
        origin: reception_items[0]['origen'],
        recepcion_order_number: reception_items[0]['numero_orden_recepcion'],
        reception_observation: reception_items[0]['Observaciones_RE'],
        rrp_observation: reception_items[0]['Observaciones_RRP'],
        reception_order_observation: reception_items[0]['Observaciones_OR'],
        container_seal: reception_items[0]['Sello_contenedor'],
        recepcion_order_date: reception_items[0]['fecha_orden_recepcion'],
        reception_order_backup_document: reception_items[0]['documento_respaldo_or'],
        ctnr_code: reception_items[0]['codigo_CTNR']

      })
      products_array = []
      reception_items.each do |reception_info|
        products_array.push(
          {
            reception_id: reception.id,
            product_id: customer.products.where("product_code ILIKE ?", "%#{reception_info['codigo_producto'].tr(" ","")}%").first.id,
            quantity: reception_info['cantidad_entrada_producto'].to_i,
            lot_code: reception_info['codigo_lote'].tr(" ",""),
            updated_at: DateTime.now,
            created_at: DateTime.now
          }
        )
      end
      ##we inser products to delivered order
      ReceptionProduct.insert_all!(products_array)

    else
      puts "Already Exists"
    end

  end
  
end
