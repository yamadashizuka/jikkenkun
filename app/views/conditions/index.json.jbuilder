json.array!(@conditions) do |condition|
  json.extract! condition, :id, :name, :description
  json.url condition_url(condition, format: :json)
end
