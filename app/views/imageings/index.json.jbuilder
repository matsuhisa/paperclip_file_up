json.array!(@imageings) do |imageing|
  json.extract! imageing, :parent_id, :parent, :status
  json.url imageing_url(imageing, format: :json)
end
