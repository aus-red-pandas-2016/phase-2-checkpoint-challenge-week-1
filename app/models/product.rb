class Product < ActiveRecord::Base
  has_many :locations, through: :location_products, foreign_key: "location_id"
end
