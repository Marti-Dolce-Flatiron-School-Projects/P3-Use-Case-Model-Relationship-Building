class AddUserIdToListing < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :user__id, :integer
  end
end
