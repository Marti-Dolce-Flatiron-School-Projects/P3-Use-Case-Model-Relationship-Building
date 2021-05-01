class RenameHoasIdToHoaId < ActiveRecord::Migration[6.1]
  def change
    rename_column :listings, :hoa_id, :hoa_id
  end
end
