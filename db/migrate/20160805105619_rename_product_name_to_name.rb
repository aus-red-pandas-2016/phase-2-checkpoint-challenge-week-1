class RenameProductNameToName < ActiveRecord::Migration
  def change
    remove_column :products, :product_name
    add_column :products, :name, :string
  end
end
