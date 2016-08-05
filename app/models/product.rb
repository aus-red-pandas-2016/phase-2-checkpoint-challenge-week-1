class Product < ActiveRecord::Base
  has_many :location_products
end
