class CreateLocationsProductsTable < ActiveRecord::Migration
  def change
    create_table :locations_products do |t|
      t.integer :location_id
      t.integer :product_id
    end
  end
end
