class Customer < ApplicationRecord

	has_many :products, dependent: :destroy
	has_many :stocks, through: :products
	has_many :warehouses, dependent: :destroy
	has_many :warehouse_locations
	has_many :delivered_orders
	has_many :receptions


	def self.import_customers_data
		Customer.all.each do |customer|
			#Product.import_agunsa_products(customer)
			DataUpdaterJob.perform_later(customer)
		end
	end
	

	def self.import_agunsa_customers(customers)
		customers.each do |customer_data|
			customer = Customer.find_or_create_with_address(
				{  
					client_code: customer_data['codigo_cliente'].tr(" ", ""),
					name: customer_data['nombre'].tr("  ", "")
				}
			)


		end
		
	end

	

end


