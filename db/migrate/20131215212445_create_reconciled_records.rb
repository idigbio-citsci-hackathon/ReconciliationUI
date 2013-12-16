class CreateReconciledRecords < ActiveRecord::Migration
  def change
    create_table :reconciled_records do |t|
      t.references :subject, index: true
      t.references :collection, index: true
      t.string :collector
      t.string :collector_number
      t.string :collection_date
      t.string :collection_date_begin
      t.string :collection_date_end
      t.string :scientific_name
      t.string :host
      t.string :habitat
      t.string :notes
      t.string :elevation
      t.string :lat_lon
      t.string :location
      t.string :county
      t.string :state_province
      t.string :country
      t.string :registration_number
      t.string :page_number
      t.string :reconciler_name

      t.timestamps
    end
  end
end
