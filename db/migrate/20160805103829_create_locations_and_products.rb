class CreateLocationsAndProducts < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address, null: false
      t.belongs_to :store, index: true
    end

    create_table :products do |t|
      t.string :name, null: false
    end

    create_table :locations_products, id: false do |t|
      t.belongs_to :location, index: true
      t.belongs_to :product, index: true
    end
  end
end
