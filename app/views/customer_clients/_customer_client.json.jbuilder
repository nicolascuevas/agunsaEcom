json.extract! customer_client, :id, :customer_id, :name, :last_name, :identifier, :email, :phone, :created_at, :updated_at
json.url customer_client_url(customer_client, format: :json)
