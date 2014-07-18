json.array!(@jikkens) do |jikken|
  json.extract! jikken, :id, :title, :plan_start, :plan_end, :act_start, :act_end, :memo
  json.url jikken_url(jikken, format: :json)
end
