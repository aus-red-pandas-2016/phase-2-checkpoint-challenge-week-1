class CreateLocationProducts < ActiveRecord::Migration
  def change
  	create_table :location_products do |t| 
  		t.references :location
  		t.references :product
  	end
  end
end
