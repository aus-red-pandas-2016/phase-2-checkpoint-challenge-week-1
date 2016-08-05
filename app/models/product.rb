class Product < ActiveRecord::Base
  has_many :location_products
  has_many :locations, through: :location_products
end
