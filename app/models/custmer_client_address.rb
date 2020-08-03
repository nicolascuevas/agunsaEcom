class CustmerClientAddress < ApplicationRecord
  belongs_to :customer_client
  belongs_to :commune
end
