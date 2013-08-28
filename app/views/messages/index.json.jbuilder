json.array!(@messages) do |message|
  json.extract! message, :msg_id, :gw_id, :user_id, :origin, :destination, :content, :re_status, :re_msg_status
  json.url message_url(message, format: :json)
end
