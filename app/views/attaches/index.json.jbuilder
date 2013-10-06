json.array!(@attaches) do |attach|
  json.extract! attach, :file, :title, :description
  json.url attach_url(attach, format: :json)
end
