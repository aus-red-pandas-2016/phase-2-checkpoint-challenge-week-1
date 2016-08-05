class Location < ActiveRecord::Base
  belongs_to :store, { presence: true }
end
