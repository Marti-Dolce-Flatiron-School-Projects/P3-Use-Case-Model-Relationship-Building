class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :address
      t.string :community
      t.date :first_listed
      t.string :bedrooms
      t.string :bathrooms
      t.string :SQFT
      t.decimal :asking_price
      t.string :photo_1
      t.string :photo_2
      t.string :photo_3
      t.string :photo_4
      t.integer :hoa_id

      t.timestamps
    end
  end
end
