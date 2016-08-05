class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :street_address
      t.integer :store_id

      t.timestamps
    end
  end
end
