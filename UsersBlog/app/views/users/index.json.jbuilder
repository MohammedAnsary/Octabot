json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :username, :photo, :admin, :signature
  json.url user_url(user, format: :json)
end
