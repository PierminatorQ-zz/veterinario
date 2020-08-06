json.extract! pet, :id, :name, :birthday, :breed, :client_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
