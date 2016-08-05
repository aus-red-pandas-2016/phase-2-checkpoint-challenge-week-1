class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address, { null: false }
      t.integer :store_id

      t.timestamps(null: false)
    end
  end
end
