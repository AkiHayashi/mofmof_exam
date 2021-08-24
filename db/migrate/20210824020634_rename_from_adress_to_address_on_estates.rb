class RenameFromAdressToAddressOnEstates < ActiveRecord::Migration[5.2]
  def change
    rename_column :estates, :adress, :address
  end
end
