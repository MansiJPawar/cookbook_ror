json.extract! election, :id, :name, :email, :password, :date_of_birth, :phone_number, :created_at, :updated_at
json.url election_url(election, format: :json)
