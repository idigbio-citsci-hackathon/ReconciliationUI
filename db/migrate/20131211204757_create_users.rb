class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name, index: true

      t.timestamps
    end
  end
end
