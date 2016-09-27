json.extract! event, :id, :event_id, :event_type_id, :event_datetime, :team_id_id, :created_by, :open_to_public, :created_at, :updated_at
json.url event_url(event, format: :json)