class Stock < ApplicationRecord

  belongs_to :product
  belongs_to :warehouse_location

  def pallets
    if (self.product.boxes_per_pallet != 0 && self.product.units_per_box != 0)
      (self.quantity/self.product.units_per_box)/self.product.boxes_per_pallet
    else
      0
    end
  end


  def volume
  if self.product.box_volume
    return self.product.box_volume
  end
    return self.product.box_volume
  end
  
  


end
