class Location < ActiveRecord::Base
  belongs_to :store
  has_and_belongs_to_many :products
end
