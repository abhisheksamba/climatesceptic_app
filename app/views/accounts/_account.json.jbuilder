json.extract! account, :id, :name, :email, :password_digest, :created_at, :updated_at
json.url account_url(account, format: :json)
