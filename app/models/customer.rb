class Customer < ApplicationRecord

	has_many :products, dependent: :destroy
	has_many :stocks, through: :products
	has_many :warehouses, dependent: :destroy
	has_many :warehouse_locations




	def self.import_agunsa_customers(customers)
		customers.each do |customer_data|
			customer = Customer.create_or_find_by({  client_code: customer_data['codigo_cliente'].tr(" ", ""),
											name: customer_data['nombre'].tr("  ", "")
										})
			puts customer_data['codigo_cliente'].tr(" ", "")

		end
	end

end


