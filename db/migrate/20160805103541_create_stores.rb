class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name, { null: false }

      t.timestamps(null: false)
    end
  end
end
