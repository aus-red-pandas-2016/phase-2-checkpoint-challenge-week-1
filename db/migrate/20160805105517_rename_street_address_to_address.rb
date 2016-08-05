class RenameStreetAddressToAddress < ActiveRecord::Migration
  def change
    remove_column :locations, :street_address
    add_column :locations, :address, :string
  end
end
