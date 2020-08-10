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

  def self.set_values_to_racks

    WarehouseLocation.where("name ~* ?", '^\d{6}$').order(name: :asc).each do |wl|
      wl.level = wl.name[5]
      wl.aisle = wl.name[0..1]
      wl.section = wl.name[2..3]
      p wl.name[4]
      wl.save
    end
    return nil
  end

  


end
