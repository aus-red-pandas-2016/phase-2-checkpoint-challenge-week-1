class Product < ActiveRecord::Base
  has_many :product_locations
  has_many :locations, through: :product_locations
end
