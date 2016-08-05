class Product < ActiveRecord::Base
  has_many :locations_products
  has_many :locations, through: :locations_products
end
