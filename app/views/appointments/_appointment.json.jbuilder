json.extract! appointment, :id, :date, :doctor, :medic_center, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
