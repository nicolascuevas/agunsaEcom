json.extract! customer, :id, :name, :client_code, :address, :created_at, :updated_at
json.url customer_url(customer, format: :json)
