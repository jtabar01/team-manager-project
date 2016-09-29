json.extract! postal_address, :id, :street_line_1, :street_line_2, :city, :state, :zip, :created_at, :updated_at
json.url postal_address_url(postal_address, format: :json)