class Region < ApplicationRecord
  belongs_to :country
  has_many :communes, dependent: :destroy
end
