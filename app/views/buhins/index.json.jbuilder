json.array!(@buhins) do |buhin|
  json.extract! buhin, :id, :hinmei, :hinban, :nouhin_sya, :nouhin_day, :tantou, :kosu, :jikken_id
  json.url buhin_url(buhin, format: :json)
end
