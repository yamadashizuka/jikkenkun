class AddDeadlineToBuhins < ActiveRecord::Migration
  def change
    add_column :buhins, :deadline, :date
  end
end
