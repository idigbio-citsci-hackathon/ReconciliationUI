json.array!(@filenames) do |filename|
  json.extract! filename, :id, :filename
  json.url filename_url(filename, format: :json)
end
