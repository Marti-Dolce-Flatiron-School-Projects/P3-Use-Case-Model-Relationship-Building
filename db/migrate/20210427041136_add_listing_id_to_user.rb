class AddListingIdToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :listing_id, :integer
  end
end
