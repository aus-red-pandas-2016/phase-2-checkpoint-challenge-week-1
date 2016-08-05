class Location < ActiveRecord::Base
  belongs_to :stores
  has_many :products, through: :location_product
end
