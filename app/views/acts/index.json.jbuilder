json.array!(@acts) do |act|
  json.extract! act, :id, :category, :description, :date
  json.url act_url(act, format: :json)
end
