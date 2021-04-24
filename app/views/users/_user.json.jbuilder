json.extract! user, :id, :fname, :lname, :username, :email, :password_field, :created_at, :updated_at
json.url user_url(user, format: :json)
