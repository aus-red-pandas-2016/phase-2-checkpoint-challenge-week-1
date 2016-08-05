class Location < ActiveRecord::Base
  has_one  :store
  has_many :product_locations
  has_many :products, through: :product_locations
end
