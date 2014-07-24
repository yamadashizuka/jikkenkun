json.array!(@buhins) do |buhin|
  json.extract! buhin, :id, :hinmei, :hinban, :nouhin_sya, :nouhin_day, :tantou, :kosu, :jikken_id, :deadline
  json.url buhin_url(buhin, format: :json)
end
