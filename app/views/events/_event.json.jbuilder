json.extract! event, :id, :name, :description, :event_date, :event_time, :attending, :venue, :address_line_1, :address_line_2, :city, :postcode, :phone, :latitude, :longitude, :created_at, :updated_at
json.url event_url(event, format: :json)
