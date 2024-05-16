json.extract! user, :id, :lastname, :firstname, :user_level, :username, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
