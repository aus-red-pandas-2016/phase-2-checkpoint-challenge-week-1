class CreateProductLocations < ActiveRecord::Migration
  def change
    create_table :product_locations do |t|
      t.integer :product_id
      t.integer :location_id

      t.timestamps
    end
  end
end
