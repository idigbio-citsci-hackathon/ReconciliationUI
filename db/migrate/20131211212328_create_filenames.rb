class CreateFilenames < ActiveRecord::Migration
  def change
    create_table :filenames do |t|
      t.string :filename, index: true

      t.timestamps
    end
  end
end
