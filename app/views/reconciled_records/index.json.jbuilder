json.array!(@reconciled_records) do |reconciled_record|
  json.extract! reconciled_record, :id, :subject_id, :collector, :collector_number, :collection_date, :collection_date_begin, :collection_date_end, :scientific_name, :host, :habitat, :notes, :elevation, :lat_lon, :location, :county, :state_province, :country, :registration_number, :page_number, :reconciler_name
  json.url reconciled_record_url(reconciled_record, format: :json)
end
