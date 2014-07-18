json.array!(@syaryos) do |syaryo|
  json.extract! syaryo, :id, :number_plate, :keeping_place, :condition, :memo, :status, :jikken_id
  json.url syaryo_url(syaryo, format: :json)
end
