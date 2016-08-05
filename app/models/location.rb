class Location < ActiveRecord::Base
  has_many :products, through: :locations_products
  belongs_to :store
end
