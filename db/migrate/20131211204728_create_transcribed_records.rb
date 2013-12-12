class CreateTranscribedRecords < ActiveRecord::Migration
  def change
    create_table :transcribed_records do |t|
      t.references :collection, index: true
      t.references :user, index: true
      t.references :filename, index: true
      t.references :subject, index: true
      t.datetime :created_at
      t.string :source_id
      t.string :collector
      t.string :collector_number
      t.string :collection_date
      t.string :collection_date_begin
      t.string :collection_date_end
      t.string :scientific_name
      t.string :scientific_author
      t.string :host
      t.text :habitat
      t.text :notes
      t.string :elevation
      t.string :lat_lon
      t.text :location
      t.string :county
      t.string :state_province
      t.string :country
      t.string :registration_number
      t.string :page_number
      t.string :top_percent

      t.timestamps
    end
  end
end
