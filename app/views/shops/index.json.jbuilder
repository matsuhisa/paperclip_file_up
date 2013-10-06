json.array!(@shops) do |shop|
  json.extract! shop, :name, :description, :status
  json.url shop_url(shop, format: :json)
end
