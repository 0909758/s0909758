json.extract! user, :id, :first_name, :last_name, :age, :bio, :email, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)