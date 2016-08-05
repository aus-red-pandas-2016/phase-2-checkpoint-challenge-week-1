class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name, null: false
    end
  end
end
