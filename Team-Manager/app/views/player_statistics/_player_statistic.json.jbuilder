json.extract! player_statistic, :id, :player_id_id, :statistic_type, :statistic_value, :date_recorded, :stat_id, :created_at, :updated_at
json.url player_statistic_url(player_statistic, format: :json)