class WarehouseLocation < ApplicationRecord
  belongs_to :warehouse
  belongs_to :customer
  has_many :stocks

end
