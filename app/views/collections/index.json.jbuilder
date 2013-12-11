json.array!(@collections) do |collection|
  json.extract! collection, :id, :collection_name
  json.url collection_url(collection, format: :json)
end
