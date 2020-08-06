class WarehouseLocation < ApplicationRecord

  before_save :calculate_location_values

  belongs_to :warehouse
  belongs_to :customer
  has_many :stocks, dependent: :destroy
  has_many :products, through: :stocks



  private

  def calculate_location_values
		self.volume = self.width * self.height * self.depth
    self.area = self.width * self.depth
	end

end
