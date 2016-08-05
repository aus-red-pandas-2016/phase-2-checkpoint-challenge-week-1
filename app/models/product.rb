class Product < ActiveRecord::Base
  has_many :locations, through: :location_product
end
