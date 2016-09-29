json.extract! person, :id, :first_name, :last_name, :date_of_birth, :gender, :height_in_inches, :weight_in_pounds, :created_at, :updated_at
json.url person_url(person, format: :json)