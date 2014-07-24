json.array!(@jikkens) do |jikken|
  json.extract! jikken, :id, :title, :tanto, :plan_start, :plan_end, :act_start, :act_end, :deadline, :memo
  json.url jikken_url(jikken, format: :json)
end
