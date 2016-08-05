class Location < ActiveRecord::Base
  belongs_to :stores
  has_many :location_products
  has_many :products, through: :location_products
end
