class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :contents
      t.date :available_from
      t.date :available_to

      t.timestamps
    end
  end
end
