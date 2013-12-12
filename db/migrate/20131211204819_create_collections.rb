class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :collection_name, index: true

      t.timestamps
    end
  end
end
