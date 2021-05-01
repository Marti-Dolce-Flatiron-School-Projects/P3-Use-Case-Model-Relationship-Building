class RemoveListingIdFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :listing_id, :integer
  end
end
