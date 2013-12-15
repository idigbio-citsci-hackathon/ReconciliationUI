class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :subject_id, index: true
      t.references :collection, index: true

      t.timestamps
    end
  end
end
