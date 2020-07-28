class Product < ApplicationRecord

	before_save :calculate_item_values

	belongs_to :customer
	has_many :stocks


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

