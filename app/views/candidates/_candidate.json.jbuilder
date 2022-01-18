json.extract! candidate, :id, :name, :profile, :letter, :immediate, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
