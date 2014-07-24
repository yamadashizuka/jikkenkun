json.array!(@notifications) do |notification|
  json.extract! notification, :id, :contents, :available_from, :available_to
  json.url notification_url(notification, format: :json)
end
