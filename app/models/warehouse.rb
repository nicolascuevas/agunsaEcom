class Warehouse < ApplicationRecord
  belongs_to :customer
  has_many :products
  has_many :warehouse_locations
  has_many :stocks, through: :warehouse_locations

end
