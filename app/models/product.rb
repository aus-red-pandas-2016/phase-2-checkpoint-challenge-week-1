class Product < ActiveRecord::Base
  has_many :locations, through: :locations_products
end
