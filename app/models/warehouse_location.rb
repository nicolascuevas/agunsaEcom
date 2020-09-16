class WarehouseLocation < ApplicationRecord

  before_save :calculate_location_values

  belongs_to :warehouse
  belongs_to :customer
  has_many :stocks, dependent: :destroy
  has_many :products, through: :stocks



  def self.import_agunsa_warehouse_locations(warehouse)

    warehouse_locations_info = AgunsaManager::GetWarehouseLocations.call(warehouse.name)
    warehouse_locations_info.each do |location_info|
      warehouse.warehouse_locations.find_or_initialize_by({
            name: location_info['codigo_ubicacion'].tr(" ", "").downcase
      }) do |warehouse_location|
        warehouse_location.customer_id = warehouse.customer_id
        warehouse_location.height = location_info['alto'].to_f
        warehouse_location.width = location_info['ancho'].to_f
        warehouse_location.depth = location_info['profundidad'].to_f
        warehouse_location.location_type = location_info['tipo']
        warehouse_location.kind = location_info['forma']

        warehouse_location.save
      end
    end

  end


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
