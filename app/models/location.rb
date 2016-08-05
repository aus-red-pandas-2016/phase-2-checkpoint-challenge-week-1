class Location < ActiveRecord::Base
  has_many :location_products
  has_many :products, through: :location_products
  belongs_to :store
end
