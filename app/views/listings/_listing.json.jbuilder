json.extract! listing, :id, :address, :community, :first_listed, :bedrooms, :bathrooms, :SQFT, :asking_price, :photo_1, :photo_2, :photo_3, :photo_4, :description, :hoa_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
