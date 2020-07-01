json.extract! product, :id, :customer_id, :product_code, :name, :super_family, :family, :sub_family, :is_expire, :liters, :state, :units_per_box, :weight, :height, :width, :depth, :boxes_per_pallet, :boxes_per_pallet_floor, :created_at, :updated_at
json.url product_url(product, format: :json)
