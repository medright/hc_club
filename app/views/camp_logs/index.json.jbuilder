json.array!(@camp_logs) do |camp_log|
  json.extract! camp_log, :id, :registration_id, :log, :picture, :user_id
  json.url camp_log_url(camp_log, format: :json)
end
