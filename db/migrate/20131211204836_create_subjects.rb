class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :subject_id, index: true
      t.string :filename
      t.references :collection, index: true
      t.integer :transcribed_records_count
      t.timestamps
    end
  end
end
