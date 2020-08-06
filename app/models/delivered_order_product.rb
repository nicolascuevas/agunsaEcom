class DeliveredOrderProduct < ApplicationRecord
  belongs_to :delivered_order
  belongs_to :product
end
