class AddDescriptionToListing < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :description, :text
  end
end
