class RenameUserIdToUserIdInListings < ActiveRecord::Migration[6.1]
  def change
    rename_column :listings, :user__id, :user_id
  end
end
