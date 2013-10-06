json.array!(@items) do |item|
  json.extract! item, :name, :description, :status
  json.url item_url(item, format: :json)
end
