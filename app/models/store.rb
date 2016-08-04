class Store < ActiveRecord::Base
  has_many :locations
  has_many :products, through: :locations
end
