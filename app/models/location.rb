class Location < ActiveRecord::Base
  belongs_to :store, { presence: true }
  has_many :products, through: :location_products, foreign_key: "product_id"
end
