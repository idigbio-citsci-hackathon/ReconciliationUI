json.array!(@transcribed_records) do |transcribed_record|
  json.extract! transcribed_record, :id, :collection_id, :subject_id, :user_id, :filename, :created_at, :source_id, :collector, :collector_number, :collection_date, :collection_date_end, :scientific_name, :host, :habitat, :notes, :elevation, :lat_lon, :location, :county, :state_province, :country, :registration_number, :page_number
  json.url transcribed_record_url(transcribed_record, format: :json)
end
