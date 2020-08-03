class Country < ApplicationRecord

    has_many :regions
    has_many :communes, through: :regions

end
