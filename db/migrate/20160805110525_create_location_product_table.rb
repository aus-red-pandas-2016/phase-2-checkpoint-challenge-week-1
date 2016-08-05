class CreateLocationProductTable < ActiveRecord::Migration
  def change
      create_table :location_products do |t|
      t.integer :product_id
      t.integer :location_id

      t.timestamps
    end
  end
end
