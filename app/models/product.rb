class Product < ApplicationRecord

	before_save :calculate_item_values

	belongs_to :customer
	has_many :stocks


	def self.import_agunsa_products(customer)

		products = AgunsaManager::GetProducts.call(customer.client_code)
		products.each do |product_info|
			customer.products.find_or_initialize_by({
					name: product_info['nombre'],
					product_code: product_info['codigo_producto'].tr(" ", "")
			}) do |product|
				product.super_family =  product_info['nombre_superfamilia_cliente']
				product.family =  product_info['nombre_familia_cliente']
				product.sub_family =  product_info['nombre_subfamilia_cliente']
				product.liters = product_info['litros_producto'].to_f
				product.weight = product_info['kilos_caja'].to_f
				product.height = product_info['alto_caja'].to_f
				product.width = product_info['ancho_caja'].to_f
				product.depth = product_info['largo_caja'].to_f
				product.units_per_box = product_info['unidades_por_caja'].to_i
				product.items_per_box = product_info['unidades_por_caja'].to_i
				product.state = "ACTIVO"
				product.boxes_per_pallet_floor = product_info['cajas_por_pata'].to_i
				product.floors_per_pallet = product_info['patas_por_pallet'].to_i
				product.boxes_per_pallet = product_info['cajas_por_pallet'].to_i
				product.unit_type = product_info['unidad']
				product.customer_price = product_info['valor_cliente']
				product.alternative_code = product_info['codigo-alternativo']
				product.save
			end
		end

	end



	private

	def calculate_item_values
		box_volume = self.height * self.width * self.depth / 1000000000
		cubic_side = box_volume ** (1/3) 
		self.box_volume = box_volume
		self.item_height = cubic_side
		self.item_width = cubic_side
		self.item_depth = cubic_side

		if self.units_per_box == 0
			self.item_weight = 0
		else
			self.item_weight = self.weight/self.units_per_box
		end
		
	end

end

