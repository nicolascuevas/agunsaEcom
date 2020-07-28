class Customer < ApplicationRecord

	has_many :products
	has_many :warehouses
	has_many :warehouse_locations


end


