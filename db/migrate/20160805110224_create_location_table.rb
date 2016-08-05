class CreateLocationTable < ActiveRecord::Migration
  def change
      create_table :locations do |t|
      t.string :street_address

      t.timestamps
    end
  end
end
