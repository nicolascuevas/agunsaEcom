class Country < ApplicationRecord

    has_many :regions, dependent: :destroy
    has_many :communes, through: :regions

end
