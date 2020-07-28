json.extract! stock, :id, :product_id, :warehouse_location_id, :quantity, :incoming_quantity, :outgoing_quantity, :blocked_quantity, :lot_code, :lot_elaboration_date, :lot_expiration_date, :created_at, :updated_at
json.url stock_url(stock, format: :json)
