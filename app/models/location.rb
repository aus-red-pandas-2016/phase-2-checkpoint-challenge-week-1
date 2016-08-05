class Location < ActiveRecord::Base
  belongs_to :store
  has_many :location_products
  has_many :products, through: :location_products, class_name: "Product"
end
