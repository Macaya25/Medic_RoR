json.extract! pacient, :id, :name, :last_name, :telephone, :mail, :address, :inf, :created_at, :updated_at
json.url pacient_url(pacient, format: :json)
