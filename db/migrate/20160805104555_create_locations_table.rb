class CreateLocationsTable < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string  :address
      t.integer :store_id
    end
  end
end
