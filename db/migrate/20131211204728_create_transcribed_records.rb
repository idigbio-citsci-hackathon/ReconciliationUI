class CreateTranscribedRecords < ActiveRecord::Migration
  def change
    create_table :transcribed_records do |t|
      t.references :collection, index: true
      t.string :subject_id
      t.references :user, index: true
      t.string :filename
      t.datetime :created_at
      t.string :source_id
      t.string :collector
      t.string :collector_number
      t.string :collection_date
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

      t.timestamps
    end
  end
end
