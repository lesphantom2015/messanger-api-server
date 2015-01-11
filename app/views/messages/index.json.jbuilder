json.array!(@messages) do |message|
  json.extract! message, :id, :user1, :user2, :message
  json.url message_url(message, format: :json)
end
