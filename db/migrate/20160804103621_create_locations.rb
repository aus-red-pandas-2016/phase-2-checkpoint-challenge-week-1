class CreateLocations < ActiveRecord::Migration
  def change
  	 create_table :locations do |t| 
  		t.references :store
  		t.string :address
  	end
  end
end
