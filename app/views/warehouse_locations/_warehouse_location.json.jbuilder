json.extract! warehouse_location, :id, :warehouse_id, :customer_id, :name, :height, :width, :depth, :type, :kind, :volume, :area, :pallet, :created_at, :updated_at
json.url warehouse_location_url(warehouse_location, format: :json)
